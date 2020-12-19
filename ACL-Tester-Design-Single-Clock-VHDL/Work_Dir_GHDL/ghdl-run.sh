#!/bin/bash -x

rm -f *.o
rm -f work-obj08.cf
rm -f fpga_serial_acl_tester_tb

for filename in \
    clock_divider.vhdl \
    clock_enable_divider.vhdl \
    arty_reset_synchronizer.vhdl \
    ext_interrupt_debouncer.vhdl \
    lcd_text_functions_pkg.vhdl \
    multi_input_debounce.vhdl \
    one_shot_fsm.vhdl \
    pulse_stretcher_synch.vhdl \
    \
    ssd_display.vhdl \
    thresh_presets_selector.vhdl \
    thresh_presets_pkg.vhdl \
    \
    acl_tester_fsm.vhdl \
    adxl362_readings_to_ascii.vhdl \
    lcd_text_feed.vhdl \
    led_pwm_driver.vhdl \
    led_palette_pulser.vhdl \
    \
    pmod_generic_spi_solo.vhdl \
    pmod_acl2_stand_spi_solo.vhdl \
    pmod_cls_stand_spi_solo.vhdl \
    \
    pmod_acl2_custom_driver.vhdl \
    pmod_cls_custom_driver.vhdl \
    \
    uart_tx_feed.vhdl \
    uart_tx_only.vhdl \
    \
    fpga_serial_acl_tester.vhdl \
    ; do

    ghdl -a --std=08 ../RTL/${filename} || exit 1

done

for filename in \
    fpga_serial_acl_tester_tb.vhdl \
    ; do

    ghdl -a --std=08 ../Testbench/${filename} || exit 1
done

ghdl -e --std=08 -fsynopsys -frelaxed \
     fpga_serial_acl_tester_tb || exit 1

#python3 xilinx_wave_to_ghdl_wave.py fpga_serial_acl_tester_tb_waves.opt \
#     fpga_serial_acl_tester_tb_100_behav_top.wcfg fpga_serial_acl_tester_tb_100_behav_acl2.wcfg  fpga_serial_acl_tester_tb_100_behav_cls.wcfg

grep '[<]wvobject' \
    ../Testbench/fpga_serial_acl_tester_tb_100_behav_top.wcfg \
    ../Testbench/fpga_serial_acl_tester_tb_100_behav_cls.wcfg \
    ../Testbench/fpga_serial_acl_tester_tb_100_behav_acl2.wcfg | \
    sed 's!.*fp_name=["]\(.*\)["][>]!\1!' > fpga_serial_acl_tester_tb_waves.opt

rm -f test.opt

ghdl -r --std=08 -fsynopsys -frelaxed \
     fpga_serial_acl_tester_tb \
     --stop-time=100ms --wave=simulate_fpga_serial_acl_tester.ghw \
     --read-wave-opt=fpga_serial_acl_tester_tb_waves.opt \
     --write-wave-opt=test.opt
