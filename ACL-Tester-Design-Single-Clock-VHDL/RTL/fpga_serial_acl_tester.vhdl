--------------------------------------------------------------------------------
-- MIT License
--
-- Copyright (c) 2020 Timothy Stotts
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in
-- all copies or substantial portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
--------------------------------------------------------------------------------
-- \file fpga_serial_acl_tester.vhdl
--
-- \brief A FPGA top-level design with the PMOD ACL2 custom driver.
-- This tester operates the ADXL362 in one of multiple possible operational
-- modes for Accelerometer data capture. The PMOD CLS is used to display raw
-- data for: X-Axis, Y-Axis, Z-Axis, Temperature. Color and basic LEDs
-- are used to display additional information, including Activity and Inactivity
-- motion detection.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library UNISIM;
use UNISIM.vcomponents.all;

library UNIMACRO;
use UNIMACRO.vcomponents.all;

library work;
--------------------------------------------------------------------------------
entity fpga_serial_acl_tester is
	generic(
		-- Disable or enable fast FSM delays for simulation instead of impelementation.
		parm_fast_simulation : integer := 0);
	port(
		-- external clock and active-low reset
		CLK100MHZ : in std_logic;
		i_resetn  : in std_logic;
		-- PMOD ACL2 SPI bus 4-wire and two interrupt signals
		eo_pmod_acl2_sck  : out std_logic;
		eo_pmod_acl2_ssn  : out std_logic;
		eo_pmod_acl2_mosi : out std_logic;
		ei_pmod_acl2_miso : in  std_logic;
		ei_pmod_acl2_int1 : in  std_logic;
		ei_pmod_acl2_int2 : in  std_logic;
		-- blue LEDs of the multicolor
		eo_led0_b : out std_logic;
		eo_led1_b : out std_logic;
		eo_led2_b : out std_logic;
		eo_led3_b : out std_logic;
		-- red LEDs of the multicolor
		eo_led0_r : out std_logic;
		eo_led1_r : out std_logic;
		eo_led2_r : out std_logic;
		eo_led3_r : out std_logic;
		-- green LEDs of the multicolor
		eo_led0_g : out std_logic;
		eo_led1_g : out std_logic;
		eo_led2_g : out std_logic;
		eo_led3_g : out std_logic;
		-- green LEDs of the regular LEDs
		eo_led4 : out std_logic;
		eo_led5 : out std_logic;
		eo_led6 : out std_logic;
		eo_led7 : out std_logic;
		-- four switches
		ei_sw0 : in std_logic;
		ei_sw1 : in std_logic;
		ei_sw2 : in std_logic;
		ei_sw3 : in std_logic;
		-- PMOD CLS SPI bus 4-wire
		eo_pmod_cls_ssn : out std_logic;
		eo_pmod_cls_sck : out std_logic;
		eo_pmod_cls_dq0 : out std_logic;
		ei_pmod_cls_dq1 : in  std_logic;
		-- Arty A7-100T UART TX and RX signals
		eo_uart_tx : out std_logic;
		ei_uart_rx : in  std_logic
	);
end entity fpga_serial_acl_tester;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture fsm_rtl of fpga_serial_acl_tester is

	-- A re-entrant function that converts a 4-bit vector to an 8-bit ASCII
	-- hexadecimal character.
	function ascii_of_hdigit(bchex_val : std_logic_vector(3 downto 0))
		return std_logic_vector is
		variable v_bchex_nibble : unsigned(bchex_val'range);
		variable v_ascii_byte   : std_logic_vector(7 downto 0);
	begin
		v_bchex_nibble := unsigned(bchex_val);
		if (v_bchex_nibble < 10) then
			v_ascii_byte := std_logic_vector(unsigned'(x"30") + (unsigned'(x"0") & unsigned(bchex_val)));
		else
			v_ascii_byte := std_logic_vector(unsigned'(x"37") + (unsigned'(x"0") & unsigned(bchex_val)));
		end if;

		return v_ascii_byte;
	end function ascii_of_hdigit;

	-- Tester FSM state declarations
	type t_tester_state is (ST_0, ST_1, ST_2, ST_3, ST_4, ST_5, ST_6, ST_7,
			ST_8, ST_9, ST_A, ST_B);

	signal s_tester_pr_state : t_tester_state := ST_0;
	signal s_tester_nx_state : t_tester_state := ST_0;

	-- MMCM and Processor System Reset signals for PLL clock generation from the
	-- Clocking Wizard and Synchronous Reset generation from the Processor System
	-- Reset module.
	signal s_mmcm_locked : std_logic;
	signal s_clk_20mhz   : std_logic;
	signal s_rst_20mhz   : std_logic;
	signal s_clk_7_37mhz : std_logic;
	signal s_rst_7_37mhz : std_logic;
	signal s_ce_2_5mhz   : std_logic;

	-- Definitions of the Standard SPI driver to pass to the ACL2 and CLS drivers
	constant c_stand_spi_tx_fifo_count_bits : natural := 5;
	constant c_stand_spi_rx_fifo_count_bits : natural := 5;
	constant c_stand_spi_wait_count_bits    : natural := 2;

	-- Tri-state connectivity with the PMOD ACL2.
	signal so_pmod_acl2_sck_o  : std_logic;
	signal so_pmod_acl2_sck_t  : std_logic;
	signal so_pmod_acl2_ssn_o  : std_logic;
	signal so_pmod_acl2_ssn_t  : std_logic;
	signal so_pmod_acl2_mosi_o : std_logic;
	signal so_pmod_acl2_mosi_t : std_logic;

	-- Command to Operating Mode signals for the Tester FSM.
	signal s_acl2_command_ready         : std_logic;
	signal s_acl2_cmd_init_linked_mode  : std_logic;
	signal s_acl2_cmd_start_linked_mode : std_logic;
	signal s_acl2_cmd_init_measur_mode  : std_logic;
	signal s_acl2_cmd_start_measur_mode : std_logic;
	signal s_acl2_cmd_soft_reset_acl2   : std_logic;

	-- Data and indications to be displayed on the LEDs and CLS.
	signal s_acl2_reg_status                      : std_logic_vector(7 downto 0);
	signal s_acl2_reg_status_activity_stretched   : std_logic;
	signal s_acl2_reg_status_inactivity_stretched : std_logic;
	signal s_hex_3axis_temp_measurements_final    : std_logic_vector(63 downto 0);
	signal s_hex_3axis_temp_measurements_valid    : std_logic;
	signal s_hex_3axis_temp_measurements_display  : std_logic_vector(63 downto 0);

	-- Tester FSM general outputs that translate to LED color display.
	signal s_active_init_display : std_logic;
	signal s_active_run_display  : std_logic;
	signal s_mode_is_measur_val  : std_logic;
	signal s_mode_is_measur_aux  : std_logic;
	signal s_mode_is_linked_val  : std_logic;
	signal s_mode_is_linked_aux  : std_logic;

	-- Switch 0:1 debounced signals.
	signal si_sw0_debounced : std_logic;
	signal si_sw1_debounced : std_logic;

	-- Display update FSM state declarations
	type t_cls_update_state is (ST_CLS_IDLE, ST_CLS_CLEAR, ST_CLS_LINE1, ST_CLS_LINE2);

	signal s_cls_upd_pr_state : t_cls_update_state;
	signal s_cls_upd_nx_state : t_cls_update_state;

	-- Timer steps for the continuous refresh of the PMOD CLS display:
	-- Wait 0.2 seconds
	-- Clear Display
	-- Wait 1.0 milliseconds
	-- Write Line 1
	-- Wait 1.0 milliseconds
	-- Write Line 2
	-- Repeat the above.
	constant c_i_subsecond_fast : natural := (2500000 / 100 - 1);
	constant c_i_subsecond      : natural := (2500000 / 5 - 1);
	constant c_i_one_ms         : natural := 2500 - 1;
	constant c_i_step           : natural := 4 - 1;
	constant c_i_max            : natural := c_i_subsecond;

	signal s_i : natural range 0 to c_i_max;

	-- Signals for controlling the PMOD CLS custom driver.
	signal s_cls_command_ready    : std_logic;
	signal s_cls_wr_clear_display : std_logic;
	signal s_cls_wr_text_line1    : std_logic;
	signal s_cls_wr_text_line2    : std_logic;
	signal s_cls_dat_ascii_line1  : std_logic_vector((16*8-1) downto 0);
	signal s_cls_dat_ascii_line2  : std_logic_vector((16*8-1) downto 0);
	signal s_cls_txt_ascii_line1  : std_logic_vector((16*8-1) downto 0);
	signal s_cls_txt_ascii_line2  : std_logic_vector((16*8-1) downto 0);

	-- UART TX update FSM state declarations
	type t_uarttx_feed_state is (ST_UARTFEED_IDLE, ST_UARTFEED_DATA, ST_UARTFEED_WAIT);

	signal s_uartfeed_pr_state : t_uarttx_feed_state;
	signal s_uartfeed_nx_state : t_uarttx_feed_state;

	constant c_uart_k_preset : natural := 34;

	-- UART TX signals for UART TX update FSM
	signal s_uart_dat_ascii_line : std_logic_vector((34*8-1) downto 0);
	signal s_uart_tx_go          : std_logic;
	signal s_uart_txdata         : std_logic_vector(7 downto 0);
	signal s_uart_txvalid        : std_logic;
	signal s_uart_txready        : std_logic;
	signal s_uart_k_val          : natural range 0 to 63;
	signal s_uart_k_aux          : natural range 0 to 63;

	-- Signals for inferring tri-state buffer for CLS SPI bus outputs.
	signal so_pmod_cls_sck_o  : std_logic;
	signal so_pmod_cls_sck_t  : std_logic;
	signal so_pmod_cls_ssn_o  : std_logic;
	signal so_pmod_cls_ssn_t  : std_logic;
	signal so_pmod_cls_mosi_o : std_logic;
	signal so_pmod_cls_mosi_t : std_logic;

	-- Signals for reparse of the eight PMOD ACL2 measurement reading bytes
	signal s_hex_xaxis_msb : std_logic_vector(7 downto 0);
	signal s_hex_xaxis_lsb : std_logic_vector(7 downto 0);
	signal s_hex_yaxis_msb : std_logic_vector(7 downto 0);
	signal s_hex_yaxis_lsb : std_logic_vector(7 downto 0);
	signal s_hex_zaxis_msb : std_logic_vector(7 downto 0);
	signal s_hex_zaxis_lsb : std_logic_vector(7 downto 0);
	signal s_hex_temp_msb  : std_logic_vector(7 downto 0);
	signal s_hex_temp_lsb  : std_logic_vector(7 downto 0);

	-- Signals for reparse of the eight PMOD ACL2 measurement reading bytes
	constant c_signed_zero : signed(15 downto 0) := signed'(x"0000");
	signal s_txt_xaxis_s16 : signed(15 downto 0);
	signal s_txt_yaxis_s16 : signed(15 downto 0);
	signal s_txt_zaxis_s16 : signed(15 downto 0);
	signal s_txt_temp_s16  : signed(15 downto 0);
	signal s_txt_xaxis_u16 : unsigned(15 downto 0);
	signal s_txt_yaxis_u16 : unsigned(15 downto 0);
	signal s_txt_zaxis_u16 : unsigned(15 downto 0);
	signal s_txt_temp_u16  : unsigned(15 downto 0);

	-- Signals for Hex to ASCII reparse of the sixteen digits of the eight
	-- PMOD ACL2 measurement reading bytes
	signal s_char_xaxis_msb_3 : std_logic_vector(7 downto 0);
	signal s_char_xaxis_msb_2 : std_logic_vector(7 downto 0);
	signal s_char_xaxis_lsb_1 : std_logic_vector(7 downto 0);
	signal s_char_xaxis_lsb_0 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_msb_3 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_msb_2 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_lsb_1 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_lsb_0 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_msb_3 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_msb_2 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_lsb_1 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_lsb_0 : std_logic_vector(7 downto 0);
	signal s_char_temp_msb_3  : std_logic_vector(7 downto 0);
	signal s_char_temp_msb_2  : std_logic_vector(7 downto 0);
	signal s_char_temp_lsb_1  : std_logic_vector(7 downto 0);
	signal s_char_temp_lsb_0  : std_logic_vector(7 downto 0);

	-- Signals for Decimal to ASCII reparse of the sixteen digits of the eight
	-- PMOD ACL2 measurement reading bytes
	signal s_dat_xaxis_m0 : std_logic_vector(15 downto 0);
	signal s_dat_xaxis_f0 : std_logic_vector(15 downto 0);
	signal s_dat_xaxis_f1 : std_logic_vector(15 downto 0);
	signal s_dat_xaxis_f2 : std_logic_vector(15 downto 0);

	signal s_char_xaxis_sg : std_logic_vector(7 downto 0);
	signal s_char_xaxis_m0 : std_logic_vector(7 downto 0);
	signal s_char_xaxis_f0 : std_logic_vector(7 downto 0);
	signal s_char_xaxis_f1 : std_logic_vector(7 downto 0);
	signal s_char_xaxis_f2 : std_logic_vector(7 downto 0);

	signal s_dat_yaxis_m0 : std_logic_vector(15 downto 0);
	signal s_dat_yaxis_f0 : std_logic_vector(15 downto 0);
	signal s_dat_yaxis_f1 : std_logic_vector(15 downto 0);
	signal s_dat_yaxis_f2 : std_logic_vector(15 downto 0);

	signal s_char_yaxis_sg : std_logic_vector(7 downto 0);
	signal s_char_yaxis_m0 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_f0 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_f1 : std_logic_vector(7 downto 0);
	signal s_char_yaxis_f2 : std_logic_vector(7 downto 0);

	signal s_dat_zaxis_m0 : std_logic_vector(15 downto 0);
	signal s_dat_zaxis_f0 : std_logic_vector(15 downto 0);
	signal s_dat_zaxis_f1 : std_logic_vector(15 downto 0);
	signal s_dat_zaxis_f2 : std_logic_vector(15 downto 0);

	signal s_char_zaxis_sg : std_logic_vector(7 downto 0);
	signal s_char_zaxis_m0 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_f0 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_f1 : std_logic_vector(7 downto 0);
	signal s_char_zaxis_f2 : std_logic_vector(7 downto 0);

	signal s_dat_temp_m3 : std_logic_vector(15 downto 0);
	signal s_dat_temp_m2 : std_logic_vector(15 downto 0);
	signal s_dat_temp_m1 : std_logic_vector(15 downto 0);
	signal s_dat_temp_m0 : std_logic_vector(15 downto 0);

	signal s_char_temp_m3 : std_logic_vector(7 downto 0);
	signal s_char_temp_m2 : std_logic_vector(7 downto 0);
	signal s_char_temp_m1 : std_logic_vector(7 downto 0);
	signal s_char_temp_m0 : std_logic_vector(7 downto 0);

	-- Extra MMCM signals for full port map to the MMCM primative, where
	-- these signals will remain disconnected.
	signal s_clk_ignore_clk0b     : std_logic;
	signal s_clk_ignore_clk1b     : std_logic;
	signal s_clk_ignore_clk2      : std_logic;
	signal s_clk_ignore_clk2b     : std_logic;
	signal s_clk_ignore_clk3      : std_logic;
	signal s_clk_ignore_clk3b     : std_logic;
	signal s_clk_ignore_clk4      : std_logic;
	signal s_clk_ignore_clk5      : std_logic;
	signal s_clk_ignore_clk6      : std_logic;
	signal s_clk_ignore_clkfboutb : std_logic;
	signal s_clk_clkfbout         : std_logic;
	signal s_clk_pwrdwn           : std_logic;
	signal s_clk_resetin          : std_logic;
begin

	s_clk_pwrdwn  <= '0';
	s_clk_resetin <= not i_resetn;

	-- MMCME2_BASE: Base Mixed Mode Clock Manager
	--              Artix-7
	-- Xilinx HDL Language Template, version 2019.1

	MMCME2_BASE_inst : MMCME2_BASE
		generic map (
			BANDWIDTH       => "OPTIMIZED", -- Jitter programming (OPTIMIZED, HIGH, LOW)
			CLKFBOUT_MULT_F => 36.125,      -- Multiply value for all CLKOUT (2.000-64.000).
			CLKFBOUT_PHASE  => 0.0,         -- Phase offset in degrees of CLKFB (-360.000-360.000).
			CLKIN1_PERIOD   => 10.0,        -- Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
			                                -- CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
			CLKOUT1_DIVIDE   => 98,
			CLKOUT2_DIVIDE   => 1,
			CLKOUT3_DIVIDE   => 1,
			CLKOUT4_DIVIDE   => 1,
			CLKOUT5_DIVIDE   => 1,
			CLKOUT6_DIVIDE   => 1,
			CLKOUT0_DIVIDE_F => 36.125, -- Divide amount for CLKOUT0 (1.000-128.000).
			                            -- CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
			CLKOUT0_DUTY_CYCLE => 0.5,
			CLKOUT1_DUTY_CYCLE => 0.5,
			CLKOUT2_DUTY_CYCLE => 0.5,
			CLKOUT3_DUTY_CYCLE => 0.5,
			CLKOUT4_DUTY_CYCLE => 0.5,
			CLKOUT5_DUTY_CYCLE => 0.5,
			CLKOUT6_DUTY_CYCLE => 0.5,
			-- CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
			CLKOUT0_PHASE   => 0.0,
			CLKOUT1_PHASE   => 0.0,
			CLKOUT2_PHASE   => 0.0,
			CLKOUT3_PHASE   => 0.0,
			CLKOUT4_PHASE   => 0.0,
			CLKOUT5_PHASE   => 0.0,
			CLKOUT6_PHASE   => 0.0,
			CLKOUT4_CASCADE => FALSE, -- Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
			DIVCLK_DIVIDE   => 5,     -- Master division value (1-106)
			REF_JITTER1     => 0.010, -- Reference input jitter in UI (0.000-0.999).
			STARTUP_WAIT    => FALSE  -- Delays DONE until MMCM is locked (FALSE, TRUE)
		)
		port map (
			-- Clock Outputs: 1-bit (each) output: User configurable clock outputs
			CLKOUT0  => s_clk_20mhz,             -- 1-bit output: CLKOUT0
			CLKOUT0B => s_clk_ignore_clk0b,      -- 1-bit output: Inverted CLKOUT0
			CLKOUT1  => s_clk_7_37mhz,           -- 1-bit output: CLKOUT1
			CLKOUT1B => s_clk_ignore_clk1b,      -- 1-bit output: Inverted CLKOUT1
			CLKOUT2  => s_clk_ignore_clk2,       -- 1-bit output: CLKOUT2
			CLKOUT2B => s_clk_ignore_clk2b,      -- 1-bit output: Inverted CLKOUT2
			CLKOUT3  => s_clk_ignore_clk3,       -- 1-bit output: CLKOUT3
			CLKOUT3B => s_clk_ignore_clk3b,      -- 1-bit output: Inverted CLKOUT3
			CLKOUT4  => s_clk_ignore_clk4,       -- 1-bit output: CLKOUT4
			CLKOUT5  => s_clk_ignore_clk5,       -- 1-bit output: CLKOUT5
			CLKOUT6  => s_clk_ignore_clk6,       -- 1-bit output: CLKOUT6
			                                     -- Feedback Clocks: 1-bit (each) output: Clock feedback ports
			CLKFBOUT  => s_clk_clkfbout,         -- 1-bit output: Feedback clock
			CLKFBOUTB => s_clk_ignore_clkfboutb, -- 1-bit output: Inverted CLKFBOUT
			                                     -- Status Ports: 1-bit (each) output: MMCM status ports
			LOCKED => s_mmcm_locked,             -- 1-bit output: LOCK
			                                     -- Clock Inputs: 1-bit (each) input: Clock input
			CLKIN1 => CLK100MHZ,                 -- 1-bit input: Clock
			                                     -- Control Ports: 1-bit (each) input: MMCM control ports
			PWRDWN => s_clk_pwrdwn,              -- 1-bit input: Power-down
			RST    => s_clk_resetin,             -- 1-bit input: Reset
			                                     -- Feedback Clocks: 1-bit (each) input: Clock feedback ports
			CLKFBIN => s_clk_clkfbout            -- 1-bit input: Feedback clock
		);
	-- End of MMCME2_BASE_inst instantiation

	-- Reset Synchronization for 20 MHz clock
	u_reset_sync_20mhz : entity work.arty_reset_synchronizer(rtl)
		port map(
			i_clk_mhz     => s_clk_20mhz,
			i_rstn_global => i_resetn,
			o_rst_mhz     => s_rst_20mhz
		);

	-- Reset Synchronization for 20 MHz clock
	u_reset_sync_7_37mhz : entity work.arty_reset_synchronizer(rtl)
		port map(
			i_clk_mhz     => s_clk_7_37mhz,
			i_rstn_global => i_resetn,
			o_rst_mhz     => s_rst_7_37mhz
		);

	-- 4x spi clock enable divider for PMOD CLS SCK output. No
	-- generated clock constraint. The 20 MHz clock is divided
	-- down to 2.5 MHz; and later divided down to 625 KHz on
	-- the PMOD CLS bus.
	u_2_5mhz_ce_divider : entity work.clock_enable_divider(rtl)
		generic map(
			par_ce_divisor => 8
		)
		port map(
			o_ce_div  => s_ce_2_5mhz,
			i_clk_mhz => s_clk_20mhz,
			i_rst_mhz => s_rst_20mhz,
			i_ce_mhz  => '1'
		);

	-- Synchronize and debounce the SW0 incoming switch position on the Arty A7.
	u_switch_deb_sw0 : entity work.switch_debouncer(moore_fsm)
		port map(
			o_sw_deb    => si_sw0_debounced,
			i_clk_20mhz => s_clk_20mhz,
			i_rst_20mhz => s_rst_20mhz,
			ei_switch   => ei_sw0
		);

	-- Synchronize and debounce the SW1 incoming switch position on the Arty A7.
	u_switch_deb_sw1 : entity work.switch_debouncer(moore_fsm)
		port map(
			o_sw_deb    => si_sw1_debounced,
			i_clk_20mhz => s_clk_20mhz,
			i_rst_20mhz => s_rst_20mhz,
			ei_switch   => ei_sw1
		);

	-- Provide possible tri-state for later design revision for the PMOD ACL2 SPI
	-- output ports.
	eo_pmod_acl2_sck  <= so_pmod_acl2_sck_o  when so_pmod_acl2_sck_t = '0' else 'Z';
	eo_pmod_acl2_ssn  <= so_pmod_acl2_ssn_o  when so_pmod_acl2_ssn_t = '0' else 'Z';
	eo_pmod_acl2_mosi <= so_pmod_acl2_mosi_o when so_pmod_acl2_mosi_t = '0' else 'Z';

	-- PMOD ACL2 Custom Driver instance.
	u_pmod_acl2_custom_driver : entity work.pmod_acl2_custom_driver(rtl)
		generic map (
			parm_fast_simulation   => parm_fast_simulation,
			parm_FCLK              => 20_000_000,
			parm_ext_spi_clk_ratio => 4,
			parm_wait_cyc_bits     => c_stand_spi_wait_count_bits
		)
		port map (
			i_clk_20mhz             => s_clk_20mhz,
			i_rst_20mhz             => s_rst_20mhz,
			eo_sck_t                => so_pmod_acl2_sck_t,
			eo_sck_o                => so_pmod_acl2_sck_o,
			eo_ssn_t                => so_pmod_acl2_ssn_t,
			eo_ssn_o                => so_pmod_acl2_ssn_o,
			eo_mosi_t               => so_pmod_acl2_mosi_t,
			eo_mosi_o               => so_pmod_acl2_mosi_o,
			ei_miso                 => ei_pmod_acl2_miso,
			ei_int1                 => ei_pmod_acl2_int1,
			ei_int2                 => ei_pmod_acl2_int2,
			o_command_ready         => s_acl2_command_ready,
			i_cmd_init_linked_mode  => s_acl2_cmd_init_linked_mode,
			i_cmd_start_linked_mode => s_acl2_cmd_start_linked_mode,
			i_cmd_init_measur_mode  => s_acl2_cmd_init_measur_mode,
			i_cmd_start_measur_mode => s_acl2_cmd_start_measur_mode,
			i_cmd_soft_reset_acl2   => s_acl2_cmd_soft_reset_acl2,
			o_data_3axis_temp       => s_hex_3axis_temp_measurements_final,
			o_data_valid            => s_hex_3axis_temp_measurements_valid,
			o_reg_status            => s_acl2_reg_status
		);

	-- Capture the latest measurement value on VALID pulse and when the display is
	-- idling in preparation of the next value to be displayed. When the display
	-- stops idling, then hold the value for display so that the display does not
	-- have its textual inputs changing while running the display update. This
	-- value capture also holds for the UART TX output of the values.
	p_hold_measurements : process(s_clk_20mhz)
	begin
		if rising_edge(s_clk_20mhz) then
			if (s_rst_20mhz = '1') then
				s_hex_3axis_temp_measurements_display <= (others => '0');
			else
				if ((s_hex_3axis_temp_measurements_valid = '1') and (s_cls_upd_pr_state = ST_CLS_IDLE)) then

					s_hex_3axis_temp_measurements_display <= s_hex_3axis_temp_measurements_final;
				end if;
			end if;
		end if;
	end process p_hold_measurements;

	-- The top-level Tester FSM State Transition register on the system clock,
	-- for state and auxiliary of the FSM that sends operation mode commands to
	-- the PMOD ACL2 custom driver.
	p_tester_fsm_state_aux : process(s_clk_20mhz)
	begin
		if rising_edge(s_clk_20mhz) then
			if (s_rst_20mhz = '1') then
				s_tester_pr_state <= ST_0;

				s_mode_is_measur_aux <= '0';
				s_mode_is_linked_aux <= '0';
			else
				s_tester_pr_state <= s_tester_nx_state;

				s_mode_is_measur_aux <= s_mode_is_measur_val;
				s_mode_is_linked_aux <= s_mode_is_linked_val;
			end if;
		end if;
	end process p_tester_fsm_state_aux;

	-- Tester FSM Combinatorial logic for initializing and starting PMOD ACL2
	-- according to the position of Switch 0 and the position of Switch 1. If
	-- Switch 0 and Not Switch 1, then Mode Measurement is executed. If Switch 1
	-- and Not Switch 0, then Mode Linked is executed.
	p_tester_fsm_comb : process(s_tester_pr_state, s_acl2_command_ready,
			si_sw0_debounced, si_sw1_debounced,
			s_mode_is_measur_aux, s_mode_is_linked_aux)
	begin
		-- default the current PR state to not issue any of the five possible commands
		s_acl2_cmd_init_measur_mode  <= '0';
		s_acl2_cmd_init_linked_mode  <= '0';
		s_acl2_cmd_start_measur_mode <= '0';
		s_acl2_cmd_start_linked_mode <= '0';
		s_acl2_cmd_soft_reset_acl2   <= '0';

		case (s_tester_pr_state) is
			when ST_1 => -- Step one to command initialize the ACL2 to measurement mode
				s_acl2_cmd_init_measur_mode <= '1';
				s_active_init_display       <= '1';
				s_active_run_display        <= '0';
				s_mode_is_measur_val        <= '1';
				s_mode_is_linked_val        <= '0';

				if (s_acl2_command_ready = '1') then
					s_tester_nx_state <= ST_1;
				else
					s_tester_nx_state <= ST_2;
				end if;

			when ST_2 => -- Step two to wait for ACL2 to start its MM initialization
				s_active_init_display <= '1';
				s_active_run_display  <= '0';
				s_mode_is_measur_val  <= s_mode_is_measur_aux;
				s_mode_is_linked_val  <= s_mode_is_linked_aux;

				if (s_acl2_command_ready = '0') then
					s_tester_nx_state <= ST_2;
				else
					s_tester_nx_state <= ST_3;
				end if;

			when ST_3 => -- Step three to command start the ACL2 to measurement mode
				s_acl2_cmd_start_measur_mode <= '1';
				s_active_init_display        <= '1';
				s_active_run_display         <= '0';
				s_mode_is_measur_val         <= s_mode_is_measur_aux;
				s_mode_is_linked_val         <= s_mode_is_linked_aux;

				if (s_acl2_command_ready = '1') then
					s_tester_nx_state <= ST_3;
				else
					s_tester_nx_state <= ST_4;
				end if;

			when ST_4 => -- Step four to stop issuing commands and transition to IDLE
				         -- (place holder for other steps)
				s_active_init_display <= '1';
				s_active_run_display  <= '0';
				s_mode_is_measur_val  <= s_mode_is_measur_aux;
				s_mode_is_linked_val  <= s_mode_is_linked_aux;

				s_tester_nx_state <= ST_9;

			when ST_5 => -- Step one to command initialize the ACL2 to linked mode
				s_acl2_cmd_init_linked_mode <= '1';
				s_active_init_display       <= '1';
				s_active_run_display        <= '0';
				s_mode_is_measur_val        <= '0';
				s_mode_is_linked_val        <= '1';

				if (s_acl2_command_ready = '1') then
					s_tester_nx_state <= ST_5;
				else
					s_tester_nx_state <= ST_6;
				end if;

			when ST_6 => -- Step two to wait for ACL2 to start its LM initialization
				s_active_init_display <= '1';
				s_active_run_display  <= '0';
				s_mode_is_measur_val  <= s_mode_is_measur_aux;
				s_mode_is_linked_val  <= s_mode_is_linked_aux;

				if (s_acl2_command_ready = '0') then
					s_tester_nx_state <= ST_6;
				else
					s_tester_nx_state <= ST_7;
				end if;

			when ST_7 => -- Step three to command start the ACL2 to linked mode
				s_acl2_cmd_start_linked_mode <= '1';
				s_active_init_display        <= '1';
				s_active_run_display         <= '0';
				s_mode_is_measur_val         <= s_mode_is_measur_aux;
				s_mode_is_linked_val         <= s_mode_is_linked_aux;

				if (s_acl2_command_ready = '1') then
					s_tester_nx_state <= ST_7;
				else
					s_tester_nx_state <= ST_8;
				end if;

			when ST_8 => -- Step four to stop issuing commands and transition to IDLE
				         -- (place holder for other steps)
				s_active_init_display <= '1';
				s_active_run_display  <= '0';
				s_mode_is_measur_val  <= s_mode_is_measur_aux;
				s_mode_is_linked_val  <= s_mode_is_linked_aux;

				s_tester_nx_state <= ST_9;

			when ST_9 => -- State nine is RUNNING IDLE and waits for switches 0,1
				         -- to entera equal an non-exclusive state to then transition
				         -- to State A which in turn will reset the PMOD ACL2 and wait
				         -- for an exclusive command on the switches 0,1.
				s_active_init_display <= '0';
				s_active_run_display  <= '1';
				s_mode_is_measur_val  <= s_mode_is_measur_aux;
				s_mode_is_linked_val  <= s_mode_is_linked_aux;

				if ((si_sw0_debounced xor si_sw1_debounced) = '0') then
					s_tester_nx_state <= ST_A;
				else
					s_tester_nx_state <= ST_9;
				end if;

			when ST_A => -- Step A to issue the Soft Reset command to the PMOD ACL2
				         -- Then transition to Step Zero for INIT IDLE and waiting
				         -- for exclusive switch position.
				s_acl2_cmd_soft_reset_acl2 <= '1';
				s_active_init_display      <= '0';
				s_active_run_display       <= '0';
				s_mode_is_measur_val       <= '0';
				s_mode_is_linked_val       <= '0';

				if (s_acl2_command_ready = '1') then
					s_tester_nx_state <= ST_0;
				else
					s_tester_nx_state <= ST_A;
				end if;

			when others => -- Step Zero is INIT IDLE, waiting for exclusive switch
				           -- position to then transition to INIT Measure Mode or
				           -- INIT Linked Mode.
				s_active_init_display <= '0';
				s_active_run_display  <= '0';
				s_mode_is_measur_val  <= s_mode_is_measur_aux;
				s_mode_is_linked_val  <= s_mode_is_linked_aux;

				if (s_acl2_command_ready = '1') then
					if ((si_sw0_debounced = '1') and (si_sw1_debounced = '0')) then
						s_tester_nx_state <= ST_1;
					elsif ((si_sw1_debounced = '1') and (si_sw0_debounced = '0')) then
						s_tester_nx_state <= ST_5;
					else
						s_tester_nx_state <= ST_0;
					end if;
				else
					s_tester_nx_state <= ST_0;
				end if;
		end case;
	end process p_tester_fsm_comb;

	-- Stretch the Activity indication so it can be displayed as color LED 2.
	u_pulse_stretcher_activity : entity work.pulse_stretcher_synch(moore_fsm_timed)
		generic map(
			par_T_stretch_count => 20_000_000)
		port map(
			o_y   => s_acl2_reg_status_activity_stretched,
			i_clk => s_clk_20mhz,
			i_rst => s_rst_20mhz,
			i_x   => s_acl2_reg_status(4));

	-- Stretch the Inactivity indication so it can be displayed as color LED 3.
	u_pulse_stretcher_inactivity : entity work.pulse_stretcher_synch(moore_fsm_timed)
		generic map(
			par_T_stretch_count => 20_000_000)
		port map(
			o_y   => s_acl2_reg_status_inactivity_stretched,
			i_clk => s_clk_20mhz,
			i_rst => s_rst_20mhz,
			i_x   => s_acl2_reg_status(5));

	-- Tester FSM registered outputs to multicolor LED 0:3 to indicate the
	-- execution state of \ref p_tester_fsm_state and \ref p_tester_comb and also
	-- the status register Activity and Inactivity. Also displayed on LED 4
	-- is the AWAKE state of the PMOD ACL2; and on LED 6,7 the Switch 0
	-- and Switch 1 debounced positions.
	p_tester_fsm_display : process(s_clk_20mhz)
	begin
		if rising_edge(s_clk_20mhz) then
			if (s_active_init_display = '1') then
				-- LED 0 will be red when tester is initializing.
				eo_led0_r <= '1';
				eo_led0_g <= '0';
				eo_led0_b <= '0';
			elsif (s_active_run_display = '1') then
				-- LED 0 will be green when tester is running.
				eo_led0_r <= '0';
				eo_led0_g <= '1';
				eo_led0_b <= '0';
			else
				-- LED 0 will be blue when tester is not working at all.
				eo_led0_r <= '0';
				eo_led0_g <= '0';
				eo_led0_b <= '1';
			end if;

			-- LED 1 will be red when tester is not working at all.
			-- LED 1 will be white when tester is measuring continuously.
			-- LED 1 will be purple when tester is only detecting motion toggle.
			eo_led1_r <= '1';
			if (s_mode_is_measur_aux = '1') then
				eo_led1_g <= '1';
				eo_led1_b <= '1';
			elsif (s_mode_is_linked_aux = '1') then
				eo_led1_g <= '0';
				eo_led1_b <= '1';
			else
				eo_led1_g <= '0';
				eo_led1_b <= '0';
			end if;

			-- LED 2 is Red when no Activity detect, Green when Activity detect.
			eo_led2_r <= not s_acl2_reg_status_activity_stretched;
			eo_led2_g <= s_acl2_reg_status_activity_stretched;
			eo_led2_b <= '0';

			-- LED 3 is Red when no Inactivity detect, Green when Inactivity detect.
			eo_led3_r <= not s_acl2_reg_status_inactivity_stretched;
			eo_led3_g <= s_acl2_reg_status_inactivity_stretched;
			eo_led3_b <= '0';

			-- LED4 is AWAKE status from the status register.
			eo_led4 <= s_acl2_reg_status(6);

			-- LED 5 is unused at this time.
			eo_led5 <= '0';

			-- LED 6, LED 7, indicate the debounced switch positions.
			eo_led6 <= si_sw0_debounced;
			eo_led7 <= si_sw1_debounced;
		end if;
	end process p_tester_fsm_display;

	-- Tri-state outputs of PMOD CLS custom driver.
	eo_pmod_cls_sck <= so_pmod_cls_sck_o  when so_pmod_cls_sck_t = '0' else 'Z';
	eo_pmod_cls_ssn <= so_pmod_cls_ssn_o  when so_pmod_cls_ssn_t = '0' else 'Z';
	eo_pmod_cls_dq0 <= so_pmod_cls_mosi_o when so_pmod_cls_mosi_t = '0' else 'Z';

	-- Instance of the PMOD CLS driver for 16x2 character LCD display for purposes
	-- of an output display.
	u_pmod_cls_custom_driver : entity work.pmod_cls_custom_driver(rtl)
		generic map (
			parm_fast_simulation   => parm_fast_simulation,
			parm_FCLK              => 20_000_000,
			parm_FCLK_ce           => 2_500_000,
			parm_ext_spi_clk_ratio => 32,
			parm_wait_cyc_bits     => c_stand_spi_wait_count_bits
		)
		port map (
			i_clk_20mhz            => s_clk_20mhz,
			i_rst_20mhz            => s_rst_20mhz,
			i_ce_2_5mhz            => s_ce_2_5mhz,
			eo_sck_t               => so_pmod_cls_sck_t,
			eo_sck_o               => so_pmod_cls_sck_o,
			eo_ssn_t               => so_pmod_cls_ssn_t,
			eo_ssn_o               => so_pmod_cls_ssn_o,
			eo_mosi_t              => so_pmod_cls_mosi_t,
			eo_mosi_o              => so_pmod_cls_mosi_o,
			ei_miso                => ei_pmod_cls_dq1,
			o_command_ready        => s_cls_command_ready,
			i_cmd_wr_clear_display => s_cls_wr_clear_display,
			i_cmd_wr_text_line1    => s_cls_wr_text_line1,
			i_cmd_wr_text_line2    => s_cls_wr_text_line2,
			i_dat_ascii_line1      => s_cls_txt_ascii_line1,
			i_dat_ascii_line2      => s_cls_txt_ascii_line2
		);

	-- Parse out the hexadecimal reading of mg force and temperature from the
	-- PMOD ACL2 data register readings. This partsing is done to display the
	-- measurement readings at a slower refresh rate on the PMOD CLS.
	s_hex_xaxis_lsb <= s_hex_3axis_temp_measurements_display((8*8-1) downto (7*8));
	s_hex_xaxis_msb <= s_hex_3axis_temp_measurements_display((7*8-1) downto (6*8));
	s_hex_yaxis_lsb <= s_hex_3axis_temp_measurements_display((6*8-1) downto (5*8));
	s_hex_yaxis_msb <= s_hex_3axis_temp_measurements_display((5*8-1) downto (4*8));
	s_hex_zaxis_lsb <= s_hex_3axis_temp_measurements_display((4*8-1) downto (3*8));
	s_hex_zaxis_msb <= s_hex_3axis_temp_measurements_display((3*8-1) downto (2*8));
	s_hex_temp_lsb  <= s_hex_3axis_temp_measurements_display((2*8-1) downto (1*8));
	s_hex_temp_msb  <= s_hex_3axis_temp_measurements_display((1*8-1) downto 0);

	s_txt_xaxis_s16 <= signed(s_hex_xaxis_msb & s_hex_xaxis_lsb);
	s_txt_yaxis_s16 <= signed(s_hex_yaxis_msb & s_hex_yaxis_lsb);
	s_txt_zaxis_s16 <= signed(s_hex_zaxis_msb & s_hex_zaxis_lsb);
	s_txt_temp_s16  <= signed(s_hex_temp_msb & s_hex_temp_lsb);

	s_txt_xaxis_u16 <= unsigned(c_signed_zero - s_txt_xaxis_s16) when (s_txt_xaxis_s16(15) = '1') else unsigned(s_txt_xaxis_s16);
	s_txt_yaxis_u16 <= unsigned(c_signed_zero - s_txt_yaxis_s16) when (s_txt_yaxis_s16(15) = '1') else unsigned(s_txt_yaxis_s16);
	s_txt_zaxis_u16 <= unsigned(c_signed_zero - s_txt_zaxis_s16) when (s_txt_zaxis_s16(15) = '1') else unsigned(s_txt_zaxis_s16);
	s_txt_temp_u16  <= unsigned(c_signed_zero - s_txt_temp_s16)  when (s_txt_temp_s16(15) = '1') else unsigned(s_txt_temp_s16);

	-- ASCII parse-out of the X-Axis measurement reading.
	s_char_xaxis_msb_3 <= ascii_of_hdigit(s_hex_xaxis_msb(7 downto 4));
	s_char_xaxis_msb_2 <= ascii_of_hdigit(s_hex_xaxis_msb(3 downto 0));
	s_char_xaxis_lsb_1 <= ascii_of_hdigit(s_hex_xaxis_lsb(7 downto 4));
	s_char_xaxis_lsb_0 <= ascii_of_hdigit(s_hex_xaxis_lsb(3 downto 0));

	s_dat_xaxis_m0 <= std_logic_vector((s_txt_xaxis_u16 / 1000) mod 10);
	s_dat_xaxis_f0 <= std_logic_vector((s_txt_xaxis_u16 / 100) mod 10);
	s_dat_xaxis_f1 <= std_logic_vector((s_txt_xaxis_u16 / 10) mod 10);
	s_dat_xaxis_f2 <= std_logic_vector(s_txt_xaxis_u16 mod 10);

	s_char_xaxis_sg <= x"2D" when (s_txt_xaxis_s16(15) = '1') else x"20";
	s_char_xaxis_m0 <= ascii_of_hdigit(s_dat_xaxis_m0(3 downto 0));
	s_char_xaxis_f0 <= ascii_of_hdigit(s_dat_xaxis_f0(3 downto 0));
	s_char_xaxis_f1 <= ascii_of_hdigit(s_dat_xaxis_f1(3 downto 0));
	s_char_xaxis_f2 <= ascii_of_hdigit(s_dat_xaxis_f2(3 downto 0));

	-- ASCII parse-out of the Y-Axis measurement reading.
	s_char_yaxis_msb_3 <= ascii_of_hdigit(s_hex_yaxis_msb(7 downto 4));
	s_char_yaxis_msb_2 <= ascii_of_hdigit(s_hex_yaxis_msb(3 downto 0));
	s_char_yaxis_lsb_1 <= ascii_of_hdigit(s_hex_yaxis_lsb(7 downto 4));
	s_char_yaxis_lsb_0 <= ascii_of_hdigit(s_hex_yaxis_lsb(3 downto 0));

	s_dat_yaxis_m0 <= std_logic_vector((s_txt_yaxis_u16 / 1000) mod 10);
	s_dat_yaxis_f0 <= std_logic_vector((s_txt_yaxis_u16 / 100) mod 10);
	s_dat_yaxis_f1 <= std_logic_vector((s_txt_yaxis_u16 / 10) mod 10);
	s_dat_yaxis_f2 <= std_logic_vector(s_txt_yaxis_u16 mod 10);

	s_char_yaxis_sg <= x"2D" when (s_txt_yaxis_s16(15) = '1') else x"20";
	s_char_yaxis_m0 <= ascii_of_hdigit(s_dat_yaxis_m0(3 downto 0));
	s_char_yaxis_f0 <= ascii_of_hdigit(s_dat_yaxis_f0(3 downto 0));
	s_char_yaxis_f1 <= ascii_of_hdigit(s_dat_yaxis_f1(3 downto 0));
	s_char_yaxis_f2 <= ascii_of_hdigit(s_dat_yaxis_f2(3 downto 0));

	-- ASCII parse-out of the Z-Axis measurement reading.
	s_char_zaxis_msb_3 <= ascii_of_hdigit(s_hex_zaxis_msb(7 downto 4));
	s_char_zaxis_msb_2 <= ascii_of_hdigit(s_hex_zaxis_msb(3 downto 0));
	s_char_zaxis_lsb_1 <= ascii_of_hdigit(s_hex_zaxis_lsb(7 downto 4));
	s_char_zaxis_lsb_0 <= ascii_of_hdigit(s_hex_zaxis_lsb(3 downto 0));

	s_dat_zaxis_m0 <= std_logic_vector((s_txt_zaxis_u16 / 1000) mod 10);
	s_dat_zaxis_f0 <= std_logic_vector((s_txt_zaxis_u16 / 100) mod 10);
	s_dat_zaxis_f1 <= std_logic_vector((s_txt_zaxis_u16 / 10) mod 10);
	s_dat_zaxis_f2 <= std_logic_vector(s_txt_zaxis_u16 mod 10);

	s_char_zaxis_sg <= x"2D" when (s_txt_zaxis_s16(15) = '1') else x"20";
	s_char_zaxis_m0 <= ascii_of_hdigit(s_dat_zaxis_m0(3 downto 0));
	s_char_zaxis_f0 <= ascii_of_hdigit(s_dat_zaxis_f0(3 downto 0));
	s_char_zaxis_f1 <= ascii_of_hdigit(s_dat_zaxis_f1(3 downto 0));
	s_char_zaxis_f2 <= ascii_of_hdigit(s_dat_zaxis_f2(3 downto 0));

	-- ASCII parse-out of the Compensating Temperature measurement reading.
	s_char_temp_msb_3 <= ascii_of_hdigit(s_hex_temp_msb(7 downto 4));
	s_char_temp_msb_2 <= ascii_of_hdigit(s_hex_temp_msb(3 downto 0));
	s_char_temp_lsb_1 <= ascii_of_hdigit(s_hex_temp_lsb(7 downto 4));
	s_char_temp_lsb_0 <= ascii_of_hdigit(s_hex_temp_lsb(3 downto 0));

	s_dat_temp_m3 <= std_logic_vector((s_txt_temp_u16 / 1000) mod 10);
	s_dat_temp_m2 <= std_logic_vector((s_txt_temp_u16 / 100) mod 10);
	s_dat_temp_m1 <= std_logic_vector((s_txt_temp_u16 / 10) mod 10);
	s_dat_temp_m0 <= std_logic_vector(s_txt_temp_u16 mod 10);

	s_char_temp_m3 <= ascii_of_hdigit(s_dat_temp_m3(3 downto 0));
	s_char_temp_m2 <= ascii_of_hdigit(s_dat_temp_m2(3 downto 0));
	s_char_temp_m1 <= ascii_of_hdigit(s_dat_temp_m1(3 downto 0));
	s_char_temp_m0 <= ascii_of_hdigit(s_dat_temp_m0(3 downto 0));

	-- Assemblly of ASCII Line 1 to display on the PMOD CLS and UART TX.
	-- ASCII Line:  "X:____  Y:____  " or "X:0123  Y:ABCD  "
	s_cls_dat_ascii_line1 <= (x"58" & x"3A" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"20" & x"20" & x"59" & x"3A" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"20" & x"20")
	when (s_tester_pr_state = ST_0) else
		(x"58" & x"3A" & s_char_xaxis_msb_3 &
			s_char_xaxis_msb_2 & s_char_xaxis_lsb_1 &
			s_char_xaxis_lsb_0 & x"20" & x"20" &
			x"59" & x"3A" & s_char_yaxis_msb_3 &
			s_char_yaxis_msb_2 & s_char_yaxis_lsb_1 &
			s_char_yaxis_lsb_0 & x"20" & x"20");

	-- ASCII line: "X______ Y______ " or "X-0.123 Y 0.345 "
	s_cls_txt_ascii_line1 <= (x"58" & x"5F" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"5F" & x"20" & x"59" & x"5F" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"5F" & x"20")
	when (s_tester_pr_state = ST_0) else
		(x"58" & s_char_xaxis_sg &
			s_char_xaxis_m0 & x"2E" & s_char_xaxis_f0 &
			s_char_xaxis_f1 & s_char_xaxis_f2 & x"20" &
			x"59" & s_char_yaxis_sg &
			s_char_yaxis_m0 & x"2E" & s_char_yaxis_f0 &
			s_char_yaxis_f1 & s_char_yaxis_f2 & x"20");

	-- Assemblly of ASCII Line 2 to display on the PMOD CLS.
	-- ASCII Line:  "Z:____  T:____  " or "Z:0123  T:ABCD  "
	s_cls_dat_ascii_line2 <= (x"5A" & x"3A" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"20" & x"20" & x"54" & x"3A" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"20" & x"20")
	when (s_tester_pr_state = ST_0) else
		(x"5A" & x"3A" & s_char_zaxis_msb_3 &
			s_char_zaxis_msb_2 & s_char_zaxis_lsb_1 &
			s_char_zaxis_lsb_0 & x"20" & x"20" &
			x"54" & x"3A" & s_char_temp_msb_3 &
			s_char_temp_msb_2 & s_char_temp_lsb_1 &
			s_char_temp_lsb_0 & x"20" & x"20");

	-- ASCII line: "Z______ T______ " or "Z 1.123 T5201   "
	s_cls_txt_ascii_line2 <= (x"5A" & x"5F" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"5F" & x"20" & x"54" & x"5F" &
			x"5F" & x"5F" & x"5F" & x"5F" &
			x"20" & x"20")
	when (s_tester_pr_state = ST_0) else
		(x"5A" & s_char_zaxis_sg &
			s_char_zaxis_m0 & x"2E" & s_char_zaxis_f0 &
			s_char_zaxis_f1 & s_char_zaxis_f2 & x"20" &
			x"54" & s_char_temp_m3 & s_char_temp_m2 &
			s_char_temp_m1 & s_char_temp_m0 & x"20" & x"20" & x"20");

	-- Assembly of UART text line.
	s_uart_dat_ascii_line <= (s_cls_dat_ascii_line1 & s_cls_dat_ascii_line2 & x"0D" & x"0A");

	-- Timer (strategy #1) for timing the PMOD CLS display update
	p_fsm_timer_run_display_update : process(s_clk_20mhz)
	begin
		if rising_edge(s_clk_20mhz) then
			if (s_rst_20mhz = '1') then
				s_i <= 0;
			elsif (s_ce_2_5mhz = '1') then
				if (s_cls_upd_pr_state /= s_cls_upd_nx_state) then
					s_i <= 0;
				elsif (s_i /= c_i_max) then
					s_i <= s_i + 1;
				end if;
			end if;
		end if;
	end process p_fsm_timer_run_display_update;

	-- FSM state transition for timing the PMOD CLS display udpate
	p_fsm_state_run_display_update : process(s_clk_20mhz)
	begin
		if rising_edge(s_clk_20mhz) then
			if (s_rst_20mhz = '1') then
				s_cls_upd_pr_state <= ST_CLS_IDLE;
			elsif (s_ce_2_5mhz = '1') then
				s_cls_upd_pr_state <= s_cls_upd_nx_state;
			end if;
		end if;
	end process p_fsm_state_run_display_update;

	-- FSM combinatorial logic for timing the PMOD CLS display udpate
	p_fsm_comb_run_display_update : process(s_cls_upd_pr_state,
			s_cls_command_ready, s_i)
	begin
		case (s_cls_upd_pr_state) is
			when ST_CLS_CLEAR => -- Step CLEAR: clear the display
				                 -- and then pause until display ready and
				                 -- minimum of \ref c_i_one_ms time delay.
				if (s_i <= c_i_step) then
					s_cls_wr_clear_display <= '1';
				else
					s_cls_wr_clear_display <= '0';
				end if;

				s_cls_wr_text_line1 <= '0';
				s_cls_wr_text_line2 <= '0';

				if ((s_i >= c_i_one_ms) and (s_cls_command_ready = '1')) then
					s_cls_upd_nx_state <= ST_CLS_LINE1;
				else
					s_cls_upd_nx_state <= ST_CLS_CLEAR;
				end if;

			when ST_CLS_LINE1 => -- Step LINE1: write the top line of the LCD
				                 -- and then pause until display ready and
				                 -- minimum of \ref c_i_one_ms time delay.
				s_cls_wr_clear_display <= '0';

				if (s_i <= c_i_step) then
					s_cls_wr_text_line1 <= '1';
				else
					s_cls_wr_text_line1 <= '0';
				end if;

				s_cls_wr_text_line2 <= '0';

				if ((s_i >= c_i_one_ms) and (s_cls_command_ready = '1')) then
					s_cls_upd_nx_state <= ST_CLS_LINE2;
				else
					s_cls_upd_nx_state <= ST_CLS_LINE1;
				end if;

			when ST_CLS_LINE2 => -- Step LINE2: write the bottom line of the LCD
				                 -- and then pause until display ready and
				                 -- minimum of \ref c_i_one_ms time delay.
				s_cls_wr_clear_display <= '0';
				s_cls_wr_text_line1    <= '0';

				if (s_i <= c_i_step) then
					s_cls_wr_text_line2 <= '1';
				else
					s_cls_wr_text_line2 <= '0';
				end if;

				if ((s_i >= c_i_one_ms) and (s_cls_command_ready = '1')) then
					s_cls_upd_nx_state <= ST_CLS_IDLE;
				else
					s_cls_upd_nx_state <= ST_CLS_LINE2;
				end if;

			when others => -- ST_CLS_IDLE
				           -- Step IDLE, wait until display ready to write again
				           -- and minimum of \ref c_i_subsecond time has elapsed.
				s_cls_wr_clear_display <= '0';
				s_cls_wr_text_line1    <= '0';
				s_cls_wr_text_line2    <= '0';

				if (parm_fast_simulation = 0) then
					if ((s_i >= c_i_subsecond) and (s_cls_command_ready = '1')) then
						s_cls_upd_nx_state <= ST_CLS_CLEAR;
					else
						s_cls_upd_nx_state <= ST_CLS_IDLE;
					end if;
				else
					if ((s_i >= c_i_subsecond_fast) and (s_cls_command_ready = '1')) then
						s_cls_upd_nx_state <= ST_CLS_CLEAR;
					else
						s_cls_upd_nx_state <= ST_CLS_IDLE;
					end if;
				end if;
		end case;
	end process p_fsm_comb_run_display_update;

	-- TX ONLY UART function to print the two lines of the PMOD CLS output as a
	-- single line on the dumb terminal, at the same rate as the PMOD CLS updates.
	s_uart_tx_go <= s_cls_wr_clear_display;

	u_uart_tx_only : entity work.uart_tx_only(moore_fsm_recursive)
		generic map (
			parm_BAUD => 115200
		)
		port map (
			i_clk_20mhz   => s_clk_20mhz,
			i_rst_20mhz   => s_rst_20mhz,
			i_clk_7_37mhz => s_clk_7_37mhz,
			i_rst_7_37mhz => s_rst_7_37mhz,
			eo_uart_tx    => eo_uart_tx,
			i_tx_data     => s_uart_txdata,
			i_tx_valid    => s_uart_txvalid,
			o_tx_ready    => s_uart_txready
		);

	-- UART TX machine, the 34 bytes of \ref s_uart_dat_ascii_line
	-- are feed into the UART TX ONLY FIFO upon every pulse of the
	-- \ref s_uart_tx_go signal. The UART TX ONLY FIFO machine will
	-- automatically dequeue any bytes present in the queue and quickly
	-- transmit them, one-at-a-time at the \ref parm_BAUD baudrate.

	-- UART TX machine, synchronous state and auxiliary counting register.
	p_uartfeed_fsm_state_aux : process(s_clk_20mhz)
	begin
		if rising_edge(s_clk_20mhz) then
			if (s_rst_20mhz = '1') then
				s_uartfeed_pr_state <= ST_UARTFEED_IDLE;
				s_uart_k_aux        <= 0;
			else
				s_uartfeed_pr_state <= s_uartfeed_nx_state;
				s_uart_k_aux        <= s_uart_k_val;
			end if;
		end if;
	end process p_uartfeed_fsm_state_aux;

	-- UART TX machine, combinatorial next state and auxiliary counting register.
	p_uartfeed_fsm_nx_out : process(s_uartfeed_pr_state, s_uart_k_aux,
			s_uart_tx_go, s_uart_dat_ascii_line, s_uart_txready)
	begin
		case (s_uartfeed_pr_state) is
			when ST_UARTFEED_DATA =>
				-- Enqueue the \ref c_uart_k_preset count of bytes from signal
				-- \ref s_uart_dat_ascii_line. Then transition to the WAIT state.
				s_uart_txdata  <= s_uart_dat_ascii_line(((8 * s_uart_k_aux) - 1) downto (8 * (s_uart_k_aux - 1)));
				s_uart_txvalid <= '1';
				s_uart_k_val   <= s_uart_k_aux - 1;

				if (s_uart_k_aux <= 1) then
					s_uartfeed_nx_state <= ST_UARTFEED_WAIT;
				else
					s_uartfeed_nx_state <= ST_UARTFEED_DATA;
				end if;

			when ST_UARTFEED_WAIT =>
				-- Wait for the \ref s_uart_tx_go pulse to be idle, and then
				-- transition to the IDLE state.
				s_uart_txdata  <= x"00";
				s_uart_txvalid <= '0';
				s_uart_k_val   <= s_uart_k_aux;

				if (s_uart_tx_go = '0') then
					s_uartfeed_nx_state <= ST_UARTFEED_IDLE;
				else
					s_uartfeed_nx_state <= ST_UARTFEED_WAIT;
				end if;

			when others => -- ST_UARTFEED_IDLE
				           -- IDLE the FSM while waiting for a pulse on s_uart_tx_go.
				           -- The value of \ref s_uart_txready is also checked as to
				           -- not overflow the UART TX buffer. If both signals are a
				           -- TRUE value, then transition to enqueueing data.
				s_uart_txdata  <= x"00";
				s_uart_txvalid <= '0';
				s_uart_k_val   <= c_uart_k_preset;

				if ((s_uart_tx_go = '1') and (s_uart_txready = '1')) then
					s_uartfeed_nx_state <= ST_UARTFEED_DATA;
				else
					s_uartfeed_nx_state <= ST_UARTFEED_IDLE;
				end if;
		end case;
	end process p_uartfeed_fsm_nx_out;

end architecture fsm_rtl;
--------------------------------------------------------------------------------
