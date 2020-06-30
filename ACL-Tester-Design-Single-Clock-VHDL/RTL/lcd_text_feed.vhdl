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
-- \file lcd_text_feed.vhdl
--
-- \brief A timed FSM to feed display updates to a two-line LCD.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
--------------------------------------------------------------------------------
entity lcd_text_feed is
	generic(
		parm_fast_simulation : integer := 0
		);
	port(
		i_clk_20mhz : in std_logic;
		i_rst_20mhz : in std_logic;
		i_ce_2_5mhz : in std_logic;
		i_lcd_command_ready : in std_logic;
		o_lcd_wr_clear_display : out std_logic;
		o_lcd_wr_text_line1 : out std_logic;
		o_lcd_wr_text_line2 : out std_logic;
		o_lcd_feed_is_idle : out std_logic
		);
end entity lcd_text_feed;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture rtl of lcd_text_feed is
	-- Display update FSM state declarations
	type t_lcd_update_state is (ST_LCD_IDLE, ST_LCD_CLEAR, ST_LCD_LINE1, ST_LCD_LINE2);

	signal s_lcd_upd_pr_state : t_lcd_update_state;
	signal s_lcd_upd_nx_state : t_lcd_update_state;

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
begin
	-- Timer (strategy #1) for timing the PMOD CLS display update
	p_fsm_timer_run_display_update : process(i_clk_20mhz)
	begin
		if rising_edge(i_clk_20mhz) then
			if (i_rst_20mhz = '1') then
				s_i <= 0;
			elsif (i_ce_2_5mhz = '1') then
				if (s_lcd_upd_pr_state /= s_lcd_upd_nx_state) then
					s_i <= 0;
				elsif (s_i /= c_i_max) then
					s_i <= s_i + 1;
				end if;
			end if;
		end if;
	end process p_fsm_timer_run_display_update;

	-- FSM state transition for timing the PMOD CLS display udpate
	p_fsm_state_run_display_update : process(i_clk_20mhz)
	begin
		if rising_edge(i_clk_20mhz) then
			if (i_rst_20mhz = '1') then
				s_lcd_upd_pr_state <= ST_LCD_IDLE;
			elsif (i_ce_2_5mhz = '1') then
				s_lcd_upd_pr_state <= s_lcd_upd_nx_state;
			end if;
		end if;
	end process p_fsm_state_run_display_update;

	-- FSM combinatorial logic for timing the PMOD CLS display udpate
	p_fsm_comb_run_display_update : process(s_lcd_upd_pr_state,
			i_lcd_command_ready, s_i)
	begin
		case (s_lcd_upd_pr_state) is
			when ST_LCD_CLEAR => -- Step CLEAR: clear the display
				                 -- and then pause until display ready and
				                 -- minimum of \ref c_i_one_ms time delay.
				if (s_i <= c_i_step) then
					o_lcd_wr_clear_display <= '1';
				else
					o_lcd_wr_clear_display <= '0';
				end if;

				o_lcd_wr_text_line1 <= '0';
				o_lcd_wr_text_line2 <= '0';

				if ((s_i >= c_i_one_ms) and (i_lcd_command_ready = '1')) then
					s_lcd_upd_nx_state <= ST_LCD_LINE1;
				else
					s_lcd_upd_nx_state <= ST_LCD_CLEAR;
				end if;

			when ST_LCD_LINE1 => -- Step LINE1: write the top line of the LCD
				                 -- and then pause until display ready and
				                 -- minimum of \ref c_i_one_ms time delay.
				o_lcd_wr_clear_display <= '0';

				if (s_i <= c_i_step) then
					o_lcd_wr_text_line1 <= '1';
				else
					o_lcd_wr_text_line1 <= '0';
				end if;

				o_lcd_wr_text_line2 <= '0';

				if ((s_i >= c_i_one_ms) and (i_lcd_command_ready = '1')) then
					s_lcd_upd_nx_state <= ST_LCD_LINE2;
				else
					s_lcd_upd_nx_state <= ST_LCD_LINE1;
				end if;

			when ST_LCD_LINE2 => -- Step LINE2: write the bottom line of the LCD
				                 -- and then pause until display ready and
				                 -- minimum of \ref c_i_one_ms time delay.
				o_lcd_wr_clear_display <= '0';
				o_lcd_wr_text_line1    <= '0';

				if (s_i <= c_i_step) then
					o_lcd_wr_text_line2 <= '1';
				else
					o_lcd_wr_text_line2 <= '0';
				end if;

				if ((s_i >= c_i_one_ms) and (i_lcd_command_ready = '1')) then
					s_lcd_upd_nx_state <= ST_LCD_IDLE;
				else
					s_lcd_upd_nx_state <= ST_LCD_LINE2;
				end if;

			when others => -- ST_LCD_IDLE
				           -- Step IDLE, wait until display ready to write again
				           -- and minimum of \ref c_i_subsecond time has elapsed.
				o_lcd_wr_clear_display <= '0';
				o_lcd_wr_text_line1    <= '0';
				o_lcd_wr_text_line2    <= '0';

				if (parm_fast_simulation = 0) then
					if ((s_i >= c_i_subsecond) and (i_lcd_command_ready = '1')) then
						s_lcd_upd_nx_state <= ST_LCD_CLEAR;
					else
						s_lcd_upd_nx_state <= ST_LCD_IDLE;
					end if;
				else
					if ((s_i >= c_i_subsecond_fast) and (i_lcd_command_ready = '1')) then
						s_lcd_upd_nx_state <= ST_LCD_CLEAR;
					else
						s_lcd_upd_nx_state <= ST_LCD_IDLE;
					end if;
				end if;
		end case;
	end process p_fsm_comb_run_display_update;

	-- Indicate when the FSM is idle
	o_lcd_feed_is_idle <= '1' when (s_lcd_upd_pr_state = ST_LCD_IDLE) else '0';
end architecture rtl;
--------------------------------------------------------------------------------
