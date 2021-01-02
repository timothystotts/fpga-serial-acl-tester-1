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
        TBID : AlertLogIDType;
        ci_rxd : in std_logic;
        co_txd : out std_logic
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
        wait for 1 ns;
        ID := GetAlertLogID(PathTail(tbc_board_uart'path_name), TBID);
        ModelID <= ID;
        wait;
    end process p_sim_init;

    -- The FPGA operates as UART TX only
    co_txd <= '0'; -- TX from PC is held stopped
end architecture simulation_default;
--------------------------------------------------------------------------------
