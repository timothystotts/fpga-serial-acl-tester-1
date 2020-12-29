--------------------------------------------------------------------------------
-- \file pmod_cls.vhdl
--
-- \brief OSVVM testbench component: Simulation Model of Digilent Inc.
-- Pmod CLS external peripheral in SPI mode.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
entity tbc_pmod_cls is
    port(
        ci_sck : in std_logic;
        ci_csn : in std_logic;
        ci_copi : in std_logic;
        co_cipo : out std_logic
        );
end entity tbc_pmod_cls;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_pmod_cls is
begin
    -- Just hold outputs at zero
    co_cipo <= '0';
end architecture simulation_default;
--------------------------------------------------------------------------------
