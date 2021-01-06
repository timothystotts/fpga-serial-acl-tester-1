--------------------------------------------------------------------------------
-- MIT License
--
-- Copyright (c) 2021 Timothy Stotts
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
-- \file board_uart.vhdl
--
-- \brief OSVVM testbench component: Simulation Model of board UART.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library osvvm_uart;
context osvvm_uart.UartContext;

library work;
use work.acl_testbench_types_pkg.all;
use work.acl_testbench_pkg.all;
--------------------------------------------------------------------------------
entity tbc_board_uart is
	port(
		TBID             : in    AlertLogIDType;
		BarrierTestStart : inout std_logic;
		BarrierLogStart  : inout std_logic;
		TransRec         : inout UartRecType;
		ci_rxd           : in    std_logic;
		co_txd           : out   std_logic
	);
end entity tbc_board_uart;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_board_uart is
	signal ModelID : AlertLogIDType;
begin
	-- Simulation initialization
	p_sim_init : process
		variable ID : AlertLogIDType;
	begin
		wait for 0 ns;
		WaitForBarrier(BarrierTestStart);
		ID      := GetAlertLogID(PathTail(tbc_board_uart'path_name), TBID);
		ModelID <= ID;

		wait on ModelID;
		SB_CLS.SetAlertLogID("MeasModeBoardUart", ModelID);

		Log(ModelID, "Starting Board UART emulation at baud 115200.", ALWAYS);
		wait;
	end process p_sim_init;

	UartTbRxProc : process
		variable RxStim       : UartStimType;
		variable ID           : AlertLogIDType;
		variable rx_ascii_buf : string(1 to 64) := (others => NUL);
		variable rx_ascii_cnt : natural         := 0;
		variable rx_ascii_chr : character;
		variable rx_ascii_ovr : boolean := false;
		variable v_hex_expect : std_logic_vector(255 downto 0);
		variable v_hex_cnt    : natural := 0;
		variable v_slv_expect : std_logic_vector(63 downto 0);
		constant c_all_undef : std_logic_vector(63 downto 0) := (others => 'U');
		variable v_expect_idx : integer;
	begin
		WaitForBarrier(BarrierLogStart);
		ID := ModelID;
		GetAlertLogID(TransRec, ID);
		WaitForClock(TransRec, 2);

		-- Get with one parameter
		l_recv_uart : loop
			Get(TransRec, RxStim.Data);
			RxStim.Error := std_logic_vector(TransRec.ParamFromModel);

			if (RxStim.Data = x"0A") then
				AlertIf(ModelID, rx_ascii_ovr, "The test model overflowed receiving UART ASCII text line. Not all characters are displayed.", ERROR);
				Log(ModelID, "UART Received from FPGA the ASCII line: " & rx_ascii_buf(1 to rx_ascii_cnt), INFO);

				v_slv_expect(63 downto 32) := fn_convert_hex_to_slv32(v_hex_expect(255 downto 128), 8);
				v_slv_expect(31 downto 0) := fn_convert_hex_to_slv32(v_hex_expect(127 downto 0), 8);

				if (v_slv_expect /= c_all_undef) then
					v_expect_idx := SB_UART.Find(v_slv_expect);
					Log(ModelID, "BOARD UART text line matched ScoreBoard history: " & to_string(v_expect_idx), INFO);
					SB_UART.Flush(v_expect_idx);
				else
					Alert(ModelID, "BOARD UART text line not tested with ScoreBoard history.", WARNING);
				end if;

				rx_ascii_buf := (others => NUL);
				rx_ascii_cnt := 0;
				rx_ascii_ovr := false;
				v_hex_expect := (others => 'U');
				v_hex_cnt := 0;
				v_slv_expect := (others => 'U');
			else
				if (v_hex_cnt < v_hex_expect'length / 8) then
					v_hex_expect := v_hex_expect((v_hex_expect'length - 1 - 8) downto 0) & RxStim.Data;
					v_hex_cnt := v_hex_cnt + 1;
				end if;

				rx_ascii_chr := fn_convert_slv_to_ascii(RxStim.Data);
				Log(ModelID, "UART Received ASCII byte: x" & to_hstring(RxStim.Data) &
					" '" & rx_ascii_chr & "'", DEBUG);
				if (rx_ascii_cnt <= rx_ascii_buf'right) then
					if ((RxStim.Data /= x"0A") and (RxStim.Data /= x"0D")) then
						rx_ascii_cnt := rx_ascii_cnt + 1;
						rx_ascii_buf(rx_ascii_cnt) := rx_ascii_chr;
					end if;
				else
					rx_ascii_ovr := true;
				end if;
			end if;
		end loop l_recv_uart;
		wait ;
	end process UartTbRxProc ;

	-- The FPGA operates as UART TX only
	co_txd <= '0'; -- TX from PC is held stopped
end architecture simulation_default;
--------------------------------------------------------------------------------
