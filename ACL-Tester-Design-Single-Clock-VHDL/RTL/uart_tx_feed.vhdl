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
-- \file uart_tx_feed.vhdl
--
-- \brief A simple text byte feeder to the UART TX module.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
--------------------------------------------------------------------------------
entity uart_tx_feed is
	port(
		i_clk_20mhz      : in  std_logic;
		i_rst_20mhz      : in  std_logic;
		o_tx_data        : out std_logic_vector(7 downto 0);
		o_tx_valid       : out std_logic;
		i_tx_ready       : in  std_logic;
		i_tx_go          : in  std_logic;
		i_dat_ascii_line : in  std_logic_vector((34*8-1) downto 0)
	);
end entity uart_tx_feed;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
architecture rtl of uart_tx_feed is
	-- UART TX update FSM state declarations
	type t_uarttx_feed_state is (ST_UARTFEED_IDLE, ST_UARTFEED_DATA, ST_UARTFEED_WAIT);

	signal s_uartfeed_pr_state : t_uarttx_feed_state;
	signal s_uartfeed_nx_state : t_uarttx_feed_state;

	constant c_uart_k_preset : natural := 34;

	constant c_line_of_spaces : std_logic_vector((34*8-1) downto 0) :=
		x"20202020202020202020202020202020202020202020202020202020202020200D0A";

	-- UART TX signals for UART TX update FSM
	signal s_uart_k_val    : natural range 0 to 63;
	signal s_uart_k_aux    : natural range 0 to 63;
	signal s_uart_line_val : std_logic_vector((34*8-1) downto 0);
	signal s_uart_line_aux : std_logic_vector((34*8-1) downto 0);
begin
	-- UART TX machine, the 34 bytes of \ref i_dat_ascii_line
	-- are feed into the UART TX ONLY FIFO upon every pulse of the
	-- \ref i_tx_go signal. The UART TX ONLY FIFO machine will
	-- automatically dequeue any bytes present in the queue and quickly
	-- transmit them, one-at-a-time at the \ref parm_BAUD baudrate.

	-- UART TX machine, synchronous state and auxiliary counting register.
	p_uartfeed_fsm_state_aux : process(i_clk_20mhz)
	begin
		if rising_edge(i_clk_20mhz) then
			if (i_rst_20mhz = '1') then
				s_uartfeed_pr_state <= ST_UARTFEED_IDLE;
				s_uart_k_aux        <= 0;
				s_uart_line_aux     <= c_line_of_spaces;
			else
				s_uartfeed_pr_state <= s_uartfeed_nx_state;
				s_uart_k_aux        <= s_uart_k_val;
				s_uart_line_aux     <= s_uart_line_val;
			end if;
		end if;
	end process p_uartfeed_fsm_state_aux;

	-- UART TX machine, combinatorial next state and auxiliary counting register.
	p_uartfeed_fsm_nx_out : process(s_uartfeed_pr_state, s_uart_k_aux, s_uart_line_aux,
			i_tx_go, i_dat_ascii_line, i_tx_ready)
	begin
		case (s_uartfeed_pr_state) is
			when ST_UARTFEED_DATA =>
				-- Enqueue the \ref c_uart_k_preset count of bytes from signal
				-- \ref i_dat_ascii_line. Then transition to the WAIT state.
				o_tx_data       <= s_uart_line_aux(((8 * s_uart_k_aux) - 1) downto (8 * (s_uart_k_aux - 1)));
				o_tx_valid      <= '1';
				s_uart_k_val    <= s_uart_k_aux - 1;
				s_uart_line_val <= s_uart_line_aux;

				if (s_uart_k_aux <= 1) then
					s_uartfeed_nx_state <= ST_UARTFEED_WAIT;
				else
					s_uartfeed_nx_state <= ST_UARTFEED_DATA;
				end if;

			when ST_UARTFEED_WAIT =>
				-- Wait for the \ref i_tx_go pulse to be idle, and then
				-- transition to the IDLE state.
				o_tx_data       <= x"00";
				o_tx_valid      <= '0';
				s_uart_k_val    <= s_uart_k_aux;
				s_uart_line_val <= s_uart_line_aux;

				if (i_tx_go = '0') then
					s_uartfeed_nx_state <= ST_UARTFEED_IDLE;
				else
					s_uartfeed_nx_state <= ST_UARTFEED_WAIT;
				end if;

			when others => -- ST_UARTFEED_IDLE
				           -- IDLE the FSM while waiting for a pulse on i_tx_go.
				           -- The value of \ref i_tx_ready is also checked as to
				           -- not overflow the UART TX buffer. If both signals are a
				           -- TRUE value, then transition to enqueueing data.
				o_tx_data       <= x"00";
				o_tx_valid      <= '0';
				s_uart_k_val    <= c_uart_k_preset;
				s_uart_line_val <= s_uart_line_aux;

				if ((i_tx_go = '1') and (i_tx_ready = '1')) then
					s_uartfeed_nx_state <= ST_UARTFEED_DATA;
					s_uart_line_val     <= i_dat_ascii_line;
				else
					s_uartfeed_nx_state <= ST_UARTFEED_IDLE;
				end if;
		end case;
	end process p_uartfeed_fsm_nx_out;
end architecture rtl;
--------------------------------------------------------------------------------
