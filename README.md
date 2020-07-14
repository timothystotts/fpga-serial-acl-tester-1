# fpga-serial-acl-tester-1

FPGA Serial ACL Tester Version 1
by Timothy Stotts


## Description
A small FPGA project of different implementations for testing Measurement and Activity Events of a SPI accelerometer.
The design targets the Digilent Inc. Arty-A7-100T FPGA development board containing a Xilinx Artix-7 FPGA.
Two peripherals are used: Digilent Inc. Pmod ACL2, Digilent Inc. Pmod CLS.

The design is broken into three groupings.

The folder ACL-Tester-Design-AXI contains a Xilinx Vivado IP Integrator plus
Xilinx SDK design. A microblaze soft CPU is instantiated to talk with board components, an accelerometer peripheral,
and a 16x2 character LCD peripheral. A Xilinx SDK project contains a very small FreeRTOS program in C; drivers
for the peripherals, a real-time task to poll the accelerometer, and two real-time tasks to display data.

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
additional animation effect of the board's three-emitter RGB LEDs. Additionally, work is in-progress in
the feature/ssd_with_presets branch to add a single Pmod SSD to the Pmod Jack A for the purpose of
selecting among ten ADXL362 configuration preset values for each of Activity Detection threshold/timer
and Inactivity Detection threshold/timer. The VHDL code is complete for this feature, but is not yet
release ready. The Verilog code is also complete for this feature, but is not yet release ready.

### Project information document:

./Serial ACL Readings Tester.pdf

[Serial ACL Readings Tester info](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/Serial%20ACL%20Readings%20Tester.pdf)

### Diagrams design document:

./ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams.pdf

[Serial ACL Design Diagrams info](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams.pdf)

#### Block diagram architecture of the HDL designs:
![ACL Tester Architecture Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Architecture%201.svg)

#### Top Port diagram architecture of the HDL designs:
![ACL Tester Top Ports Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Top-Ports.svg)

#### Tester FSM diagram of the HDL designs:
![ACL Tester FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-Tester-FSM.svg)

#### LCD FSM diagram of the HDL designs:
![LCD FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-LCD-FSM.svg)

#### UART Feed FSM diagram of the HDL designs:
![UART Feed FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-UARTfeed.svg)

#### UART TX ONLY FSM diagram of the HDL designs:
![UART Feed FSM Diagram](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-UART-Tx-FSM.svg)

#### 4-input Multi-Debouncer for 4 exclusve inputs, such as switches or buttons, of the HDL designs:
![4-bit Multi-Debouncer](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-multi-debounce.svg)

#### ACL2 Custom Driver Ports diagram of the HDL designs:
![ACL2 Custom Driver Ports](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-ACL2-ports.svg)

#### ACL2 Custom Driver readings Stream FSM:
![ACL2 Custom Driver readings Stream FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-StreamFSM.svg)

#### Pmod ACL2 Standard SPI custom driver FSM for operating the standard SPI driver to configuration and operate the modes of the ADXL362 accelerometer chip of the Pmod ACL2:
![ACL2 Custom Driver readings driver FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-ADXL362-driver-FSM.svg)

#### Generic Standard SPI Single Slave protocol bus driver, used by the ACL2 driver and the CLS driver
![Generic Standard SPI Single Slave bus driver](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-SPI-generic-FSM.svg)

#### CLS Custom Driver Ports diagram of the HDL designs:
![CLS Custom Driver Ports](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-CLS-ports.svg)

#### Pmod CLS Standard SPI custom driver FSM for operating the standard SPI driver to send text line refreshes to the ATmega48 microcontroller chip of the Pmod CLS:
![CLS Custom Driver readings driver FSM](https://github.com/timothystotts/fpga-serial-acl-tester-1/blob/master/ACL-Tester-Design-Documents/ACL-Tester-Design-Diagrams-CLS-driver-FSM.svg)

