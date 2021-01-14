source ./asim-compile-osvvm.do
source ./asim-compile-work-mixed.do

asim +access -dbg -L unisims_ver -L unimacro_ver work.test_default_fpga_regression work.glbl
run -all
