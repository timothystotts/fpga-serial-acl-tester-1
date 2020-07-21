# IP folder for the ACL-Tester-Design-AXI project
The IP folder contains both a local custom IP module in local_ip, as well as
a forked development of the Digilent vivado-library GitHub project. If the
fpga-serial-acl-tester-1 project is downloaded by means other than a git clone
with recursive submodule update, the folder vivado-library will be empty.

## Obtaining vivado-libary folder with git command-line.
If a git clone is performed as:
```bash
git clone https://github.com/timothystotts/fpga-serial-acl-tester-1.git
```
then the following commands are necessary afterward:
```bash
cd fpga-serial-acl-tester-1/ACL-Tester-Design-AXI/IP/
git submodule init vivado-library/
git submodule update vivado-library/
```
If a git clone was performed as:
```bash
git clone --recurse-submodules https://github.com/timothystotts/fpga-serial-acl-tester-1.git
```
then the contents of
```bash
fpga-serial-acl-tester-1/ACL-Tester-Design-AXI/IP/
```
should already be up-to-date.

## Obtaining vivado-library folder with ZIP download
If the project fpga-serial-acl-tester-1 master branch is downloaded by ZIP file,
it will be necessary to download the project vivado-library separately and place
it un-zipped in the location:
```bash
fpga-serial-acl-tester-1-master/ACL-Tester-Design-AXI/IP/
```
Navigate the web browser to
[http://github.com/timothystotts/vivado-library](http://github.com/timothystotts/vivado-library)
.
Select branch **arty-a7-100-vivado-2019.1** on the web page. Then download the
ZIP file. Place the ZIP file in the folder location:
```bash
 fpga-serial-acl-tester-1-master/ACL-Tester-Design-AXI/IP/
```
Then extract the ZIP file. Its contents should create a
```bash
vivado-library-arty-a7-100-vivado-2019.1
```
folder with the contents same as a would have downloaded to the vivado-library/
folder with the git clone --recurse-submodule command.
Before running Xilinx Vivado 2019.1, rename this folder to
```bash
vivado-library
```
and the tool will find the IP repository in this folder.
