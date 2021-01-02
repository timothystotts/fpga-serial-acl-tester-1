--------------------------------------------------------------------------------
-- \file fpga_serial_acl_tester_testharness.vhdl
--
-- \brief Accelerometer control and reading, testharness.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
--------------------------------------------------------------------------------
entity fpga_serial_acl_tester_testharness is
end entity fpga_serial_acl_tester_testharness;
--------------------------------------------------------------------------------
architecture simulation of fpga_serial_acl_tester_testharness is
    component fpga_serial_acl_tester_testbench is
        generic(
            parm_simulation_duration : time := 7 ms;
            parm_fast_simulation : integer := 1;
            parm_log_file_name : string := "log_fpga_serial_acl_tester_no_test.txt"
        );
    end component fpga_serial_acl_tester_testbench;
begin

    u_fpga_serial_acl_tester_testbench : fpga_serial_acl_tester_testbench
        generic map(
            parm_simulation_duration => 7 ms,
            parm_fast_simulation => 1,
            parm_log_file_name => "log_fpga_serial_acl_tester_no_test.txt"
            );

end architecture simulation;
--------------------------------------------------------------------------------
