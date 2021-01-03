--------------------------------------------------------------------------------
-- \file pmod_acl2.vhdl
--
-- \brief OSVVM testbench component: incomplete Simulation Model of Digilent Inc.
-- Pmod ACL2 external peripheral, using datasheet for Analog Devices ADXL362.
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

    type t_share_reg is protected
        impure function Get return std_logic_vector;
        procedure Set(constant c_reg : in std_logic_vector(7 downto 0));
        procedure Update(constant c_bit : std_logic; constant c_pos : natural range 0 to 7);
    end protected t_share_reg;   
end package tbc_pmod_acl2_types_pkg;
--------------------------------------------------------------------------------
package body tbc_pmod_acl2_types_pkg is
        type t_share_reg is protected body
        variable v_reg : std_logic_vector(7 downto 0);

        impure function Get return std_logic_vector is
        begin
            return v_reg;
        end function Get;

        procedure Set(constant c_reg : in std_logic_vector(7 downto 0)) is
        begin
            v_reg := c_reg;
        end procedure Set;

        procedure Update(constant c_bit : std_logic; constant c_pos : natural range 0 to 7) is
        begin
            v_reg(c_pos) := c_bit;
        end procedure Update;
    end protected body t_share_reg;   
end package body tbc_pmod_acl2_types_pkg;
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
    constant c_reg_idx_status_reg : natural := 16#0B#;
    constant c_reg_idx_int1_map : natural := 16#2A#;
    constant c_reg_idx_int2_map : natural := 16#2B#;
    constant c_reg_idx_filter_ctl : natural := 16#2C#;

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
        constant ModelID : in AlertLogIDType;
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        signal cipo : out std_logic;
        variable input_buffer : inout std_logic_vector;
        variable output_buffer : inout std_logic_vector;
        variable buffer_len : inout natural;
        variable buffer_ovr : inout natural;
        variable reg_mem : inout t_reg_array;
        variable reg_access : inout t_reg_array;
        variable reg_dirty : inout t_reg_array;
        constant reg_perms : in t_reg_perms
    );
end package tbc_pmod_acl2_pkg;
--------------------------------------------------------------------------------
package body tbc_pmod_acl2_pkg is
    procedure pr_spi_reg_access_mode_zero(
        constant ModelID : in AlertLogIDType;
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        signal cipo : out std_logic;
        variable input_buffer : inout std_logic_vector;
        variable output_buffer : inout std_logic_vector;
        variable buffer_len : inout natural;
        variable buffer_ovr : inout natural;
        variable reg_mem : inout t_reg_array;
        variable reg_access : inout t_reg_array;
        variable reg_dirty : inout t_reg_array;
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
                                reg_access(op_addr) := 1;
                            end if;
                        end if;
                    end if;
                end if;

                if (buffer_len mod 8 = 1) then
                    if (op_addr < t_op_addr'high) then
                        if ((op_read) and (buffer_len > 16)) then
                            if ((reg_perms(op_addr) = REG_R) or (reg_perms(op_addr) = REG_RW)) then
                                op_byte_slv := std_logic_vector(to_unsigned(reg_mem(op_addr), 8));

                                Log(ModelID, "PMOD ACL2 read addr x" & to_hstring(op_addr_slv) &
                                " value x" & to_hstring(op_byte_slv), INFO);

                                if (op_addr < t_op_addr'high) then
                                    op_addr := op_addr + 1;
                                end if;
                            else
                                Alert(ModelID, "PMOD ACL2 attempted read of non-read address x" &
                                to_string(op_addr_slv), WARNING);
                            end if;
                        end if;
                    end if;
                end if;

                if (buffer_len mod 8 = 0) then
                    if (op_addr < t_op_addr'high) then
                        if ((op_write) and (buffer_len >= 24)) then
                            if ((reg_perms(op_addr) = REG_W) or (reg_perms(op_addr) = REG_RW)) then
                                reg_mem(op_addr) := val_in_as_int;
                                reg_dirty(op_addr) := 1;
                                op_byte_slv := std_logic_vector(to_unsigned(reg_mem(op_addr), 8));

                                Log(ModelID, "PMOD ACL2 write addr x" & to_hstring(op_addr_slv) &
                                " value x" & to_hstring(op_byte_slv), INFO);

                                if (op_addr < t_op_addr'high) then
                                    op_addr := op_addr + 1;
                                end if;
                            else
                                Alert(ModelID, "PMOD ACL2 attempted write to non-write address x" &
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
        TBID : in AlertLogIDType;
        BarrierTestStart : inout std_logic;
        BarrierLogStart : inout std_logic;
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
    shared variable sv_status_reg : t_share_reg;

    signal ModelID : AlertLogIDType;

    signal so_int1 : std_logic;
    signal so_int2 : std_logic;
    signal s_filter_ctl_reg : std_logic_vector(7 downto 0);
    signal s_int1_map_reg : std_logic_vector(7 downto 0);
    signal s_int2_map_reg : std_logic_vector(7 downto 0);
begin
    -- Simulation initialization
    p_sim_init : process
        variable ID : AlertLogIDType;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierTestStart);
        ID := GetAlertLogID(PathTail(tbc_pmod_acl2'path_name), TBID);
        ModelID <= ID;

        wait on ModelID;
        Log(ModelID, "Starting Pmod ACL2 emulation with SPI mode 0 bus and two interrupt lines.", ALWAYS);
        wait;
    end process p_sim_init;

    -- interrupt signal outputs
    co_int1 <= so_int1;
    co_int2 <= so_int2;

    p_spi_reg_access_mode_zero : process
        variable input_buffer : std_logic_vector(127 downto 0);
        variable output_buffer : std_logic_vector(127 downto 0);
        variable buffer_len : natural;
        variable buffer_ovr : natural;
        variable reg_mem : t_reg_array(c_acl2_reg_mem'range) := c_acl2_reg_mem;
        variable reg_access : t_reg_array(c_acl2_reg_mem'range) := (others => 0);
        variable reg_dirty : t_reg_array(c_acl2_reg_mem'range) := (others => 0);
        constant reg_perms : t_reg_perms(c_acl2_reg_perms'range) := c_acl2_reg_perms;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierLogStart);
        Log(ModelID, "Entering Pmod ACL2 emulation with SPI mode 0 bus.", ALWAYS);

        l_spi_recv : loop
            input_buffer := (others => '0');
            output_buffer := (others => '0');

            pr_spi_reg_access_mode_zero(
                ModelID,
                ci_sck,
                ci_csn,
                ci_copi,
                co_cipo,
                input_buffer,
                output_buffer,
                buffer_len,
                buffer_ovr,
                reg_mem,
                reg_access,
                reg_dirty,
                reg_perms);

            s_int1_map_reg <= std_logic_vector(to_unsigned(reg_mem(c_reg_idx_int1_map), 8));
            s_int2_map_reg <= std_logic_vector(to_unsigned(reg_mem(c_reg_idx_int2_map), 8));
            s_filter_ctl_reg <= std_logic_vector(to_unsigned(reg_mem(c_reg_idx_filter_ctl), 8));

            -- Synchronize the Status Register
            -- Step 1 - react to register write
            if (reg_dirty(c_reg_idx_status_reg) = 1) then
                sv_status_reg.Set(std_logic_vector(to_unsigned(reg_mem(c_reg_idx_status_reg), 8)));
                reg_dirty(c_reg_idx_status_reg) := 0;
            end if;
            -- Step 2 - react to register read
            if (reg_access(c_reg_idx_status_reg) = 1) then
                sv_status_reg.Update('0', 0);
                reg_access(c_reg_idx_status_reg) := 0;
            end if;
            -- Step 3 - final sync
            reg_mem(c_reg_idx_status_reg) := to_integer(unsigned(sv_status_reg.Get));
        end loop l_spi_recv;
    end process p_spi_reg_access_mode_zero;

    p_filter_ctl : process
        variable v_delay : time := 2.5 ms;
        variable v_delay_prev : time := 0 ms;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierLogStart);
        Log(ModelID, "Entering Pmod ACL2 emulation of Data Ready filter control.", ALWAYS);

        sv_status_reg.Update('0', 0);
        l_drive_data_ready : loop
            case s_filter_ctl_reg(2 downto 0) is
                when "000" => v_delay := 80 ms;
                when "001" => v_delay := 40 ms;
                when "010" => v_delay := 20 ms;
                when "011" => v_delay := 10 ms;
                when "100" => v_delay := 5 ms;
                when others => v_delay := 2.5 ms;
            end case;
            sv_status_reg.Update('1', 0);

            if (v_delay /= v_delay_prev) then
                Log(ModelID, "Entering Pmod ACL2 emulation of Data Ready filter " &
                "control executing with period " & to_string(v_delay) & " .", ALWAYS);
            end if;

            wait for v_delay;
            
            v_delay_prev := v_delay;
        end loop l_drive_data_ready;
        wait;
    end process p_filter_ctl;

    p_update_int12 : process
        variable v_status_reg : std_logic_vector(7 downto 0);
        variable v_prev_int1 : std_logic;
        variable v_prev_int2 : std_logic;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierLogStart);
        Log(ModelID, "Entering Pmod ACL2 emulation of interrupt lines.", ALWAYS);

        l_drive_int : loop
            wait for 100 ns;
            v_prev_int1 := so_int1;
            v_prev_int2 := so_int2;

            v_status_reg := sv_status_reg.Get;

            so_int1 <= s_int1_map_reg(7) xor (or(s_int1_map_reg(6 downto 0) and v_status_reg(6 downto 0)));
            so_int2 <= s_int2_map_reg(7) xor (or(s_int2_map_reg(6 downto 0) and v_status_reg(6 downto 0)));
            wait for 1 ns;

            if (so_int1 /= v_prev_int1) then
                Log(ModelID, "PMOD ACL2 INT1 is " & to_string(so_int1), DEBUG);
            end if;

            if (so_int2 /= v_prev_int2) then
                Log(ModelID, "PMOD ACL2 INT2 is " & to_string(so_int2), DEBUG);
            end if;
        end loop l_drive_int;
    end process p_update_int12;
    
end architecture simulation_default;
--------------------------------------------------------------------------------
