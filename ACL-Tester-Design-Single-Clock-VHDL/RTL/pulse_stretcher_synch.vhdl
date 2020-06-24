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
-- \file pulse_stretcher_synch.vhdl
--
-- \brief A synchronous pulse stretcher implementation.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
--------------------------------------------------------------------------------
entity pulse_stretcher_synch is
	generic(
		-- The exact count of clock cycles to hold Y as a one immediately after
		-- a single clock cycle of X being a value of one.
		par_T_stretch_count : natural := 64
		);
	port(
		-- The stretched output
		o_y : out std_logic;
		-- Clock and reset
		i_clk : in std_logic;
		i_rst : in std_logic;
		-- The input value to stretch upon value of one.
		i_x : in std_logic
		);
end entity pulse_stretcher_synch;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture moore_fsm_timed of pulse_stretcher_synch is
	-- Stretcher FSM state values
	type t_stretch_state is (ST_A, ST_B);

	-- Stretcher FSM time constants
	constant c_t_stretch : natural := par_T_stretch_count;
	constant c_t_max : natural := c_t_stretch - 1;

	-- Stretcher FSM state register and next state signal
	signal s_stretch_pr_state : t_stretch_state;
	signal s_stretch_nx_state : t_stretch_state;
	attribute fsm_encoding : string;
	attribute fsm_safe_state : string;
	attribute fsm_encoding of s_stretch_pr_state: signal is "gray";
	attribute fsm_safe_state of s_stretch_pr_state: signal is "default_state";

	-- Stretcher FSM timing signal
	signal s_t : natural range 0 to c_t_max;
begin

	-- Timer (strategy #1)
	p_fsm_timer: process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_rst = '1') then
				s_t <= 0;
			else
				-- reset and increment the timer
				if (s_stretch_pr_state /= s_stretch_nx_state) then
					s_t <= 0;
				elsif (s_t /= c_t_max) then
					s_t <= s_t + 1;
				end if;
			end if;
		end if;
	end process p_fsm_timer;

	-- FSM state register
	p_fsm_state: process(i_clk)
	begin
		if rising_edge(i_clk) then
			if (i_rst = '1') then
				s_stretch_pr_state <= ST_A;
			else
				s_stretch_pr_state <= s_stretch_nx_state;
			end if;
		end if;
	end process p_fsm_state;

	-- FSM combinatorial
	p_fsm_comb: process(s_stretch_pr_state, i_x, s_t)
	begin
		case (s_stretch_pr_state) is
		when ST_B =>
			-- State B. Hold the output as one and test if the time
			-- constant for stretching the output has elapsed. Upon
			-- elapse, transition back to State A.
			o_y <= '1';
			if (s_t >= c_t_stretch - 1) then
				s_stretch_nx_state <= ST_A;
			else
				s_stretch_nx_state <= ST_B;
			end if;
		when others => -- ST_A
			-- State A. Hold the output as zero and test if the input
			-- has dhanged to one. Upon change, transition to state B.
			o_y <= '0';
			if (i_x = '1') then
				s_stretch_nx_state <= ST_B;
			else
				s_stretch_nx_state <= ST_A;
			end if;
		end case;
	end process p_fsm_comb;

end architecture moore_fsm_timed;
--------------------------------------------------------------------------------