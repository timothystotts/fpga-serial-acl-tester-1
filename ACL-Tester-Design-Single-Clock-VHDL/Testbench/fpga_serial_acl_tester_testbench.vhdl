--------------------------------------------------------------------------------
-- \file fpga_serial_acl_tester_testbench.vhdl
--
-- \brief Accelerometer control and reading, testbench.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
entity fpga_serial_acl_tester_testbench is
	generic(
		parm_fast_simulation : integer := 1;
		parm_log_file_name : string := "log_fpga_serial_acl_tester_no_test.txt"
	);
end entity fpga_serial_acl_tester_testbench;
--------------------------------------------------------------------------------
architecture simulation of fpga_serial_acl_tester_testbench is
	component fpga_serial_acl_tester is
		generic (
			parm_fast_simulation : integer := 0);
		port (
			CLK100MHZ         : in  std_logic;
			i_resetn          : in  std_logic;
			eo_pmod_acl2_sck  : out std_logic;
			eo_pmod_acl2_csn  : out std_logic;
			eo_pmod_acl2_copi : out std_logic;
			ei_pmod_acl2_cipo : in  std_logic;
			ei_pmod_acl2_int1 : in  std_logic;
			ei_pmod_acl2_int2 : in  std_logic;
			eo_led0_b         : out std_logic;
			eo_led1_b         : out std_logic;
			eo_led2_b         : out std_logic;
			eo_led3_b         : out std_logic;
			eo_led0_r         : out std_logic;
			eo_led1_r         : out std_logic;
			eo_led2_r         : out std_logic;
			eo_led3_r         : out std_logic;
			eo_led0_g         : out std_logic;
			eo_led1_g         : out std_logic;
			eo_led2_g         : out std_logic;
			eo_led3_g         : out std_logic;
			eo_led4           : out std_logic;
			eo_led5           : out std_logic;
			eo_led6           : out std_logic;
			eo_led7           : out std_logic;

			ei_sw0          : in  std_logic;
			ei_sw1          : in  std_logic;
			ei_sw2          : in  std_logic;
			ei_sw3          : in  std_logic;
			ei_btn0         : in  std_logic;
			ei_btn1         : in  std_logic;
			ei_btn2         : in  std_logic;
			ei_btn3         : in  std_logic;

			eo_pmod_cls_csn : out std_logic;
			eo_pmod_cls_sck : out std_logic;
			eo_pmod_cls_dq0 : out std_logic;
			ei_pmod_cls_dq1 : in  std_logic;
			eo_uart_tx      : out std_logic;
			ei_uart_rx      : in  std_logic;

			eo_ssd_pmod0 : out std_logic_vector(7 downto 0)
		);
	end component fpga_serial_acl_tester;

	component tbc_clock_gen is
		generic(
			parm_main_clock_period : time := 10 ns;
			parm_reset_cycle_count : positive := 5
		);
		port(
			co_main_clock : out std_logic;
			con_main_reset : out std_logic
		);
	end component tbc_clock_gen;

	component tbc_board_ui is
		generic(
			parm_button_count : positive := 4;
			parm_switch_count : positive := 4;
			parm_rgb_led_count : positive := 4;
			parm_basic_led_count : positive := 4;
			parm_pwm_period_milliseconds : natural := 10;
			parm_pwm_color_max_duty_cycle : natural := 8;
			parm_pwm_basic_max_duty_cycle : natural := 9
			);
		port(
			ci_main_clock : in std_logic;
			cin_main_reset : in std_logic;
			co_buttons : out std_logic_vector((parm_button_count - 1) downto 0);
			co_switches : out std_logic_vector((parm_switch_count - 1) downto 0);
			ci_led_blue : in std_logic_vector((parm_rgb_led_count - 1) downto 0);
			ci_led_red : in std_logic_vector((parm_rgb_led_count - 1) downto 0);
			ci_led_green : in std_logic_vector((parm_rgb_led_count - 1) downto 0);
			ci_led_basic : in std_logic_vector((parm_basic_led_count - 1) downto 0)
			);
	end component tbc_board_ui;

	component tbc_pmod_acl2 is
		port(
			ci_sck : in std_logic;
			ci_csn : in std_logic;
			ci_copi : in std_logic;
			co_cipo : out std_logic;
			co_int1 : out std_logic;
			co_int2 : out std_logic
			);
	end component tbc_pmod_acl2;
	
	component tbc_pmod_cls is
		port(
			ci_sck : in std_logic;
			ci_csn : in std_logic;
			ci_copi : in std_logic;
			co_cipo : out std_logic
			);
	end component tbc_pmod_cls;

	component tbc_board_uart is
		port(
			ci_rxd : in std_logic;
			co_txd : out std_logic
			);
	end component tbc_board_uart;
	
	component tbc_pmod_7sd is
		port(
			ci_mux_ena : in std_logic;
			ci_mux_dat : in std_logic_vector(6 downto 0)
			);
	end component tbc_pmod_7sd;
	
	constant c_clock_period : time := 10 ns;
	constant c_reset_clock_count : positive := 100;
	
	signal run_clock             : boolean;

	signal CLK100MHZ         : std_logic;
	signal si_resetn         : std_logic;
	signal so_pmod_acl2_sck  : std_logic;
	signal so_pmod_acl2_csn  : std_logic;
	signal so_pmod_acl2_copi : std_logic;
	signal si_pmod_acl2_cipo : std_logic;
	signal si_pmod_acl2_int1 : std_logic;
	signal si_pmod_acl2_int2 : std_logic;
	signal so_led0_b         : std_logic;
	signal so_led1_b         : std_logic;
	signal so_led2_b         : std_logic;
	signal so_led3_b         : std_logic;
	signal so_led0_r         : std_logic;
	signal so_led1_r         : std_logic;
	signal so_led2_r         : std_logic;
	signal so_led3_r         : std_logic;
	signal so_led0_g         : std_logic;
	signal so_led1_g         : std_logic;
	signal so_led2_g         : std_logic;
	signal so_led3_g         : std_logic;
	signal so_led4           : std_logic;
	signal so_led5           : std_logic;
	signal so_led6           : std_logic;
	signal so_led7           : std_logic;
	signal si_btn0           : std_logic;
	signal si_btn1           : std_logic;
	signal si_btn2           : std_logic;
	signal si_btn3           : std_logic;
	signal si_sw0            : std_logic;
	signal si_sw1            : std_logic;
	signal si_sw2            : std_logic;
	signal si_sw3            : std_logic;
	signal so_pmod_cls_csn   : std_logic;
	signal so_pmod_cls_sck   : std_logic;
	signal so_pmod_cls_dq0   : std_logic;
	signal si_pmod_cls_dq1   : std_logic;
	signal so_uart_tx        : std_logic;
	signal si_uart_rx        : std_logic;
	signal so_ssd_pmod0      : std_logic_vector(7 downto 0);

	signal si_buttons : std_logic_vector(3 downto 0);
	signal si_switches : std_logic_vector(3 downto 0);
	signal so_led_red : std_logic_vector(3 downto 0);
	signal so_led_green : std_logic_vector(3 downto 0);
	signal so_led_blue : std_logic_vector(3 downto 0);
	signal so_led_basic : std_logic_vector(3 downto 0);
begin
	-- Configure alert/log log file
	p_set_logfile : process
	begin
		TranscriptOpen(parm_log_file_name, WRITE_MODE);
		SetTranscriptMirror;
		SetLogEnable(INFO, TRUE);

		Print("FPGA_SERIAL_ACL_TESTER_TESTBENCH starting simulation.");
		Print("Logging enabled for ALWAYS, INFO.");

		wait;
	end process p_set_logfile;

	-- Unit Under Test: fpga_serial_acl_tester
	uut_fpga_serial_acl_tester : fpga_serial_acl_tester
		generic map (
			parm_fast_simulation => parm_fast_simulation)
		port map (
			CLK100MHZ         => CLK100MHZ,
			i_resetn          => si_resetn,
			eo_pmod_acl2_sck  => so_pmod_acl2_sck,
			eo_pmod_acl2_csn  => so_pmod_acl2_csn,
			eo_pmod_acl2_copi => so_pmod_acl2_copi,
			ei_pmod_acl2_cipo => si_pmod_acl2_cipo,
			ei_pmod_acl2_int1 => si_pmod_acl2_int1,
			ei_pmod_acl2_int2 => si_pmod_acl2_int2,
			eo_led0_b         => so_led0_b,
			eo_led1_b         => so_led1_b,
			eo_led2_b         => so_led2_b,
			eo_led3_b         => so_led3_b,
			eo_led0_r         => so_led0_r,
			eo_led1_r         => so_led1_r,
			eo_led2_r         => so_led2_r,
			eo_led3_r         => so_led3_r,
			eo_led0_g         => so_led0_g,
			eo_led1_g         => so_led1_g,
			eo_led2_g         => so_led2_g,
			eo_led3_g         => so_led3_g,
			eo_led4           => so_led4,
			eo_led5           => so_led5,
			eo_led6           => so_led6,
			eo_led7           => so_led7,
			ei_sw0            => si_sw0,
			ei_sw1            => si_sw1,
			ei_sw2            => si_sw2,
			ei_sw3            => si_sw3,
			ei_btn0           => si_btn0,
			ei_btn1           => si_btn1,
			ei_btn2           => si_btn2,
			ei_btn3           => si_btn3,
			eo_pmod_cls_csn   => so_pmod_cls_csn,
			eo_pmod_cls_sck   => so_pmod_cls_sck,
			eo_pmod_cls_dq0   => so_pmod_cls_dq0,
			ei_pmod_cls_dq1   => si_pmod_cls_dq1,
			eo_uart_tx        => so_uart_tx,
			ei_uart_rx        => si_uart_rx,
			eo_ssd_pmod0      => so_ssd_pmod0
		);

	-- Main external clock and reset generator
	u_tbc_clock_gen : tbc_clock_gen
		generic map(
			parm_main_clock_period => c_clock_period,
			parm_reset_cycle_count => c_reset_clock_count
		)
		port map(
			co_main_clock => CLK100MHZ,
			con_main_reset => si_resetn
		);

	-- Drive and Watch User low-level Interface of FPGA dev-board
	u_tbc_board_ui : tbc_board_ui
		generic map(
			parm_button_count => 4,
			parm_switch_count => 4,
			parm_rgb_led_count => 4,
			parm_basic_led_count => 4
			)
		port map(
			ci_main_clock => CLK100MHZ,
			cin_main_reset => si_resetn,
			co_buttons => si_buttons,
			co_switches => si_switches,
			ci_led_blue => so_led_blue,
			ci_led_red => so_led_red,
			ci_led_green => so_led_green,
			ci_led_basic => so_led_basic
			);
	
	si_btn0 <= si_buttons(0);
	si_btn1 <= si_buttons(1);
	si_btn2 <= si_buttons(2);
	si_btn3 <= si_buttons(3);

	si_sw0 <= si_switches(0);
	si_sw1 <= si_switches(1);
	si_sw2 <= si_switches(2);
	si_sw3 <= si_switches(3);

	so_led_red(0) <= so_led0_r;
	so_led_red(1) <= so_led1_r;
	so_led_red(2) <= so_led2_r;
	so_led_red(3) <= so_led3_r;

	so_led_green(0) <= so_led0_g;
	so_led_green(1) <= so_led1_g;
	so_led_green(2) <= so_led2_g;
	so_led_green(3) <= so_led3_g;

	so_led_blue(0) <= so_led0_b;
	so_led_blue(1) <= so_led1_b;
	so_led_blue(2) <= so_led2_b;
	so_led_blue(3) <= so_led3_b;

	so_led_basic(0) <= so_led4;
	so_led_basic(1) <= so_led5;
	so_led_basic(2) <= so_led6;
	so_led_basic(3) <= so_led7;

	-- Simulate the Pmod ACL2 peripheral
	u_tbc_pmod_acl2 : tbc_pmod_acl2
		port map(
			ci_sck => so_pmod_acl2_sck,
			ci_csn => so_pmod_acl2_csn,
			ci_copi => so_pmod_acl2_copi,
			co_cipo => si_pmod_acl2_cipo,
			co_int1 => si_pmod_acl2_int1,
			co_int2 => si_pmod_acl2_int2
			);

	-- Simulate the Pmod CLS peripheral
	u_tbc_pmod_cls : tbc_pmod_cls
		port map(
			ci_sck => so_pmod_cls_sck,
			ci_csn => so_pmod_cls_csn,
			ci_copi => so_pmod_cls_dq0,
			co_cipo => si_pmod_cls_dq1
			);

	-- Simulate the board UART peripheral
	u_tbc_board_uart : tbc_board_uart
		port map(
			ci_rxd => so_uart_tx,
			co_txd => si_uart_rx
			);
	
	-- Simulate the Pmod SSD (7SD) peripheral
	u_tbc_pmod_7sd : tbc_pmod_7sd
		port map(
			ci_mux_ena => so_ssd_pmod0(7),
			ci_mux_dat => so_ssd_pmod0(6 downto 0)
			);
end architecture simulation;
--------------------------------------------------------------------------------
