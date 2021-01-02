--------------------------------------------------------------------------------
-- \file clock_gen.vhdl
--
-- \brief OSVVM testbench component: External Clock and Reset Generator
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
--------------------------------------------------------------------------------
entity tbc_clock_gen is
	generic(
        parm_main_clock_period : time := 10 ns;
        parm_reset_cycle_count : positive := 100
    );
    port(
        TBID : in  AlertLogIDType;
        co_main_clock : out std_logic;
        con_main_reset : out std_logic
    );
end entity tbc_clock_gen;
--------------------------------------------------------------------------------
architecture simulation_default of tbc_clock_gen is
    signal ModelID : AlertLogIDType;
    signal so_main_clock : std_logic;
begin
    -- Simulation initialization
    p_sim_init : process
        variable ID : AlertLogIDType;
    begin
        wait for 1 ns;
        ID := GetAlertLogID(PathTail(tbc_clock_gen'path_name), TBID);
        ModelID <= ID;
        wait;
    end process p_sim_init;

    -- Output main clock
    co_main_clock <= so_main_clock;

    -- Generate main clock
    p_gen_main_clock : process
    begin
        wait for 2 ns;
        Log(ModelID, "Started external clock running with period " &
            to_string(parm_main_clock_period), ALWAYS);
        CreateClock(
            Clk => so_main_clock,
            Period => parm_main_clock_period,
            DutyCycle => 0.5
        );
        wait;
    end process p_gen_main_clock;

    -- Generate and output main reset
    p_gen_main_reset : process
        constant c_reset_period : time := parm_reset_cycle_count * parm_main_clock_period;
    begin
        wait for 2 ns;
        con_main_reset <= '1';
        wait for c_reset_period;

        Log(ModelID, "Started external reset running with period " &
            to_string(c_reset_period), ALWAYS);
        CreateReset(
            Reset => con_main_reset,
            ResetActive => '0',
            Clk => so_main_clock,
            Period => c_reset_period,
            tpd => 2 ns
        );
        wait;
    end process p_gen_main_reset;
end architecture simulation_default;
--------------------------------------------------------------------------------
