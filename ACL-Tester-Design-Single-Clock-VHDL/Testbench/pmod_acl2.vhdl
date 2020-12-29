--------------------------------------------------------------------------------
-- \file pmod_acl2.vhdl
--
-- \brief OSVVM testbench component: Simulation Model of Digilent Inc.
-- Pmod ACL2 external peripheral.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
entity tbc_pmod_acl2 is
    port(
        ci_sck : in std_logic;
        ci_csn : in std_logic;
        ci_copi : in std_logic;
        co_cipo : out std_logic;
        co_int1 : out std_logic;
        co_int2 : out std_logic
        );
end entity tbc_pmod_acl2;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_pmod_acl2 is
begin
    -- Just hold outputs at zero
    co_cipo <= '0';
    co_int1 <= '0';
    co_int2 <= '0';
end architecture simulation_default;
--------------------------------------------------------------------------------
