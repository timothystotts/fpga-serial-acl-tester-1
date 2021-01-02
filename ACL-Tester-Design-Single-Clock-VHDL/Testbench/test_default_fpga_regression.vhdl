--------------------------------------------------------------------------------
-- \file fpga_serial_acl_tester_testbench.vhdl
--
-- \brief Accelerometer control and reading, testbench.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library osvvm;
context osvvm.OsvvmContext;

library work;
use work.all;
--------------------------------------------------------------------------------
configuration test_default_fpga_regression of fpga_serial_acl_tester_testharness is
    for simulation
        for u_fpga_serial_acl_tester_testbench : fpga_serial_acl_tester_testbench
            use entity work.fpga_serial_acl_tester_testbench(simulation)
            generic map(
                parm_simulation_duration => 750 ms,
                parm_log_file_name => "log_test_default_fpga_regression.txt"
            );

            for simulation
                for uut_fpga_serial_acl_tester : fpga_serial_acl_tester
                    use entity work.fpga_serial_acl_tester(rtl);
                end for;

                for u_tbc_clock_gen : tbc_clock_gen
                    use entity work.tbc_clock_gen(simulation_default);
                end for;

                for u_tbc_board_ui : tbc_board_ui
                    use entity work.tbc_board_ui(simulation_default);
                end for;

                for u_tbc_pmod_acl2 : tbc_pmod_acl2
                    use entity work.tbc_pmod_acl2(simulation_default);
                end for;

                for u_tbc_pmod_cls : tbc_pmod_cls
                    use entity work.tbc_pmod_cls(simulation_default);
                end for;

                for u_tbc_board_uart : tbc_board_uart
                    use entity work.tbc_board_uart(simulation_default);
                end for;

                for u_tbc_pmod_7sd : tbc_pmod_7sd
                    use entity work.tbc_pmod_7sd(simulation_default);
                end for;
            end for;
        end for;
    end for;
end configuration test_default_fpga_regression;
--------------------------------------------------------------------------------
