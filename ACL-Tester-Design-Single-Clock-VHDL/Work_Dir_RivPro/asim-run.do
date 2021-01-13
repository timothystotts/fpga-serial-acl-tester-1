source ./asim-compile-osvvm.do
source ./asim-compile-work.do

asim +access -dbg work.test_default_fpga_regression
run -all
