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
        TBID : in AlertLogIDType;
        BarrierTestStart : inout std_logic;
        BarrierLogStart : inout std_logic;
        ci_mux_ena : in std_logic;
        ci_mux_dat : in std_logic_vector(6 downto 0)
        );
end entity tbc_pmod_7sd;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_pmod_7sd is
    function ssd_to_unsigned(val : std_logic_vector(6 downto 0))
    return unsigned is
        variable v_ret : unsigned(3 downto 0);
    begin
        case val is
            when "0111111" => v_ret := x"0";
            when "0000110" => v_ret := x"1";
            when "1011011" => v_ret := x"2";
            when "1001111" => v_ret := x"3";
            when "1100110" => v_ret := x"4";
            when "1101101" => v_ret := x"5";
            when "1111101" => v_ret := x"6";
            when "0000111" => v_ret := x"7";
            when "1111111" => v_ret := x"8";
            when "1100111" => v_ret := x"9";
            when "1110111" => v_ret := x"A";
            when "1111100" => v_ret := x"B";
            when "0111001" => v_ret := x"C";
            when "1011110" => v_ret := x"D";
            when "1111001" => v_ret := x"E";
            when "1110001" => v_ret := x"F";
            when others => v_ret := "UUUU";
        end case;

        return v_ret;
    end function ssd_to_unsigned;

    signal ModelID : AlertLogIDType;
begin
    -- Simulation initialization
    p_sim_init : process
        variable ID : AlertLogIDType;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierTestStart);
        ID := GetAlertLogID(PathTail(tbc_pmod_7sd'path_name), TBID);
        ModelID <= ID;

        wait on ModelID;
        Log(ModelID, "Starting monitoring emulation of Pmod SSD (7SD).", ALWAYS);
        wait;
    end process p_sim_init;

    -- Just print signal lines
    p_receive_display_value : process
        variable val_of_7sd : unsigned(3 downto 0);
        variable val_is_valid : std_logic;
    begin
        wait for 0 ns;
        WaitForBarrier(BarrierLogStart);
        
        l_7seg_monitor : loop
            wait on ci_mux_ena;
            wait for 100 ns;
            val_of_7sd := ssd_to_unsigned(ci_mux_dat);
            val_is_valid := std_logic(val_of_7sd(0));

            if (val_is_valid = 'U') then
                if (ci_mux_dat = "0000000") then
                    Log(ModelID, "7SD Digit " & to_string(ci_mux_ena) & " is turned OFF: " & to_string(ci_mux_dat), INFO);
                else
                    Alert(ModelID, "7SD Digit " & to_string(ci_mux_ena) & " is displaying an invalid value: " & to_string(ci_mux_dat), WARNING);
                end if;
            else
                Log(ModelID, "7SD Digit " & to_string(ci_mux_ena) & " is displaying character: " & to_hstring(val_of_7sd) & " (" & to_string(ci_mux_dat) & ")", INFO);
            end if;
        end loop l_7seg_monitor;
    end process p_receive_display_value;
end architecture simulation_default;
--------------------------------------------------------------------------------
