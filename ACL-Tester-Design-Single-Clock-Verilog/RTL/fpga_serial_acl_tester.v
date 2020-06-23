/*------------------------------------------------------------------------------
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
------------------------------------------------------------------------------*/
/**-----------------------------------------------------------------------------
-- \file fpga_serial_acl_tester.v
--
-- \brief A FPGA top-level design with the PMOD ACL2 custom driver.
-- This design operates the ADXL362 in one of multiple possible operational
-- modes for Accelerometer data capture. The PMOD CLS is used to display raw
-- data for: X-Axis, Y-Axis, Z-Axis, Temperature. Color and basic LEDs
-- are used to display additional information, including Activity and Inactivity
-- motion detection.
------------------------------------------------------------------------------*/
//------------------------------------------------------------------------------
//Multiple Moore Machines
//Part 1: Module header:--------------------------------------------------------
module fpga_serial_acl_tester (
	/* external clock and active-low reset */
	CLK100MHZ, i_resetn,
	/* PMOD ACL2 SPI bus 4-wire and two interrupt signals */
	eo_pmod_acl2_sck, eo_pmod_acl2_ssn, eo_pmod_acl2_mosi, ei_pmod_acl2_miso,
	ei_pmod_acl2_int1, ei_pmod_acl2_int2,
	/* blue LEDs of the multicolor */
	eo_led0_b, eo_led1_b, eo_led2_b, eo_led3_b,
	/* red LEDs of the multicolor */
	eo_led0_r, eo_led1_r, eo_led2_r, eo_led3_r,
	/* green LEDs of the multicolor */
	eo_led0_g, eo_led1_g, eo_led2_g, eo_led3_g,
	/* green LEDs of the regular LEDs */
	eo_led4, eo_led5, eo_led6, eo_led7,
	/* four switches */
	ei_sw0, ei_sw1, ei_sw2, ei_sw3,
	/* PMOD CLS SPI bus 4-wire */
	eo_pmod_cls_ssn, eo_pmod_cls_sck, eo_pmod_cls_dq0,
	ei_pmod_cls_dq1,
	/* Arty A7-100T UART TX and RX signals */
	eo_uart_tx, ei_uart_rx);

/* Disable or enable fast FSM delays for simulation instead of impelementation. */
parameter integer parm_fast_simulation = 0;

input wire CLK100MHZ;
input wire i_resetn;

output wire eo_pmod_acl2_sck;
output wire eo_pmod_acl2_ssn;
output wire eo_pmod_acl2_mosi;
input wire ei_pmod_acl2_miso;
input wire ei_pmod_acl2_int1;
input wire ei_pmod_acl2_int2;

output reg eo_led0_b;
output reg eo_led1_b;
output reg eo_led2_b;
output reg eo_led3_b;

output reg eo_led0_r;
output reg eo_led1_r;
output reg eo_led2_r;
output reg eo_led3_r;

output reg eo_led0_g;
output reg eo_led1_g;
output reg eo_led2_g;
output reg eo_led3_g;

output reg eo_led4;
output reg eo_led5;
output reg eo_led6;
output reg eo_led7;

input wire ei_sw0;
input wire ei_sw1;
input wire ei_sw2;
input wire ei_sw3;

output wire eo_pmod_cls_ssn;
output wire eo_pmod_cls_sck;
output wire eo_pmod_cls_dq0;
input wire ei_pmod_cls_dq1;

output wire eo_uart_tx;
input wire ei_uart_rx;

//Part 2: Declarations----------------------------------------------------------

/* A re-entrant function that converts a 4-bit part-select to an 8-bit ASCII
   hexadecimal character. */
function automatic [7:0] ascii_of_hdigit(input [3:0] bchex_val);
	begin
		if (bchex_val < 10) ascii_of_hdigit = 8'h30 + {4'h0, bchex_val};
		else ascii_of_hdigit = 8'h37 + {4'h0, bchex_val};
	end
endfunction

/* Tester FSM state declarations */
`define c_tester_state_bits 4
localparam [(`c_tester_state_bits - 1):0] ST_0 = 0;
localparam [(`c_tester_state_bits - 1):0] ST_1 = 1;
localparam [(`c_tester_state_bits - 1):0] ST_2 = 2;
localparam [(`c_tester_state_bits - 1):0] ST_3 = 3;
localparam [(`c_tester_state_bits - 1):0] ST_4 = 4;
localparam [(`c_tester_state_bits - 1):0] ST_5 = 5;
localparam [(`c_tester_state_bits - 1):0] ST_6 = 6;
localparam [(`c_tester_state_bits - 1):0] ST_7 = 7;
localparam [(`c_tester_state_bits - 1):0] ST_8 = 8;
localparam [(`c_tester_state_bits - 1):0] ST_9 = 9;
localparam [(`c_tester_state_bits - 1):0] ST_A = 10;
localparam [(`c_tester_state_bits - 1):0] ST_B = 11;


reg [(`c_tester_state_bits - 1):0] s_tester_pr_state = ST_0;
reg [(`c_tester_state_bits - 1):0] s_tester_nx_state = ST_0;


/* MMCM and Processor System Reset signals for PLL clock generation from the
   Clocking Wizard and Synchronous Reset generation from the Processor System
   Reset module. */
wire s_mmcm_locked;
wire s_clk_20mhz;
wire s_rst_20mhz;
wire s_clk_7_37mhz;
wire s_rst_7_37mhz;
wire s_ce_2_5mhz;

/* Definitions of the Standard SPI driver to pass to the ACL2 and CLS drivers */
`define c_stand_spi_tx_fifo_count_bits 5
`define c_stand_spi_rx_fifo_count_bits 5
`define c_stand_spi_wait_count_bits 2

/* Tri-state connectivity with the PMOD ACL2. */
wire so_pmod_acl2_sck_o;
wire so_pmod_acl2_sck_t;
wire so_pmod_acl2_ssn_o;
wire so_pmod_acl2_ssn_t;
wire so_pmod_acl2_mosi_o;
wire so_pmod_acl2_mosi_t;

/* Command to Operating Mode variables for the Tester FSM. */
wire s_acl2_command_ready;
reg s_acl2_cmd_init_linked_mode;
reg s_acl2_cmd_start_linked_mode;
reg s_acl2_cmd_init_measur_mode;
reg s_acl2_cmd_start_measur_mode;
reg s_acl2_cmd_soft_reset_acl2;

/* Data and indications to be displayed on the LEDs and CLS. */
wire [7:0] s_acl2_reg_status;
wire s_acl2_reg_status_activity_stretched;
wire s_acl2_reg_status_inactivity_stretched;
wire [63:0] s_hex_3axis_temp_measurements_final;
wire s_hex_3axis_temp_measurements_valid;
reg [63:0] s_hex_3axis_temp_measurements_display;

/* Tester FSM general outputs that translate to LED color display. */
reg s_active_init_display;
reg s_active_run_display;
reg s_mode_is_measur_val;
reg s_mode_is_measur_aux;
reg s_mode_is_linked_val;
reg s_mode_is_linked_aux;

/* Switch 0:1 debounced signals. */
wire si_sw0_debounced;
wire si_sw1_debounced;

/* Connections and variables for instance of the PMOD CLS SPI SOLO driver. */
`define c_cls_update_fsm_bits 2
localparam [(`c_cls_update_fsm_bits - 1):0] ST_CLS_IDLE = 0;
localparam [(`c_cls_update_fsm_bits - 1):0] ST_CLS_CLEAR = 1;
localparam [(`c_cls_update_fsm_bits - 1):0] ST_CLS_LINE1 = 2;
localparam [(`c_cls_update_fsm_bits - 1):0] ST_CLS_LINE2 = 3;

reg [(`c_cls_update_fsm_bits - 1):0] s_cls_upd_pr_state;
reg [(`c_cls_update_fsm_bits - 1):0] s_cls_upd_nx_state;

/* Timer steps for the continuous refresh of the PMOD CLS display:
   Wait 0.2 seconds
   Clear Display
   Wait 1.0 milliseconds
   Write Line 1
   Wait 1.0 milliseconds
   Write Line 2
   Repeat the above. */
`define c_cls_update_timer_bits 24
/* The one-second refresh is actually 1/5 of a second to have a 5 Hz refresh,
   approximately. If \ref parm_fast_simulation is defined, then tne once
   second refresh is actually 1/100 of a second to have a 100 Hz refresh
   for waveform viewing. */
localparam [(`c_cls_update_timer_bits - 1):0] c_i_subsecond =
	parm_fast_simulation ? (2500000 / 100 - 1) : (2500000 / 5 - 1);
localparam [(`c_cls_update_timer_bits - 1):0] c_i_one_ms =
	parm_fast_simulation ? (2500 - 1) : (2500 - 1);
localparam [(`c_cls_update_timer_bits - 1):0] c_i_step = 4 - 1;
localparam [(`c_cls_update_timer_bits - 1):0] c_i_max = c_i_subsecond;

reg [(`c_cls_update_timer_bits - 1):0] s_i;

/* Connections and variables for controlling the PMOD CLS custom driver. */
wire s_cls_command_ready;
reg s_cls_wr_clear_display;
reg s_cls_wr_text_line1;
reg s_cls_wr_text_line2;
wire [(16*8-1):0] s_cls_dat_ascii_line1;
wire [(16*8-1):0] s_cls_dat_ascii_line2;
wire [(16*8-1):0] s_cls_txt_ascii_line1;
wire [(16*8-1):0] s_cls_txt_ascii_line2;

/* UART TX update FSM state declarations */
`define c_uarttx_feed_fsm_bits 2
localparam [(`c_uarttx_feed_fsm_bits - 1):0] ST_UARTFEED_IDLE = 0;
localparam [(`c_uarttx_feed_fsm_bits - 1):0] ST_UARTFEED_DATA = 1;
localparam [(`c_uarttx_feed_fsm_bits - 1):0] ST_UARTFEED_WAIT = 2;

reg [(`c_uarttx_feed_fsm_bits - 1):0] s_uartfeed_pr_state;
reg [(`c_uarttx_feed_fsm_bits - 1):0] s_uartfeed_nx_state;

localparam [5:0] c_uart_k_preset = 34;

/* UART TX signals for UART TX update FSM */
wire [(34*8-1):0] s_uart_dat_ascii_line;
wire s_uart_tx_go;
reg [7:0] s_uart_txdata;
reg s_uart_txvalid;
wire s_uart_txready;
reg [5:0] s_uart_k_val;
reg [5:0] s_uart_k_aux;

/* Connections for inferring tri-state buffer for CLS SPI bus outputs. */
wire so_pmod_cls_sck_o;
wire so_pmod_cls_sck_t;
wire so_pmod_cls_ssn_o;
wire so_pmod_cls_ssn_t;
wire so_pmod_cls_mosi_o;
wire so_pmod_cls_mosi_t;

/* Connections for reparse of the eight PMOD ACL2 measurement reading bytes */
wire [7:0] s_hex_xaxis_msb;
wire [7:0] s_hex_xaxis_lsb;
wire [7:0] s_hex_yaxis_msb;
wire [7:0] s_hex_yaxis_lsb;
wire [7:0] s_hex_zaxis_msb;
wire [7:0] s_hex_zaxis_lsb;
wire [7:0] s_hex_temp_msb;
wire [7:0] s_hex_temp_lsb;

/* Connections for reparse of the eight PMOD ACL2 measurement reading bytes */
localparam signed [15:0] c_signed_zero = 0;
wire signed [15:0] s_txt_xaxis_s16;
wire signed [15:0] s_txt_yaxis_s16;
wire signed [15:0] s_txt_zaxis_s16;
wire signed [15:0] s_txt_temp_s16;
wire [15:0] s_txt_xaxis_u16;
wire [15:0] s_txt_yaxis_u16;
wire [15:0] s_txt_zaxis_u16;
wire [15:0] s_txt_temp_u16;

/* Connections for Hex to ASCII reparse of the sixteen digits of the eight
   PMOD ACL2 measurement reading bytes */
wire [7:0] s_char_xaxis_msb_3;
wire [7:0] s_char_xaxis_msb_2;
wire [7:0] s_char_xaxis_lsb_1;
wire [7:0] s_char_xaxis_lsb_0;
wire [7:0] s_char_yaxis_msb_3;
wire [7:0] s_char_yaxis_msb_2;
wire [7:0] s_char_yaxis_lsb_1;
wire [7:0] s_char_yaxis_lsb_0;
wire [7:0] s_char_zaxis_msb_3;
wire [7:0] s_char_zaxis_msb_2;
wire [7:0] s_char_zaxis_lsb_1;
wire [7:0] s_char_zaxis_lsb_0;
wire [7:0] s_char_temp_msb_3;
wire [7:0] s_char_temp_msb_2;
wire [7:0] s_char_temp_lsb_1;
wire [7:0] s_char_temp_lsb_0;

/* Signals for Decimal to ASCII reparse of the sixteen digits of the eight
   PMOD ACL2 measurement reading bytes */
wire [15:0] s_dat_xaxis_m0;
wire [15:0] s_dat_xaxis_f0;
wire [15:0] s_dat_xaxis_f1;
wire [15:0] s_dat_xaxis_f2;

wire [7:0] s_char_xaxis_sg;
wire [7:0] s_char_xaxis_m0;
wire [7:0] s_char_xaxis_f0;
wire [7:0] s_char_xaxis_f1;
wire [7:0] s_char_xaxis_f2;

wire [15:0] s_dat_yaxis_m0;
wire [15:0] s_dat_yaxis_f0;
wire [15:0] s_dat_yaxis_f1;
wire [15:0] s_dat_yaxis_f2;

wire [7:0] s_char_yaxis_sg;
wire [7:0] s_char_yaxis_m0;
wire [7:0] s_char_yaxis_f0;
wire [7:0] s_char_yaxis_f1;
wire [7:0] s_char_yaxis_f2;

wire [15:0] s_dat_zaxis_m0;
wire [15:0] s_dat_zaxis_f0;
wire [15:0] s_dat_zaxis_f1;
wire [15:0] s_dat_zaxis_f2;

wire [7:0] s_char_zaxis_sg;
wire [7:0] s_char_zaxis_m0;
wire [7:0] s_char_zaxis_f0;
wire [7:0] s_char_zaxis_f1;
wire [7:0] s_char_zaxis_f2;

wire [15:0] s_dat_temp_m3;
wire [15:0] s_dat_temp_m2;
wire [15:0] s_dat_temp_m1;
wire [15:0] s_dat_temp_m0;

wire [7:0] s_char_temp_m3;
wire [7:0] s_char_temp_m2;
wire [7:0] s_char_temp_m1;
wire [7:0] s_char_temp_m0;

/* Extra MMCM signals for full connectivity to the MMCM primative */
wire s_clk_ignore_clk0b;
wire s_clk_ignore_clk1b;
wire s_clk_ignore_clk2;
wire s_clk_ignore_clk2b;
wire s_clk_ignore_clk3;
wire s_clk_ignore_clk3b;
wire s_clk_ignore_clk4;
wire s_clk_ignore_clk5;
wire s_clk_ignore_clk6;
wire s_clk_ignore_clkfboutb;
wire s_clk_clkfbout;
wire s_clk_pwrdwn;
wire s_clk_resetin;

//Part 3: Statements------------------------------------------------------------
assign s_clk_pwrdwn = 1'b0;
assign s_clk_resetin = (~i_resetn);

// MMCME2_BASE: Base Mixed Mode Clock Manager
//              Artix-7
// Xilinx HDL Language Template, version 2019.1

MMCME2_BASE #(
  .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
  .CLKFBOUT_MULT_F(36.125),  // Multiply value for all CLKOUT (2.000-64.000).
  .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
  .CLKIN1_PERIOD(10.0),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
  // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
  .CLKOUT1_DIVIDE(98),
  .CLKOUT2_DIVIDE(1),
  .CLKOUT3_DIVIDE(1),
  .CLKOUT4_DIVIDE(1),
  .CLKOUT5_DIVIDE(1),
  .CLKOUT6_DIVIDE(1),
  .CLKOUT0_DIVIDE_F(36.125),  // Divide amount for CLKOUT0 (1.000-128.000).
  // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
  .CLKOUT0_DUTY_CYCLE(0.5),
  .CLKOUT1_DUTY_CYCLE(0.5),
  .CLKOUT2_DUTY_CYCLE(0.5),
  .CLKOUT3_DUTY_CYCLE(0.5),
  .CLKOUT4_DUTY_CYCLE(0.5),
  .CLKOUT5_DUTY_CYCLE(0.5),
  .CLKOUT6_DUTY_CYCLE(0.5),
  // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
  .CLKOUT0_PHASE(0.0),
  .CLKOUT1_PHASE(0.0),
  .CLKOUT2_PHASE(0.0),
  .CLKOUT3_PHASE(0.0),
  .CLKOUT4_PHASE(0.0),
  .CLKOUT5_PHASE(0.0),
  .CLKOUT6_PHASE(0.0),
  .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
  .DIVCLK_DIVIDE(5),         // Master division value (1-106)
  .REF_JITTER1(0.010),       // Reference input jitter in UI (0.000-0.999).
  .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
)
MMCME2_BASE_inst (
  // Clock Outputs: 1-bit (each) output: User configurable clock outputs
  .CLKOUT0(s_clk_20mhz),              // 1-bit output: CLKOUT0
  .CLKOUT0B(s_clk_ignore_clk0b),      // 1-bit output: Inverted CLKOUT0
  .CLKOUT1(s_clk_7_37mhz),            // 1-bit output: CLKOUT1
  .CLKOUT1B(s_clk_ignore_clk1b),      // 1-bit output: Inverted CLKOUT1
  .CLKOUT2(s_clk_ignore_clk2),        // 1-bit output: CLKOUT2
  .CLKOUT2B(s_clk_ignore_clk2b),      // 1-bit output: Inverted CLKOUT2
  .CLKOUT3(s_clk_ignore_clk3),        // 1-bit output: CLKOUT3
  .CLKOUT3B(s_clk_ignore_clk3b),      // 1-bit output: Inverted CLKOUT3
  .CLKOUT4(s_clk_ignore_clk4),        // 1-bit output: CLKOUT4
  .CLKOUT5(s_clk_ignore_clk5),        // 1-bit output: CLKOUT5
  .CLKOUT6(s_clk_ignore_clk6),        // 1-bit output: CLKOUT6
  // Feedback Clocks: 1-bit (each) output: Clock feedback ports
  .CLKFBOUT(s_clk_clkfbout),          // 1-bit output: Feedback clock
  .CLKFBOUTB(s_clk_ignore_clkfboutb), // 1-bit output: Inverted CLKFBOUT
  // Status Ports: 1-bit (each) output: MMCM status ports
  .LOCKED(s_mmcm_locked),             // 1-bit output: LOCK
  // Clock Inputs: 1-bit (each) input: Clock input
  .CLKIN1(CLK100MHZ),                 // 1-bit input: Clock
  // Control Ports: 1-bit (each) input: MMCM control ports
  .PWRDWN(s_clk_pwrdwn),              // 1-bit input: Power-down
  .RST(s_clk_resetin),                // 1-bit input: Reset
  // Feedback Clocks: 1-bit (each) input: Clock feedback ports
  .CLKFBIN(s_clk_clkfbout)            // 1-bit input: Feedback clock
);

// End of MMCME2_BASE_inst instantiation

/* Reset Synchronization for 20 MHz clocks. */
arty_reset_synchronizer #() u_reset_synch_20mhz(
	.i_clk_mhz(s_clk_20mhz),
	.i_rstn_global(i_resetn),
	.o_rst_mhz(s_rst_20mhz)
	);

/* Reset Synchronization for 20 MHz clocks. */
arty_reset_synchronizer #() u_reset_synch_7_37mhz (
	.i_clk_mhz(s_clk_7_37mhz),
	.i_rstn_global(i_resetn),
	.o_rst_mhz(s_rst_7_37mhz)
	);

/* 4x spi clock enable divider for PMOD CLS SCK output. No
   generated clock constraint. The 20 MHz clock is divided
   down to 2.5 MHz; and later divided down to 625 KHz on
   the PMOD CLS bus. */
clock_enable_divider #(.par_ce_divisor(8)) u_2_5mhz_ce_divider (
	.o_ce_div(s_ce_2_5mhz),
	.i_clk_mhz(s_clk_20mhz),
	.i_rst_mhz(s_rst_20mhz),
	.i_ce_mhz(1'b1));

/* Synchronize and debounce the SW0 incoming switch position on the Arty A7. */
switch_debouncer #() u_switch_deb_sw0 (
	si_sw0_debounced, s_clk_20mhz, s_rst_20mhz, ei_sw0);

/* Synchronize and debounce the SW1 incoming switch position on the Arty A7. */
switch_debouncer #() u_switch_deb_sw1 (
	si_sw1_debounced, s_clk_20mhz, s_rst_20mhz, ei_sw1);

/* Provide possible tri-state for later design revision for the PMOD ACL2 SPI
   output ports. */
assign eo_pmod_acl2_sck = so_pmod_acl2_sck_t ? 1'bz : so_pmod_acl2_sck_o;
assign eo_pmod_acl2_ssn = so_pmod_acl2_ssn_t ? 1'bz : so_pmod_acl2_ssn_o;
assign eo_pmod_acl2_mosi = so_pmod_acl2_mosi_t ? 1'bz : so_pmod_acl2_mosi_o;

/* PMOD ACL2 Custom Driver instance. */
pmod_acl2_custom_driver #(
	.parm_fast_simulation(parm_fast_simulation),
	.FCLK(20000000),
	.parm_ext_spi_clk_ratio(4),
	.parm_wait_cyc_bits(`c_stand_spi_wait_count_bits)
	) u_pmod_acl2_custom_driver (
	.i_clk_20mhz(s_clk_20mhz),
	.i_rst_20mhz(s_rst_20mhz),
	.eo_sck_t(so_pmod_acl2_sck_t),
	.eo_sck_o(so_pmod_acl2_sck_o),
	.eo_ssn_t(so_pmod_acl2_ssn_t),
	.eo_ssn_o(so_pmod_acl2_ssn_o),
	.eo_mosi_t(so_pmod_acl2_mosi_t),
	.eo_mosi_o(so_pmod_acl2_mosi_o),
	.ei_miso(ei_pmod_acl2_miso),
	.ei_int1(ei_pmod_acl2_int1),
	.ei_int2(ei_pmod_acl2_int2),
	.o_command_ready(s_acl2_command_ready),
	.i_cmd_init_linked_mode(s_acl2_cmd_init_linked_mode),
	.i_cmd_start_linked_mode(s_acl2_cmd_start_linked_mode),
	.i_cmd_init_measur_mode(s_acl2_cmd_init_measur_mode),
	.i_cmd_start_measur_mode(s_acl2_cmd_start_measur_mode),
	.i_cmd_soft_reset_acl2(s_acl2_cmd_soft_reset_acl2),
	.o_data_3axis_temp(s_hex_3axis_temp_measurements_final),
	.o_data_valid(s_hex_3axis_temp_measurements_valid),
	.o_reg_status(s_acl2_reg_status));

/* Capture the latest measurement value on VALID pulse and when the display is
   idling in preparation of the next value to be displayed. When the display
   stops idling, then hold the value for display so that the display does not
   have its textual inputs changing while running the display update. This
   value capture also holds for the UART TX output of the values. */
always @(posedge s_clk_20mhz)
begin: p_hold_measurements
	if (s_rst_20mhz) s_hex_3axis_temp_measurements_display <= 64'd0;
	else
		if ((s_hex_3axis_temp_measurements_valid) &&
		    (s_cls_upd_pr_state == ST_CLS_IDLE)) begin

			s_hex_3axis_temp_measurements_display <=
				s_hex_3axis_temp_measurements_final;
		end
end


/* The top-level Tester FSM State Transition register on the system clock,
   for state and auxiliary of the FSM that sends operation mode commands to
   the PMOD ACL2 custom driver. */
always @(posedge s_clk_20mhz)
begin: p_tester_fsm_state_aux
	if (s_rst_20mhz) begin
		s_tester_pr_state <= ST_0;

		s_mode_is_measur_aux <= 1'b0;
		s_mode_is_linked_aux <= 1'b0;
	end else begin
		s_tester_pr_state <= s_tester_nx_state;

		s_mode_is_measur_aux <= s_mode_is_measur_val;
		s_mode_is_linked_aux <= s_mode_is_linked_val;
	end
end

/* Tester FSM Combinatorial logic for initializing and starting PMOD ACL2
   according to the position of Switch 0 and the position of Switch 1. If
   Switch 0 and Not Switch 1, then Mode Measurement is executed. If Switch 1
   and Not Switch 0, then Mode Linked is executed. */
always @(s_tester_pr_state, s_acl2_command_ready,
	si_sw0_debounced, si_sw1_debounced,
	s_mode_is_measur_aux, s_mode_is_linked_aux)
begin: p_tester_fsm_comb
	case (s_tester_pr_state)
		ST_1: begin /* Step one to command initialize the ACL2 to measurement mode */
			s_acl2_cmd_init_measur_mode = 1'b1;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = 1'b1;
			s_mode_is_linked_val = 1'b0;

			if (s_acl2_command_ready) s_tester_nx_state = ST_1;
			else s_tester_nx_state = ST_2;
		end
		ST_2: begin /* Step two to wait for ACL2 to start its MM initialization */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;
			
			if (~ s_acl2_command_ready) s_tester_nx_state = ST_2;
			else s_tester_nx_state = ST_3;
		end
		ST_3: begin /* Step three to command start the ACL2 to measurement mode */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b1;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;

			if (s_acl2_command_ready) s_tester_nx_state = ST_3;
			else s_tester_nx_state = ST_4;
		end
		ST_4: begin /* Step four to stop issuing commands and transition to IDLE
					   (place holder for other steps) */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;
			
			s_tester_nx_state = ST_9;
		end
		ST_5: begin /* Step one to command initialize the ACL2 to linked mode */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b1;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = 1'b0;
			s_mode_is_linked_val = 1'b1;

			if (s_acl2_command_ready) s_tester_nx_state = ST_5;
			else s_tester_nx_state = ST_6;
		end
		ST_6: begin /* Step two to wait for ACL2 to start its LM initialization */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;
			
			if (~ s_acl2_command_ready) s_tester_nx_state = ST_6;
			else s_tester_nx_state = ST_7;
		end
		ST_7: begin /* Step three to command start the ACL2 to linked mode */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b1;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;

			if (s_acl2_command_ready) s_tester_nx_state = ST_7;
			else s_tester_nx_state = ST_8;
		end
		ST_8: begin /* Step four to stop issuing commands and transition to IDLE
					   (place holder for other steps) */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b1;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;
			
			s_tester_nx_state = ST_9;
		end
		ST_9: begin /* State nine is RUNNING IDLE and waits for switches 0,1
					   to entera equal an non-exclusive state to then transition
					   to State A which in turn will reset the PMOD ACL2 and wait
					   for an exclusive command on the switches 0,1. */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b0;
			s_active_run_display = 1'b1;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;

			if (~ (si_sw0_debounced ^ si_sw1_debounced))
				s_tester_nx_state = ST_A;
			else s_tester_nx_state = ST_9;
		end
		ST_A: begin /* Step A to issue the Soft Reset command to the PMOD ACL2
					   Then transition to Step Zero for INIT IDLE and waiting
					   for exclusive switch position. */
			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b1;
			s_active_init_display = 1'b0;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = 1'b0;
			s_mode_is_linked_val = 1'b0;

			if (s_acl2_command_ready) s_tester_nx_state = ST_0;
			else s_tester_nx_state = ST_A;
		end

		default: begin // ST_0
					   /* Step Zero is INIT IDLE, waiting for exclusive switch
						  position to then transition to INIT Measure Mode or
						  INIT Linked Mode. */

			s_acl2_cmd_init_measur_mode = 1'b0;
			s_acl2_cmd_init_linked_mode = 1'b0;
			s_acl2_cmd_start_measur_mode = 1'b0;
			s_acl2_cmd_start_linked_mode = 1'b0;
			s_acl2_cmd_soft_reset_acl2 = 1'b0;
			s_active_init_display = 1'b0;
			s_active_run_display = 1'b0;
			s_mode_is_measur_val = s_mode_is_measur_aux;
			s_mode_is_linked_val = s_mode_is_linked_aux;

			if (s_acl2_command_ready)
				if (si_sw0_debounced && (~ si_sw1_debounced))
					s_tester_nx_state = ST_1;
				else if (si_sw1_debounced && (~ si_sw0_debounced))
					s_tester_nx_state = ST_5;
				else
					s_tester_nx_state = ST_0;
			else s_tester_nx_state = ST_0;
		end
	endcase
end

/* Stretch the Activity indication so it can be displayed as color LED 2. */
pulse_stretcher_synch #(.par_T_stretch_bits(25), .par_T_stretch_val(20000000))
	u_pulse_stretcher_activity(
		.o_y(s_acl2_reg_status_activity_stretched),
		.i_clk(s_clk_20mhz),
		.i_rst(s_rst_20mhz),
		.i_x(s_acl2_reg_status[4]));

/* Stretch the Inactivity indication so it can be displayed as color LED 3. */
pulse_stretcher_synch #(.par_T_stretch_bits(25), .par_T_stretch_val(20000000))
	u_pulse_stretcher_inactivity(
		.o_y(s_acl2_reg_status_inactivity_stretched),
		.i_clk(s_clk_20mhz),
		.i_rst(s_rst_20mhz),
		.i_x(s_acl2_reg_status[5]));

/* Tester FSM registered outputs to multicolor LED 0:3 to indicate the
   execution state of \ref p_tester_fsm_state and \ref p_tester_comb and also
   the status register Activity and Inactivity. Also displayed on LED 4
   is the AWAKE state of the PMOD ACL2; and on LED 6,7 the Switch 0
   and Switch 1 debounced positions. */
always @(posedge s_clk_20mhz)
begin: p_tester_fsm_display
	if (s_active_init_display) begin
		/* LED 0 will be red when tester is initializing. */
		eo_led0_r <= 1'b1;
		eo_led0_g <= 1'b0;
		eo_led0_b <= 1'b0;
	end else if (s_active_run_display) begin
		/* LED 0 will be green when tester is running. */
		eo_led0_r <= 1'b0;
		eo_led0_g <= 1'b1;
		eo_led0_b <= 1'b0;
	end else begin
		/* LED 0 will be blue when tester is not working at all. */
		eo_led0_r <= 1'b0;
		eo_led0_g <= 1'b0;
		eo_led0_b <= 1'b1;
	end

	/* LED 1 will be red when tester is not working at all. */
	/* LED 1 will be white when tester is measuring continuously. */
	/* LED 1 will be purple when tester is only detecting motion toggle. */
	eo_led1_r <= 1'b1;
	if (s_mode_is_measur_aux) begin
		eo_led1_g <= 1'b1;
		eo_led1_b <= 1'b1;
	end else if (s_mode_is_linked_aux) begin
		eo_led1_g <= 1'b0;
		eo_led1_b <= 1'b1;
	end else begin
		eo_led1_g <= 1'b0;
		eo_led1_b <= 1'b0;
	end

	/* LED 2 is Red when no Activity detect, Green when Activity detect. */
	eo_led2_r <= ~ s_acl2_reg_status_activity_stretched;
	eo_led2_g <= s_acl2_reg_status_activity_stretched;
	eo_led2_b <= 1'b0;

	/* LED 3 is Red when no Inactivity detect, Green when Inactivity detect. */
	eo_led3_r <= ~ s_acl2_reg_status_inactivity_stretched;
	eo_led3_g <= s_acl2_reg_status_inactivity_stretched;
	eo_led3_b <= 1'b0;

	/* LED4 is AWAKE status from the status register. */
	eo_led4	<= s_acl2_reg_status[6];

	/* LED 5 */
	eo_led5	<= 1'b0;

	/* LED 6, LED 7, indicate the debounced switch positions. */
	eo_led6	<= si_sw0_debounced;
	eo_led7	<= si_sw1_debounced;
end

/* Tri-state outputs of PMOD CLS custom driver. */
assign eo_pmod_cls_sck = so_pmod_cls_sck_t ? 1'bz : so_pmod_cls_sck_o;
assign eo_pmod_cls_ssn = so_pmod_cls_ssn_t ? 1'bz : so_pmod_cls_ssn_o;
assign eo_pmod_cls_dq0 = so_pmod_cls_mosi_t ? 1'bz : so_pmod_cls_mosi_o;

/* Instance of the PMOD CLS driver for 16x2 character LCD display for purposes
   of an output display. */
pmod_cls_custom_driver #(
	.parm_fast_simulation(parm_fast_simulation),
	.FCLK(20000000),
	.parm_ext_spi_clk_ratio(32),
	.parm_wait_cyc_bits(`c_stand_spi_wait_count_bits)
	) u_pmod_cls_custom_driver (
	.i_clk_20mhz(s_clk_20mhz),
	.i_rst_20mhz(s_rst_20mhz),
	.i_ce_2_5mhz(s_ce_2_5mhz),
	.eo_sck_t(so_pmod_cls_sck_t),
	.eo_sck_o(so_pmod_cls_sck_o),
	.eo_ssn_t(so_pmod_cls_ssn_t),
	.eo_ssn_o(so_pmod_cls_ssn_o),
	.eo_mosi_t(so_pmod_cls_mosi_t),
	.eo_mosi_o(so_pmod_cls_mosi_o),
	.ei_miso(ei_pmod_cls_dq1),
	.o_command_ready(s_cls_command_ready),
	.i_cmd_wr_clear_display(s_cls_wr_clear_display),
	.i_cmd_wr_text_line1(s_cls_wr_text_line1),
	.i_cmd_wr_text_line2(s_cls_wr_text_line2),
	.i_dat_ascii_line1(s_cls_txt_ascii_line1),
	.i_dat_ascii_line2(s_cls_txt_ascii_line2));

/* Parse out the hexadecimal reading of mg force and temperature from the
   PMOD ACL2 data register readings. This partsing is done to display the
   measurement readings at a slower refresh rate on the PMOD CLS. */
assign s_hex_xaxis_lsb = s_hex_3axis_temp_measurements_display[(8*8-1)-:8];
assign s_hex_xaxis_msb = s_hex_3axis_temp_measurements_display[(7*8-1)-:8];
assign s_hex_yaxis_lsb = s_hex_3axis_temp_measurements_display[(6*8-1)-:8];
assign s_hex_yaxis_msb = s_hex_3axis_temp_measurements_display[(5*8-1)-:8];
assign s_hex_zaxis_lsb = s_hex_3axis_temp_measurements_display[(4*8-1)-:8];
assign s_hex_zaxis_msb = s_hex_3axis_temp_measurements_display[(3*8-1)-:8];
assign s_hex_temp_lsb = s_hex_3axis_temp_measurements_display[(2*8-1)-:8];
assign s_hex_temp_msb = s_hex_3axis_temp_measurements_display[(1*8-1)-:8];

assign s_txt_xaxis_s16 = {s_hex_xaxis_msb, s_hex_xaxis_lsb};
assign s_txt_yaxis_s16 = {s_hex_yaxis_msb, s_hex_yaxis_lsb};
assign s_txt_zaxis_s16 = {s_hex_zaxis_msb, s_hex_zaxis_lsb};
assign s_txt_temp_s16 = {s_hex_temp_msb, s_hex_temp_lsb};

assign s_txt_xaxis_u16 = (s_txt_xaxis_s16 < 0) ? (c_signed_zero - s_txt_xaxis_s16) : s_txt_xaxis_s16;
assign s_txt_yaxis_u16 = (s_txt_yaxis_s16 < 0) ? (c_signed_zero - s_txt_yaxis_s16) : s_txt_yaxis_s16;
assign s_txt_zaxis_u16 = (s_txt_zaxis_s16 < 0) ? (c_signed_zero - s_txt_zaxis_s16) : s_txt_zaxis_s16;
assign s_txt_temp_u16 = (s_txt_temp_s16 < 0) ? (c_signed_zero - s_txt_temp_s16) : s_txt_temp_s16;

/* ASCII parse-out of the X-Axis measurement reading. */
assign s_char_xaxis_msb_3 = ascii_of_hdigit(s_hex_xaxis_msb[7-:4]);
assign s_char_xaxis_msb_2 = ascii_of_hdigit(s_hex_xaxis_msb[3-:4]);
assign s_char_xaxis_lsb_1 = ascii_of_hdigit(s_hex_xaxis_lsb[7-:4]);
assign s_char_xaxis_lsb_0 = ascii_of_hdigit(s_hex_xaxis_lsb[3-:4]);

assign s_dat_xaxis_m0 = (s_txt_xaxis_u16 / 1000) % 10;
assign s_dat_xaxis_f0 = (s_txt_xaxis_u16 / 100) % 10;
assign s_dat_xaxis_f1 = (s_txt_xaxis_u16 / 10) % 10;
assign s_dat_xaxis_f2 = s_txt_xaxis_u16 % 10;

assign s_char_xaxis_sg = (s_txt_xaxis_s16[15] == 1'b1) ? 8'h2D : 8'h20;
assign s_char_xaxis_m0 = ascii_of_hdigit(s_dat_xaxis_m0[3-:4]);
assign s_char_xaxis_f0 = ascii_of_hdigit(s_dat_xaxis_f0[3-:4]);
assign s_char_xaxis_f1 = ascii_of_hdigit(s_dat_xaxis_f1[3-:4]);
assign s_char_xaxis_f2 = ascii_of_hdigit(s_dat_xaxis_f2[3-:4]);

/* ASCII parse-out of the Y-Axis measurement reading. */
assign s_char_yaxis_msb_3 = ascii_of_hdigit(s_hex_yaxis_msb[7-:4]);
assign s_char_yaxis_msb_2 = ascii_of_hdigit(s_hex_yaxis_msb[3-:4]);
assign s_char_yaxis_lsb_1 = ascii_of_hdigit(s_hex_yaxis_lsb[7-:4]);
assign s_char_yaxis_lsb_0 = ascii_of_hdigit(s_hex_yaxis_lsb[3-:4]);

assign s_dat_yaxis_m0 = (s_txt_yaxis_u16 / 1000) % 10;
assign s_dat_yaxis_f0 = (s_txt_yaxis_u16 / 100) % 10;
assign s_dat_yaxis_f1 = (s_txt_yaxis_u16 / 10) % 10;
assign s_dat_yaxis_f2 = s_txt_yaxis_u16 % 10;

assign s_char_yaxis_sg = (s_txt_yaxis_s16[15] == 1'b1) ? 8'h2D : 8'h20;
assign s_char_yaxis_m0 = ascii_of_hdigit(s_dat_yaxis_m0[3-:4]);
assign s_char_yaxis_f0 = ascii_of_hdigit(s_dat_yaxis_f0[3-:4]);
assign s_char_yaxis_f1 = ascii_of_hdigit(s_dat_yaxis_f1[3-:4]);
assign s_char_yaxis_f2 = ascii_of_hdigit(s_dat_yaxis_f2[3-:4]);

/* ASCII parse-out of the Z-Axis measurement reading. */
assign s_char_zaxis_msb_3 = ascii_of_hdigit(s_hex_zaxis_msb[7-:4]);
assign s_char_zaxis_msb_2 = ascii_of_hdigit(s_hex_zaxis_msb[3-:4]);
assign s_char_zaxis_lsb_1 = ascii_of_hdigit(s_hex_zaxis_lsb[7-:4]);
assign s_char_zaxis_lsb_0 = ascii_of_hdigit(s_hex_zaxis_lsb[3-:4]);

assign s_dat_zaxis_m0 = (s_txt_zaxis_u16 / 1000) % 10;
assign s_dat_zaxis_f0 = (s_txt_zaxis_u16 / 100) % 10;
assign s_dat_zaxis_f1 = (s_txt_zaxis_u16 / 10) % 10;
assign s_dat_zaxis_f2 = s_txt_zaxis_u16 % 10;

assign s_char_zaxis_sg = (s_txt_zaxis_s16[15] == 1'b1) ? 8'h2D : 8'h20;
assign s_char_zaxis_m0 = ascii_of_hdigit(s_dat_zaxis_m0[3-:4]);
assign s_char_zaxis_f0 = ascii_of_hdigit(s_dat_zaxis_f0[3-:4]);
assign s_char_zaxis_f1 = ascii_of_hdigit(s_dat_zaxis_f1[3-:4]);
assign s_char_zaxis_f2 = ascii_of_hdigit(s_dat_zaxis_f2[3-:4]);

/* ASCII parse-out of the Compensating Temperature measurement reading. */
assign s_char_temp_msb_3 = ascii_of_hdigit(s_hex_temp_msb[7-:4]);
assign s_char_temp_msb_2 = ascii_of_hdigit(s_hex_temp_msb[3-:4]);
assign s_char_temp_lsb_1 = ascii_of_hdigit(s_hex_temp_lsb[7-:4]);
assign s_char_temp_lsb_0 = ascii_of_hdigit(s_hex_temp_lsb[3-:4]);

assign s_dat_temp_m3 = (s_txt_temp_u16 / 1000) % 10;
assign s_dat_temp_m2 = (s_txt_temp_u16 / 100) % 10;
assign s_dat_temp_m1 = (s_txt_temp_u16 / 10) % 10;
assign s_dat_temp_m0 = s_txt_temp_u16 % 10;

assign s_char_temp_m3 = ascii_of_hdigit(s_dat_temp_m3[3-:4]);
assign s_char_temp_m2 = ascii_of_hdigit(s_dat_temp_m2[3-:4]);
assign s_char_temp_m1 = ascii_of_hdigit(s_dat_temp_m1[3-:4]);
assign s_char_temp_m0 = ascii_of_hdigit(s_dat_temp_m0[3-:4]);

/* Assemblly of ASCII Line 1 to display on the PMOD CLS. */
/* ASCII Line:  "X:____  Y:____  " or "X:0123  Y:ABCD  " */
assign s_cls_dat_ascii_line1 = (s_tester_pr_state == ST_0)
								?
								{8'h58, 8'h3A,
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
								8'h20, 8'h20, 8'h59, 8'h3A, 
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
							    8'h20, 8'h20}
								:
								{8'h58, 8'h3A, s_char_xaxis_msb_3,
								s_char_xaxis_msb_2, s_char_xaxis_lsb_1,
								s_char_xaxis_lsb_0, 8'h20, 8'h20,
								8'h59, 8'h3A, s_char_yaxis_msb_3,
								s_char_yaxis_msb_2, s_char_yaxis_lsb_1,
								s_char_yaxis_lsb_0, 8'h20, 8'h20}
								;

/* ASCII line: "X______ Y______ " or "X-0.123 Y 0.345 " */
assign s_cls_txt_ascii_line1 = (s_tester_pr_state == ST_0)
								?
								{8'h58, 8'h5F,
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
								8'h5F, 8'h20, 8'h59, 8'h5F, 
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
							    8'h5F, 8'h20}
								:
								{8'h58, s_char_xaxis_sg,
								s_char_xaxis_m0, 8'h2E, s_char_xaxis_f0,
								s_char_xaxis_f1, s_char_xaxis_f2, 8'h20,
								8'h59, s_char_yaxis_sg,
								s_char_yaxis_m0, 8'h2E, s_char_yaxis_f0,
								s_char_yaxis_f1, s_char_yaxis_f2, 8'h20}
								;

/* Assemblly of ASCII Line 2 to display on the PMOD CLS. */
/* ASCII Line:  "Z:____  T:____  " or "Z:0123  T:ABCD  " */
assign s_cls_dat_ascii_line2 = (s_tester_pr_state == ST_0)
								?
								{8'h5A, 8'h3A,
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
								8'h20, 8'h20, 8'h54, 8'h3A,
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
								8'h20, 8'h20}
								:
								{8'h5A, 8'h3A, s_char_zaxis_msb_3,
								s_char_zaxis_msb_2, s_char_zaxis_lsb_1,
								s_char_zaxis_lsb_0, 8'h20, 8'h20,
								8'h54, 8'h3A, s_char_temp_msb_3,
								s_char_temp_msb_2, s_char_temp_lsb_1,
								s_char_temp_lsb_0, 8'h20, 8'h20}
								;

/* ASCII line: "Z______ T______ " or "Z 1.123 T5201   " */
assign s_cls_txt_ascii_line2 = (s_tester_pr_state == ST_0)
								?
								{8'h5A, 8'h5F,
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
								8'h5F, 8'h20, 8'h54, 8'h5F, 
								8'h5F, 8'h5F, 8'h5F, 8'h5F,
							    8'h20, 8'h20}
								:
								{8'h5A, s_char_zaxis_sg,
								s_char_zaxis_m0, 8'h2E, s_char_zaxis_f0,
								s_char_zaxis_f1, s_char_zaxis_f2, 8'h20,
								8'h54, s_char_temp_m3, s_char_temp_m2,
								s_char_temp_m1, s_char_temp_m0, 8'h20, 8'h20, 8'h20}
								;

/* Assembly of UART text line. */
assign s_uart_dat_ascii_line = {s_cls_dat_ascii_line1,
								s_cls_dat_ascii_line2,
								8'h0D, 8'h0A};

/* Timer (strategy #1) for timing the PMOD CLS display update */
always @(posedge s_clk_20mhz)
begin: p_fsm_timer_run_display_update
	if (s_rst_20mhz) s_i <= 0;
	else
		if (s_ce_2_5mhz)
			if (s_cls_upd_pr_state != s_cls_upd_nx_state) begin
				s_i <= 0;
			end else if (s_i != c_i_max) begin
				s_i <= s_i + 1;
			end
end

/* FSM state transition for timing the PMOD CLS display udpate */
always @(posedge s_clk_20mhz)
begin: p_fsm_state_run_display_update
	if (s_rst_20mhz) s_cls_upd_pr_state <= ST_CLS_IDLE;
	else 
		if (s_ce_2_5mhz)
			s_cls_upd_pr_state <= s_cls_upd_nx_state;
end

/* FSM combinatorial logic for timing the PMOD CLS display udpate */
always @(s_cls_upd_pr_state, s_cls_command_ready, s_i)
begin: p_fsm_comb_run_display_update
	case (s_cls_upd_pr_state)
		ST_CLS_CLEAR: begin /* Step CLEAR: clear the display
							   and then pause until display ready and
							   minimum of \ref c_i_one_ms time delay. */
			if (s_i <= c_i_step) s_cls_wr_clear_display = 1'b1;
			else s_cls_wr_clear_display = 1'b0;

			s_cls_wr_text_line1 = 1'b0;
			s_cls_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_one_ms) && (s_cls_command_ready))
				s_cls_upd_nx_state = ST_CLS_LINE1;
			else s_cls_upd_nx_state = ST_CLS_CLEAR;
		end
		ST_CLS_LINE1: begin /* Step LINE1: write the top line of the LCD
							   and then pause until display ready and
							   minimum of \ref c_i_one_ms time delay. */
			s_cls_wr_clear_display = 1'b0;

			if (s_i <= c_i_step) s_cls_wr_text_line1 = 1'b1;
			else s_cls_wr_text_line1 = 1'b0;

			s_cls_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_one_ms) && (s_cls_command_ready))
				s_cls_upd_nx_state = ST_CLS_LINE2;
			else s_cls_upd_nx_state = ST_CLS_LINE1;
		end
		ST_CLS_LINE2: begin /* Step LINE2: write the bottom line of the LCD
							   and then pause until display ready and
							   minimum of \ref c_i_one_ms time delay. */
			s_cls_wr_clear_display = 1'b0;
			s_cls_wr_text_line1 = 1'b0;

			if (s_i <= c_i_step) s_cls_wr_text_line2 = 1'b1;
			else s_cls_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_one_ms) && (s_cls_command_ready))
				s_cls_upd_nx_state = ST_CLS_IDLE;
			else s_cls_upd_nx_state = ST_CLS_LINE2;
		end
		default: begin // ST_CLS_IDLE
					   /* Step IDLE, wait until display ready to write again
						  and minimum of \ref c_i_subsecond time has elapsed. */
			s_cls_wr_clear_display = 1'b0;
			s_cls_wr_text_line1 = 1'b0;
			s_cls_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_subsecond) && (s_cls_command_ready))
				s_cls_upd_nx_state = ST_CLS_CLEAR;
			else s_cls_upd_nx_state = ST_CLS_IDLE;
		end
	endcase
end

/* TX ONLY UART function to print the two lines of the PMOD CLS output as a
   single line on the dumb terminal, at the same rate as the PMOD CLS updates. */
assign s_uart_tx_go = s_cls_wr_clear_display;

uart_tx_only #(
	.BAUD(115200))
u_uart_tx_only (
	.i_clk_20mhz  (s_clk_20mhz),
	.i_rst_20mhz  (s_rst_20mhz),
	.i_clk_7_37mhz(s_clk_7_37mhz),
	.i_rst_7_37mhz(s_rst_7_37mhz),
	.eo_uart_tx   (eo_uart_tx),
	.i_tx_data    (s_uart_txdata),
	.i_tx_valid   (s_uart_txvalid),
	.o_tx_ready   (s_uart_txready)
	);

/* UART TX machine, the 34 bytes of \ref s_uart_dat_ascii_line
   are feed into the UART TX ONLY FIFO upon every pulse of the
   \ref s_uart_tx_go signal. The UART TX ONLY FIFO machine will
   automatically dequeue any bytes present in the queue and quickly
   transmit them, one-at-a-time at the \ref parm_BAUD baudrate. */

/* UART TX machine, synchronous state and auxiliary counting register. */
always @(posedge s_clk_20mhz)
begin: p_uartfeed_fsm_state_aux
	if (s_rst_20mhz) begin
		s_uartfeed_pr_state <= ST_UARTFEED_IDLE;
		s_uart_k_aux <= 0;
	end else begin
		s_uartfeed_pr_state <= s_uartfeed_nx_state;
		s_uart_k_aux <= s_uart_k_val;
	end
end

/* UART TX machine, combinatorial next state and auxiliary counting register. */
always @(s_uartfeed_pr_state, s_uart_k_aux, s_uart_tx_go,
	s_uart_dat_ascii_line, s_uart_txready)
begin: p_uartfeed_fsm_nx_out
	case (s_uartfeed_pr_state)
		ST_UARTFEED_DATA: begin
			/* Enqueue the \ref c_uart_k_preset count of bytes from signal
			   \ref s_uart_dat_ascii_line. Then transition to the WAIT state. */
			s_uart_txdata = s_uart_dat_ascii_line[((8*s_uart_k_aux)-1)-:8];
			s_uart_txvalid = 1'b1;
			s_uart_k_val = s_uart_k_aux - 1;

			if (s_uart_k_aux <= 1)
				s_uartfeed_nx_state = ST_UARTFEED_WAIT;
			else s_uartfeed_nx_state = ST_UARTFEED_DATA;
		end
		ST_UARTFEED_WAIT: begin
			/* Wait for the \ref s_uart_tx_go pulse to be idle, and then
			   transition to the IDLE state. */
			s_uart_txdata = 8'h00;
			s_uart_txvalid = 1'b0;
			s_uart_k_val = s_uart_k_aux;

			if (~s_uart_tx_go)
				s_uartfeed_nx_state = ST_UARTFEED_IDLE;
			else s_uartfeed_nx_state = ST_UARTFEED_WAIT;
		end
		default: begin // ST_UARTFEED_IDLE
			/* IDLE the FSM while waiting for a pulse on s_uart_tx_go.
			   The value of \ref s_uart_txready is also checked as to
			   not overflow the UART TX buffer. If both signals are a
			   TRUE value, then transition to enqueueing data. */
			s_uart_txdata = 8'h00;
			s_uart_txvalid = 1'b0;
			s_uart_k_val = c_uart_k_preset;

			if (s_uart_tx_go && s_uart_txready)
				s_uartfeed_nx_state = ST_UARTFEED_DATA;
			else s_uartfeed_nx_state = ST_UARTFEED_IDLE;
		end
	endcase
end

endmodule
//------------------------------------------------------------------------------
