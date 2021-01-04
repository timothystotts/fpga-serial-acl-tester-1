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
-- \file pmod_cls.vhdl
--
-- \brief OSVVM testbench component: incomplete Simulation Model of Digilent Inc.
-- Pmod CLS external peripheral in SPI mode.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
use work.acl_testbench_pkg.all;
--------------------------------------------------------------------------------
package tbc_pmod_cls_pkg is
    procedure pr_spi_recv_only(
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        variable input_buffer : inout std_logic_vector;
        variable buffer_len : out natural;
        variable buffer_ovr : out natural
    );

    function fn_convert_hex_to_ascii(
        text_as_slv : std_logic_vector;
        text_char_cnt : natural)
    return string;
end package tbc_pmod_cls_pkg;
--------------------------------------------------------------------------------
package body tbc_pmod_cls_pkg is
    procedure pr_spi_recv_only(
        signal sck : in std_logic;
        signal csn : in std_logic;
        signal copi : in std_logic;
        variable input_buffer : inout std_logic_vector;
        variable buffer_len : out natural;
        variable buffer_ovr : out natural
    ) is
        alias in_buf : std_logic_vector(input_buffer'length downto 1) is input_buffer;
    begin
        buffer_len := 0;
        buffer_ovr := 0;
        wait until csn = '0';

        l_spi_recv : loop
            wait on sck, csn;

            if (sck'event and sck = '1') then
                in_buf := in_buf(in_buf'left - 1 downto 1) & copi;

                if (buffer_len < in_buf'length) then
                    buffer_len := buffer_len + 1;
                else
                    buffer_ovr := buffer_ovr + 1;
                end if;
            end if;

            if (csn = '1') then
                exit;
            end if;
        end loop l_spi_recv;
    end procedure pr_spi_recv_only;

    function fn_convert_hex_to_ascii(
        text_as_slv : std_logic_vector;
        text_char_cnt : natural)
    return string is
        alias buf_slv : std_logic_vector(text_as_slv'length - 1 downto 0) is text_as_slv;
        variable char_cnt : natural := 1;
        variable char_pos : natural := 0;
        variable char_str : string(1 to text_char_cnt);
    begin
        while (char_cnt <= text_char_cnt) loop
            char_pos := text_char_cnt - char_cnt;
            char_str(char_cnt) := fn_convert_slv_to_ascii(
                buf_slv(char_pos * 8 + 7 downto char_pos * 8)
            );
            char_cnt := char_cnt + 1;
        end loop;

        return char_str;
    end function fn_convert_hex_to_ascii;

end package body tbc_pmod_cls_pkg;
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.standard.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
use work.tbc_pmod_cls_pkg.all;
--------------------------------------------------------------------------------
entity tbc_pmod_cls is
    port(
        TBID : in AlertLogIDType;
        BarrierTestStart : inout std_logic;
        BarrierLogStart : inout std_logic;
        ci_sck : in std_logic;
        ci_csn : in std_logic;
        ci_copi : in std_logic;
        co_cipo : out std_logic
        );
end entity tbc_pmod_cls;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_pmod_cls is
    constant ASCII_CLS_ESC : std_logic_vector(7 downto 0) := x"1B";
    signal ModelID : AlertLogIDType;
begin
    -- Simulation initialization
        p_sim_init : process
        variable ID : AlertLogIDType;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierTestStart);
        ID := GetAlertLogID(PathTail(tbc_pmod_cls'path_name), TBID);
        ModelID <= ID;

        wait on ModelID;
        Log(ModelID, "Starting Pmod CLS emulation with SPI mode 0 bus.", ALWAYS);
        wait;
    end process p_sim_init;

    -- Just hold outputs at zero
    co_cipo <= '0';

    p_spi_recv : process
        variable input_buffer : std_logic_vector(127 downto 0);
        variable buf_len : natural := 0;
        variable buf_ovr : natural := 0;
        variable start_char : std_logic_vector(7 downto 0);
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierLogStart);
        Log(ModelID, "Entering Pmod CLS emulation with SPI mode 0 bus.", ALWAYS);

        l_spi_recv : loop
            input_buffer := (others => '0');
            buf_len := 0;
            buf_ovr := 0;
            start_char := x"20";

            pr_spi_recv_only(ci_sck, ci_csn, ci_copi, input_buffer, buf_len, buf_ovr);

            if (buf_len < 8) then
                Alert(ModelID, "PMOD CLS failed a SPI transferr with a short buffer length of " & to_string(buf_len) & " bits", ERROR);
            elsif (buf_len mod 8 /= 0) then
                Alert(ModelID, "PMOD CLS failed a SPI transferr with a uneven buffer length of " & to_string(buf_len) & " bits", ERROR);
            elsif (buf_ovr > 0) then
                Alert(ModelID, "PMOD CLS failed a SPI transferr with a tbc_pmod_cls buffer overflow of " & to_string(buf_len) & " bits", ERROR);
            else
                start_char := input_buffer(buf_len - 1 downto buf_len - 8);
                if (start_char = ASCII_CLS_ESC) then
                    Log(ModelID, "PMOD CLS received control line of " & to_string(real(buf_len) / real(8)) & " bytes: " &
                    to_hstring(input_buffer(buf_len - 1 downto 0)) & " decoded: \x" &
                    fn_convert_hex_to_ascii(input_buffer, (buf_len - 8) / 8), INFO);
                else
                    Log(ModelID, "PMOD CLS received text line of " & to_string(real(buf_len) / real(8)) & " bytes: " &
                    to_hstring(input_buffer(buf_len - 1 downto 0)) & " decoded: " &
                    fn_convert_hex_to_ascii(input_buffer, buf_len / 8), INFO);
                end if;
            end if;
        end loop l_spi_recv;
    end process p_spi_recv;
end architecture simulation_default;
--------------------------------------------------------------------------------
