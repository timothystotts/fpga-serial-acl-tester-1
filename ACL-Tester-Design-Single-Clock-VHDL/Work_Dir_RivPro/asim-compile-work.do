set SRC_DIR ".."
set ACOM_OPTS "-2008 -dbg"

amap unisim "C:\\Aldec\\Xilinx-HDL-2020.2\\Xilinx-VHDL-2020.2\\unisim"
amap unimacro "C:\\Aldec\\Xilinx-HDL-2020.2\\Xilinx-VHDL-2020.2\\unimacro"

adel -lib work -all
alib work

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/clock_divider.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/clock_enable_divider.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/arty_reset_synchronizer.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/ext_interrupt_debouncer.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/lcd_text_functions_pkg.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/multi_input_debounce.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/one_shot_fsm.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/pulse_stretcher_synch.vhdl

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/ssd_display.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/thresh_presets_selector.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/thresh_presets_pkg.vhdl

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/acl_tester_fsm.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/adxl362_readings_to_ascii.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/lcd_text_feed.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/led_pwm_driver.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/led_palette_pulser.vhdl

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/pmod_generic_spi_solo.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/pmod_acl2_stand_spi_solo.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/pmod_cls_stand_spi_solo.vhdl

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/pmod_acl2_custom_driver.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/pmod_cls_custom_driver.vhdl

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/uart_tx_feed.vhdl
eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/uart_tx_only.vhdl

eval acom ${ACOM_OPTS} -work work ${SRC_DIR}/RTL/fpga_serial_acl_tester.vhdl

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
