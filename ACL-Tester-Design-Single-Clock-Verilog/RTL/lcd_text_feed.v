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
-- \file lcd_text_feed.v
--
-- \brief A timed FSM to feed display updates to a two-line LCD.
------------------------------------------------------------------------------*/
//Recursive Moore Machine-------------------------------------------------------
//Part 1: Module header:--------------------------------------------------------
module lcd_text_feed(i_clk_20mhz, i_rst_20mhz, i_ce_2_5mhz,
	i_lcd_command_ready, o_lcd_wr_clear_display, o_lcd_wr_text_line1,
	o_lcd_wr_text_line2, o_lcd_feed_is_idle);

parameter integer parm_fast_simulation = 0;

input wire i_clk_20mhz;
input wire i_rst_20mhz;
input wire i_ce_2_5mhz;
input wire i_lcd_command_ready;

output reg o_lcd_wr_clear_display;
output reg o_lcd_wr_text_line1;
output reg o_lcd_wr_text_line2;
output wire o_lcd_feed_is_idle;

//Part 2: Declarations----------------------------------------------------------
/* Connections and variables for instance of the PMOD CLS SPI SOLO driver. */
`define c_lcd_update_fsm_bits 2
localparam [(`c_lcd_update_fsm_bits - 1):0] ST_LCD_IDLE = 0;
localparam [(`c_lcd_update_fsm_bits - 1):0] ST_LCD_CLEAR = 1;
localparam [(`c_lcd_update_fsm_bits - 1):0] ST_LCD_LINE1 = 2;
localparam [(`c_lcd_update_fsm_bits - 1):0] ST_LCD_LINE2 = 3;

reg [(`c_lcd_update_fsm_bits - 1):0] s_lcd_upd_pr_state;
reg [(`c_lcd_update_fsm_bits - 1):0] s_lcd_upd_nx_state;

/* Timer steps for the continuous refresh of the PMOD CLS display:
   Wait 0.2 seconds
   Clear Display
   Wait 1.0 milliseconds
   Write Line 1
   Wait 1.0 milliseconds
   Write Line 2
   Repeat the above. */
`define c_lcd_update_timer_bits 24
/* The one-second refresh is actually 1/5 of a second to have a 5 Hz refresh,
   approximately. If \ref parm_fast_simulation is defined, then tne once
   second refresh is actually 1/100 of a second to have a 100 Hz refresh
   for waveform viewing. */
localparam [(`c_lcd_update_timer_bits - 1):0] c_i_subsecond =
	parm_fast_simulation ? (2500000 / 100 - 1) : (2500000 / 5 - 1);
localparam [(`c_lcd_update_timer_bits - 1):0] c_i_one_ms =
	parm_fast_simulation ? (2500 - 1) : (2500 - 1);
localparam [(`c_lcd_update_timer_bits - 1):0] c_i_step = 4 - 1;
localparam [(`c_lcd_update_timer_bits - 1):0] c_i_max = c_i_subsecond;

reg [(`c_lcd_update_timer_bits - 1):0] s_i;

//Part 3: Statements------------------------------------------------------------
/* Timer (strategy #1) for timing the PMOD CLS display update */
always @(posedge i_clk_20mhz)
begin: p_fsm_timer_run_display_update
	if (i_rst_20mhz) s_i <= 0;
	else
		if (i_ce_2_5mhz)
			if (s_lcd_upd_pr_state != s_lcd_upd_nx_state) begin
				s_i <= 0;
			end else if (s_i != c_i_max) begin
				s_i <= s_i + 1;
			end
end

/* FSM state transition for timing the PMOD CLS display udpate */
always @(posedge i_clk_20mhz)
begin: p_fsm_state_run_display_update
	if (i_rst_20mhz) s_lcd_upd_pr_state <= ST_LCD_IDLE;
	else 
		if (i_ce_2_5mhz)
			s_lcd_upd_pr_state <= s_lcd_upd_nx_state;
end

/* FSM combinatorial logic for timing the PMOD CLS display udpate */
always @(s_lcd_upd_pr_state, i_lcd_command_ready, s_i)
begin: p_fsm_comb_run_display_update
	case (s_lcd_upd_pr_state)
		ST_LCD_CLEAR: begin /* Step CLEAR: clear the display
							   and then pause until display ready and
							   minimum of \ref c_i_one_ms time delay. */
			if (s_i <= c_i_step) o_lcd_wr_clear_display = 1'b1;
			else o_lcd_wr_clear_display = 1'b0;

			o_lcd_wr_text_line1 = 1'b0;
			o_lcd_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_one_ms) && (i_lcd_command_ready))
				s_lcd_upd_nx_state = ST_LCD_LINE1;
			else s_lcd_upd_nx_state = ST_LCD_CLEAR;
		end
		ST_LCD_LINE1: begin /* Step LINE1: write the top line of the LCD
							   and then pause until display ready and
							   minimum of \ref c_i_one_ms time delay. */
			o_lcd_wr_clear_display = 1'b0;

			if (s_i <= c_i_step) o_lcd_wr_text_line1 = 1'b1;
			else o_lcd_wr_text_line1 = 1'b0;

			o_lcd_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_one_ms) && (i_lcd_command_ready))
				s_lcd_upd_nx_state = ST_LCD_LINE2;
			else s_lcd_upd_nx_state = ST_LCD_LINE1;
		end
		ST_LCD_LINE2: begin /* Step LINE2: write the bottom line of the LCD
							   and then pause until display ready and
							   minimum of \ref c_i_one_ms time delay. */
			o_lcd_wr_clear_display = 1'b0;
			o_lcd_wr_text_line1 = 1'b0;

			if (s_i <= c_i_step) o_lcd_wr_text_line2 = 1'b1;
			else o_lcd_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_one_ms) && (i_lcd_command_ready))
				s_lcd_upd_nx_state = ST_LCD_IDLE;
			else s_lcd_upd_nx_state = ST_LCD_LINE2;
		end
		default: begin // ST_LCD_IDLE
					   /* Step IDLE, wait until display ready to write again
						  and minimum of \ref c_i_subsecond time has elapsed. */
			o_lcd_wr_clear_display = 1'b0;
			o_lcd_wr_text_line1 = 1'b0;
			o_lcd_wr_text_line2 = 1'b0;

			if ((s_i >= c_i_subsecond) && (i_lcd_command_ready))
				s_lcd_upd_nx_state = ST_LCD_CLEAR;
			else s_lcd_upd_nx_state = ST_LCD_IDLE;
		end
	endcase
end

// Indicate when the FSM is idle
assign o_lcd_feed_is_idle = (s_lcd_upd_pr_state == ST_LCD_IDLE) ? 1'b1 : 1'b0;

endmodule
//------------------------------------------------------------------------------

