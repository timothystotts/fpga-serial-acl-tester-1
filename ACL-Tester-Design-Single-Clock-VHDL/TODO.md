# ACL-Tester-Design-Single-Clock-VHDL TODO

# Test-bench Pmod ACL2 timers and thresholds

Writing to the Pmod ACL2 timers and thresholds registesr, and then enabling Linked Mode, ought to
cause a rotating behavior with the value registers and the Activity and Inactivity status register
bits. This needs to be simulated for coverage of testing the Linked Mode (enable of switch 1) of
the FPGA SERIAL ACL TESTER design.

# Test-bench Scoreboard of read registers (X, Y, Z, Temp) versus outputs

The FPGA reads registers (X, Y, Z, Temp) and then outputs either fixed-point conversion to 'g' and
a raw temperature value; or to the raw hexademical values received via SPI mode 0. These need to be
cross-checked between the history of Pmod ACL2 readings and then the output of values on UART and
Pmod CLS. The OSVVM Scoreboard should be used: all readings of Pmod ACL2 should be enqueued to the
scoreboard by the Pmod ACL2 model immediately after their read by the FPGA; and then the scoreboard
value history should be searched within by the UART model and the Pmod CLS model.
