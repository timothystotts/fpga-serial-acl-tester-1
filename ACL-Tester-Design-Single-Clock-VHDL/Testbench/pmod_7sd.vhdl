--------------------------------------------------------------------------------
-- \file pmod_7sd.vhdl
--
-- \brief OSVVM testbench component: Simulation Model of Digilent Inc.
-- Pmod SSD (7SD) external peripheral in two digit multiplexing.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
entity tbc_pmod_7sd is
    port(
        ci_mux_ena : in std_logic;
        ci_mux_dat : in std_logic_vector(6 downto 0)
        );
end entity tbc_pmod_7sd;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_pmod_7sd is
begin
    -- Just print signal lines
    p_receive_display_value : process
    begin
        wait on ci_mux_ena;
        wait for 100 ns;

        Log("7SD Digit " & to_string(ci_mux_ena) & " is " &
            to_string(ci_mux_dat), INFO);
    end process p_receive_display_value;
end architecture simulation_default;
--------------------------------------------------------------------------------
