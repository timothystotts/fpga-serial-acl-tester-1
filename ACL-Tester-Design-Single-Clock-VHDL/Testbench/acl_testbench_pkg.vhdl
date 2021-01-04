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
-- \file acl_testbench_pkg.vhdl
--
-- \brief OSVVM testbench extras in packages for testing
-- entity fpga_serial_acl_tester .
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
package acl_testbench_types_pkg is
end package acl_testbench_types_pkg;
--------------------------------------------------------------------------------
package body acl_testbench_types_pkg is
end package body acl_testbench_types_pkg;
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
use work.acl_testbench_types_pkg.all;
--------------------------------------------------------------------------------
package acl_testbench_pkg is
    function fn_convert_slv_to_ascii(
        char_as_slv : std_logic_vector(7 downto 0))
    return character;
end package acl_testbench_pkg;
--------------------------------------------------------------------------------
package body acl_testbench_pkg is
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
end package body acl_testbench_pkg;
--------------------------------------------------------------------------------
