/*------------------------------------------------------------------------------
-- MIT License
--
-- Copyright (c) 2020-2021 Timothy Stotts
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
-- \file pmod_cls_custom_driver.sv
--
-- \brief A wrapper for the single Chip Select, Standard SPI modules
--        \ref pmod_cls_stand_spi_solo and \ref pmod_generic_spi_solo ,
--        implementing a custom single-mode operation of the PMOD CLS by
--        Digilent Inc.
------------------------------------------------------------------------------*/
//------------------------------------------------------------------------------
//Part 1: Module header:--------------------------------------------------------
module pmod_cls_custom_driver
	import pmod_stand_spi_solo_pkg::*;
	#(parameter
		/* Disable or enable fast FSM delays for simulation instead of impelementation. */
		integer parm_fast_simulation = 0,
		/* Actual frequency in Hz of \ref i_ce_2_5mhz */
		integer FCLK = 20000000,
		/* Clock enable frequency in Hz of \ref i_ext_spi_clk_4x with i_spi_ce_4x */
		integer FCLK_ce = 2500000,
		/* Ratio of i_ext_spi_clk_x to SPI sck bus output. */
		integer parm_ext_spi_clk_ratio = 32
		)
	(
		/* Clock and reset, with clock at 32 times the frequency of the SPI bus,
		   with a clock enable that is 4 times the frequency of the SPI bus. */
		input logic i_clk_20mhz,
		input logic i_rst_20mhz,
		input logic i_ce_2_5mhz,
		/* Outputs and inputs from the single SPI peripheral */
		output logic eo_sck_t,
		output logic eo_sck_o,
		output logic eo_csn_t,
		output logic eo_csn_o,
		output logic eo_copi_t,
		output logic eo_copi_o,
		input logic ei_cipo,
		/* Command ready indication and five possible commands to the driver */
		output logic o_command_ready,
		input logic i_cmd_wr_clear_display,
		input logic i_cmd_wr_text_line1,
		input logic i_cmd_wr_text_line2,
		input t_pmod_cls_ascii_line_16 i_dat_ascii_line1,
		input t_pmod_cls_ascii_line_16 i_dat_ascii_line2
		);

//Part 2: Declarations----------------------------------------------------------
/* CLS SPI driver wiring to the Generic SPI driver. */
logic s_cls_go_stand;
logic s_cls_spi_idle;
t_pmod_cls_tx_len s_cls_tx_len;
t_pmod_cls_wait_cyc s_cls_wait_cyc;
t_pmod_cls_rx_len s_cls_rx_len;
t_pmod_cls_data_byte s_cls_tx_data;
logic s_cls_tx_enqueue;
logic s_cls_tx_ready;
t_pmod_cls_data_byte s_cls_rx_data;
logic s_cls_rx_dequeue;
logic s_cls_rx_valid;
logic s_cls_rx_avail;

/* CLS SPI outputs, FSM signals to register the SPI bus outputs for
   optimal timing closure and glitch minimization. */
logic sio_cls_sck_fsm_o;
logic sio_cls_sck_fsm_t;
logic sio_cls_csn_fsm_o;
logic sio_cls_csn_fsm_t;
logic sio_cls_copi_fsm_o;
logic sio_cls_copi_fsm_t;

/* CLS SPI input synchronizer signals, where the synchronizer is used to
   mitigate metastability. */
logic sio_cls_cipo_meta_i;
logic sio_cls_cipo_sync_i;

//Part 3: Statements------------------------------------------------------------

/* Register the SPI output an extra 4x-SPI-clock clock cycle for better
   timing closure and glitch mitigation. */
always_ff @(posedge i_clk_20mhz)
begin: p_reg_spi_fsm_out
	if (i_ce_2_5mhz) begin : register_outputs
		eo_sck_o <= sio_cls_sck_fsm_o;
		eo_sck_t <= sio_cls_sck_fsm_t;

		eo_csn_o <= sio_cls_csn_fsm_o;
		eo_csn_t <= sio_cls_csn_fsm_t;

		eo_copi_o <= sio_cls_copi_fsm_o;
		eo_copi_t <= sio_cls_copi_fsm_t;
	end : register_outputs
end : p_reg_spi_fsm_out

/* Double-register the SPI input at 4x-SPI-clock cycle to prevent metastability. */
always_ff @(posedge i_clk_20mhz)
begin: p_sync_spi_in
	if (i_ce_2_5mhz) begin : sync_meta_stable
		sio_cls_cipo_sync_i <= sio_cls_cipo_meta_i;
		sio_cls_cipo_meta_i <= ei_cipo;
	end : sync_meta_stable
end : p_sync_spi_in

/* Single mode driver to operate the PMOD CLS via a stand-alone SPI driver. */
pmod_cls_stand_spi_solo #(
	.parm_fast_simulation(parm_fast_simulation),
	.FCLK (FCLK),
	.FCLK_ce (FCLK_ce)
	) u_pmod_cls_stand_spi_solo (
	.i_ext_spi_clk_x(i_clk_20mhz),
	.i_srst(i_rst_20mhz),
	.i_spi_ce_4x(i_ce_2_5mhz),
	.o_go_stand(s_cls_go_stand),
	.i_spi_idle(s_cls_spi_idle),
	.o_tx_len(s_cls_tx_len),
	.o_wait_cyc(s_cls_wait_cyc),
	.o_rx_len(s_cls_rx_len),
	.o_tx_data(s_cls_tx_data),
	.o_tx_enqueue(s_cls_tx_enqueue),
	.i_tx_ready(s_cls_tx_ready),
	.i_rx_data(s_cls_rx_data),
	.o_rx_dequeue(s_cls_rx_dequeue),
	.i_rx_valid(s_cls_rx_valid),
	.i_rx_avail(s_cls_rx_avail),
	.o_command_ready(o_command_ready),
	.i_cmd_wr_clear_display(i_cmd_wr_clear_display),
	.i_cmd_wr_text_line1(i_cmd_wr_text_line1),
	.i_cmd_wr_text_line2(i_cmd_wr_text_line2),
	.i_dat_ascii_line1(i_dat_ascii_line1),
	.i_dat_ascii_line2(i_dat_ascii_line2));

/* Stand-alone SPI bus driver for a single bus-peripheral. */
pmod_generic_spi_solo #(
	.parm_ext_spi_clk_ratio (parm_ext_spi_clk_ratio),
	.parm_tx_len_bits  (c_pmod_cls_tx_len_bits),
	.parm_wait_cyc_bits (c_pmod_cls_wait_cyc_bits),
	.parm_rx_len_bits  (c_pmod_cls_rx_len_bits)
	) u_pmod_generic_spi_solo (
	.eo_sck_o(sio_cls_sck_fsm_o),
	.eo_sck_t(sio_cls_sck_fsm_t),
	.eo_csn_o(sio_cls_csn_fsm_o),
	.eo_csn_t(sio_cls_csn_fsm_t),
	.eo_copi_o(sio_cls_copi_fsm_o),
	.eo_copi_t(sio_cls_copi_fsm_t),
	.ei_cipo_i(sio_cls_cipo_sync_i),
	.i_ext_spi_clk_x(i_clk_20mhz),
	.i_srst(i_rst_20mhz),
	.i_spi_ce_4x(i_ce_2_5mhz),
	.i_go_stand(s_cls_go_stand),
	.o_spi_idle(s_cls_spi_idle),
	.i_tx_len(s_cls_tx_len),
	.i_wait_cyc(s_cls_wait_cyc),
	.i_rx_len(s_cls_rx_len),
	.i_tx_data(s_cls_tx_data),
	.i_tx_enqueue(s_cls_tx_enqueue),
	.o_tx_ready(s_cls_tx_ready),
	.o_rx_data(s_cls_rx_data),
	.i_rx_dequeue(s_cls_rx_dequeue),
	.o_rx_valid(s_cls_rx_valid),
	.o_rx_avail(s_cls_rx_avail));

endmodule : pmod_cls_custom_driver
//------------------------------------------------------------------------------
