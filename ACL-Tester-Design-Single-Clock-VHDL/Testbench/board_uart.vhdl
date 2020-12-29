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
--------------------------------------------------------------------------------
entity tbc_board_uart is
    port(
        ci_rxd : in std_logic;
        co_txd : out std_logic
        );
end entity tbc_board_uart;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_board_uart is
begin
    -- The FPGA operates as UART TX only
    co_txd <= '0'; -- TX from PC is held stopped
end architecture simulation_default;
--------------------------------------------------------------------------------
