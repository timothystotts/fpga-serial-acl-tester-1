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
				Log(ModelID, "UART Received from FPGA the ASCII line: " & rx_ascii_buf, INFO);
				rx_ascii_buf := (others => NUL);
				rx_ascii_cnt := 0;
				rx_ascii_ovr := false;
			else
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
