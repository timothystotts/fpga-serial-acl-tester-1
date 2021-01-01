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
package tbc_pmod_acl2_pkg is
    type t_reg_arrray is array (natural range <>) of natural range 0 to 255;

    procedure pr_spi_reg_access_mode_zero(
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        signal cipo : out std_logic;
        variable input_buffer : inout std_logic_vector;
        variable output_buffer : inout std_logic_vector;
        variable buffer_len : inout natural;
        variable buffer_ovr : inout natural;
        variable reg_mem : inout t_reg_arrray
    );
end package tbc_pmod_acl2_pkg;
--------------------------------------------------------------------------------
package body tbc_pmod_acl2_pkg is
    procedure pr_spi_reg_access_mode_zero(
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        signal cipo : out std_logic;
        variable input_buffer : inout std_logic_vector;
        variable output_buffer : inout std_logic_vector;
        variable buffer_len : inout natural;
        variable buffer_ovr : inout natural;
        variable reg_mem : inout t_reg_arrray
    ) is
        alias in_buf : std_logic_vector(input_buffer'length downto 1) is input_buffer;
        alias out_buf : std_logic_vector(output_buffer'length downto 1) is output_buffer;

        variable op_read : boolean := false;
        variable op_write : boolean := false;
    begin
        buffer_len := 0;
        buffer_ovr := 0;
        wait until csn = '0';

        l_spi_recv : loop
            wait on sck, csn;

            if (sck'event and sck = '0') then
                cipo <= out_buf(1);

                out_buf := '0' & out_buf(out_buf'left downto 2);
            end if;

            if (sck'event and sck = '1') then
                in_buf := in_buf(in_buf'left - 1 downto 1) & copi;

                if (buffer_len < in_buf'length) then
                    buffer_len := buffer_len + 1;
                else
                    buffer_ovr := buffer_ovr + 1;
                end if;

                if (buffer_len = 8) then
                    op_write := (in_buf(8 downto 1) = x"0A");
                    op_read := (in_buf(8 downto 1) = x"0A");
                end if;
            end if;

            if (csn = '1') then
                exit;
            end if;
        end loop l_spi_recv;
    end procedure pr_spi_reg_access_mode_zero;
end package body tbc_pmod_acl2_pkg;
---------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
use work.tbc_pmod_acl2_pkg.all;
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
