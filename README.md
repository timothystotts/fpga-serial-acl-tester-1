# fpga-serial-acl-tester-1

FPGA Serial ACL Tester Version 1
by Timothy Stotts


## Description
A small FPGA project of different implementations for testing Measurement and Activity Events of a SPI accelerometer.
The design targets the Digilent Inc. Arty-A7-100T FPGA development board containing a Xilinx Artix-7 FPGA.
Three peripherals are used: Digilent Inc. Pmod ACL2, Digilent Inc. Pmod CLS., Digilent Inc. Pmod SSD.

The design is broken into three groupings.

The folder ACL-Tester-Design-AXI contains a Xilinx Vivado IP Integrator plus
Xilinx SDK design. A microblaze soft CPU is instantiated to talk with board components, an accelerometer peripheral,
a 16x2 character LCD peripheral, and a two-digit Seven Segment Display.
A Xilinx SDK project contains a very small FreeRTOS program in C; drivers
for the peripherals, a real-time task to operate and poll the accelerometer,
two real-time tasks to display data, and a real-time task to color-mix RGB LEDs.

The folder ACL-Tester-Design-Single-Clock-Verilog contains a Xilinx Vivado project with sources
containing only Verilog-2001 modules. Plain HDL without a soft CPU or C code is authored to
talk with board components, an accelerometer peripheral, and a 16x2 character LCD peripheral.
The project is named "Single Clock" as clock enable pulses are used instead of clock dividers
as much as possible throughout the design.

The folder ACL-Tester-Design-Single-Clock-VHDL contains a Xilinx Vivado project with sources
containing only VHDL-2002 and VHDL-2008 modules. Plain HDL without a soft CPU or C code is authored to
talk with board components, an accelerometer peripheral, and a 16x2 character LCD peripheral.
The project is named "Single Clock" as clock enable pulses are used instead of clock dividers
as much as possible throughout the design.

These three groupings of design provide equivalent functionality, excepting that the HDL designs provide
additional animation effect of the board's three-emitter RGB LEDs. Additionally, work is merged from
the feature/ssd_with_presets branch to add a single Pmod SSD to the Pmod Jack A for the purpose of
selecting among ten ADXL362 configuration preset values for each of Activity Detection threshold/timer
and Inactivity Detection threshold/timer. The VHDL code is complete for this feature, but is not yet
release ready. The Verilog code is also complete for this feature, but is not yet release ready.
The IPI-BD AXI design is also complete for this feature, but is not yet release ready.
Checkouts for the design without a Pmod SSD peripheral should refer to release tag
Serial_ACL_Tester_Release_A . Checkouts for the latest experimental implementation of adding
Pmod SSD to Pmod Jack JA and using Buttons 0 and 1 to select threshold/timer presets, should
refer to tag Serial_ACL_Tester_HDL_Prerelease_6B or the HEAD of the master branch. The AXI design
implements an alternative IP module instead of Pmod SSD user IP, called MuxSSD. This allows the
FreeRTOS C code to implement a software driver to update two registers on the MuxSSD that control
the discrete segments of each of the two Seven Segment digit emitters. The MuxSSD IP in the IPI-BD
takes care of multiplexing the two digits with only 8 general purpose signals. The FreeRTOS
program can write one or both digits at any time and expect continued display of both digits
and no necessary timer usage for GPIO multiplexing in the user code.

### Naming conventions notice
The Pmod peripherals used in this project connect via a standard bus technology design called SPI.
The use of MOSI/MISO terminology is considered obsolete. COPI/CIPO is now used. The MOSI signal on a
controller can be replaced with the title 'COPI'. Master and Slave terms are now Controller and Peripheral.
Additional information can be found [here](https://www.oshwa.org/a-resolution-to-redefine-spi-signal-names).
The choice to use COPI and CIPO instead of SDO and SDI for single-direction bus signals is simple.
On a single peripheral bus with two data lines of fixed direction, the usage of the signal name
"SDO" is dependent on whether the Controller or the Peripheral is the chip being discussed;
whereas COPI gives the exact direction regardless of which chip is being discussed. The author
of this website agrees with the open source community that the removal of offensive language from
standard terminology in engineering is a priority.

### Project information document:

./Serial ACL Readings Tester.pdf

[Serial ACL Readings Tester info](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/Serial%20ACL%20Readings%20Tester.pdf)

### Diagrams design document:

./ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams.pdf

[Serial ACL Design Diagrams info](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams.pdf)

#### Target device assembly: Arty-A7-100T with Pmod ACL2, Pmod CLS, Pmod SSD, on extension cables
![Target device assembly](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/img_serial-acl-tester-assembled-20190718.jpg)

#### Block diagram architecture of the HDL designs:
![ACL Tester Architecture Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Architecture%201.svg)

#### Top Port diagram architecture of the HDL designs:
![ACL Tester Top Ports Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Top-Ports.svg)

#### Tester FSM diagram of the HDL designs:
![ACL Tester FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Tester-FSM.svg)

#### LCD FSM diagram of the HDL designs:
![LCD FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-LCD-FSM.svg)

#### UART Feed FSM diagram of the HDL designs:
![UART Feed FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-UARTfeed.svg)

#### UART TX ONLY FSM diagram of the HDL designs:
![UART Feed FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-UART-Tx-FSM.svg)

#### 4-input Multi-Debouncer for 4 exclusve inputs, such as switches or buttons, of the HDL designs:
![4-bit Multi-Debouncer](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-multi-debounce.svg)

#### ACL2 Custom Driver Ports diagram of the HDL designs:
![ACL2 Custom Driver Ports](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-ACL2-ports.svg)

#### ACL2 Custom Driver readings Stream FSM:
![ACL2 Custom Driver readings Stream FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-StreamFSM.svg)

#### Pmod ACL2 Standard SPI custom driver FSM for operating the standard SPI driver to configuration and operate the modes of the ADXL362 accelerometer chip of the Pmod ACL2:
![ACL2 Custom Driver readings driver FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-ADXL362-driver-FSM.svg)

#### Generic Standard SPI Single Chip protocol bus driver, used by the ACL2 driver and the CLS driver
![Generic Standard SPI Single Chip bus driver](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-SPI-generic-FSM.svg)

#### CLS Custom Driver Ports diagram of the HDL designs:
![CLS Custom Driver Ports](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-CLS-ports.svg)

#### Pmod CLS Standard SPI custom driver FSM for operating the standard SPI driver to send text line refreshes to the ATmega48 microcontroller chip of the Pmod CLS:
![CLS Custom Driver readings driver FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-CLS-driver-FSM.svg)

#### Threshold Preset Selector - design implements 0 to 9, and back. The diagram is for h0 to hF, and back.
![Threshold Preset Selector FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-thresh-preset-sel-FSM.svg)

#### Utility FSMs: one-shot FSM and synchonous pulse stretcher
![Utility FSMs, one-shot, pulse stretcher](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/main/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Utility-FSMs.svg)
