set SRC_DIR ".."
set XILINX_DIR "D:/Xilinx/Vivado/2020.2"
set ACOM_OPTS "-2008 -dbg"
set ALOG_OPTS "-v2k -dbg -l unisims_ver -l unimaco_ver"

amap unisim "C:\\Aldec\\Xilinx-HDL-2020.2\\Xilinx-VHDL-2020.2\\unisim"
amap unimacro "C:\\Aldec\\Xilinx-HDL-2020.2\\Xilinx-VHDL-2020.2\\unimacro"
amap unisims_ver "C:\\Aldec\\Xilinx-HDL-2020.2\\Xilinx-Verilog-2020.2\\unisims_ver"
amap unimaco_ver "C:\\Aldec\\Xilinx-HDL-2020.2\\Xilinx-Verilog-2020.2\\unimacro_ver"

adel -lib work -all
alib work

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/clock_divider.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/clock_enable_divider.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/arty_reset_synchronizer.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/ext_interrupt_debouncer.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/multi_input_debounce.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/one_shot_fsm.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/pulse_stretcher_synch.v

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/ssd_display.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/threshold_presets_selector.v

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/acl_tester_fsm.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/adxl362_readings_to_ascii.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/lcd_text_feed.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/led_pwm_driver.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/led_palette_pulser.v

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/pmod_generic_spi_solo.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/pmod_acl2_stand_spi_solo.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/pmod_cls_stand_spi_solo.v

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/pmod_acl2_custom_driver.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/pmod_cls_custom_driver.v

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/uart_tx_feed.v
eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/uart_tx_only.v

eval alog ${ALOG_OPTS} -work work ${SRC_DIR}/RTL/fpga_serial_acl_tester.v

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/acl_testbench_pkg.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/clock_gen.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/board_ui.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/pmod_acl2.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/board_uart.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/pmod_cls.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/pmod_7sd.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/fpga_serial_acl_tester_testbench.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/fpga_serial_acl_tester_testharness.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/Testbench/test_default_fpga_regression.vhdl

eval alog ${ALOG_OPTS} -work work ${XILINX_DIR}/data/verilog/src/glbl.v
