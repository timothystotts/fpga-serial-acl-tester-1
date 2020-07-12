-------------------------------------------------------------------------------
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
-- \file one_shot_fsm.vhdl
--
-- \brief A one-shot pulse generator based on level input.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
--------------------------------------------------------------------------------
entity one_shot_fsm is
	port(
		x : in std_logic;
		--
		clk : in std_logic;
		rst : in std_logic;
		--
		y : out std_logic);
end entity one_shot_fsm;
--------------------------------------------------------------------------------
architecture rtl of one_shot_fsm is
	type t_os_state is (ST_A, ST_B, ST_C);
	signal pr_state : t_os_state;
	signal nx_state : t_os_state;
	signal s_y_out : std_logic;

	attribute fsm_encoding : string;
	attribute fsm_encoding of pr_state: signal is "gray";
	attribute fsm_safe_state : string;
	attribute fsm_safe_state of pr_state: signal is "reset_state";
begin

	p_fsm_nx_state : process(pr_state, x)
	begin
		case pr_state is
		when ST_B =>
			s_y_out <= '1';
			if (x = '1') then
				nx_state <= ST_C;
			else
				nx_state <= ST_A;
			end if;
		when ST_C =>
			s_y_out <= '0';
			if (x = '0') then
				nx_state <= ST_A;
			else
				nx_state <= ST_C;
			end if;
		when others => -- ST_A
			s_y_out <= '0';
			if (x = '1') then
				nx_state <= ST_B;
			else
				nx_state <= ST_A;
			end if;
		end case;
	end process p_fsm_nx_state;

	p_fsm_pr_state : process(clk)
	begin
		if rising_edge(clk) then
			if (rst = '1') then
				pr_state <= ST_A;
			else
				pr_state <= nx_state;
			end if;
		end if;
	end process p_fsm_pr_state;

	p_fsm_glitch_free : process(clk)
	begin
		if rising_edge(clk) then
			y <= s_y_out;
		end if;
	end process p_fsm_glitch_free;

end architecture rtl;
--------------------------------------------------------------------------------
