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
package tbc_pmod_acl2_types_pkg is
    type t_reg_perm is (REG_R, REG_W, REG_RW, REG_RESV);
    type t_reg_array is array (natural range <>) of natural range 0 to 255;
    type t_reg_perms is array(natural range <>) of t_reg_perm;
    subtype t_op_addr is natural range 0 to 47;
end package tbc_pmod_acl2_types_pkg;
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
use work.tbc_pmod_acl2_types_pkg.all;
--------------------------------------------------------------------------------
package tbc_pmod_acl2_pkg is
    constant c_acl2_reg_mem : t_reg_array(t_op_addr'low to t_op_addr'high) := (
        16#AD#, 16#1D#, 16#F2#, 16#01#, 16#00#, 16#00#, 16#00#, 16#00#,
        16#00#, 16#00#, 16#00#, 16#40#, 16#00#, 16#00#, 16#00#, 16#00#,
        16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#,
        16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#,
        16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#, 16#00#,
        16#00#, 16#80#, 16#00#, 16#00#, 16#13#, 16#00#, 16#00#, 16#00#
    );
    constant c_acl2_reg_perms : t_reg_perms(t_op_addr'low to t_op_addr'high) := (
        REG_R, REG_R, REG_R, REG_R, REG_RESV, REG_RESV, REG_RESV, REG_RESV,
        REG_R, REG_R, REG_R, REG_R, REG_R, REG_R, REG_R, REG_R,
        REG_R, REG_R, REG_R, REG_R, REG_R, REG_R, REG_R, REG_R,
        REG_RESV, REG_RESV, REG_RESV, REG_RESV, REG_RESV, REG_RESV, REG_RESV, REG_W,
        REG_RW, REG_RW, REG_RW, REG_RW, REG_RW, REG_RW, REG_RW, REG_RW,
        REG_RW, REG_RW, REG_RW, REG_RW, REG_RW, REG_RW, REG_RW, REG_RESV
    );

    procedure pr_spi_reg_access_mode_zero(
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        signal cipo : out std_logic;
        variable input_buffer : inout std_logic_vector;
        variable output_buffer : inout std_logic_vector;
        variable buffer_len : inout natural;
        variable buffer_ovr : inout natural;
        variable reg_mem : inout t_reg_array;
        constant reg_perms : in t_reg_perms
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
        variable reg_mem : inout t_reg_array;
        constant reg_perms : in t_reg_perms
    ) is
        alias in_buf : std_logic_vector(input_buffer'length downto 1) is input_buffer;
        alias out_buf : std_logic_vector(output_buffer'length downto 1) is output_buffer;

        variable op_read : boolean := false;
        variable op_write : boolean := false;
        variable op_addr_in : natural range 0 to 255 := 0;
        variable op_addr : t_op_addr := 0;
        variable op_addr_slv : std_logic_vector(7 downto 0);
        variable op_byte_slv : std_logic_vector(7 downto 0);
        variable val_out_as_slv : std_logic_vector(7 downto 0);
        variable val_in_as_int : natural range 0 to 255;

    begin
        buffer_len := 0;
        buffer_ovr := 0;
        wait until csn = '0';

        l_spi_recv : loop
            wait on sck, csn;

            if (sck'event and sck = '0') then
                cipo <= out_buf(1);

                out_buf := out_buf(out_buf'left - 1 downto 1) & '0';
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
                    op_read := (in_buf(8 downto 1) = x"0B");
                end if;

                if (buffer_len = 16) then
                    if (op_write or op_read) then
                        op_addr_in := to_integer(unsigned(in_buf(8 downto 1)));
                        if ((op_addr_in < t_op_addr'high) and (op_addr_in >= 0)) then
                            op_addr := op_addr_in;
                        else
                            op_addr := t_op_addr'high;
                        end if;
                    end if;
                end if;

                op_addr_slv := std_logic_vector(to_unsigned(op_addr, 8));
                val_out_as_slv := std_logic_vector(to_unsigned(reg_mem(op_addr), 8));
                val_in_as_int := to_integer(unsigned(in_buf(8 downto 1)));

                if (buffer_len mod 8 = 0) then
                    if (op_addr < t_op_addr'high) then
                        if ((op_read) and (buffer_len >= 16)) then
                            if ((reg_perms(op_addr) = REG_R) or (reg_perms(op_addr) = REG_RW)) then
                                out_buf(out_buf'left downto out_buf'left - 7) := val_out_as_slv;
                                op_byte_slv := std_logic_vector(to_unsigned(reg_mem(op_addr), 8));

                                Log("PMOD ACL2 read addr x" & to_hstring(op_addr_slv) &
                                " value x" & to_hstring(op_byte_slv), INFO);

                                if (op_addr < t_op_addr'high) then
                                    op_addr := op_addr + 1;
                                end if;
                            else
                                Alert("PMOD ACL2 attempted read of non-read address x" &
                                to_string(op_addr_slv), WARNING);
                            end if;
                        end if;

                        if ((op_write) and (buffer_len >= 24)) then
                            if ((reg_perms(op_addr) = REG_W) or (reg_perms(op_addr) = REG_RW)) then
                                reg_mem(op_addr) := val_in_as_int;
                                op_byte_slv := std_logic_vector(to_unsigned(reg_mem(op_addr), 8));

                                Log("PMOD ACL2 write addr x" & to_hstring(op_addr_slv) &
                                " value x" & to_hstring(op_byte_slv), INFO);

                                if (op_addr < t_op_addr'high) then
                                    op_addr := op_addr + 1;
                                end if;
                            else
                                Alert("PMOD ACL2 attempted write to non-write address x" &
                                to_string(op_addr_slv) & " with value x" &
                                to_string(op_byte_slv), WARNING);
                            end if;
                        end if;
                    end if;
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
use work.tbc_pmod_acl2_types_pkg.all;
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
    co_int1 <= '0';
    co_int2 <= '0';

    P_spi_reg_access_mode_zero : process
        variable input_buffer : std_logic_vector(127 downto 0);
        variable output_buffer : std_logic_vector(127 downto 0);
        variable buffer_len : natural;
        variable buffer_ovr : natural;
        variable reg_mem : t_reg_array(c_acl2_reg_mem'range) := c_acl2_reg_mem;
        constant reg_perms : t_reg_perms(c_acl2_reg_perms'range) := c_acl2_reg_perms;
    begin
        input_buffer := (others => '0');
        output_buffer := (others => '0');

        pr_spi_reg_access_mode_zero(
            ci_sck,
            ci_csn,
            ci_copi,
            co_cipo,
            input_buffer,
            output_buffer,
            buffer_len,
            buffer_ovr,
            reg_mem,
            reg_perms);
    end process p_spi_reg_access_mode_zero;

end architecture simulation_default;
--------------------------------------------------------------------------------
