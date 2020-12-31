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
                parm_log_file_name => "log_test_default_fpga_regression.txt"
            );
        end for;
    end for;
end configuration test_default_fpga_regression;
--------------------------------------------------------------------------------
