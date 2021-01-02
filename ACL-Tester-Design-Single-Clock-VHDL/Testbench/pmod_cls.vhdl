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

    function fn_convert_slv_to_ascii(
        char_as_slv : std_logic_vector(7 downto 0))
    return character;

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

    function fn_convert_slv_to_ascii(
        char_as_slv : std_logic_vector(7 downto 0)
    ) return character is
        variable ret_char : character := ' ';
    begin
        case char_as_slv is
            when x"20" => ret_char := ' ';
            when x"21" => ret_char := '!';
            when x"22" => ret_char := '"';
            when x"23" => ret_char := '#';
            when x"24" => ret_char := '$';
            when x"25" => ret_char := '%';
            when x"26" => ret_char := '&';
            when x"27" => ret_char := ''';
            when x"28" => ret_char := '(';
            when x"29" => ret_char := ')';
            when x"2A" => ret_char := '*';
            when x"2B" => ret_char := '+';
            when x"2C" => ret_char := ',';
            when x"2D" => ret_char := '~';
            when x"2E" => ret_char := '.';
            when x"2F" => ret_char := '/';

            when x"30" => ret_char := '0';
            when x"31" => ret_char := '1';
            when x"32" => ret_char := '2';
            when x"33" => ret_char := '3';
            when x"34" => ret_char := '4';
            when x"35" => ret_char := '5';
            when x"36" => ret_char := '6';
            when x"37" => ret_char := '7';
            when x"38" => ret_char := '8';
            when x"39" => ret_char := '9';
            when x"3A" => ret_char := ':';
            when x"3B" => ret_char := ';';
            when x"3C" => ret_char := '<';
            when x"3D" => ret_char := '=';
            when x"3E" => ret_char := '>';
            when x"3F" => ret_char := '?';

            when x"40" => ret_char := '@';
            when x"41" => ret_char := 'A';
            when x"42" => ret_char := 'B';
            when x"43" => ret_char := 'C';
            when x"44" => ret_char := 'D';
            when x"45" => ret_char := 'E';
            when x"46" => ret_char := 'F';
            when x"47" => ret_char := 'G';
            when x"48" => ret_char := 'H';
            when x"49" => ret_char := 'I';
            when x"4A" => ret_char := 'J';
            when x"4B" => ret_char := 'K';
            when x"4C" => ret_char := 'L';
            when x"4D" => ret_char := 'M';
            when x"4E" => ret_char := 'N';
            when x"4F" => ret_char := 'O';

            when x"50" => ret_char := 'P';
            when x"51" => ret_char := 'Q';
            when x"52" => ret_char := 'R';
            when x"53" => ret_char := 'S';
            when x"54" => ret_char := 'T';
            when x"55" => ret_char := 'U';
            when x"56" => ret_char := 'V';
            when x"57" => ret_char := 'W';
            when x"58" => ret_char := 'X';
            when x"59" => ret_char := 'Y';
            when x"5A" => ret_char := 'Z';
            when x"5B" => ret_char := '[';
            when x"5C" => ret_char := '\';
            when x"5D" => ret_char := ']';
            when x"5E" => ret_char := '^';
            when x"5F" => ret_char := '_';

            when x"60" => ret_char := '`';
            when x"61" => ret_char := 'a';
            when x"62" => ret_char := 'b';
            when x"63" => ret_char := 'c';
            when x"64" => ret_char := 'd';
            when x"65" => ret_char := 'e';
            when x"66" => ret_char := 'f';
            when x"67" => ret_char := 'g';
            when x"68" => ret_char := 'h';
            when x"69" => ret_char := 'i';
            when x"6A" => ret_char := 'j';
            when x"6B" => ret_char := 'k';
            when x"6C" => ret_char := 'l';
            when x"6D" => ret_char := 'm';
            when x"6E" => ret_char := 'n';
            when x"6F" => ret_char := 'o';

            when x"70" => ret_char := 'p';
            when x"71" => ret_char := 'q';
            when x"72" => ret_char := 'r';
            when x"73" => ret_char := 's';
            when x"74" => ret_char := 't';
            when x"75" => ret_char := 'u';
            when x"76" => ret_char := 'v';
            when x"77" => ret_char := 'w';
            when x"78" => ret_char := 'x';
            when x"79" => ret_char := 'y';
            when x"7A" => ret_char := 'z';
            when x"7B" => ret_char := '{';
            when x"7C" => ret_char := '|';
            when x"7D" => ret_char := '}';
            when x"7E" => ret_char := '~';

            when others => ret_char := '.';
        end case;

        return ret_char;
    end function fn_convert_slv_to_ascii;

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
        ci_sck : in std_logic;
        ci_csn : in std_logic;
        ci_copi : in std_logic;
        co_cipo : out std_logic
        );
end entity tbc_pmod_cls;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_pmod_cls is
    constant ASCII_CLS_ESC : std_logic_vector(7 downto 0) := x"1B";
begin
    -- Just hold outputs at zero
    co_cipo <= '0';

    p_spi_recv : process
        variable input_buffer : std_logic_vector(127 downto 0);
        variable buf_len : natural := 0;
        variable buf_ovr : natural := 0;
        variable start_char : std_logic_vector(7 downto 0);
    begin
        input_buffer := (others => '0');
        buf_len := 0;
        buf_ovr := 0;
        start_char := x"20";

        pr_spi_recv_only(ci_sck, ci_csn, ci_copi, input_buffer, buf_len, buf_ovr);

        if (buf_len < 8) then
            Alert("PMOD CLS failed a SPI transferr with a short buffer length of " & to_string(buf_len) & " bits", ERROR);
        elsif (buf_len mod 8 /= 0) then
            Alert("PMOD CLS failed a SPI transferr with a uneven buffer length of " & to_string(buf_len) & " bits", ERROR);
        elsif (buf_ovr > 0) then
            Alert("PMOD CLS failed a SPI transferr with a tbc_pmod_cls buffer overflow of " & to_string(buf_len) & " bits", ERROR);
        else
            start_char := input_buffer(buf_len - 1 downto buf_len - 8);
            if (start_char = ASCII_CLS_ESC) then
                Log("PMOD CLS received control line of " & to_string(real(buf_len) / real(8)) & " bytes: " &
                to_hstring(input_buffer(buf_len - 1 downto 0)) & " decoded: \x" &
                fn_convert_hex_to_ascii(input_buffer, (buf_len - 8) / 8), INFO);
            else
                Log("PMOD CLS received text line of " & to_string(real(buf_len) / real(8)) & " bytes: " &
                to_hstring(input_buffer(buf_len - 1 downto 0)) & " decoded: " &
                fn_convert_hex_to_ascii(input_buffer, buf_len / 8), INFO);
            end if;
        end if;
    end process p_spi_recv;
end architecture simulation_default;
--------------------------------------------------------------------------------
