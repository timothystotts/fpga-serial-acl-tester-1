-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue May 26 23:08:27 2020
-- Host        : M3ENGINEERING running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/wa/Stotts-Homework-2019-Portfolio.git/ACL2-Experiment-AXI/IPI-BDs/system/ip/system_PWM_0_0/system_PWM_0_0_sim_netlist.vhdl
-- Design      : system_PWM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_PWM_0_0_PWM_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[1][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[2][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[3][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[4][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[5][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[6][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[7][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[8][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[9][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[10][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \duty_reg_reg[11][31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \period_reg_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ctrl_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_rvalid : out STD_LOGIC;
    pwm_axi_bvalid : out STD_LOGIC;
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_PWM_0_0_PWM_AXI : entity is "PWM_AXI";
end system_PWM_0_0_PWM_AXI;

architecture STRUCTURE of system_PWM_0_0_PWM_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[6]\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \ctrl_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^ctrl_reg_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ctrl_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \ctrl_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \duty_reg[0][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[0][31]_i_3_n_0\ : STD_LOGIC;
  signal \duty_reg[10][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[10][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[10][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[10][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[10][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[11][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[11][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[11][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[11][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[11][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[1][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[1][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[1][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[1][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[2][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[2][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[2][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[2][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[3][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[3][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[3][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[3][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[4][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[4][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[4][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[4][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[5][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[5][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[5][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[6][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[6][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[6][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[7][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[7][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[7][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[8][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[8][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[8][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[8][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[8][7]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[9][15]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[9][23]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[9][31]_i_1_n_0\ : STD_LOGIC;
  signal \duty_reg[9][31]_i_2_n_0\ : STD_LOGIC;
  signal \duty_reg[9][7]_i_1_n_0\ : STD_LOGIC;
  signal \^duty_reg_reg[10][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[11][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[1][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[2][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[3][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[4][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[5][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[6][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[7][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[8][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^duty_reg_reg[9][31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \period_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \period_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \period_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \period_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \^period_reg_reg[31]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^pwm_axi_bvalid\ : STD_LOGIC;
  signal \^pwm_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal slv_reg_rden : STD_LOGIC;
  signal \status_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \status_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[31]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \status_reg_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \duty_reg[0][31]_i_3\ : label is "soft_lutpair0";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  \ctrl_reg_reg[0]_0\(0) <= \^ctrl_reg_reg[0]_0\(0);
  \duty_reg_reg[10][31]_0\(31 downto 0) <= \^duty_reg_reg[10][31]_0\(31 downto 0);
  \duty_reg_reg[11][31]_0\(31 downto 0) <= \^duty_reg_reg[11][31]_0\(31 downto 0);
  \duty_reg_reg[1][31]_0\(31 downto 0) <= \^duty_reg_reg[1][31]_0\(31 downto 0);
  \duty_reg_reg[2][31]_0\(31 downto 0) <= \^duty_reg_reg[2][31]_0\(31 downto 0);
  \duty_reg_reg[3][31]_0\(31 downto 0) <= \^duty_reg_reg[3][31]_0\(31 downto 0);
  \duty_reg_reg[4][31]_0\(31 downto 0) <= \^duty_reg_reg[4][31]_0\(31 downto 0);
  \duty_reg_reg[5][31]_0\(31 downto 0) <= \^duty_reg_reg[5][31]_0\(31 downto 0);
  \duty_reg_reg[6][31]_0\(31 downto 0) <= \^duty_reg_reg[6][31]_0\(31 downto 0);
  \duty_reg_reg[7][31]_0\(31 downto 0) <= \^duty_reg_reg[7][31]_0\(31 downto 0);
  \duty_reg_reg[8][31]_0\(31 downto 0) <= \^duty_reg_reg[8][31]_0\(31 downto 0);
  \duty_reg_reg[9][31]_0\(31 downto 0) <= \^duty_reg_reg[9][31]_0\(31 downto 0);
  \period_reg_reg[31]_0\(31 downto 0) <= \^period_reg_reg[31]_0\(31 downto 0);
  pwm_axi_bvalid <= \^pwm_axi_bvalid\;
  pwm_axi_rvalid <= \^pwm_axi_rvalid\;
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(0),
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(1),
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(2),
      Q => sel0(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(3),
      Q => sel0(3),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_arready0,
      D => pwm_axi_araddr(4),
      Q => \axi_araddr_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pwm_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(0),
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(1),
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(2),
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(3),
      Q => p_0_in(3),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => axi_awready0,
      D => pwm_axi_awaddr(4),
      Q => p_0_in(4),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pwm_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pwm_axi_awvalid,
      I1 => pwm_axi_wvalid,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => pwm_axi_bready,
      I1 => \^pwm_axi_bvalid\,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => pwm_axi_awvalid,
      I5 => pwm_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^pwm_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[0]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(0),
      I1 => \^duty_reg_reg[10][31]_0\(0),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(0),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(0),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[0]\,
      I3 => sel0(0),
      I4 => \^ctrl_reg_reg[0]_0\(0),
      O => \axi_rdata[0]_i_4_n_0\
    );
\axi_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(0),
      I1 => \^duty_reg_reg[2][31]_0\(0),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(0),
      I4 => sel0(0),
      I5 => \^q\(0),
      O => \axi_rdata[0]_i_5_n_0\
    );
\axi_rdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(0),
      I1 => \^duty_reg_reg[6][31]_0\(0),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(0),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(0),
      O => \axi_rdata[0]_i_6_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[10]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(10),
      I1 => \^duty_reg_reg[10][31]_0\(10),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(10),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(10),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[10]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_4_n_0\
    );
\axi_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(10),
      I1 => \^duty_reg_reg[2][31]_0\(10),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(10),
      I4 => sel0(0),
      I5 => \^q\(10),
      O => \axi_rdata[10]_i_5_n_0\
    );
\axi_rdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(10),
      I1 => \^duty_reg_reg[6][31]_0\(10),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(10),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(10),
      O => \axi_rdata[10]_i_6_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[11]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(11),
      I1 => \^duty_reg_reg[10][31]_0\(11),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(11),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(11),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[11]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_4_n_0\
    );
\axi_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(11),
      I1 => \^duty_reg_reg[2][31]_0\(11),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(11),
      I4 => sel0(0),
      I5 => \^q\(11),
      O => \axi_rdata[11]_i_5_n_0\
    );
\axi_rdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(11),
      I1 => \^duty_reg_reg[6][31]_0\(11),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(11),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(11),
      O => \axi_rdata[11]_i_6_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[12]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(12),
      I1 => \^duty_reg_reg[10][31]_0\(12),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(12),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(12),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[12]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_4_n_0\
    );
\axi_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(12),
      I1 => \^duty_reg_reg[2][31]_0\(12),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(12),
      I4 => sel0(0),
      I5 => \^q\(12),
      O => \axi_rdata[12]_i_5_n_0\
    );
\axi_rdata[12]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(12),
      I1 => \^duty_reg_reg[6][31]_0\(12),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(12),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(12),
      O => \axi_rdata[12]_i_6_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[13]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(13),
      I1 => \^duty_reg_reg[10][31]_0\(13),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(13),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(13),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[13]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_4_n_0\
    );
\axi_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(13),
      I1 => \^duty_reg_reg[2][31]_0\(13),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(13),
      I4 => sel0(0),
      I5 => \^q\(13),
      O => \axi_rdata[13]_i_5_n_0\
    );
\axi_rdata[13]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(13),
      I1 => \^duty_reg_reg[6][31]_0\(13),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(13),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(13),
      O => \axi_rdata[13]_i_6_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[14]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(14),
      I1 => \^duty_reg_reg[10][31]_0\(14),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(14),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[14]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(14),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[14]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_4_n_0\
    );
\axi_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(14),
      I1 => \^duty_reg_reg[2][31]_0\(14),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(14),
      I4 => sel0(0),
      I5 => \^q\(14),
      O => \axi_rdata[14]_i_5_n_0\
    );
\axi_rdata[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(14),
      I1 => \^duty_reg_reg[6][31]_0\(14),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(14),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(14),
      O => \axi_rdata[14]_i_6_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[15]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(15),
      I1 => \^duty_reg_reg[10][31]_0\(15),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(15),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(15),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[15]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_4_n_0\
    );
\axi_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(15),
      I1 => \^duty_reg_reg[2][31]_0\(15),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(15),
      I4 => sel0(0),
      I5 => \^q\(15),
      O => \axi_rdata[15]_i_5_n_0\
    );
\axi_rdata[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(15),
      I1 => \^duty_reg_reg[6][31]_0\(15),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(15),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(15),
      O => \axi_rdata[15]_i_6_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[16]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(16),
      I1 => \^duty_reg_reg[10][31]_0\(16),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(16),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(16),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[16]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_4_n_0\
    );
\axi_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(16),
      I1 => \^duty_reg_reg[2][31]_0\(16),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(16),
      I4 => sel0(0),
      I5 => \^q\(16),
      O => \axi_rdata[16]_i_5_n_0\
    );
\axi_rdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(16),
      I1 => \^duty_reg_reg[6][31]_0\(16),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(16),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(16),
      O => \axi_rdata[16]_i_6_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[17]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[17]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(17),
      I1 => \^duty_reg_reg[10][31]_0\(17),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(17),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(17),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[17]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_4_n_0\
    );
\axi_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(17),
      I1 => \^duty_reg_reg[2][31]_0\(17),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(17),
      I4 => sel0(0),
      I5 => \^q\(17),
      O => \axi_rdata[17]_i_5_n_0\
    );
\axi_rdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(17),
      I1 => \^duty_reg_reg[6][31]_0\(17),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(17),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(17),
      O => \axi_rdata[17]_i_6_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[18]_i_2_n_0\,
      I1 => \axi_rdata[18]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[18]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(18),
      I1 => \^duty_reg_reg[10][31]_0\(18),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(18),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(18),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[18]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_4_n_0\
    );
\axi_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(18),
      I1 => \^duty_reg_reg[2][31]_0\(18),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(18),
      I4 => sel0(0),
      I5 => \^q\(18),
      O => \axi_rdata[18]_i_5_n_0\
    );
\axi_rdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(18),
      I1 => \^duty_reg_reg[6][31]_0\(18),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(18),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(18),
      O => \axi_rdata[18]_i_6_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[19]_i_2_n_0\,
      I1 => \axi_rdata[19]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[19]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(19),
      I1 => \^duty_reg_reg[10][31]_0\(19),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(19),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(19),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[19]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_4_n_0\
    );
\axi_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(19),
      I1 => \^duty_reg_reg[2][31]_0\(19),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(19),
      I4 => sel0(0),
      I5 => \^q\(19),
      O => \axi_rdata[19]_i_5_n_0\
    );
\axi_rdata[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(19),
      I1 => \^duty_reg_reg[6][31]_0\(19),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(19),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(19),
      O => \axi_rdata[19]_i_6_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[1]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(1),
      I1 => \^duty_reg_reg[10][31]_0\(1),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(1),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(1),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[1]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_4_n_0\
    );
\axi_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(1),
      I1 => \^duty_reg_reg[2][31]_0\(1),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(1),
      I4 => sel0(0),
      I5 => \^q\(1),
      O => \axi_rdata[1]_i_5_n_0\
    );
\axi_rdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(1),
      I1 => \^duty_reg_reg[6][31]_0\(1),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(1),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(1),
      O => \axi_rdata[1]_i_6_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[20]_i_2_n_0\,
      I1 => \axi_rdata[20]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[20]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(20),
      I1 => \^duty_reg_reg[10][31]_0\(20),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(20),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(20),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[20]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_4_n_0\
    );
\axi_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(20),
      I1 => \^duty_reg_reg[2][31]_0\(20),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(20),
      I4 => sel0(0),
      I5 => \^q\(20),
      O => \axi_rdata[20]_i_5_n_0\
    );
\axi_rdata[20]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(20),
      I1 => \^duty_reg_reg[6][31]_0\(20),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(20),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(20),
      O => \axi_rdata[20]_i_6_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[21]_i_2_n_0\,
      I1 => \axi_rdata[21]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[21]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(21),
      I1 => \^duty_reg_reg[10][31]_0\(21),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(21),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(21),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[21]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_4_n_0\
    );
\axi_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(21),
      I1 => \^duty_reg_reg[2][31]_0\(21),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(21),
      I4 => sel0(0),
      I5 => \^q\(21),
      O => \axi_rdata[21]_i_5_n_0\
    );
\axi_rdata[21]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(21),
      I1 => \^duty_reg_reg[6][31]_0\(21),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(21),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(21),
      O => \axi_rdata[21]_i_6_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[22]_i_2_n_0\,
      I1 => \axi_rdata[22]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[22]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(22),
      I1 => \^duty_reg_reg[10][31]_0\(22),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(22),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(22),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[22]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_4_n_0\
    );
\axi_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(22),
      I1 => \^duty_reg_reg[2][31]_0\(22),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(22),
      I4 => sel0(0),
      I5 => \^q\(22),
      O => \axi_rdata[22]_i_5_n_0\
    );
\axi_rdata[22]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(22),
      I1 => \^duty_reg_reg[6][31]_0\(22),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(22),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(22),
      O => \axi_rdata[22]_i_6_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[23]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(23),
      I1 => \^duty_reg_reg[10][31]_0\(23),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(23),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(23),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[23]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_4_n_0\
    );
\axi_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(23),
      I1 => \^duty_reg_reg[2][31]_0\(23),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(23),
      I4 => sel0(0),
      I5 => \^q\(23),
      O => \axi_rdata[23]_i_5_n_0\
    );
\axi_rdata[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(23),
      I1 => \^duty_reg_reg[6][31]_0\(23),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(23),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(23),
      O => \axi_rdata[23]_i_6_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[24]_i_2_n_0\,
      I1 => \axi_rdata[24]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[24]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(24),
      I1 => \^duty_reg_reg[10][31]_0\(24),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(24),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(24),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[24]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(24),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[24]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_4_n_0\
    );
\axi_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(24),
      I1 => \^duty_reg_reg[2][31]_0\(24),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(24),
      I4 => sel0(0),
      I5 => \^q\(24),
      O => \axi_rdata[24]_i_5_n_0\
    );
\axi_rdata[24]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(24),
      I1 => \^duty_reg_reg[6][31]_0\(24),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(24),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(24),
      O => \axi_rdata[24]_i_6_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[25]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(25),
      I1 => \^duty_reg_reg[10][31]_0\(25),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(25),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[25]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(25),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[25]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_4_n_0\
    );
\axi_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(25),
      I1 => \^duty_reg_reg[2][31]_0\(25),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(25),
      I4 => sel0(0),
      I5 => \^q\(25),
      O => \axi_rdata[25]_i_5_n_0\
    );
\axi_rdata[25]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(25),
      I1 => \^duty_reg_reg[6][31]_0\(25),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(25),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(25),
      O => \axi_rdata[25]_i_6_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[26]_i_2_n_0\,
      I1 => \axi_rdata[26]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[26]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(26),
      I1 => \^duty_reg_reg[10][31]_0\(26),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(26),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(26),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[26]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(26),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[26]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_4_n_0\
    );
\axi_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(26),
      I1 => \^duty_reg_reg[2][31]_0\(26),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(26),
      I4 => sel0(0),
      I5 => \^q\(26),
      O => \axi_rdata[26]_i_5_n_0\
    );
\axi_rdata[26]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(26),
      I1 => \^duty_reg_reg[6][31]_0\(26),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(26),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(26),
      O => \axi_rdata[26]_i_6_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[27]_i_2_n_0\,
      I1 => \axi_rdata[27]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[27]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(27),
      I1 => \^duty_reg_reg[10][31]_0\(27),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(27),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(27),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[27]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_4_n_0\
    );
\axi_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(27),
      I1 => \^duty_reg_reg[2][31]_0\(27),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(27),
      I4 => sel0(0),
      I5 => \^q\(27),
      O => \axi_rdata[27]_i_5_n_0\
    );
\axi_rdata[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(27),
      I1 => \^duty_reg_reg[6][31]_0\(27),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(27),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(27),
      O => \axi_rdata[27]_i_6_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[28]_i_2_n_0\,
      I1 => \axi_rdata[28]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[28]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(28),
      I1 => \^duty_reg_reg[10][31]_0\(28),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(28),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[28]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(28),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[28]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_4_n_0\
    );
\axi_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(28),
      I1 => \^duty_reg_reg[2][31]_0\(28),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(28),
      I4 => sel0(0),
      I5 => \^q\(28),
      O => \axi_rdata[28]_i_5_n_0\
    );
\axi_rdata[28]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(28),
      I1 => \^duty_reg_reg[6][31]_0\(28),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(28),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(28),
      O => \axi_rdata[28]_i_6_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[29]_i_2_n_0\,
      I1 => \axi_rdata[29]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[29]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(29),
      I1 => \^duty_reg_reg[10][31]_0\(29),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(29),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(29),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[29]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_4_n_0\
    );
\axi_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(29),
      I1 => \^duty_reg_reg[2][31]_0\(29),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(29),
      I4 => sel0(0),
      I5 => \^q\(29),
      O => \axi_rdata[29]_i_5_n_0\
    );
\axi_rdata[29]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(29),
      I1 => \^duty_reg_reg[6][31]_0\(29),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(29),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(29),
      O => \axi_rdata[29]_i_6_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[2]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(2),
      I1 => \^duty_reg_reg[10][31]_0\(2),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(2),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(2),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[2]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_4_n_0\
    );
\axi_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(2),
      I1 => \^duty_reg_reg[2][31]_0\(2),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(2),
      I4 => sel0(0),
      I5 => \^q\(2),
      O => \axi_rdata[2]_i_5_n_0\
    );
\axi_rdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(2),
      I1 => \^duty_reg_reg[6][31]_0\(2),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(2),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(2),
      O => \axi_rdata[2]_i_6_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[30]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[30]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(30),
      I1 => \^duty_reg_reg[10][31]_0\(30),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(30),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(30),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[30]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_4_n_0\
    );
\axi_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(30),
      I1 => \^duty_reg_reg[2][31]_0\(30),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(30),
      I4 => sel0(0),
      I5 => \^q\(30),
      O => \axi_rdata[30]_i_5_n_0\
    );
\axi_rdata[30]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(30),
      I1 => \^duty_reg_reg[6][31]_0\(30),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(30),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(30),
      O => \axi_rdata[30]_i_6_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => pwm_axi_arvalid,
      I1 => \^pwm_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[31]_i_3_n_0\,
      I1 => \axi_rdata[31]_i_4_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[31]_i_5_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(31),
      I1 => \^duty_reg_reg[10][31]_0\(31),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(31),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(31),
      O => \axi_rdata[31]_i_4_n_0\
    );
\axi_rdata[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(31),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[31]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_5_n_0\
    );
\axi_rdata[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(31),
      I1 => \^duty_reg_reg[2][31]_0\(31),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(31),
      I4 => sel0(0),
      I5 => \^q\(31),
      O => \axi_rdata[31]_i_6_n_0\
    );
\axi_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(31),
      I1 => \^duty_reg_reg[6][31]_0\(31),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(31),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(31),
      O => \axi_rdata[31]_i_7_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[3]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(3),
      I1 => \^duty_reg_reg[10][31]_0\(3),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(3),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(3),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[3]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_4_n_0\
    );
\axi_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(3),
      I1 => \^duty_reg_reg[2][31]_0\(3),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(3),
      I4 => sel0(0),
      I5 => \^q\(3),
      O => \axi_rdata[3]_i_5_n_0\
    );
\axi_rdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(3),
      I1 => \^duty_reg_reg[6][31]_0\(3),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(3),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(3),
      O => \axi_rdata[3]_i_6_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[4]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(4),
      I1 => \^duty_reg_reg[10][31]_0\(4),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(4),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(4),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[4]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_4_n_0\
    );
\axi_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(4),
      I1 => \^duty_reg_reg[2][31]_0\(4),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(4),
      I4 => sel0(0),
      I5 => \^q\(4),
      O => \axi_rdata[4]_i_5_n_0\
    );
\axi_rdata[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(4),
      I1 => \^duty_reg_reg[6][31]_0\(4),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(4),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(4),
      O => \axi_rdata[4]_i_6_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[5]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(5),
      I1 => \^duty_reg_reg[10][31]_0\(5),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(5),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(5),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[5]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_4_n_0\
    );
\axi_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(5),
      I1 => \^duty_reg_reg[2][31]_0\(5),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(5),
      I4 => sel0(0),
      I5 => \^q\(5),
      O => \axi_rdata[5]_i_5_n_0\
    );
\axi_rdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(5),
      I1 => \^duty_reg_reg[6][31]_0\(5),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(5),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(5),
      O => \axi_rdata[5]_i_6_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[6]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(6),
      I1 => \^duty_reg_reg[10][31]_0\(6),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(6),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(6),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[6]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_4_n_0\
    );
\axi_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(6),
      I1 => \^duty_reg_reg[2][31]_0\(6),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(6),
      I4 => sel0(0),
      I5 => \^q\(6),
      O => \axi_rdata[6]_i_5_n_0\
    );
\axi_rdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(6),
      I1 => \^duty_reg_reg[6][31]_0\(6),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(6),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(6),
      O => \axi_rdata[6]_i_6_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[7]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(7),
      I1 => \^duty_reg_reg[10][31]_0\(7),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(7),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(7),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[7]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_4_n_0\
    );
\axi_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(7),
      I1 => \^duty_reg_reg[2][31]_0\(7),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(7),
      I4 => sel0(0),
      I5 => \^q\(7),
      O => \axi_rdata[7]_i_5_n_0\
    );
\axi_rdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(7),
      I1 => \^duty_reg_reg[6][31]_0\(7),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(7),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(7),
      O => \axi_rdata[7]_i_6_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[8]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(8),
      I1 => \^duty_reg_reg[10][31]_0\(8),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(8),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(8),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[8]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_4_n_0\
    );
\axi_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(8),
      I1 => \^duty_reg_reg[2][31]_0\(8),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(8),
      I4 => sel0(0),
      I5 => \^q\(8),
      O => \axi_rdata[8]_i_5_n_0\
    );
\axi_rdata[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(8),
      I1 => \^duty_reg_reg[6][31]_0\(8),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(8),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(8),
      O => \axi_rdata[8]_i_6_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A00CA0FCA00"
    )
        port map (
      I0 => \axi_rdata_reg[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      I2 => sel0(3),
      I3 => \axi_araddr_reg_n_0_[6]\,
      I4 => \axi_rdata[9]_i_4_n_0\,
      I5 => sel0(2),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[11][31]_0\(9),
      I1 => \^duty_reg_reg[10][31]_0\(9),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[9][31]_0\(9),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[8][31]_0\(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^period_reg_reg[31]_0\(9),
      I1 => sel0(1),
      I2 => \status_reg_reg_n_0_[9]\,
      I3 => sel0(0),
      I4 => \ctrl_reg_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_4_n_0\
    );
\axi_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[3][31]_0\(9),
      I1 => \^duty_reg_reg[2][31]_0\(9),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[1][31]_0\(9),
      I4 => sel0(0),
      I5 => \^q\(9),
      O => \axi_rdata[9]_i_5_n_0\
    );
\axi_rdata[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^duty_reg_reg[7][31]_0\(9),
      I1 => \^duty_reg_reg[6][31]_0\(9),
      I2 => sel0(1),
      I3 => \^duty_reg_reg[5][31]_0\(9),
      I4 => sel0(0),
      I5 => \^duty_reg_reg[4][31]_0\(9),
      O => \axi_rdata[9]_i_6_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => pwm_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_5_n_0\,
      I1 => \axi_rdata[0]_i_6_n_0\,
      O => \axi_rdata_reg[0]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => pwm_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_5_n_0\,
      I1 => \axi_rdata[10]_i_6_n_0\,
      O => \axi_rdata_reg[10]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => pwm_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_5_n_0\,
      I1 => \axi_rdata[11]_i_6_n_0\,
      O => \axi_rdata_reg[11]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => pwm_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_5_n_0\,
      I1 => \axi_rdata[12]_i_6_n_0\,
      O => \axi_rdata_reg[12]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => pwm_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_5_n_0\,
      I1 => \axi_rdata[13]_i_6_n_0\,
      O => \axi_rdata_reg[13]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => pwm_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_5_n_0\,
      I1 => \axi_rdata[14]_i_6_n_0\,
      O => \axi_rdata_reg[14]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => pwm_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_5_n_0\,
      I1 => \axi_rdata[15]_i_6_n_0\,
      O => \axi_rdata_reg[15]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => pwm_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_5_n_0\,
      I1 => \axi_rdata[16]_i_6_n_0\,
      O => \axi_rdata_reg[16]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => pwm_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_5_n_0\,
      I1 => \axi_rdata[17]_i_6_n_0\,
      O => \axi_rdata_reg[17]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => pwm_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_5_n_0\,
      I1 => \axi_rdata[18]_i_6_n_0\,
      O => \axi_rdata_reg[18]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => pwm_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_5_n_0\,
      I1 => \axi_rdata[19]_i_6_n_0\,
      O => \axi_rdata_reg[19]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => pwm_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_5_n_0\,
      I1 => \axi_rdata[1]_i_6_n_0\,
      O => \axi_rdata_reg[1]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => pwm_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_5_n_0\,
      I1 => \axi_rdata[20]_i_6_n_0\,
      O => \axi_rdata_reg[20]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => pwm_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_5_n_0\,
      I1 => \axi_rdata[21]_i_6_n_0\,
      O => \axi_rdata_reg[21]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => pwm_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_5_n_0\,
      I1 => \axi_rdata[22]_i_6_n_0\,
      O => \axi_rdata_reg[22]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => pwm_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_5_n_0\,
      I1 => \axi_rdata[23]_i_6_n_0\,
      O => \axi_rdata_reg[23]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => pwm_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_5_n_0\,
      I1 => \axi_rdata[24]_i_6_n_0\,
      O => \axi_rdata_reg[24]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => pwm_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_5_n_0\,
      I1 => \axi_rdata[25]_i_6_n_0\,
      O => \axi_rdata_reg[25]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => pwm_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_5_n_0\,
      I1 => \axi_rdata[26]_i_6_n_0\,
      O => \axi_rdata_reg[26]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => pwm_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_5_n_0\,
      I1 => \axi_rdata[27]_i_6_n_0\,
      O => \axi_rdata_reg[27]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => pwm_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_5_n_0\,
      I1 => \axi_rdata[28]_i_6_n_0\,
      O => \axi_rdata_reg[28]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => pwm_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_5_n_0\,
      I1 => \axi_rdata[29]_i_6_n_0\,
      O => \axi_rdata_reg[29]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => pwm_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_5_n_0\,
      I1 => \axi_rdata[2]_i_6_n_0\,
      O => \axi_rdata_reg[2]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => pwm_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_5_n_0\,
      I1 => \axi_rdata[30]_i_6_n_0\,
      O => \axi_rdata_reg[30]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => pwm_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_6_n_0\,
      I1 => \axi_rdata[31]_i_7_n_0\,
      O => \axi_rdata_reg[31]_i_3_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => pwm_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_5_n_0\,
      I1 => \axi_rdata[3]_i_6_n_0\,
      O => \axi_rdata_reg[3]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => pwm_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_5_n_0\,
      I1 => \axi_rdata[4]_i_6_n_0\,
      O => \axi_rdata_reg[4]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => pwm_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_5_n_0\,
      I1 => \axi_rdata[5]_i_6_n_0\,
      O => \axi_rdata_reg[5]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => pwm_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_5_n_0\,
      I1 => \axi_rdata[6]_i_6_n_0\,
      O => \axi_rdata_reg[6]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => pwm_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_5_n_0\,
      I1 => \axi_rdata[7]_i_6_n_0\,
      O => \axi_rdata_reg[7]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => pwm_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_5_n_0\,
      I1 => \axi_rdata[8]_i_6_n_0\,
      O => \axi_rdata_reg[8]_i_2_n_0\,
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => pwm_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_5_n_0\,
      I1 => \axi_rdata[9]_i_6_n_0\,
      O => \axi_rdata_reg[9]_i_2_n_0\,
      S => sel0(2)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => pwm_axi_arvalid,
      I2 => pwm_axi_rready,
      I3 => \^pwm_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^pwm_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => pwm_axi_awvalid,
      I1 => pwm_axi_wvalid,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \ctrl_reg[15]_i_1_n_0\
    );
\ctrl_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \ctrl_reg[23]_i_1_n_0\
    );
\ctrl_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \ctrl_reg[31]_i_1_n_0\
    );
\ctrl_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => \duty_reg[0][31]_i_3_n_0\,
      I4 => p_0_in(2),
      I5 => p_0_in(4),
      O => \ctrl_reg[31]_i_2_n_0\
    );
\ctrl_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ctrl_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \ctrl_reg[7]_i_1_n_0\
    );
\ctrl_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^ctrl_reg_reg[0]_0\(0),
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \ctrl_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \ctrl_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \ctrl_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \ctrl_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \ctrl_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \ctrl_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \ctrl_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \ctrl_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \ctrl_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \ctrl_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \ctrl_reg_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \ctrl_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \ctrl_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \ctrl_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \ctrl_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \ctrl_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \ctrl_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \ctrl_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \ctrl_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \ctrl_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \ctrl_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \ctrl_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \ctrl_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \ctrl_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \ctrl_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \ctrl_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \ctrl_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \ctrl_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \ctrl_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \ctrl_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\ctrl_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \ctrl_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \ctrl_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\duty_reg[0][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => p_1_in(15)
    );
\duty_reg[0][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => p_1_in(23)
    );
\duty_reg[0][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => p_1_in(31)
    );
\duty_reg[0][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(4),
      I2 => \duty_reg[0][31]_i_3_n_0\,
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      I5 => p_0_in(0),
      O => \duty_reg[0][31]_i_2_n_0\
    );
\duty_reg[0][31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => pwm_axi_awvalid,
      I3 => pwm_axi_wvalid,
      O => \duty_reg[0][31]_i_3_n_0\
    );
\duty_reg[0][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[0][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => p_1_in(7)
    );
\duty_reg[10][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[10][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[10][15]_i_1_n_0\
    );
\duty_reg[10][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[10][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[10][23]_i_1_n_0\
    );
\duty_reg[10][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[10][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[10][31]_i_1_n_0\
    );
\duty_reg[10][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(4),
      I4 => \duty_reg[0][31]_i_3_n_0\,
      I5 => p_0_in(2),
      O => \duty_reg[10][31]_i_2_n_0\
    );
\duty_reg[10][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[10][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[10][7]_i_1_n_0\
    );
\duty_reg[11][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[11][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[11][15]_i_1_n_0\
    );
\duty_reg[11][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[11][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[11][23]_i_1_n_0\
    );
\duty_reg[11][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[11][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[11][31]_i_1_n_0\
    );
\duty_reg[11][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(4),
      I4 => \duty_reg[0][31]_i_3_n_0\,
      I5 => p_0_in(2),
      O => \duty_reg[11][31]_i_2_n_0\
    );
\duty_reg[11][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[11][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[11][7]_i_1_n_0\
    );
\duty_reg[1][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[1][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[1][15]_i_1_n_0\
    );
\duty_reg[1][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[1][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[1][23]_i_1_n_0\
    );
\duty_reg[1][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[1][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[1][31]_i_1_n_0\
    );
\duty_reg[1][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(4),
      I2 => \duty_reg[0][31]_i_3_n_0\,
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      I5 => p_0_in(0),
      O => \duty_reg[1][31]_i_2_n_0\
    );
\duty_reg[1][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[1][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[1][7]_i_1_n_0\
    );
\duty_reg[2][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[2][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[2][15]_i_1_n_0\
    );
\duty_reg[2][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[2][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[2][23]_i_1_n_0\
    );
\duty_reg[2][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[2][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[2][31]_i_1_n_0\
    );
\duty_reg[2][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(4),
      I2 => \duty_reg[0][31]_i_3_n_0\,
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      I5 => p_0_in(0),
      O => \duty_reg[2][31]_i_2_n_0\
    );
\duty_reg[2][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[2][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[2][7]_i_1_n_0\
    );
\duty_reg[3][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[3][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[3][15]_i_1_n_0\
    );
\duty_reg[3][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[3][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[3][23]_i_1_n_0\
    );
\duty_reg[3][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[3][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[3][31]_i_1_n_0\
    );
\duty_reg[3][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(4),
      I2 => \duty_reg[0][31]_i_3_n_0\,
      I3 => p_0_in(2),
      I4 => p_0_in(3),
      I5 => p_0_in(0),
      O => \duty_reg[3][31]_i_2_n_0\
    );
\duty_reg[3][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[3][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[3][7]_i_1_n_0\
    );
\duty_reg[4][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(1),
      O => \duty_reg[4][15]_i_1_n_0\
    );
\duty_reg[4][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(2),
      O => \duty_reg[4][23]_i_1_n_0\
    );
\duty_reg[4][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(3),
      O => \duty_reg[4][31]_i_1_n_0\
    );
\duty_reg[4][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(4),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => pwm_axi_awvalid,
      I4 => pwm_axi_wvalid,
      I5 => p_0_in(2),
      O => \duty_reg[4][31]_i_2_n_0\
    );
\duty_reg[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(0),
      O => \duty_reg[4][7]_i_1_n_0\
    );
\duty_reg[5][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(1),
      O => \duty_reg[5][15]_i_1_n_0\
    );
\duty_reg[5][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(2),
      O => \duty_reg[5][23]_i_1_n_0\
    );
\duty_reg[5][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(3),
      O => \duty_reg[5][31]_i_1_n_0\
    );
\duty_reg[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(0),
      O => \duty_reg[5][7]_i_1_n_0\
    );
\duty_reg[6][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(1),
      O => \duty_reg[6][15]_i_1_n_0\
    );
\duty_reg[6][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(2),
      O => \duty_reg[6][23]_i_1_n_0\
    );
\duty_reg[6][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(3),
      O => \duty_reg[6][31]_i_1_n_0\
    );
\duty_reg[6][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(0),
      O => \duty_reg[6][7]_i_1_n_0\
    );
\duty_reg[7][15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(1),
      O => \duty_reg[7][15]_i_1_n_0\
    );
\duty_reg[7][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(2),
      O => \duty_reg[7][23]_i_1_n_0\
    );
\duty_reg[7][31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(3),
      O => \duty_reg[7][31]_i_1_n_0\
    );
\duty_reg[7][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \duty_reg[4][31]_i_2_n_0\,
      I1 => p_0_in(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => pwm_axi_wstrb(0),
      O => \duty_reg[7][7]_i_1_n_0\
    );
\duty_reg[8][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[8][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[8][15]_i_1_n_0\
    );
\duty_reg[8][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[8][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[8][23]_i_1_n_0\
    );
\duty_reg[8][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[8][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[8][31]_i_1_n_0\
    );
\duty_reg[8][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(3),
      I2 => p_0_in(1),
      I3 => p_0_in(4),
      I4 => \duty_reg[0][31]_i_3_n_0\,
      I5 => p_0_in(2),
      O => \duty_reg[8][31]_i_2_n_0\
    );
\duty_reg[8][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[8][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[8][7]_i_1_n_0\
    );
\duty_reg[9][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[9][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \duty_reg[9][15]_i_1_n_0\
    );
\duty_reg[9][23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[9][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \duty_reg[9][23]_i_1_n_0\
    );
\duty_reg[9][31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[9][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \duty_reg[9][31]_i_1_n_0\
    );
\duty_reg[9][31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_0_in(4),
      I4 => \duty_reg[0][31]_i_3_n_0\,
      I5 => p_0_in(2),
      O => \duty_reg[9][31]_i_2_n_0\
    );
\duty_reg[9][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \duty_reg[9][31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \duty_reg[9][7]_i_1_n_0\
    );
\duty_reg_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(10),
      Q => \^q\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(11),
      Q => \^q\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(12),
      Q => \^q\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(13),
      Q => \^q\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(14),
      Q => \^q\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(15),
      Q => \^q\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(16),
      Q => \^q\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(17),
      Q => \^q\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(18),
      Q => \^q\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(19),
      Q => \^q\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(20),
      Q => \^q\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(21),
      Q => \^q\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(22),
      Q => \^q\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(23),
      D => pwm_axi_wdata(23),
      Q => \^q\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(24),
      Q => \^q\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(25),
      Q => \^q\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(26),
      Q => \^q\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(27),
      Q => \^q\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(28),
      Q => \^q\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(29),
      Q => \^q\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(2),
      Q => \^q\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(30),
      Q => \^q\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(31),
      D => pwm_axi_wdata(31),
      Q => \^q\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(3),
      Q => \^q\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(4),
      Q => \^q\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(5),
      Q => \^q\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(6),
      Q => \^q\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(7),
      D => pwm_axi_wdata(7),
      Q => \^q\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(8),
      Q => \^q\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => p_1_in(15),
      D => pwm_axi_wdata(9),
      Q => \^q\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[10][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[10][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[10][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[10][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[10][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[10][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[10][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[10][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[10][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[10][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[10][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[10][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[10][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[10][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[10][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[10][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[10][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[10][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[10][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[10][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[10][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[10][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[10][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[10][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[10][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[10][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[10][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[10][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[10][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[10][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[10][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[10][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[10][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[11][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[11][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[11][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[11][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[11][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[11][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[11][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[11][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[11][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[11][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[11][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[11][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[11][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[11][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[11][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[11][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[11][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[11][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[11][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[11][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[11][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[11][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[11][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[11][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[11][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[11][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[11][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[11][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[11][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[11][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[11][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[11][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[11][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[1][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[1][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[1][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[1][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[1][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[1][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[1][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[1][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[1][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[1][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[1][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[1][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[1][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[1][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[1][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[1][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[1][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[1][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[1][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[1][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[1][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[1][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[1][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[1][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[1][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[1][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[1][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[1][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[1][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[1][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[1][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[1][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[1][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[2][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[2][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[2][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[2][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[2][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[2][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[2][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[2][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[2][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[2][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[2][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[2][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[2][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[2][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[2][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[2][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[2][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[2][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[2][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[2][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[2][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[2][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[2][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[2][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[2][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[2][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[2][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[2][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[2][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[2][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[2][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[2][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[2][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[3][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[3][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[3][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[3][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[3][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[3][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[3][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[3][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[3][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[3][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[3][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[3][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[3][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[3][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[3][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[3][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[3][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[3][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[3][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[3][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[3][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[3][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[3][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[3][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[3][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[3][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[3][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[3][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[3][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[3][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[3][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[3][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[3][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[4][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[4][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[4][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[4][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[4][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[4][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[4][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[4][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[4][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[4][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[4][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[4][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[4][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[4][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[4][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[4][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[4][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[4][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[4][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[4][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[4][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[4][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[4][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[4][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[4][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[4][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[4][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[4][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[4][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[4][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[4][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[4][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[4][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[5][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[5][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[5][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[5][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[5][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[5][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[5][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[5][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[5][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[5][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[5][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[5][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[5][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[5][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[5][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[5][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[5][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[5][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[5][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[5][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[5][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[5][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[5][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[5][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[5][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[5][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[5][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[5][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[5][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[5][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[5][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[5][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[5][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[6][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[6][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[6][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[6][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[6][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[6][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[6][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[6][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[6][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[6][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[6][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[6][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[6][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[6][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[6][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[6][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[6][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[6][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[6][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[6][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[6][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[6][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[6][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[6][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[6][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[6][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[6][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[6][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[6][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[6][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[6][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[6][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[6][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[7][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[7][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[7][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[7][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[7][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[7][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[7][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[7][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[7][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[7][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[7][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[7][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[7][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[7][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[7][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[7][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[7][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[7][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[7][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[7][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[7][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[7][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[7][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[7][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[7][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[7][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[7][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[7][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[7][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[7][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[7][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[7][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[7][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[8][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[8][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[8][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[8][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[8][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[8][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[8][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[8][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[8][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[8][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[8][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[8][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[8][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[8][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[8][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[8][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[8][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[8][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[8][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[8][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[8][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[8][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[8][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[8][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[8][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[8][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[8][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[8][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[8][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[8][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[8][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[8][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[8][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^duty_reg_reg[9][31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^duty_reg_reg[9][31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^duty_reg_reg[9][31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^duty_reg_reg[9][31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^duty_reg_reg[9][31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^duty_reg_reg[9][31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^duty_reg_reg[9][31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^duty_reg_reg[9][31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^duty_reg_reg[9][31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^duty_reg_reg[9][31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^duty_reg_reg[9][31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^duty_reg_reg[9][31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^duty_reg_reg[9][31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^duty_reg_reg[9][31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^duty_reg_reg[9][31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^duty_reg_reg[9][31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^duty_reg_reg[9][31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^duty_reg_reg[9][31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^duty_reg_reg[9][31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^duty_reg_reg[9][31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^duty_reg_reg[9][31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^duty_reg_reg[9][31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^duty_reg_reg[9][31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^duty_reg_reg[9][31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^duty_reg_reg[9][31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^duty_reg_reg[9][31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^duty_reg_reg[9][31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^duty_reg_reg[9][31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^duty_reg_reg[9][31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^duty_reg_reg[9][31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^duty_reg_reg[9][31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\duty_reg_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \duty_reg[9][15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^duty_reg_reg[9][31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\period_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \period_reg[15]_i_1_n_0\
    );
\period_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \period_reg[23]_i_1_n_0\
    );
\period_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \period_reg[31]_i_1_n_0\
    );
\period_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => \duty_reg[0][31]_i_3_n_0\,
      I4 => p_0_in(2),
      I5 => p_0_in(4),
      O => \period_reg[31]_i_2_n_0\
    );
\period_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \period_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \period_reg[7]_i_1_n_0\
    );
\period_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \^period_reg_reg[31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \^period_reg_reg[31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \^period_reg_reg[31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \^period_reg_reg[31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \^period_reg_reg[31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \^period_reg_reg[31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \^period_reg_reg[31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \^period_reg_reg[31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \^period_reg_reg[31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \^period_reg_reg[31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \^period_reg_reg[31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \^period_reg_reg[31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \^period_reg_reg[31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \^period_reg_reg[31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \^period_reg_reg[31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \^period_reg_reg[31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \^period_reg_reg[31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \^period_reg_reg[31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \^period_reg_reg[31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \^period_reg_reg[31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \^period_reg_reg[31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \^period_reg_reg[31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \^period_reg_reg[31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \^period_reg_reg[31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \^period_reg_reg[31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \^period_reg_reg[31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \^period_reg_reg[31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \^period_reg_reg[31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \^period_reg_reg[31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \^period_reg_reg[31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \^period_reg_reg[31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\period_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \period_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \^period_reg_reg[31]_0\(9),
      R => axi_awready_i_1_n_0
    );
\status_reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(1),
      O => \status_reg[15]_i_1_n_0\
    );
\status_reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(2),
      O => \status_reg[23]_i_1_n_0\
    );
\status_reg[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(3),
      O => \status_reg[31]_i_1_n_0\
    );
\status_reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => p_0_in(3),
      I3 => \duty_reg[0][31]_i_3_n_0\,
      I4 => p_0_in(2),
      I5 => p_0_in(4),
      O => \status_reg[31]_i_2_n_0\
    );
\status_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \status_reg[31]_i_2_n_0\,
      I1 => pwm_axi_wstrb(0),
      O => \status_reg[7]_i_1_n_0\
    );
\status_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(0),
      Q => \status_reg_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(10),
      Q => \status_reg_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(11),
      Q => \status_reg_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(12),
      Q => \status_reg_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(13),
      Q => \status_reg_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(14),
      Q => \status_reg_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(15),
      Q => \status_reg_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(16),
      Q => \status_reg_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(17),
      Q => \status_reg_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(18),
      Q => \status_reg_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(19),
      Q => \status_reg_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(1),
      Q => \status_reg_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(20),
      Q => \status_reg_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(21),
      Q => \status_reg_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(22),
      Q => \status_reg_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[23]_i_1_n_0\,
      D => pwm_axi_wdata(23),
      Q => \status_reg_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(24),
      Q => \status_reg_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(25),
      Q => \status_reg_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(26),
      Q => \status_reg_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(27),
      Q => \status_reg_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(28),
      Q => \status_reg_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(29),
      Q => \status_reg_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(2),
      Q => \status_reg_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(30),
      Q => \status_reg_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[31]_i_1_n_0\,
      D => pwm_axi_wdata(31),
      Q => \status_reg_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(3),
      Q => \status_reg_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(4),
      Q => \status_reg_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(5),
      Q => \status_reg_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(6),
      Q => \status_reg_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[7]_i_1_n_0\,
      D => pwm_axi_wdata(7),
      Q => \status_reg_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(8),
      Q => \status_reg_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\status_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \status_reg[15]_i_1_n_0\,
      D => pwm_axi_wdata(9),
      Q => \status_reg_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_PWM_0_0_PWM_v2_0 is
  port (
    pwm_axi_awready : out STD_LOGIC;
    pwm_axi_wready : out STD_LOGIC;
    pwm_axi_arready : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_rvalid : out STD_LOGIC;
    pwm_axi_bvalid : out STD_LOGIC;
    pwm : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_PWM_0_0_PWM_v2_0 : entity is "PWM_v2_0";
end system_PWM_0_0_PWM_v2_0;

architecture STRUCTURE of system_PWM_0_0_PWM_v2_0 is
  signal count1 : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal ctrl_reg : STD_LOGIC;
  signal \duty_reg[0]_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[10]_10\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[11]_11\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[1]_1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[2]_2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[3]_3\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[4]_4\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[5]_5\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[6]_6\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[7]_7\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[8]_8\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \duty_reg[9]_9\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal enable : STD_LOGIC;
  signal \genblk1[0].duty_reg_latch_reg[0]_12\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[10].duty_reg_latch_reg[10]_22\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[11].duty_reg_latch_reg[11]_23\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[1].duty_reg_latch_reg[1]_13\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[2].duty_reg_latch_reg[2]_14\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[3].duty_reg_latch_reg[3]_15\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[4].duty_reg_latch_reg[4]_16\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[5].duty_reg_latch_reg[5]_17\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[6].duty_reg_latch_reg[6]_18\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[7].duty_reg_latch_reg[7]_19\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[8].duty_reg_latch_reg[8]_20\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \genblk1[9].duty_reg_latch_reg[9]_21\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \max[31]_i_10_n_0\ : STD_LOGIC;
  signal \max[31]_i_11_n_0\ : STD_LOGIC;
  signal \max[31]_i_13_n_0\ : STD_LOGIC;
  signal \max[31]_i_14_n_0\ : STD_LOGIC;
  signal \max[31]_i_15_n_0\ : STD_LOGIC;
  signal \max[31]_i_16_n_0\ : STD_LOGIC;
  signal \max[31]_i_17_n_0\ : STD_LOGIC;
  signal \max[31]_i_18_n_0\ : STD_LOGIC;
  signal \max[31]_i_19_n_0\ : STD_LOGIC;
  signal \max[31]_i_1_n_0\ : STD_LOGIC;
  signal \max[31]_i_20_n_0\ : STD_LOGIC;
  signal \max[31]_i_22_n_0\ : STD_LOGIC;
  signal \max[31]_i_23_n_0\ : STD_LOGIC;
  signal \max[31]_i_24_n_0\ : STD_LOGIC;
  signal \max[31]_i_25_n_0\ : STD_LOGIC;
  signal \max[31]_i_26_n_0\ : STD_LOGIC;
  signal \max[31]_i_27_n_0\ : STD_LOGIC;
  signal \max[31]_i_28_n_0\ : STD_LOGIC;
  signal \max[31]_i_29_n_0\ : STD_LOGIC;
  signal \max[31]_i_30_n_0\ : STD_LOGIC;
  signal \max[31]_i_31_n_0\ : STD_LOGIC;
  signal \max[31]_i_32_n_0\ : STD_LOGIC;
  signal \max[31]_i_33_n_0\ : STD_LOGIC;
  signal \max[31]_i_34_n_0\ : STD_LOGIC;
  signal \max[31]_i_35_n_0\ : STD_LOGIC;
  signal \max[31]_i_36_n_0\ : STD_LOGIC;
  signal \max[31]_i_37_n_0\ : STD_LOGIC;
  signal \max[31]_i_4_n_0\ : STD_LOGIC;
  signal \max[31]_i_5_n_0\ : STD_LOGIC;
  signal \max[31]_i_6_n_0\ : STD_LOGIC;
  signal \max[31]_i_7_n_0\ : STD_LOGIC;
  signal \max[31]_i_8_n_0\ : STD_LOGIC;
  signal \max[31]_i_9_n_0\ : STD_LOGIC;
  signal \max_reg[31]_i_12_n_0\ : STD_LOGIC;
  signal \max_reg[31]_i_12_n_1\ : STD_LOGIC;
  signal \max_reg[31]_i_12_n_2\ : STD_LOGIC;
  signal \max_reg[31]_i_12_n_3\ : STD_LOGIC;
  signal \max_reg[31]_i_21_n_0\ : STD_LOGIC;
  signal \max_reg[31]_i_21_n_1\ : STD_LOGIC;
  signal \max_reg[31]_i_21_n_2\ : STD_LOGIC;
  signal \max_reg[31]_i_21_n_3\ : STD_LOGIC;
  signal \max_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \max_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \max_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \max_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \max_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \max_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \max_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \max_reg_n_0_[0]\ : STD_LOGIC;
  signal \max_reg_n_0_[10]\ : STD_LOGIC;
  signal \max_reg_n_0_[11]\ : STD_LOGIC;
  signal \max_reg_n_0_[12]\ : STD_LOGIC;
  signal \max_reg_n_0_[13]\ : STD_LOGIC;
  signal \max_reg_n_0_[14]\ : STD_LOGIC;
  signal \max_reg_n_0_[15]\ : STD_LOGIC;
  signal \max_reg_n_0_[16]\ : STD_LOGIC;
  signal \max_reg_n_0_[17]\ : STD_LOGIC;
  signal \max_reg_n_0_[18]\ : STD_LOGIC;
  signal \max_reg_n_0_[19]\ : STD_LOGIC;
  signal \max_reg_n_0_[1]\ : STD_LOGIC;
  signal \max_reg_n_0_[20]\ : STD_LOGIC;
  signal \max_reg_n_0_[21]\ : STD_LOGIC;
  signal \max_reg_n_0_[22]\ : STD_LOGIC;
  signal \max_reg_n_0_[23]\ : STD_LOGIC;
  signal \max_reg_n_0_[24]\ : STD_LOGIC;
  signal \max_reg_n_0_[25]\ : STD_LOGIC;
  signal \max_reg_n_0_[26]\ : STD_LOGIC;
  signal \max_reg_n_0_[27]\ : STD_LOGIC;
  signal \max_reg_n_0_[28]\ : STD_LOGIC;
  signal \max_reg_n_0_[29]\ : STD_LOGIC;
  signal \max_reg_n_0_[2]\ : STD_LOGIC;
  signal \max_reg_n_0_[30]\ : STD_LOGIC;
  signal \max_reg_n_0_[31]\ : STD_LOGIC;
  signal \max_reg_n_0_[3]\ : STD_LOGIC;
  signal \max_reg_n_0_[4]\ : STD_LOGIC;
  signal \max_reg_n_0_[5]\ : STD_LOGIC;
  signal \max_reg_n_0_[6]\ : STD_LOGIC;
  signal \max_reg_n_0_[7]\ : STD_LOGIC;
  signal \max_reg_n_0_[8]\ : STD_LOGIC;
  signal \max_reg_n_0_[9]\ : STD_LOGIC;
  signal period_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pwm1 : STD_LOGIC;
  signal pwm10_in : STD_LOGIC;
  signal pwm110_in : STD_LOGIC;
  signal pwm112_in : STD_LOGIC;
  signal pwm114_in : STD_LOGIC;
  signal pwm116_in : STD_LOGIC;
  signal pwm118_in : STD_LOGIC;
  signal pwm120_in : STD_LOGIC;
  signal pwm12_in : STD_LOGIC;
  signal pwm14_in : STD_LOGIC;
  signal pwm16_in : STD_LOGIC;
  signal pwm18_in : STD_LOGIC;
  signal \pwm[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_11_n_1\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_11_n_2\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_11_n_3\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_20_n_1\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_20_n_2\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_20_n_3\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_2_n_1\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_2_n_2\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_2_n_3\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \pwm[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \NLW_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_max_reg[31]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_reg[31]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_max_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[0]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[0]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[0]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[0]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[10]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[10]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[10]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[10]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[11]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[11]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[11]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[11]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[1]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[1]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[1]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[1]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[2]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[2]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[2]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[2]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[3]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[3]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[3]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[3]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[4]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[4]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[4]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[4]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[5]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[5]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[5]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[5]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[6]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[6]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[6]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[6]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[7]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[7]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[7]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[7]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[8]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[8]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[8]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[8]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[9]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[9]_INST_0_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[9]_INST_0_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm[9]_INST_0_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pwm[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm[10]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm[11]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pwm[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pwm[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pwm[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pwm[6]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pwm[8]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pwm[9]_INST_0\ : label is "soft_lutpair5";
begin
PWM_AXI_inst: entity work.system_PWM_0_0_PWM_AXI
     port map (
      Q(31 downto 0) => \duty_reg[0]_0\(31 downto 0),
      S_AXI_ARREADY => pwm_axi_arready,
      S_AXI_AWREADY => pwm_axi_awready,
      S_AXI_WREADY => pwm_axi_wready,
      \ctrl_reg_reg[0]_0\(0) => ctrl_reg,
      \duty_reg_reg[10][31]_0\(31 downto 0) => \duty_reg[10]_10\(31 downto 0),
      \duty_reg_reg[11][31]_0\(31 downto 0) => \duty_reg[11]_11\(31 downto 0),
      \duty_reg_reg[1][31]_0\(31 downto 0) => \duty_reg[1]_1\(31 downto 0),
      \duty_reg_reg[2][31]_0\(31 downto 0) => \duty_reg[2]_2\(31 downto 0),
      \duty_reg_reg[3][31]_0\(31 downto 0) => \duty_reg[3]_3\(31 downto 0),
      \duty_reg_reg[4][31]_0\(31 downto 0) => \duty_reg[4]_4\(31 downto 0),
      \duty_reg_reg[5][31]_0\(31 downto 0) => \duty_reg[5]_5\(31 downto 0),
      \duty_reg_reg[6][31]_0\(31 downto 0) => \duty_reg[6]_6\(31 downto 0),
      \duty_reg_reg[7][31]_0\(31 downto 0) => \duty_reg[7]_7\(31 downto 0),
      \duty_reg_reg[8][31]_0\(31 downto 0) => \duty_reg[8]_8\(31 downto 0),
      \duty_reg_reg[9][31]_0\(31 downto 0) => \duty_reg[9]_9\(31 downto 0),
      \period_reg_reg[31]_0\(31 downto 0) => period_reg(31 downto 0),
      pwm_axi_aclk => pwm_axi_aclk,
      pwm_axi_araddr(4 downto 0) => pwm_axi_araddr(4 downto 0),
      pwm_axi_aresetn => pwm_axi_aresetn,
      pwm_axi_arvalid => pwm_axi_arvalid,
      pwm_axi_awaddr(4 downto 0) => pwm_axi_awaddr(4 downto 0),
      pwm_axi_awvalid => pwm_axi_awvalid,
      pwm_axi_bready => pwm_axi_bready,
      pwm_axi_bvalid => pwm_axi_bvalid,
      pwm_axi_rdata(31 downto 0) => pwm_axi_rdata(31 downto 0),
      pwm_axi_rready => pwm_axi_rready,
      pwm_axi_rvalid => pwm_axi_rvalid,
      pwm_axi_wdata(31 downto 0) => pwm_axi_wdata(31 downto 0),
      pwm_axi_wstrb(3 downto 0) => pwm_axi_wstrb(3 downto 0),
      pwm_axi_wvalid => pwm_axi_wvalid
    );
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0),
      R => \max[31]_i_1_n_0\
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3 downto 1) => count_reg(3 downto 1),
      S(0) => \count[0]_i_2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10),
      R => \max[31]_i_1_n_0\
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11),
      R => \max[31]_i_1_n_0\
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12),
      R => \max[31]_i_1_n_0\
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => count_reg(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13),
      R => \max[31]_i_1_n_0\
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14),
      R => \max[31]_i_1_n_0\
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15),
      R => \max[31]_i_1_n_0\
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16),
      R => \max[31]_i_1_n_0\
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => count_reg(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17),
      R => \max[31]_i_1_n_0\
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18),
      R => \max[31]_i_1_n_0\
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19),
      R => \max[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1),
      R => \max[31]_i_1_n_0\
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20),
      R => \max[31]_i_1_n_0\
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \count_reg[20]_i_1_n_0\,
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => count_reg(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21),
      R => \max[31]_i_1_n_0\
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22),
      R => \max[31]_i_1_n_0\
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[20]_i_1_n_4\,
      Q => count_reg(23),
      R => \max[31]_i_1_n_0\
    );
\count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_7\,
      Q => count_reg(24),
      R => \max[31]_i_1_n_0\
    );
\count_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[20]_i_1_n_0\,
      CO(3) => \count_reg[24]_i_1_n_0\,
      CO(2) => \count_reg[24]_i_1_n_1\,
      CO(1) => \count_reg[24]_i_1_n_2\,
      CO(0) => \count_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[24]_i_1_n_4\,
      O(2) => \count_reg[24]_i_1_n_5\,
      O(1) => \count_reg[24]_i_1_n_6\,
      O(0) => \count_reg[24]_i_1_n_7\,
      S(3 downto 0) => count_reg(27 downto 24)
    );
\count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_6\,
      Q => count_reg(25),
      R => \max[31]_i_1_n_0\
    );
\count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_5\,
      Q => count_reg(26),
      R => \max[31]_i_1_n_0\
    );
\count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[24]_i_1_n_4\,
      Q => count_reg(27),
      R => \max[31]_i_1_n_0\
    );
\count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_7\,
      Q => count_reg(28),
      R => \max[31]_i_1_n_0\
    );
\count_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[24]_i_1_n_0\,
      CO(3) => \NLW_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[28]_i_1_n_1\,
      CO(1) => \count_reg[28]_i_1_n_2\,
      CO(0) => \count_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[28]_i_1_n_4\,
      O(2) => \count_reg[28]_i_1_n_5\,
      O(1) => \count_reg[28]_i_1_n_6\,
      O(0) => \count_reg[28]_i_1_n_7\,
      S(3 downto 0) => count_reg(31 downto 28)
    );
\count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_6\,
      Q => count_reg(29),
      R => \max[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2),
      R => \max[31]_i_1_n_0\
    );
\count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_5\,
      Q => count_reg(30),
      R => \max[31]_i_1_n_0\
    );
\count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[28]_i_1_n_4\,
      Q => count_reg(31),
      R => \max[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3),
      R => \max[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4),
      R => \max[31]_i_1_n_0\
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_reg(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5),
      R => \max[31]_i_1_n_0\
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6),
      R => \max[31]_i_1_n_0\
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7),
      R => \max[31]_i_1_n_0\
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8),
      R => \max[31]_i_1_n_0\
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_reg(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9),
      R => \max[31]_i_1_n_0\
    );
enable_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => '1',
      D => ctrl_reg,
      Q => enable,
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(0),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(0),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(10),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(10),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(11),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(11),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(12),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(12),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(13),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(13),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(14),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(14),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(15),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(15),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(16),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(16),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(17),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(17),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(18),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(18),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(19),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(19),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(1),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(1),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(20),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(20),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(21),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(21),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(22),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(22),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(23),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(23),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(24),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(24),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(25),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(25),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(26),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(26),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(27),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(27),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(28),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(28),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(29),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(29),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(2),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(2),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(30),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(30),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(31),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(31),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(3),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(3),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(4),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(4),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(5),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(5),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(6),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(6),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(7),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(7),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(8),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(8),
      R => '0'
    );
\genblk1[0].duty_reg_latch_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[0]_0\(9),
      Q => \genblk1[0].duty_reg_latch_reg[0]_12\(9),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(0),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(0),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(10),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(10),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(11),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(11),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(12),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(12),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(13),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(13),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(14),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(14),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(15),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(15),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(16),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(16),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(17),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(17),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(18),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(18),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(19),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(19),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(1),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(1),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(20),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(20),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(21),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(21),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(22),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(22),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(23),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(23),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(24),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(24),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(25),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(25),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(26),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(26),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(27),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(27),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(28),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(28),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(29),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(29),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(2),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(2),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(30),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(30),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(31),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(31),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(3),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(3),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(4),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(4),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(5),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(5),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(6),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(6),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(7),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(7),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(8),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(8),
      R => '0'
    );
\genblk1[10].duty_reg_latch_reg[10][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[10]_10\(9),
      Q => \genblk1[10].duty_reg_latch_reg[10]_22\(9),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(0),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(0),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(10),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(10),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(11),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(11),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(12),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(12),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(13),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(13),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(14),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(14),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(15),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(15),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(16),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(16),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(17),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(17),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(18),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(18),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(19),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(19),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(1),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(1),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(20),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(20),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(21),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(21),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(22),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(22),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(23),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(23),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(24),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(24),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(25),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(25),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(26),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(26),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(27),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(27),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(28),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(28),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(29),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(29),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(2),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(2),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(30),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(30),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(31),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(31),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(3),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(3),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(4),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(4),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(5),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(5),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(6),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(6),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(7),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(7),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(8),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(8),
      R => '0'
    );
\genblk1[11].duty_reg_latch_reg[11][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[11]_11\(9),
      Q => \genblk1[11].duty_reg_latch_reg[11]_23\(9),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(0),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(0),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(10),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(10),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(11),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(11),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(12),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(12),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(13),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(13),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(14),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(14),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(15),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(15),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(16),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(16),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(17),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(17),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(18),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(18),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(19),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(19),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(1),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(1),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(20),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(20),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(21),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(21),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(22),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(22),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(23),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(23),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(24),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(24),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(25),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(25),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(26),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(26),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(27),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(27),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(28),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(28),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(29),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(29),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(2),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(2),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(30),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(30),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(31),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(31),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(3),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(3),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(4),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(4),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(5),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(5),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(6),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(6),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(7),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(7),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(8),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(8),
      R => '0'
    );
\genblk1[1].duty_reg_latch_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[1]_1\(9),
      Q => \genblk1[1].duty_reg_latch_reg[1]_13\(9),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(0),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(0),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(10),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(10),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(11),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(11),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(12),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(12),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(13),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(13),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(14),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(14),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(15),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(15),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(16),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(16),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(17),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(17),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(18),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(18),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(19),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(19),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(1),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(1),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(20),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(20),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(21),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(21),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(22),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(22),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(23),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(23),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(24),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(24),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(25),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(25),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(26),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(26),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(27),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(27),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(28),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(28),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(29),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(29),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(2),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(2),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(30),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(30),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(31),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(31),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(3),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(3),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(4),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(4),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(5),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(5),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(6),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(6),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(7),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(7),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(8),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(8),
      R => '0'
    );
\genblk1[2].duty_reg_latch_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[2]_2\(9),
      Q => \genblk1[2].duty_reg_latch_reg[2]_14\(9),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(0),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(0),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(10),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(10),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(11),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(11),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(12),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(12),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(13),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(13),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(14),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(14),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(15),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(15),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(16),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(16),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(17),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(17),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(18),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(18),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(19),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(19),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(1),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(1),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(20),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(20),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(21),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(21),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(22),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(22),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(23),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(23),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(24),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(24),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(25),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(25),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(26),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(26),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(27),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(27),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(28),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(28),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(29),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(29),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(2),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(2),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(30),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(30),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(31),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(31),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(3),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(3),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(4),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(4),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(5),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(5),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(6),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(6),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(7),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(7),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(8),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(8),
      R => '0'
    );
\genblk1[3].duty_reg_latch_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[3]_3\(9),
      Q => \genblk1[3].duty_reg_latch_reg[3]_15\(9),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(0),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(0),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(10),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(10),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(11),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(11),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(12),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(12),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(13),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(13),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(14),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(14),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(15),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(15),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(16),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(16),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(17),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(17),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(18),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(18),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(19),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(19),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(1),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(1),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(20),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(20),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(21),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(21),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(22),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(22),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(23),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(23),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(24),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(24),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(25),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(25),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(26),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(26),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(27),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(27),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(28),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(28),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(29),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(29),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(2),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(2),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(30),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(30),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(31),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(31),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(3),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(3),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(4),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(4),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(5),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(5),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(6),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(6),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(7),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(7),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(8),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(8),
      R => '0'
    );
\genblk1[4].duty_reg_latch_reg[4][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[4]_4\(9),
      Q => \genblk1[4].duty_reg_latch_reg[4]_16\(9),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(0),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(0),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(10),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(10),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(11),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(11),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(12),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(12),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(13),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(13),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(14),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(14),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(15),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(15),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(16),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(16),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(17),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(17),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(18),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(18),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(19),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(19),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(1),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(1),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(20),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(20),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(21),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(21),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(22),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(22),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(23),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(23),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(24),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(24),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(25),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(25),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(26),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(26),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(27),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(27),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(28),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(28),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(29),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(29),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(2),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(2),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(30),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(30),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(31),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(31),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(3),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(3),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(4),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(4),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(5),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(5),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(6),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(6),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(7),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(7),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(8),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(8),
      R => '0'
    );
\genblk1[5].duty_reg_latch_reg[5][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[5]_5\(9),
      Q => \genblk1[5].duty_reg_latch_reg[5]_17\(9),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(0),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(0),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(10),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(10),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(11),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(11),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(12),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(12),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(13),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(13),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(14),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(14),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(15),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(15),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(16),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(16),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(17),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(17),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(18),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(18),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(19),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(19),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(1),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(1),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(20),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(20),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(21),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(21),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(22),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(22),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(23),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(23),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(24),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(24),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(25),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(25),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(26),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(26),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(27),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(27),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(28),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(28),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(29),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(29),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(2),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(2),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(30),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(30),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(31),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(31),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(3),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(3),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(4),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(4),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(5),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(5),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(6),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(6),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(7),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(7),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(8),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(8),
      R => '0'
    );
\genblk1[6].duty_reg_latch_reg[6][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[6]_6\(9),
      Q => \genblk1[6].duty_reg_latch_reg[6]_18\(9),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(0),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(0),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(10),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(10),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(11),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(11),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(12),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(12),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(13),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(13),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(14),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(14),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(15),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(15),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(16),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(16),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(17),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(17),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(18),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(18),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(19),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(19),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(1),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(1),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(20),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(20),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(21),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(21),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(22),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(22),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(23),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(23),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(24),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(24),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(25),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(25),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(26),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(26),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(27),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(27),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(28),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(28),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(29),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(29),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(2),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(2),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(30),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(30),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(31),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(31),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(3),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(3),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(4),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(4),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(5),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(5),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(6),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(6),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(7),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(7),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(8),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(8),
      R => '0'
    );
\genblk1[7].duty_reg_latch_reg[7][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[7]_7\(9),
      Q => \genblk1[7].duty_reg_latch_reg[7]_19\(9),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(0),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(0),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(10),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(10),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(11),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(11),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(12),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(12),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(13),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(13),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(14),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(14),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(15),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(15),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(16),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(16),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(17),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(17),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(18),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(18),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(19),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(19),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(1),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(1),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(20),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(20),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(21),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(21),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(22),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(22),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(23),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(23),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(24),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(24),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(25),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(25),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(26),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(26),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(27),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(27),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(28),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(28),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(29),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(29),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(2),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(2),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(30),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(30),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(31),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(31),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(3),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(3),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(4),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(4),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(5),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(5),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(6),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(6),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(7),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(7),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(8),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(8),
      R => '0'
    );
\genblk1[8].duty_reg_latch_reg[8][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[8]_8\(9),
      Q => \genblk1[8].duty_reg_latch_reg[8]_20\(9),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][0]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(0),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(0),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][10]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(10),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(10),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][11]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(11),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(11),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][12]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(12),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(12),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][13]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(13),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(13),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][14]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(14),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(14),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][15]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(15),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(15),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][16]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(16),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(16),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][17]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(17),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(17),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][18]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(18),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(18),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][19]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(19),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(19),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][1]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(1),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(1),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][20]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(20),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(20),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][21]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(21),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(21),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][22]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(22),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(22),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][23]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(23),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(23),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][24]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(24),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(24),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][25]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(25),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(25),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][26]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(26),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(26),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][27]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(27),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(27),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][28]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(28),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(28),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][29]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(29),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(29),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][2]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(2),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(2),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][30]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(30),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(30),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][31]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(31),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(31),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][3]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(3),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(3),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][4]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(4),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(4),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][5]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(5),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(5),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][6]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(6),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(6),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][7]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(7),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(7),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][8]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(8),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(8),
      R => '0'
    );
\genblk1[9].duty_reg_latch_reg[9][9]\: unisim.vcomponents.FDRE
     port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => \duty_reg[9]_9\(9),
      Q => \genblk1[9].duty_reg_latch_reg[9]_21\(9),
      R => '0'
    );
\max[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => enable,
      I1 => count1,
      O => \max[31]_i_1_n_0\
    );
\max[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[26]\,
      I1 => count_reg(26),
      I2 => \max_reg_n_0_[27]\,
      I3 => count_reg(27),
      O => \max[31]_i_10_n_0\
    );
\max[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[24]\,
      I1 => count_reg(24),
      I2 => \max_reg_n_0_[25]\,
      I3 => count_reg(25),
      O => \max[31]_i_11_n_0\
    );
\max[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[22]\,
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \max_reg_n_0_[23]\,
      O => \max[31]_i_13_n_0\
    );
\max[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[20]\,
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \max_reg_n_0_[21]\,
      O => \max[31]_i_14_n_0\
    );
\max[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[18]\,
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \max_reg_n_0_[19]\,
      O => \max[31]_i_15_n_0\
    );
\max[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[16]\,
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \max_reg_n_0_[17]\,
      O => \max[31]_i_16_n_0\
    );
\max[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[22]\,
      I1 => count_reg(22),
      I2 => \max_reg_n_0_[23]\,
      I3 => count_reg(23),
      O => \max[31]_i_17_n_0\
    );
\max[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[20]\,
      I1 => count_reg(20),
      I2 => \max_reg_n_0_[21]\,
      I3 => count_reg(21),
      O => \max[31]_i_18_n_0\
    );
\max[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[18]\,
      I1 => count_reg(18),
      I2 => \max_reg_n_0_[19]\,
      I3 => count_reg(19),
      O => \max[31]_i_19_n_0\
    );
\max[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[16]\,
      I1 => count_reg(16),
      I2 => \max_reg_n_0_[17]\,
      I3 => count_reg(17),
      O => \max[31]_i_20_n_0\
    );
\max[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[14]\,
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \max_reg_n_0_[15]\,
      O => \max[31]_i_22_n_0\
    );
\max[31]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[12]\,
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \max_reg_n_0_[13]\,
      O => \max[31]_i_23_n_0\
    );
\max[31]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[10]\,
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \max_reg_n_0_[11]\,
      O => \max[31]_i_24_n_0\
    );
\max[31]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[8]\,
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \max_reg_n_0_[9]\,
      O => \max[31]_i_25_n_0\
    );
\max[31]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[14]\,
      I1 => count_reg(14),
      I2 => \max_reg_n_0_[15]\,
      I3 => count_reg(15),
      O => \max[31]_i_26_n_0\
    );
\max[31]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[12]\,
      I1 => count_reg(12),
      I2 => \max_reg_n_0_[13]\,
      I3 => count_reg(13),
      O => \max[31]_i_27_n_0\
    );
\max[31]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[10]\,
      I1 => count_reg(10),
      I2 => \max_reg_n_0_[11]\,
      I3 => count_reg(11),
      O => \max[31]_i_28_n_0\
    );
\max[31]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[8]\,
      I1 => count_reg(8),
      I2 => \max_reg_n_0_[9]\,
      I3 => count_reg(9),
      O => \max[31]_i_29_n_0\
    );
\max[31]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[6]\,
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \max_reg_n_0_[7]\,
      O => \max[31]_i_30_n_0\
    );
\max[31]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[4]\,
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \max_reg_n_0_[5]\,
      O => \max[31]_i_31_n_0\
    );
\max[31]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[2]\,
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \max_reg_n_0_[3]\,
      O => \max[31]_i_32_n_0\
    );
\max[31]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[0]\,
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \max_reg_n_0_[1]\,
      O => \max[31]_i_33_n_0\
    );
\max[31]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[6]\,
      I1 => count_reg(6),
      I2 => \max_reg_n_0_[7]\,
      I3 => count_reg(7),
      O => \max[31]_i_34_n_0\
    );
\max[31]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[4]\,
      I1 => count_reg(4),
      I2 => \max_reg_n_0_[5]\,
      I3 => count_reg(5),
      O => \max[31]_i_35_n_0\
    );
\max[31]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[2]\,
      I1 => count_reg(2),
      I2 => \max_reg_n_0_[3]\,
      I3 => count_reg(3),
      O => \max[31]_i_36_n_0\
    );
\max[31]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[0]\,
      I1 => count_reg(0),
      I2 => \max_reg_n_0_[1]\,
      I3 => count_reg(1),
      O => \max[31]_i_37_n_0\
    );
\max[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[30]\,
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \max_reg_n_0_[31]\,
      O => \max[31]_i_4_n_0\
    );
\max[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[28]\,
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \max_reg_n_0_[29]\,
      O => \max[31]_i_5_n_0\
    );
\max[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[26]\,
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \max_reg_n_0_[27]\,
      O => \max[31]_i_6_n_0\
    );
\max[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \max_reg_n_0_[24]\,
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \max_reg_n_0_[25]\,
      O => \max[31]_i_7_n_0\
    );
\max[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[30]\,
      I1 => count_reg(30),
      I2 => \max_reg_n_0_[31]\,
      I3 => count_reg(31),
      O => \max[31]_i_8_n_0\
    );
\max[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \max_reg_n_0_[28]\,
      I1 => count_reg(28),
      I2 => \max_reg_n_0_[29]\,
      I3 => count_reg(29),
      O => \max[31]_i_9_n_0\
    );
\max_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(0),
      Q => \max_reg_n_0_[0]\,
      R => '0'
    );
\max_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(10),
      Q => \max_reg_n_0_[10]\,
      R => '0'
    );
\max_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(11),
      Q => \max_reg_n_0_[11]\,
      R => '0'
    );
\max_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(12),
      Q => \max_reg_n_0_[12]\,
      R => '0'
    );
\max_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(13),
      Q => \max_reg_n_0_[13]\,
      R => '0'
    );
\max_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(14),
      Q => \max_reg_n_0_[14]\,
      R => '0'
    );
\max_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(15),
      Q => \max_reg_n_0_[15]\,
      R => '0'
    );
\max_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(16),
      Q => \max_reg_n_0_[16]\,
      R => '0'
    );
\max_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(17),
      Q => \max_reg_n_0_[17]\,
      R => '0'
    );
\max_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(18),
      Q => \max_reg_n_0_[18]\,
      R => '0'
    );
\max_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(19),
      Q => \max_reg_n_0_[19]\,
      R => '0'
    );
\max_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(1),
      Q => \max_reg_n_0_[1]\,
      R => '0'
    );
\max_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(20),
      Q => \max_reg_n_0_[20]\,
      R => '0'
    );
\max_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(21),
      Q => \max_reg_n_0_[21]\,
      R => '0'
    );
\max_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(22),
      Q => \max_reg_n_0_[22]\,
      R => '0'
    );
\max_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(23),
      Q => \max_reg_n_0_[23]\,
      R => '0'
    );
\max_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(24),
      Q => \max_reg_n_0_[24]\,
      R => '0'
    );
\max_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(25),
      Q => \max_reg_n_0_[25]\,
      R => '0'
    );
\max_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(26),
      Q => \max_reg_n_0_[26]\,
      R => '0'
    );
\max_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(27),
      Q => \max_reg_n_0_[27]\,
      R => '0'
    );
\max_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(28),
      Q => \max_reg_n_0_[28]\,
      R => '0'
    );
\max_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(29),
      Q => \max_reg_n_0_[29]\,
      R => '0'
    );
\max_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(2),
      Q => \max_reg_n_0_[2]\,
      R => '0'
    );
\max_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(30),
      Q => \max_reg_n_0_[30]\,
      R => '0'
    );
\max_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(31),
      Q => \max_reg_n_0_[31]\,
      R => '0'
    );
\max_reg[31]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \max_reg[31]_i_21_n_0\,
      CO(3) => \max_reg[31]_i_12_n_0\,
      CO(2) => \max_reg[31]_i_12_n_1\,
      CO(1) => \max_reg[31]_i_12_n_2\,
      CO(0) => \max_reg[31]_i_12_n_3\,
      CYINIT => '0',
      DI(3) => \max[31]_i_22_n_0\,
      DI(2) => \max[31]_i_23_n_0\,
      DI(1) => \max[31]_i_24_n_0\,
      DI(0) => \max[31]_i_25_n_0\,
      O(3 downto 0) => \NLW_max_reg[31]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3) => \max[31]_i_26_n_0\,
      S(2) => \max[31]_i_27_n_0\,
      S(1) => \max[31]_i_28_n_0\,
      S(0) => \max[31]_i_29_n_0\
    );
\max_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \max_reg[31]_i_3_n_0\,
      CO(3) => count1,
      CO(2) => \max_reg[31]_i_2_n_1\,
      CO(1) => \max_reg[31]_i_2_n_2\,
      CO(0) => \max_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \max[31]_i_4_n_0\,
      DI(2) => \max[31]_i_5_n_0\,
      DI(1) => \max[31]_i_6_n_0\,
      DI(0) => \max[31]_i_7_n_0\,
      O(3 downto 0) => \NLW_max_reg[31]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \max[31]_i_8_n_0\,
      S(2) => \max[31]_i_9_n_0\,
      S(1) => \max[31]_i_10_n_0\,
      S(0) => \max[31]_i_11_n_0\
    );
\max_reg[31]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \max_reg[31]_i_21_n_0\,
      CO(2) => \max_reg[31]_i_21_n_1\,
      CO(1) => \max_reg[31]_i_21_n_2\,
      CO(0) => \max_reg[31]_i_21_n_3\,
      CYINIT => '0',
      DI(3) => \max[31]_i_30_n_0\,
      DI(2) => \max[31]_i_31_n_0\,
      DI(1) => \max[31]_i_32_n_0\,
      DI(0) => \max[31]_i_33_n_0\,
      O(3 downto 0) => \NLW_max_reg[31]_i_21_O_UNCONNECTED\(3 downto 0),
      S(3) => \max[31]_i_34_n_0\,
      S(2) => \max[31]_i_35_n_0\,
      S(1) => \max[31]_i_36_n_0\,
      S(0) => \max[31]_i_37_n_0\
    );
\max_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \max_reg[31]_i_12_n_0\,
      CO(3) => \max_reg[31]_i_3_n_0\,
      CO(2) => \max_reg[31]_i_3_n_1\,
      CO(1) => \max_reg[31]_i_3_n_2\,
      CO(0) => \max_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \max[31]_i_13_n_0\,
      DI(2) => \max[31]_i_14_n_0\,
      DI(1) => \max[31]_i_15_n_0\,
      DI(0) => \max[31]_i_16_n_0\,
      O(3 downto 0) => \NLW_max_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \max[31]_i_17_n_0\,
      S(2) => \max[31]_i_18_n_0\,
      S(1) => \max[31]_i_19_n_0\,
      S(0) => \max[31]_i_20_n_0\
    );
\max_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(3),
      Q => \max_reg_n_0_[3]\,
      R => '0'
    );
\max_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(4),
      Q => \max_reg_n_0_[4]\,
      R => '0'
    );
\max_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(5),
      Q => \max_reg_n_0_[5]\,
      R => '0'
    );
\max_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(6),
      Q => \max_reg_n_0_[6]\,
      R => '0'
    );
\max_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(7),
      Q => \max_reg_n_0_[7]\,
      R => '0'
    );
\max_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(8),
      Q => \max_reg_n_0_[8]\,
      R => '0'
    );
\max_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pwm_axi_aclk,
      CE => \max[31]_i_1_n_0\,
      D => period_reg(9),
      Q => \max_reg_n_0_[9]\,
      R => '0'
    );
\pwm[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm1,
      I1 => enable,
      O => pwm(0)
    );
\pwm[0]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[0]_INST_0_i_2_n_0\,
      CO(3) => pwm1,
      CO(2) => \pwm[0]_INST_0_i_1_n_1\,
      CO(1) => \pwm[0]_INST_0_i_1_n_2\,
      CO(0) => \pwm[0]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[0]_INST_0_i_3_n_0\,
      DI(2) => \pwm[0]_INST_0_i_4_n_0\,
      DI(1) => \pwm[0]_INST_0_i_5_n_0\,
      DI(0) => \pwm[0]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[0]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[0]_INST_0_i_7_n_0\,
      S(2) => \pwm[0]_INST_0_i_8_n_0\,
      S(1) => \pwm[0]_INST_0_i_9_n_0\,
      S(0) => \pwm[0]_INST_0_i_10_n_0\
    );
\pwm[0]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(24),
      I1 => count_reg(24),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(25),
      I3 => count_reg(25),
      O => \pwm[0]_INST_0_i_10_n_0\
    );
\pwm[0]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[0]_INST_0_i_20_n_0\,
      CO(3) => \pwm[0]_INST_0_i_11_n_0\,
      CO(2) => \pwm[0]_INST_0_i_11_n_1\,
      CO(1) => \pwm[0]_INST_0_i_11_n_2\,
      CO(0) => \pwm[0]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[0]_INST_0_i_21_n_0\,
      DI(2) => \pwm[0]_INST_0_i_22_n_0\,
      DI(1) => \pwm[0]_INST_0_i_23_n_0\,
      DI(0) => \pwm[0]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[0]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[0]_INST_0_i_25_n_0\,
      S(2) => \pwm[0]_INST_0_i_26_n_0\,
      S(1) => \pwm[0]_INST_0_i_27_n_0\,
      S(0) => \pwm[0]_INST_0_i_28_n_0\
    );
\pwm[0]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(23),
      O => \pwm[0]_INST_0_i_12_n_0\
    );
\pwm[0]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(21),
      O => \pwm[0]_INST_0_i_13_n_0\
    );
\pwm[0]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(19),
      O => \pwm[0]_INST_0_i_14_n_0\
    );
\pwm[0]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(17),
      O => \pwm[0]_INST_0_i_15_n_0\
    );
\pwm[0]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(22),
      I1 => count_reg(22),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(23),
      I3 => count_reg(23),
      O => \pwm[0]_INST_0_i_16_n_0\
    );
\pwm[0]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(20),
      I1 => count_reg(20),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(21),
      I3 => count_reg(21),
      O => \pwm[0]_INST_0_i_17_n_0\
    );
\pwm[0]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(18),
      I1 => count_reg(18),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(19),
      I3 => count_reg(19),
      O => \pwm[0]_INST_0_i_18_n_0\
    );
\pwm[0]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(16),
      I1 => count_reg(16),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(17),
      I3 => count_reg(17),
      O => \pwm[0]_INST_0_i_19_n_0\
    );
\pwm[0]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[0]_INST_0_i_11_n_0\,
      CO(3) => \pwm[0]_INST_0_i_2_n_0\,
      CO(2) => \pwm[0]_INST_0_i_2_n_1\,
      CO(1) => \pwm[0]_INST_0_i_2_n_2\,
      CO(0) => \pwm[0]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[0]_INST_0_i_12_n_0\,
      DI(2) => \pwm[0]_INST_0_i_13_n_0\,
      DI(1) => \pwm[0]_INST_0_i_14_n_0\,
      DI(0) => \pwm[0]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[0]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[0]_INST_0_i_16_n_0\,
      S(2) => \pwm[0]_INST_0_i_17_n_0\,
      S(1) => \pwm[0]_INST_0_i_18_n_0\,
      S(0) => \pwm[0]_INST_0_i_19_n_0\
    );
\pwm[0]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[0]_INST_0_i_20_n_0\,
      CO(2) => \pwm[0]_INST_0_i_20_n_1\,
      CO(1) => \pwm[0]_INST_0_i_20_n_2\,
      CO(0) => \pwm[0]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[0]_INST_0_i_29_n_0\,
      DI(2) => \pwm[0]_INST_0_i_30_n_0\,
      DI(1) => \pwm[0]_INST_0_i_31_n_0\,
      DI(0) => \pwm[0]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[0]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[0]_INST_0_i_33_n_0\,
      S(2) => \pwm[0]_INST_0_i_34_n_0\,
      S(1) => \pwm[0]_INST_0_i_35_n_0\,
      S(0) => \pwm[0]_INST_0_i_36_n_0\
    );
\pwm[0]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(15),
      O => \pwm[0]_INST_0_i_21_n_0\
    );
\pwm[0]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(13),
      O => \pwm[0]_INST_0_i_22_n_0\
    );
\pwm[0]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(11),
      O => \pwm[0]_INST_0_i_23_n_0\
    );
\pwm[0]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(9),
      O => \pwm[0]_INST_0_i_24_n_0\
    );
\pwm[0]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(14),
      I1 => count_reg(14),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(15),
      I3 => count_reg(15),
      O => \pwm[0]_INST_0_i_25_n_0\
    );
\pwm[0]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(12),
      I1 => count_reg(12),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(13),
      I3 => count_reg(13),
      O => \pwm[0]_INST_0_i_26_n_0\
    );
\pwm[0]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(10),
      I1 => count_reg(10),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(11),
      I3 => count_reg(11),
      O => \pwm[0]_INST_0_i_27_n_0\
    );
\pwm[0]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(8),
      I1 => count_reg(8),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(9),
      I3 => count_reg(9),
      O => \pwm[0]_INST_0_i_28_n_0\
    );
\pwm[0]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(7),
      O => \pwm[0]_INST_0_i_29_n_0\
    );
\pwm[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(31),
      O => \pwm[0]_INST_0_i_3_n_0\
    );
\pwm[0]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(5),
      O => \pwm[0]_INST_0_i_30_n_0\
    );
\pwm[0]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(3),
      O => \pwm[0]_INST_0_i_31_n_0\
    );
\pwm[0]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(1),
      O => \pwm[0]_INST_0_i_32_n_0\
    );
\pwm[0]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(6),
      I1 => count_reg(6),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(7),
      I3 => count_reg(7),
      O => \pwm[0]_INST_0_i_33_n_0\
    );
\pwm[0]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(4),
      I1 => count_reg(4),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(5),
      I3 => count_reg(5),
      O => \pwm[0]_INST_0_i_34_n_0\
    );
\pwm[0]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(2),
      I1 => count_reg(2),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(3),
      I3 => count_reg(3),
      O => \pwm[0]_INST_0_i_35_n_0\
    );
\pwm[0]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(0),
      I1 => count_reg(0),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(1),
      I3 => count_reg(1),
      O => \pwm[0]_INST_0_i_36_n_0\
    );
\pwm[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(29),
      O => \pwm[0]_INST_0_i_4_n_0\
    );
\pwm[0]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(27),
      O => \pwm[0]_INST_0_i_5_n_0\
    );
\pwm[0]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[0].duty_reg_latch_reg[0]_12\(25),
      O => \pwm[0]_INST_0_i_6_n_0\
    );
\pwm[0]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(30),
      I1 => count_reg(30),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(31),
      I3 => count_reg(31),
      O => \pwm[0]_INST_0_i_7_n_0\
    );
\pwm[0]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(28),
      I1 => count_reg(28),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(29),
      I3 => count_reg(29),
      O => \pwm[0]_INST_0_i_8_n_0\
    );
\pwm[0]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[0].duty_reg_latch_reg[0]_12\(26),
      I1 => count_reg(26),
      I2 => \genblk1[0].duty_reg_latch_reg[0]_12\(27),
      I3 => count_reg(27),
      O => \pwm[0]_INST_0_i_9_n_0\
    );
\pwm[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm118_in,
      I1 => enable,
      O => pwm(10)
    );
\pwm[10]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[10]_INST_0_i_2_n_0\,
      CO(3) => pwm118_in,
      CO(2) => \pwm[10]_INST_0_i_1_n_1\,
      CO(1) => \pwm[10]_INST_0_i_1_n_2\,
      CO(0) => \pwm[10]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[10]_INST_0_i_3_n_0\,
      DI(2) => \pwm[10]_INST_0_i_4_n_0\,
      DI(1) => \pwm[10]_INST_0_i_5_n_0\,
      DI(0) => \pwm[10]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[10]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[10]_INST_0_i_7_n_0\,
      S(2) => \pwm[10]_INST_0_i_8_n_0\,
      S(1) => \pwm[10]_INST_0_i_9_n_0\,
      S(0) => \pwm[10]_INST_0_i_10_n_0\
    );
\pwm[10]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(24),
      I1 => count_reg(24),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(25),
      I3 => count_reg(25),
      O => \pwm[10]_INST_0_i_10_n_0\
    );
\pwm[10]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[10]_INST_0_i_20_n_0\,
      CO(3) => \pwm[10]_INST_0_i_11_n_0\,
      CO(2) => \pwm[10]_INST_0_i_11_n_1\,
      CO(1) => \pwm[10]_INST_0_i_11_n_2\,
      CO(0) => \pwm[10]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[10]_INST_0_i_21_n_0\,
      DI(2) => \pwm[10]_INST_0_i_22_n_0\,
      DI(1) => \pwm[10]_INST_0_i_23_n_0\,
      DI(0) => \pwm[10]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[10]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[10]_INST_0_i_25_n_0\,
      S(2) => \pwm[10]_INST_0_i_26_n_0\,
      S(1) => \pwm[10]_INST_0_i_27_n_0\,
      S(0) => \pwm[10]_INST_0_i_28_n_0\
    );
\pwm[10]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(23),
      O => \pwm[10]_INST_0_i_12_n_0\
    );
\pwm[10]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(21),
      O => \pwm[10]_INST_0_i_13_n_0\
    );
\pwm[10]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(19),
      O => \pwm[10]_INST_0_i_14_n_0\
    );
\pwm[10]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(17),
      O => \pwm[10]_INST_0_i_15_n_0\
    );
\pwm[10]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(22),
      I1 => count_reg(22),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(23),
      I3 => count_reg(23),
      O => \pwm[10]_INST_0_i_16_n_0\
    );
\pwm[10]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(20),
      I1 => count_reg(20),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(21),
      I3 => count_reg(21),
      O => \pwm[10]_INST_0_i_17_n_0\
    );
\pwm[10]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(18),
      I1 => count_reg(18),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(19),
      I3 => count_reg(19),
      O => \pwm[10]_INST_0_i_18_n_0\
    );
\pwm[10]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(16),
      I1 => count_reg(16),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(17),
      I3 => count_reg(17),
      O => \pwm[10]_INST_0_i_19_n_0\
    );
\pwm[10]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[10]_INST_0_i_11_n_0\,
      CO(3) => \pwm[10]_INST_0_i_2_n_0\,
      CO(2) => \pwm[10]_INST_0_i_2_n_1\,
      CO(1) => \pwm[10]_INST_0_i_2_n_2\,
      CO(0) => \pwm[10]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[10]_INST_0_i_12_n_0\,
      DI(2) => \pwm[10]_INST_0_i_13_n_0\,
      DI(1) => \pwm[10]_INST_0_i_14_n_0\,
      DI(0) => \pwm[10]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[10]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[10]_INST_0_i_16_n_0\,
      S(2) => \pwm[10]_INST_0_i_17_n_0\,
      S(1) => \pwm[10]_INST_0_i_18_n_0\,
      S(0) => \pwm[10]_INST_0_i_19_n_0\
    );
\pwm[10]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[10]_INST_0_i_20_n_0\,
      CO(2) => \pwm[10]_INST_0_i_20_n_1\,
      CO(1) => \pwm[10]_INST_0_i_20_n_2\,
      CO(0) => \pwm[10]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[10]_INST_0_i_29_n_0\,
      DI(2) => \pwm[10]_INST_0_i_30_n_0\,
      DI(1) => \pwm[10]_INST_0_i_31_n_0\,
      DI(0) => \pwm[10]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[10]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[10]_INST_0_i_33_n_0\,
      S(2) => \pwm[10]_INST_0_i_34_n_0\,
      S(1) => \pwm[10]_INST_0_i_35_n_0\,
      S(0) => \pwm[10]_INST_0_i_36_n_0\
    );
\pwm[10]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(15),
      O => \pwm[10]_INST_0_i_21_n_0\
    );
\pwm[10]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(13),
      O => \pwm[10]_INST_0_i_22_n_0\
    );
\pwm[10]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(11),
      O => \pwm[10]_INST_0_i_23_n_0\
    );
\pwm[10]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(9),
      O => \pwm[10]_INST_0_i_24_n_0\
    );
\pwm[10]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(14),
      I1 => count_reg(14),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(15),
      I3 => count_reg(15),
      O => \pwm[10]_INST_0_i_25_n_0\
    );
\pwm[10]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(12),
      I1 => count_reg(12),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(13),
      I3 => count_reg(13),
      O => \pwm[10]_INST_0_i_26_n_0\
    );
\pwm[10]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(10),
      I1 => count_reg(10),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(11),
      I3 => count_reg(11),
      O => \pwm[10]_INST_0_i_27_n_0\
    );
\pwm[10]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(8),
      I1 => count_reg(8),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(9),
      I3 => count_reg(9),
      O => \pwm[10]_INST_0_i_28_n_0\
    );
\pwm[10]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(7),
      O => \pwm[10]_INST_0_i_29_n_0\
    );
\pwm[10]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(31),
      O => \pwm[10]_INST_0_i_3_n_0\
    );
\pwm[10]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(5),
      O => \pwm[10]_INST_0_i_30_n_0\
    );
\pwm[10]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(3),
      O => \pwm[10]_INST_0_i_31_n_0\
    );
\pwm[10]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(1),
      O => \pwm[10]_INST_0_i_32_n_0\
    );
\pwm[10]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(6),
      I1 => count_reg(6),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(7),
      I3 => count_reg(7),
      O => \pwm[10]_INST_0_i_33_n_0\
    );
\pwm[10]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(4),
      I1 => count_reg(4),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(5),
      I3 => count_reg(5),
      O => \pwm[10]_INST_0_i_34_n_0\
    );
\pwm[10]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(2),
      I1 => count_reg(2),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(3),
      I3 => count_reg(3),
      O => \pwm[10]_INST_0_i_35_n_0\
    );
\pwm[10]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(0),
      I1 => count_reg(0),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(1),
      I3 => count_reg(1),
      O => \pwm[10]_INST_0_i_36_n_0\
    );
\pwm[10]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(29),
      O => \pwm[10]_INST_0_i_4_n_0\
    );
\pwm[10]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(27),
      O => \pwm[10]_INST_0_i_5_n_0\
    );
\pwm[10]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[10].duty_reg_latch_reg[10]_22\(25),
      O => \pwm[10]_INST_0_i_6_n_0\
    );
\pwm[10]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(30),
      I1 => count_reg(30),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(31),
      I3 => count_reg(31),
      O => \pwm[10]_INST_0_i_7_n_0\
    );
\pwm[10]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(28),
      I1 => count_reg(28),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(29),
      I3 => count_reg(29),
      O => \pwm[10]_INST_0_i_8_n_0\
    );
\pwm[10]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[10].duty_reg_latch_reg[10]_22\(26),
      I1 => count_reg(26),
      I2 => \genblk1[10].duty_reg_latch_reg[10]_22\(27),
      I3 => count_reg(27),
      O => \pwm[10]_INST_0_i_9_n_0\
    );
\pwm[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm120_in,
      I1 => enable,
      O => pwm(11)
    );
\pwm[11]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[11]_INST_0_i_2_n_0\,
      CO(3) => pwm120_in,
      CO(2) => \pwm[11]_INST_0_i_1_n_1\,
      CO(1) => \pwm[11]_INST_0_i_1_n_2\,
      CO(0) => \pwm[11]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[11]_INST_0_i_3_n_0\,
      DI(2) => \pwm[11]_INST_0_i_4_n_0\,
      DI(1) => \pwm[11]_INST_0_i_5_n_0\,
      DI(0) => \pwm[11]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[11]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[11]_INST_0_i_7_n_0\,
      S(2) => \pwm[11]_INST_0_i_8_n_0\,
      S(1) => \pwm[11]_INST_0_i_9_n_0\,
      S(0) => \pwm[11]_INST_0_i_10_n_0\
    );
\pwm[11]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(24),
      I1 => count_reg(24),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(25),
      I3 => count_reg(25),
      O => \pwm[11]_INST_0_i_10_n_0\
    );
\pwm[11]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[11]_INST_0_i_20_n_0\,
      CO(3) => \pwm[11]_INST_0_i_11_n_0\,
      CO(2) => \pwm[11]_INST_0_i_11_n_1\,
      CO(1) => \pwm[11]_INST_0_i_11_n_2\,
      CO(0) => \pwm[11]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[11]_INST_0_i_21_n_0\,
      DI(2) => \pwm[11]_INST_0_i_22_n_0\,
      DI(1) => \pwm[11]_INST_0_i_23_n_0\,
      DI(0) => \pwm[11]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[11]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[11]_INST_0_i_25_n_0\,
      S(2) => \pwm[11]_INST_0_i_26_n_0\,
      S(1) => \pwm[11]_INST_0_i_27_n_0\,
      S(0) => \pwm[11]_INST_0_i_28_n_0\
    );
\pwm[11]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(23),
      O => \pwm[11]_INST_0_i_12_n_0\
    );
\pwm[11]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(21),
      O => \pwm[11]_INST_0_i_13_n_0\
    );
\pwm[11]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(19),
      O => \pwm[11]_INST_0_i_14_n_0\
    );
\pwm[11]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(17),
      O => \pwm[11]_INST_0_i_15_n_0\
    );
\pwm[11]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(22),
      I1 => count_reg(22),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(23),
      I3 => count_reg(23),
      O => \pwm[11]_INST_0_i_16_n_0\
    );
\pwm[11]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(20),
      I1 => count_reg(20),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(21),
      I3 => count_reg(21),
      O => \pwm[11]_INST_0_i_17_n_0\
    );
\pwm[11]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(18),
      I1 => count_reg(18),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(19),
      I3 => count_reg(19),
      O => \pwm[11]_INST_0_i_18_n_0\
    );
\pwm[11]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(16),
      I1 => count_reg(16),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(17),
      I3 => count_reg(17),
      O => \pwm[11]_INST_0_i_19_n_0\
    );
\pwm[11]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[11]_INST_0_i_11_n_0\,
      CO(3) => \pwm[11]_INST_0_i_2_n_0\,
      CO(2) => \pwm[11]_INST_0_i_2_n_1\,
      CO(1) => \pwm[11]_INST_0_i_2_n_2\,
      CO(0) => \pwm[11]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[11]_INST_0_i_12_n_0\,
      DI(2) => \pwm[11]_INST_0_i_13_n_0\,
      DI(1) => \pwm[11]_INST_0_i_14_n_0\,
      DI(0) => \pwm[11]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[11]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[11]_INST_0_i_16_n_0\,
      S(2) => \pwm[11]_INST_0_i_17_n_0\,
      S(1) => \pwm[11]_INST_0_i_18_n_0\,
      S(0) => \pwm[11]_INST_0_i_19_n_0\
    );
\pwm[11]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[11]_INST_0_i_20_n_0\,
      CO(2) => \pwm[11]_INST_0_i_20_n_1\,
      CO(1) => \pwm[11]_INST_0_i_20_n_2\,
      CO(0) => \pwm[11]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[11]_INST_0_i_29_n_0\,
      DI(2) => \pwm[11]_INST_0_i_30_n_0\,
      DI(1) => \pwm[11]_INST_0_i_31_n_0\,
      DI(0) => \pwm[11]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[11]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[11]_INST_0_i_33_n_0\,
      S(2) => \pwm[11]_INST_0_i_34_n_0\,
      S(1) => \pwm[11]_INST_0_i_35_n_0\,
      S(0) => \pwm[11]_INST_0_i_36_n_0\
    );
\pwm[11]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(15),
      O => \pwm[11]_INST_0_i_21_n_0\
    );
\pwm[11]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(13),
      O => \pwm[11]_INST_0_i_22_n_0\
    );
\pwm[11]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(11),
      O => \pwm[11]_INST_0_i_23_n_0\
    );
\pwm[11]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(9),
      O => \pwm[11]_INST_0_i_24_n_0\
    );
\pwm[11]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(14),
      I1 => count_reg(14),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(15),
      I3 => count_reg(15),
      O => \pwm[11]_INST_0_i_25_n_0\
    );
\pwm[11]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(12),
      I1 => count_reg(12),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(13),
      I3 => count_reg(13),
      O => \pwm[11]_INST_0_i_26_n_0\
    );
\pwm[11]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(10),
      I1 => count_reg(10),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(11),
      I3 => count_reg(11),
      O => \pwm[11]_INST_0_i_27_n_0\
    );
\pwm[11]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(8),
      I1 => count_reg(8),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(9),
      I3 => count_reg(9),
      O => \pwm[11]_INST_0_i_28_n_0\
    );
\pwm[11]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(7),
      O => \pwm[11]_INST_0_i_29_n_0\
    );
\pwm[11]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(31),
      O => \pwm[11]_INST_0_i_3_n_0\
    );
\pwm[11]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(5),
      O => \pwm[11]_INST_0_i_30_n_0\
    );
\pwm[11]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(3),
      O => \pwm[11]_INST_0_i_31_n_0\
    );
\pwm[11]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(1),
      O => \pwm[11]_INST_0_i_32_n_0\
    );
\pwm[11]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(6),
      I1 => count_reg(6),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(7),
      I3 => count_reg(7),
      O => \pwm[11]_INST_0_i_33_n_0\
    );
\pwm[11]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(4),
      I1 => count_reg(4),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(5),
      I3 => count_reg(5),
      O => \pwm[11]_INST_0_i_34_n_0\
    );
\pwm[11]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(2),
      I1 => count_reg(2),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(3),
      I3 => count_reg(3),
      O => \pwm[11]_INST_0_i_35_n_0\
    );
\pwm[11]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(0),
      I1 => count_reg(0),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(1),
      I3 => count_reg(1),
      O => \pwm[11]_INST_0_i_36_n_0\
    );
\pwm[11]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(29),
      O => \pwm[11]_INST_0_i_4_n_0\
    );
\pwm[11]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(27),
      O => \pwm[11]_INST_0_i_5_n_0\
    );
\pwm[11]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[11].duty_reg_latch_reg[11]_23\(25),
      O => \pwm[11]_INST_0_i_6_n_0\
    );
\pwm[11]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(30),
      I1 => count_reg(30),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(31),
      I3 => count_reg(31),
      O => \pwm[11]_INST_0_i_7_n_0\
    );
\pwm[11]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(28),
      I1 => count_reg(28),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(29),
      I3 => count_reg(29),
      O => \pwm[11]_INST_0_i_8_n_0\
    );
\pwm[11]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[11].duty_reg_latch_reg[11]_23\(26),
      I1 => count_reg(26),
      I2 => \genblk1[11].duty_reg_latch_reg[11]_23\(27),
      I3 => count_reg(27),
      O => \pwm[11]_INST_0_i_9_n_0\
    );
\pwm[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm10_in,
      I1 => enable,
      O => pwm(1)
    );
\pwm[1]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[1]_INST_0_i_2_n_0\,
      CO(3) => pwm10_in,
      CO(2) => \pwm[1]_INST_0_i_1_n_1\,
      CO(1) => \pwm[1]_INST_0_i_1_n_2\,
      CO(0) => \pwm[1]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[1]_INST_0_i_3_n_0\,
      DI(2) => \pwm[1]_INST_0_i_4_n_0\,
      DI(1) => \pwm[1]_INST_0_i_5_n_0\,
      DI(0) => \pwm[1]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[1]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[1]_INST_0_i_7_n_0\,
      S(2) => \pwm[1]_INST_0_i_8_n_0\,
      S(1) => \pwm[1]_INST_0_i_9_n_0\,
      S(0) => \pwm[1]_INST_0_i_10_n_0\
    );
\pwm[1]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(24),
      I1 => count_reg(24),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(25),
      I3 => count_reg(25),
      O => \pwm[1]_INST_0_i_10_n_0\
    );
\pwm[1]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[1]_INST_0_i_20_n_0\,
      CO(3) => \pwm[1]_INST_0_i_11_n_0\,
      CO(2) => \pwm[1]_INST_0_i_11_n_1\,
      CO(1) => \pwm[1]_INST_0_i_11_n_2\,
      CO(0) => \pwm[1]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[1]_INST_0_i_21_n_0\,
      DI(2) => \pwm[1]_INST_0_i_22_n_0\,
      DI(1) => \pwm[1]_INST_0_i_23_n_0\,
      DI(0) => \pwm[1]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[1]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[1]_INST_0_i_25_n_0\,
      S(2) => \pwm[1]_INST_0_i_26_n_0\,
      S(1) => \pwm[1]_INST_0_i_27_n_0\,
      S(0) => \pwm[1]_INST_0_i_28_n_0\
    );
\pwm[1]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(23),
      O => \pwm[1]_INST_0_i_12_n_0\
    );
\pwm[1]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(21),
      O => \pwm[1]_INST_0_i_13_n_0\
    );
\pwm[1]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(19),
      O => \pwm[1]_INST_0_i_14_n_0\
    );
\pwm[1]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(17),
      O => \pwm[1]_INST_0_i_15_n_0\
    );
\pwm[1]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(22),
      I1 => count_reg(22),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(23),
      I3 => count_reg(23),
      O => \pwm[1]_INST_0_i_16_n_0\
    );
\pwm[1]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(20),
      I1 => count_reg(20),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(21),
      I3 => count_reg(21),
      O => \pwm[1]_INST_0_i_17_n_0\
    );
\pwm[1]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(18),
      I1 => count_reg(18),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(19),
      I3 => count_reg(19),
      O => \pwm[1]_INST_0_i_18_n_0\
    );
\pwm[1]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(16),
      I1 => count_reg(16),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(17),
      I3 => count_reg(17),
      O => \pwm[1]_INST_0_i_19_n_0\
    );
\pwm[1]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[1]_INST_0_i_11_n_0\,
      CO(3) => \pwm[1]_INST_0_i_2_n_0\,
      CO(2) => \pwm[1]_INST_0_i_2_n_1\,
      CO(1) => \pwm[1]_INST_0_i_2_n_2\,
      CO(0) => \pwm[1]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[1]_INST_0_i_12_n_0\,
      DI(2) => \pwm[1]_INST_0_i_13_n_0\,
      DI(1) => \pwm[1]_INST_0_i_14_n_0\,
      DI(0) => \pwm[1]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[1]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[1]_INST_0_i_16_n_0\,
      S(2) => \pwm[1]_INST_0_i_17_n_0\,
      S(1) => \pwm[1]_INST_0_i_18_n_0\,
      S(0) => \pwm[1]_INST_0_i_19_n_0\
    );
\pwm[1]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[1]_INST_0_i_20_n_0\,
      CO(2) => \pwm[1]_INST_0_i_20_n_1\,
      CO(1) => \pwm[1]_INST_0_i_20_n_2\,
      CO(0) => \pwm[1]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[1]_INST_0_i_29_n_0\,
      DI(2) => \pwm[1]_INST_0_i_30_n_0\,
      DI(1) => \pwm[1]_INST_0_i_31_n_0\,
      DI(0) => \pwm[1]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[1]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[1]_INST_0_i_33_n_0\,
      S(2) => \pwm[1]_INST_0_i_34_n_0\,
      S(1) => \pwm[1]_INST_0_i_35_n_0\,
      S(0) => \pwm[1]_INST_0_i_36_n_0\
    );
\pwm[1]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(15),
      O => \pwm[1]_INST_0_i_21_n_0\
    );
\pwm[1]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(13),
      O => \pwm[1]_INST_0_i_22_n_0\
    );
\pwm[1]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(11),
      O => \pwm[1]_INST_0_i_23_n_0\
    );
\pwm[1]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(9),
      O => \pwm[1]_INST_0_i_24_n_0\
    );
\pwm[1]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(14),
      I1 => count_reg(14),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(15),
      I3 => count_reg(15),
      O => \pwm[1]_INST_0_i_25_n_0\
    );
\pwm[1]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(12),
      I1 => count_reg(12),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(13),
      I3 => count_reg(13),
      O => \pwm[1]_INST_0_i_26_n_0\
    );
\pwm[1]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(10),
      I1 => count_reg(10),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(11),
      I3 => count_reg(11),
      O => \pwm[1]_INST_0_i_27_n_0\
    );
\pwm[1]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(8),
      I1 => count_reg(8),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(9),
      I3 => count_reg(9),
      O => \pwm[1]_INST_0_i_28_n_0\
    );
\pwm[1]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(7),
      O => \pwm[1]_INST_0_i_29_n_0\
    );
\pwm[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(31),
      O => \pwm[1]_INST_0_i_3_n_0\
    );
\pwm[1]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(5),
      O => \pwm[1]_INST_0_i_30_n_0\
    );
\pwm[1]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(3),
      O => \pwm[1]_INST_0_i_31_n_0\
    );
\pwm[1]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(1),
      O => \pwm[1]_INST_0_i_32_n_0\
    );
\pwm[1]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(6),
      I1 => count_reg(6),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(7),
      I3 => count_reg(7),
      O => \pwm[1]_INST_0_i_33_n_0\
    );
\pwm[1]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(4),
      I1 => count_reg(4),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(5),
      I3 => count_reg(5),
      O => \pwm[1]_INST_0_i_34_n_0\
    );
\pwm[1]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(2),
      I1 => count_reg(2),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(3),
      I3 => count_reg(3),
      O => \pwm[1]_INST_0_i_35_n_0\
    );
\pwm[1]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(0),
      I1 => count_reg(0),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(1),
      I3 => count_reg(1),
      O => \pwm[1]_INST_0_i_36_n_0\
    );
\pwm[1]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(29),
      O => \pwm[1]_INST_0_i_4_n_0\
    );
\pwm[1]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(27),
      O => \pwm[1]_INST_0_i_5_n_0\
    );
\pwm[1]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[1].duty_reg_latch_reg[1]_13\(25),
      O => \pwm[1]_INST_0_i_6_n_0\
    );
\pwm[1]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(30),
      I1 => count_reg(30),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(31),
      I3 => count_reg(31),
      O => \pwm[1]_INST_0_i_7_n_0\
    );
\pwm[1]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(28),
      I1 => count_reg(28),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(29),
      I3 => count_reg(29),
      O => \pwm[1]_INST_0_i_8_n_0\
    );
\pwm[1]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[1].duty_reg_latch_reg[1]_13\(26),
      I1 => count_reg(26),
      I2 => \genblk1[1].duty_reg_latch_reg[1]_13\(27),
      I3 => count_reg(27),
      O => \pwm[1]_INST_0_i_9_n_0\
    );
\pwm[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm12_in,
      I1 => enable,
      O => pwm(2)
    );
\pwm[2]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[2]_INST_0_i_2_n_0\,
      CO(3) => pwm12_in,
      CO(2) => \pwm[2]_INST_0_i_1_n_1\,
      CO(1) => \pwm[2]_INST_0_i_1_n_2\,
      CO(0) => \pwm[2]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[2]_INST_0_i_3_n_0\,
      DI(2) => \pwm[2]_INST_0_i_4_n_0\,
      DI(1) => \pwm[2]_INST_0_i_5_n_0\,
      DI(0) => \pwm[2]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[2]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[2]_INST_0_i_7_n_0\,
      S(2) => \pwm[2]_INST_0_i_8_n_0\,
      S(1) => \pwm[2]_INST_0_i_9_n_0\,
      S(0) => \pwm[2]_INST_0_i_10_n_0\
    );
\pwm[2]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(24),
      I1 => count_reg(24),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(25),
      I3 => count_reg(25),
      O => \pwm[2]_INST_0_i_10_n_0\
    );
\pwm[2]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[2]_INST_0_i_20_n_0\,
      CO(3) => \pwm[2]_INST_0_i_11_n_0\,
      CO(2) => \pwm[2]_INST_0_i_11_n_1\,
      CO(1) => \pwm[2]_INST_0_i_11_n_2\,
      CO(0) => \pwm[2]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[2]_INST_0_i_21_n_0\,
      DI(2) => \pwm[2]_INST_0_i_22_n_0\,
      DI(1) => \pwm[2]_INST_0_i_23_n_0\,
      DI(0) => \pwm[2]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[2]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[2]_INST_0_i_25_n_0\,
      S(2) => \pwm[2]_INST_0_i_26_n_0\,
      S(1) => \pwm[2]_INST_0_i_27_n_0\,
      S(0) => \pwm[2]_INST_0_i_28_n_0\
    );
\pwm[2]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(23),
      O => \pwm[2]_INST_0_i_12_n_0\
    );
\pwm[2]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(21),
      O => \pwm[2]_INST_0_i_13_n_0\
    );
\pwm[2]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(19),
      O => \pwm[2]_INST_0_i_14_n_0\
    );
\pwm[2]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(17),
      O => \pwm[2]_INST_0_i_15_n_0\
    );
\pwm[2]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(22),
      I1 => count_reg(22),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(23),
      I3 => count_reg(23),
      O => \pwm[2]_INST_0_i_16_n_0\
    );
\pwm[2]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(20),
      I1 => count_reg(20),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(21),
      I3 => count_reg(21),
      O => \pwm[2]_INST_0_i_17_n_0\
    );
\pwm[2]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(18),
      I1 => count_reg(18),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(19),
      I3 => count_reg(19),
      O => \pwm[2]_INST_0_i_18_n_0\
    );
\pwm[2]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(16),
      I1 => count_reg(16),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(17),
      I3 => count_reg(17),
      O => \pwm[2]_INST_0_i_19_n_0\
    );
\pwm[2]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[2]_INST_0_i_11_n_0\,
      CO(3) => \pwm[2]_INST_0_i_2_n_0\,
      CO(2) => \pwm[2]_INST_0_i_2_n_1\,
      CO(1) => \pwm[2]_INST_0_i_2_n_2\,
      CO(0) => \pwm[2]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[2]_INST_0_i_12_n_0\,
      DI(2) => \pwm[2]_INST_0_i_13_n_0\,
      DI(1) => \pwm[2]_INST_0_i_14_n_0\,
      DI(0) => \pwm[2]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[2]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[2]_INST_0_i_16_n_0\,
      S(2) => \pwm[2]_INST_0_i_17_n_0\,
      S(1) => \pwm[2]_INST_0_i_18_n_0\,
      S(0) => \pwm[2]_INST_0_i_19_n_0\
    );
\pwm[2]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[2]_INST_0_i_20_n_0\,
      CO(2) => \pwm[2]_INST_0_i_20_n_1\,
      CO(1) => \pwm[2]_INST_0_i_20_n_2\,
      CO(0) => \pwm[2]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[2]_INST_0_i_29_n_0\,
      DI(2) => \pwm[2]_INST_0_i_30_n_0\,
      DI(1) => \pwm[2]_INST_0_i_31_n_0\,
      DI(0) => \pwm[2]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[2]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[2]_INST_0_i_33_n_0\,
      S(2) => \pwm[2]_INST_0_i_34_n_0\,
      S(1) => \pwm[2]_INST_0_i_35_n_0\,
      S(0) => \pwm[2]_INST_0_i_36_n_0\
    );
\pwm[2]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(15),
      O => \pwm[2]_INST_0_i_21_n_0\
    );
\pwm[2]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(13),
      O => \pwm[2]_INST_0_i_22_n_0\
    );
\pwm[2]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(11),
      O => \pwm[2]_INST_0_i_23_n_0\
    );
\pwm[2]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(9),
      O => \pwm[2]_INST_0_i_24_n_0\
    );
\pwm[2]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(14),
      I1 => count_reg(14),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(15),
      I3 => count_reg(15),
      O => \pwm[2]_INST_0_i_25_n_0\
    );
\pwm[2]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(12),
      I1 => count_reg(12),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(13),
      I3 => count_reg(13),
      O => \pwm[2]_INST_0_i_26_n_0\
    );
\pwm[2]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(10),
      I1 => count_reg(10),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(11),
      I3 => count_reg(11),
      O => \pwm[2]_INST_0_i_27_n_0\
    );
\pwm[2]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(8),
      I1 => count_reg(8),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(9),
      I3 => count_reg(9),
      O => \pwm[2]_INST_0_i_28_n_0\
    );
\pwm[2]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(7),
      O => \pwm[2]_INST_0_i_29_n_0\
    );
\pwm[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(31),
      O => \pwm[2]_INST_0_i_3_n_0\
    );
\pwm[2]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(5),
      O => \pwm[2]_INST_0_i_30_n_0\
    );
\pwm[2]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(3),
      O => \pwm[2]_INST_0_i_31_n_0\
    );
\pwm[2]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(1),
      O => \pwm[2]_INST_0_i_32_n_0\
    );
\pwm[2]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(6),
      I1 => count_reg(6),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(7),
      I3 => count_reg(7),
      O => \pwm[2]_INST_0_i_33_n_0\
    );
\pwm[2]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(4),
      I1 => count_reg(4),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(5),
      I3 => count_reg(5),
      O => \pwm[2]_INST_0_i_34_n_0\
    );
\pwm[2]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(2),
      I1 => count_reg(2),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(3),
      I3 => count_reg(3),
      O => \pwm[2]_INST_0_i_35_n_0\
    );
\pwm[2]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(0),
      I1 => count_reg(0),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(1),
      I3 => count_reg(1),
      O => \pwm[2]_INST_0_i_36_n_0\
    );
\pwm[2]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(29),
      O => \pwm[2]_INST_0_i_4_n_0\
    );
\pwm[2]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(27),
      O => \pwm[2]_INST_0_i_5_n_0\
    );
\pwm[2]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[2].duty_reg_latch_reg[2]_14\(25),
      O => \pwm[2]_INST_0_i_6_n_0\
    );
\pwm[2]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(30),
      I1 => count_reg(30),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(31),
      I3 => count_reg(31),
      O => \pwm[2]_INST_0_i_7_n_0\
    );
\pwm[2]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(28),
      I1 => count_reg(28),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(29),
      I3 => count_reg(29),
      O => \pwm[2]_INST_0_i_8_n_0\
    );
\pwm[2]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[2].duty_reg_latch_reg[2]_14\(26),
      I1 => count_reg(26),
      I2 => \genblk1[2].duty_reg_latch_reg[2]_14\(27),
      I3 => count_reg(27),
      O => \pwm[2]_INST_0_i_9_n_0\
    );
\pwm[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm14_in,
      I1 => enable,
      O => pwm(3)
    );
\pwm[3]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[3]_INST_0_i_2_n_0\,
      CO(3) => pwm14_in,
      CO(2) => \pwm[3]_INST_0_i_1_n_1\,
      CO(1) => \pwm[3]_INST_0_i_1_n_2\,
      CO(0) => \pwm[3]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[3]_INST_0_i_3_n_0\,
      DI(2) => \pwm[3]_INST_0_i_4_n_0\,
      DI(1) => \pwm[3]_INST_0_i_5_n_0\,
      DI(0) => \pwm[3]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[3]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[3]_INST_0_i_7_n_0\,
      S(2) => \pwm[3]_INST_0_i_8_n_0\,
      S(1) => \pwm[3]_INST_0_i_9_n_0\,
      S(0) => \pwm[3]_INST_0_i_10_n_0\
    );
\pwm[3]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(24),
      I1 => count_reg(24),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(25),
      I3 => count_reg(25),
      O => \pwm[3]_INST_0_i_10_n_0\
    );
\pwm[3]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[3]_INST_0_i_20_n_0\,
      CO(3) => \pwm[3]_INST_0_i_11_n_0\,
      CO(2) => \pwm[3]_INST_0_i_11_n_1\,
      CO(1) => \pwm[3]_INST_0_i_11_n_2\,
      CO(0) => \pwm[3]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[3]_INST_0_i_21_n_0\,
      DI(2) => \pwm[3]_INST_0_i_22_n_0\,
      DI(1) => \pwm[3]_INST_0_i_23_n_0\,
      DI(0) => \pwm[3]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[3]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[3]_INST_0_i_25_n_0\,
      S(2) => \pwm[3]_INST_0_i_26_n_0\,
      S(1) => \pwm[3]_INST_0_i_27_n_0\,
      S(0) => \pwm[3]_INST_0_i_28_n_0\
    );
\pwm[3]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(23),
      O => \pwm[3]_INST_0_i_12_n_0\
    );
\pwm[3]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(21),
      O => \pwm[3]_INST_0_i_13_n_0\
    );
\pwm[3]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(19),
      O => \pwm[3]_INST_0_i_14_n_0\
    );
\pwm[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(17),
      O => \pwm[3]_INST_0_i_15_n_0\
    );
\pwm[3]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(22),
      I1 => count_reg(22),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(23),
      I3 => count_reg(23),
      O => \pwm[3]_INST_0_i_16_n_0\
    );
\pwm[3]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(20),
      I1 => count_reg(20),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(21),
      I3 => count_reg(21),
      O => \pwm[3]_INST_0_i_17_n_0\
    );
\pwm[3]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(18),
      I1 => count_reg(18),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(19),
      I3 => count_reg(19),
      O => \pwm[3]_INST_0_i_18_n_0\
    );
\pwm[3]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(16),
      I1 => count_reg(16),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(17),
      I3 => count_reg(17),
      O => \pwm[3]_INST_0_i_19_n_0\
    );
\pwm[3]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[3]_INST_0_i_11_n_0\,
      CO(3) => \pwm[3]_INST_0_i_2_n_0\,
      CO(2) => \pwm[3]_INST_0_i_2_n_1\,
      CO(1) => \pwm[3]_INST_0_i_2_n_2\,
      CO(0) => \pwm[3]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[3]_INST_0_i_12_n_0\,
      DI(2) => \pwm[3]_INST_0_i_13_n_0\,
      DI(1) => \pwm[3]_INST_0_i_14_n_0\,
      DI(0) => \pwm[3]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[3]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[3]_INST_0_i_16_n_0\,
      S(2) => \pwm[3]_INST_0_i_17_n_0\,
      S(1) => \pwm[3]_INST_0_i_18_n_0\,
      S(0) => \pwm[3]_INST_0_i_19_n_0\
    );
\pwm[3]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[3]_INST_0_i_20_n_0\,
      CO(2) => \pwm[3]_INST_0_i_20_n_1\,
      CO(1) => \pwm[3]_INST_0_i_20_n_2\,
      CO(0) => \pwm[3]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[3]_INST_0_i_29_n_0\,
      DI(2) => \pwm[3]_INST_0_i_30_n_0\,
      DI(1) => \pwm[3]_INST_0_i_31_n_0\,
      DI(0) => \pwm[3]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[3]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[3]_INST_0_i_33_n_0\,
      S(2) => \pwm[3]_INST_0_i_34_n_0\,
      S(1) => \pwm[3]_INST_0_i_35_n_0\,
      S(0) => \pwm[3]_INST_0_i_36_n_0\
    );
\pwm[3]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(15),
      O => \pwm[3]_INST_0_i_21_n_0\
    );
\pwm[3]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(13),
      O => \pwm[3]_INST_0_i_22_n_0\
    );
\pwm[3]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(11),
      O => \pwm[3]_INST_0_i_23_n_0\
    );
\pwm[3]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(9),
      O => \pwm[3]_INST_0_i_24_n_0\
    );
\pwm[3]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(14),
      I1 => count_reg(14),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(15),
      I3 => count_reg(15),
      O => \pwm[3]_INST_0_i_25_n_0\
    );
\pwm[3]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(12),
      I1 => count_reg(12),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(13),
      I3 => count_reg(13),
      O => \pwm[3]_INST_0_i_26_n_0\
    );
\pwm[3]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(10),
      I1 => count_reg(10),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(11),
      I3 => count_reg(11),
      O => \pwm[3]_INST_0_i_27_n_0\
    );
\pwm[3]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(8),
      I1 => count_reg(8),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(9),
      I3 => count_reg(9),
      O => \pwm[3]_INST_0_i_28_n_0\
    );
\pwm[3]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(7),
      O => \pwm[3]_INST_0_i_29_n_0\
    );
\pwm[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(31),
      O => \pwm[3]_INST_0_i_3_n_0\
    );
\pwm[3]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(5),
      O => \pwm[3]_INST_0_i_30_n_0\
    );
\pwm[3]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(3),
      O => \pwm[3]_INST_0_i_31_n_0\
    );
\pwm[3]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(1),
      O => \pwm[3]_INST_0_i_32_n_0\
    );
\pwm[3]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(6),
      I1 => count_reg(6),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(7),
      I3 => count_reg(7),
      O => \pwm[3]_INST_0_i_33_n_0\
    );
\pwm[3]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(4),
      I1 => count_reg(4),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(5),
      I3 => count_reg(5),
      O => \pwm[3]_INST_0_i_34_n_0\
    );
\pwm[3]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(2),
      I1 => count_reg(2),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(3),
      I3 => count_reg(3),
      O => \pwm[3]_INST_0_i_35_n_0\
    );
\pwm[3]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(0),
      I1 => count_reg(0),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(1),
      I3 => count_reg(1),
      O => \pwm[3]_INST_0_i_36_n_0\
    );
\pwm[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(29),
      O => \pwm[3]_INST_0_i_4_n_0\
    );
\pwm[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(27),
      O => \pwm[3]_INST_0_i_5_n_0\
    );
\pwm[3]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[3].duty_reg_latch_reg[3]_15\(25),
      O => \pwm[3]_INST_0_i_6_n_0\
    );
\pwm[3]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(30),
      I1 => count_reg(30),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(31),
      I3 => count_reg(31),
      O => \pwm[3]_INST_0_i_7_n_0\
    );
\pwm[3]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(28),
      I1 => count_reg(28),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(29),
      I3 => count_reg(29),
      O => \pwm[3]_INST_0_i_8_n_0\
    );
\pwm[3]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[3].duty_reg_latch_reg[3]_15\(26),
      I1 => count_reg(26),
      I2 => \genblk1[3].duty_reg_latch_reg[3]_15\(27),
      I3 => count_reg(27),
      O => \pwm[3]_INST_0_i_9_n_0\
    );
\pwm[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm16_in,
      I1 => enable,
      O => pwm(4)
    );
\pwm[4]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[4]_INST_0_i_2_n_0\,
      CO(3) => pwm16_in,
      CO(2) => \pwm[4]_INST_0_i_1_n_1\,
      CO(1) => \pwm[4]_INST_0_i_1_n_2\,
      CO(0) => \pwm[4]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[4]_INST_0_i_3_n_0\,
      DI(2) => \pwm[4]_INST_0_i_4_n_0\,
      DI(1) => \pwm[4]_INST_0_i_5_n_0\,
      DI(0) => \pwm[4]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[4]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[4]_INST_0_i_7_n_0\,
      S(2) => \pwm[4]_INST_0_i_8_n_0\,
      S(1) => \pwm[4]_INST_0_i_9_n_0\,
      S(0) => \pwm[4]_INST_0_i_10_n_0\
    );
\pwm[4]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(24),
      I1 => count_reg(24),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(25),
      I3 => count_reg(25),
      O => \pwm[4]_INST_0_i_10_n_0\
    );
\pwm[4]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[4]_INST_0_i_20_n_0\,
      CO(3) => \pwm[4]_INST_0_i_11_n_0\,
      CO(2) => \pwm[4]_INST_0_i_11_n_1\,
      CO(1) => \pwm[4]_INST_0_i_11_n_2\,
      CO(0) => \pwm[4]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[4]_INST_0_i_21_n_0\,
      DI(2) => \pwm[4]_INST_0_i_22_n_0\,
      DI(1) => \pwm[4]_INST_0_i_23_n_0\,
      DI(0) => \pwm[4]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[4]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[4]_INST_0_i_25_n_0\,
      S(2) => \pwm[4]_INST_0_i_26_n_0\,
      S(1) => \pwm[4]_INST_0_i_27_n_0\,
      S(0) => \pwm[4]_INST_0_i_28_n_0\
    );
\pwm[4]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(23),
      O => \pwm[4]_INST_0_i_12_n_0\
    );
\pwm[4]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(21),
      O => \pwm[4]_INST_0_i_13_n_0\
    );
\pwm[4]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(19),
      O => \pwm[4]_INST_0_i_14_n_0\
    );
\pwm[4]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(17),
      O => \pwm[4]_INST_0_i_15_n_0\
    );
\pwm[4]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(22),
      I1 => count_reg(22),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(23),
      I3 => count_reg(23),
      O => \pwm[4]_INST_0_i_16_n_0\
    );
\pwm[4]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(20),
      I1 => count_reg(20),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(21),
      I3 => count_reg(21),
      O => \pwm[4]_INST_0_i_17_n_0\
    );
\pwm[4]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(18),
      I1 => count_reg(18),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(19),
      I3 => count_reg(19),
      O => \pwm[4]_INST_0_i_18_n_0\
    );
\pwm[4]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(16),
      I1 => count_reg(16),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(17),
      I3 => count_reg(17),
      O => \pwm[4]_INST_0_i_19_n_0\
    );
\pwm[4]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[4]_INST_0_i_11_n_0\,
      CO(3) => \pwm[4]_INST_0_i_2_n_0\,
      CO(2) => \pwm[4]_INST_0_i_2_n_1\,
      CO(1) => \pwm[4]_INST_0_i_2_n_2\,
      CO(0) => \pwm[4]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[4]_INST_0_i_12_n_0\,
      DI(2) => \pwm[4]_INST_0_i_13_n_0\,
      DI(1) => \pwm[4]_INST_0_i_14_n_0\,
      DI(0) => \pwm[4]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[4]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[4]_INST_0_i_16_n_0\,
      S(2) => \pwm[4]_INST_0_i_17_n_0\,
      S(1) => \pwm[4]_INST_0_i_18_n_0\,
      S(0) => \pwm[4]_INST_0_i_19_n_0\
    );
\pwm[4]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[4]_INST_0_i_20_n_0\,
      CO(2) => \pwm[4]_INST_0_i_20_n_1\,
      CO(1) => \pwm[4]_INST_0_i_20_n_2\,
      CO(0) => \pwm[4]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[4]_INST_0_i_29_n_0\,
      DI(2) => \pwm[4]_INST_0_i_30_n_0\,
      DI(1) => \pwm[4]_INST_0_i_31_n_0\,
      DI(0) => \pwm[4]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[4]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[4]_INST_0_i_33_n_0\,
      S(2) => \pwm[4]_INST_0_i_34_n_0\,
      S(1) => \pwm[4]_INST_0_i_35_n_0\,
      S(0) => \pwm[4]_INST_0_i_36_n_0\
    );
\pwm[4]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(15),
      O => \pwm[4]_INST_0_i_21_n_0\
    );
\pwm[4]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(13),
      O => \pwm[4]_INST_0_i_22_n_0\
    );
\pwm[4]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(11),
      O => \pwm[4]_INST_0_i_23_n_0\
    );
\pwm[4]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(9),
      O => \pwm[4]_INST_0_i_24_n_0\
    );
\pwm[4]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(14),
      I1 => count_reg(14),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(15),
      I3 => count_reg(15),
      O => \pwm[4]_INST_0_i_25_n_0\
    );
\pwm[4]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(12),
      I1 => count_reg(12),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(13),
      I3 => count_reg(13),
      O => \pwm[4]_INST_0_i_26_n_0\
    );
\pwm[4]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(10),
      I1 => count_reg(10),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(11),
      I3 => count_reg(11),
      O => \pwm[4]_INST_0_i_27_n_0\
    );
\pwm[4]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(8),
      I1 => count_reg(8),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(9),
      I3 => count_reg(9),
      O => \pwm[4]_INST_0_i_28_n_0\
    );
\pwm[4]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(7),
      O => \pwm[4]_INST_0_i_29_n_0\
    );
\pwm[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(31),
      O => \pwm[4]_INST_0_i_3_n_0\
    );
\pwm[4]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(5),
      O => \pwm[4]_INST_0_i_30_n_0\
    );
\pwm[4]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(3),
      O => \pwm[4]_INST_0_i_31_n_0\
    );
\pwm[4]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(1),
      O => \pwm[4]_INST_0_i_32_n_0\
    );
\pwm[4]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(6),
      I1 => count_reg(6),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(7),
      I3 => count_reg(7),
      O => \pwm[4]_INST_0_i_33_n_0\
    );
\pwm[4]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(4),
      I1 => count_reg(4),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(5),
      I3 => count_reg(5),
      O => \pwm[4]_INST_0_i_34_n_0\
    );
\pwm[4]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(2),
      I1 => count_reg(2),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(3),
      I3 => count_reg(3),
      O => \pwm[4]_INST_0_i_35_n_0\
    );
\pwm[4]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(0),
      I1 => count_reg(0),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(1),
      I3 => count_reg(1),
      O => \pwm[4]_INST_0_i_36_n_0\
    );
\pwm[4]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(29),
      O => \pwm[4]_INST_0_i_4_n_0\
    );
\pwm[4]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(27),
      O => \pwm[4]_INST_0_i_5_n_0\
    );
\pwm[4]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[4].duty_reg_latch_reg[4]_16\(25),
      O => \pwm[4]_INST_0_i_6_n_0\
    );
\pwm[4]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(30),
      I1 => count_reg(30),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(31),
      I3 => count_reg(31),
      O => \pwm[4]_INST_0_i_7_n_0\
    );
\pwm[4]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(28),
      I1 => count_reg(28),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(29),
      I3 => count_reg(29),
      O => \pwm[4]_INST_0_i_8_n_0\
    );
\pwm[4]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[4].duty_reg_latch_reg[4]_16\(26),
      I1 => count_reg(26),
      I2 => \genblk1[4].duty_reg_latch_reg[4]_16\(27),
      I3 => count_reg(27),
      O => \pwm[4]_INST_0_i_9_n_0\
    );
\pwm[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm18_in,
      I1 => enable,
      O => pwm(5)
    );
\pwm[5]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[5]_INST_0_i_2_n_0\,
      CO(3) => pwm18_in,
      CO(2) => \pwm[5]_INST_0_i_1_n_1\,
      CO(1) => \pwm[5]_INST_0_i_1_n_2\,
      CO(0) => \pwm[5]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[5]_INST_0_i_3_n_0\,
      DI(2) => \pwm[5]_INST_0_i_4_n_0\,
      DI(1) => \pwm[5]_INST_0_i_5_n_0\,
      DI(0) => \pwm[5]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[5]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[5]_INST_0_i_7_n_0\,
      S(2) => \pwm[5]_INST_0_i_8_n_0\,
      S(1) => \pwm[5]_INST_0_i_9_n_0\,
      S(0) => \pwm[5]_INST_0_i_10_n_0\
    );
\pwm[5]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(24),
      I1 => count_reg(24),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(25),
      I3 => count_reg(25),
      O => \pwm[5]_INST_0_i_10_n_0\
    );
\pwm[5]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[5]_INST_0_i_20_n_0\,
      CO(3) => \pwm[5]_INST_0_i_11_n_0\,
      CO(2) => \pwm[5]_INST_0_i_11_n_1\,
      CO(1) => \pwm[5]_INST_0_i_11_n_2\,
      CO(0) => \pwm[5]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[5]_INST_0_i_21_n_0\,
      DI(2) => \pwm[5]_INST_0_i_22_n_0\,
      DI(1) => \pwm[5]_INST_0_i_23_n_0\,
      DI(0) => \pwm[5]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[5]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[5]_INST_0_i_25_n_0\,
      S(2) => \pwm[5]_INST_0_i_26_n_0\,
      S(1) => \pwm[5]_INST_0_i_27_n_0\,
      S(0) => \pwm[5]_INST_0_i_28_n_0\
    );
\pwm[5]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(23),
      O => \pwm[5]_INST_0_i_12_n_0\
    );
\pwm[5]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(21),
      O => \pwm[5]_INST_0_i_13_n_0\
    );
\pwm[5]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(19),
      O => \pwm[5]_INST_0_i_14_n_0\
    );
\pwm[5]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(17),
      O => \pwm[5]_INST_0_i_15_n_0\
    );
\pwm[5]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(22),
      I1 => count_reg(22),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(23),
      I3 => count_reg(23),
      O => \pwm[5]_INST_0_i_16_n_0\
    );
\pwm[5]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(20),
      I1 => count_reg(20),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(21),
      I3 => count_reg(21),
      O => \pwm[5]_INST_0_i_17_n_0\
    );
\pwm[5]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(18),
      I1 => count_reg(18),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(19),
      I3 => count_reg(19),
      O => \pwm[5]_INST_0_i_18_n_0\
    );
\pwm[5]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(16),
      I1 => count_reg(16),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(17),
      I3 => count_reg(17),
      O => \pwm[5]_INST_0_i_19_n_0\
    );
\pwm[5]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[5]_INST_0_i_11_n_0\,
      CO(3) => \pwm[5]_INST_0_i_2_n_0\,
      CO(2) => \pwm[5]_INST_0_i_2_n_1\,
      CO(1) => \pwm[5]_INST_0_i_2_n_2\,
      CO(0) => \pwm[5]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[5]_INST_0_i_12_n_0\,
      DI(2) => \pwm[5]_INST_0_i_13_n_0\,
      DI(1) => \pwm[5]_INST_0_i_14_n_0\,
      DI(0) => \pwm[5]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[5]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[5]_INST_0_i_16_n_0\,
      S(2) => \pwm[5]_INST_0_i_17_n_0\,
      S(1) => \pwm[5]_INST_0_i_18_n_0\,
      S(0) => \pwm[5]_INST_0_i_19_n_0\
    );
\pwm[5]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[5]_INST_0_i_20_n_0\,
      CO(2) => \pwm[5]_INST_0_i_20_n_1\,
      CO(1) => \pwm[5]_INST_0_i_20_n_2\,
      CO(0) => \pwm[5]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[5]_INST_0_i_29_n_0\,
      DI(2) => \pwm[5]_INST_0_i_30_n_0\,
      DI(1) => \pwm[5]_INST_0_i_31_n_0\,
      DI(0) => \pwm[5]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[5]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[5]_INST_0_i_33_n_0\,
      S(2) => \pwm[5]_INST_0_i_34_n_0\,
      S(1) => \pwm[5]_INST_0_i_35_n_0\,
      S(0) => \pwm[5]_INST_0_i_36_n_0\
    );
\pwm[5]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(15),
      O => \pwm[5]_INST_0_i_21_n_0\
    );
\pwm[5]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(13),
      O => \pwm[5]_INST_0_i_22_n_0\
    );
\pwm[5]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(11),
      O => \pwm[5]_INST_0_i_23_n_0\
    );
\pwm[5]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(9),
      O => \pwm[5]_INST_0_i_24_n_0\
    );
\pwm[5]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(14),
      I1 => count_reg(14),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(15),
      I3 => count_reg(15),
      O => \pwm[5]_INST_0_i_25_n_0\
    );
\pwm[5]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(12),
      I1 => count_reg(12),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(13),
      I3 => count_reg(13),
      O => \pwm[5]_INST_0_i_26_n_0\
    );
\pwm[5]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(10),
      I1 => count_reg(10),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(11),
      I3 => count_reg(11),
      O => \pwm[5]_INST_0_i_27_n_0\
    );
\pwm[5]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(8),
      I1 => count_reg(8),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(9),
      I3 => count_reg(9),
      O => \pwm[5]_INST_0_i_28_n_0\
    );
\pwm[5]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(7),
      O => \pwm[5]_INST_0_i_29_n_0\
    );
\pwm[5]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(31),
      O => \pwm[5]_INST_0_i_3_n_0\
    );
\pwm[5]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(5),
      O => \pwm[5]_INST_0_i_30_n_0\
    );
\pwm[5]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(3),
      O => \pwm[5]_INST_0_i_31_n_0\
    );
\pwm[5]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(1),
      O => \pwm[5]_INST_0_i_32_n_0\
    );
\pwm[5]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(6),
      I1 => count_reg(6),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(7),
      I3 => count_reg(7),
      O => \pwm[5]_INST_0_i_33_n_0\
    );
\pwm[5]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(4),
      I1 => count_reg(4),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(5),
      I3 => count_reg(5),
      O => \pwm[5]_INST_0_i_34_n_0\
    );
\pwm[5]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(2),
      I1 => count_reg(2),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(3),
      I3 => count_reg(3),
      O => \pwm[5]_INST_0_i_35_n_0\
    );
\pwm[5]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(0),
      I1 => count_reg(0),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(1),
      I3 => count_reg(1),
      O => \pwm[5]_INST_0_i_36_n_0\
    );
\pwm[5]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(29),
      O => \pwm[5]_INST_0_i_4_n_0\
    );
\pwm[5]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(27),
      O => \pwm[5]_INST_0_i_5_n_0\
    );
\pwm[5]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[5].duty_reg_latch_reg[5]_17\(25),
      O => \pwm[5]_INST_0_i_6_n_0\
    );
\pwm[5]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(30),
      I1 => count_reg(30),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(31),
      I3 => count_reg(31),
      O => \pwm[5]_INST_0_i_7_n_0\
    );
\pwm[5]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(28),
      I1 => count_reg(28),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(29),
      I3 => count_reg(29),
      O => \pwm[5]_INST_0_i_8_n_0\
    );
\pwm[5]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[5].duty_reg_latch_reg[5]_17\(26),
      I1 => count_reg(26),
      I2 => \genblk1[5].duty_reg_latch_reg[5]_17\(27),
      I3 => count_reg(27),
      O => \pwm[5]_INST_0_i_9_n_0\
    );
\pwm[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm110_in,
      I1 => enable,
      O => pwm(6)
    );
\pwm[6]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[6]_INST_0_i_2_n_0\,
      CO(3) => pwm110_in,
      CO(2) => \pwm[6]_INST_0_i_1_n_1\,
      CO(1) => \pwm[6]_INST_0_i_1_n_2\,
      CO(0) => \pwm[6]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[6]_INST_0_i_3_n_0\,
      DI(2) => \pwm[6]_INST_0_i_4_n_0\,
      DI(1) => \pwm[6]_INST_0_i_5_n_0\,
      DI(0) => \pwm[6]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[6]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[6]_INST_0_i_7_n_0\,
      S(2) => \pwm[6]_INST_0_i_8_n_0\,
      S(1) => \pwm[6]_INST_0_i_9_n_0\,
      S(0) => \pwm[6]_INST_0_i_10_n_0\
    );
\pwm[6]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(24),
      I1 => count_reg(24),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(25),
      I3 => count_reg(25),
      O => \pwm[6]_INST_0_i_10_n_0\
    );
\pwm[6]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[6]_INST_0_i_20_n_0\,
      CO(3) => \pwm[6]_INST_0_i_11_n_0\,
      CO(2) => \pwm[6]_INST_0_i_11_n_1\,
      CO(1) => \pwm[6]_INST_0_i_11_n_2\,
      CO(0) => \pwm[6]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[6]_INST_0_i_21_n_0\,
      DI(2) => \pwm[6]_INST_0_i_22_n_0\,
      DI(1) => \pwm[6]_INST_0_i_23_n_0\,
      DI(0) => \pwm[6]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[6]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[6]_INST_0_i_25_n_0\,
      S(2) => \pwm[6]_INST_0_i_26_n_0\,
      S(1) => \pwm[6]_INST_0_i_27_n_0\,
      S(0) => \pwm[6]_INST_0_i_28_n_0\
    );
\pwm[6]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(23),
      O => \pwm[6]_INST_0_i_12_n_0\
    );
\pwm[6]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(21),
      O => \pwm[6]_INST_0_i_13_n_0\
    );
\pwm[6]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(19),
      O => \pwm[6]_INST_0_i_14_n_0\
    );
\pwm[6]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(17),
      O => \pwm[6]_INST_0_i_15_n_0\
    );
\pwm[6]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(22),
      I1 => count_reg(22),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(23),
      I3 => count_reg(23),
      O => \pwm[6]_INST_0_i_16_n_0\
    );
\pwm[6]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(20),
      I1 => count_reg(20),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(21),
      I3 => count_reg(21),
      O => \pwm[6]_INST_0_i_17_n_0\
    );
\pwm[6]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(18),
      I1 => count_reg(18),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(19),
      I3 => count_reg(19),
      O => \pwm[6]_INST_0_i_18_n_0\
    );
\pwm[6]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(16),
      I1 => count_reg(16),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(17),
      I3 => count_reg(17),
      O => \pwm[6]_INST_0_i_19_n_0\
    );
\pwm[6]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[6]_INST_0_i_11_n_0\,
      CO(3) => \pwm[6]_INST_0_i_2_n_0\,
      CO(2) => \pwm[6]_INST_0_i_2_n_1\,
      CO(1) => \pwm[6]_INST_0_i_2_n_2\,
      CO(0) => \pwm[6]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[6]_INST_0_i_12_n_0\,
      DI(2) => \pwm[6]_INST_0_i_13_n_0\,
      DI(1) => \pwm[6]_INST_0_i_14_n_0\,
      DI(0) => \pwm[6]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[6]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[6]_INST_0_i_16_n_0\,
      S(2) => \pwm[6]_INST_0_i_17_n_0\,
      S(1) => \pwm[6]_INST_0_i_18_n_0\,
      S(0) => \pwm[6]_INST_0_i_19_n_0\
    );
\pwm[6]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[6]_INST_0_i_20_n_0\,
      CO(2) => \pwm[6]_INST_0_i_20_n_1\,
      CO(1) => \pwm[6]_INST_0_i_20_n_2\,
      CO(0) => \pwm[6]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[6]_INST_0_i_29_n_0\,
      DI(2) => \pwm[6]_INST_0_i_30_n_0\,
      DI(1) => \pwm[6]_INST_0_i_31_n_0\,
      DI(0) => \pwm[6]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[6]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[6]_INST_0_i_33_n_0\,
      S(2) => \pwm[6]_INST_0_i_34_n_0\,
      S(1) => \pwm[6]_INST_0_i_35_n_0\,
      S(0) => \pwm[6]_INST_0_i_36_n_0\
    );
\pwm[6]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(15),
      O => \pwm[6]_INST_0_i_21_n_0\
    );
\pwm[6]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(13),
      O => \pwm[6]_INST_0_i_22_n_0\
    );
\pwm[6]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(11),
      O => \pwm[6]_INST_0_i_23_n_0\
    );
\pwm[6]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(9),
      O => \pwm[6]_INST_0_i_24_n_0\
    );
\pwm[6]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(14),
      I1 => count_reg(14),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(15),
      I3 => count_reg(15),
      O => \pwm[6]_INST_0_i_25_n_0\
    );
\pwm[6]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(12),
      I1 => count_reg(12),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(13),
      I3 => count_reg(13),
      O => \pwm[6]_INST_0_i_26_n_0\
    );
\pwm[6]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(10),
      I1 => count_reg(10),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(11),
      I3 => count_reg(11),
      O => \pwm[6]_INST_0_i_27_n_0\
    );
\pwm[6]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(8),
      I1 => count_reg(8),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(9),
      I3 => count_reg(9),
      O => \pwm[6]_INST_0_i_28_n_0\
    );
\pwm[6]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(7),
      O => \pwm[6]_INST_0_i_29_n_0\
    );
\pwm[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(31),
      O => \pwm[6]_INST_0_i_3_n_0\
    );
\pwm[6]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(5),
      O => \pwm[6]_INST_0_i_30_n_0\
    );
\pwm[6]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(3),
      O => \pwm[6]_INST_0_i_31_n_0\
    );
\pwm[6]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(1),
      O => \pwm[6]_INST_0_i_32_n_0\
    );
\pwm[6]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(6),
      I1 => count_reg(6),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(7),
      I3 => count_reg(7),
      O => \pwm[6]_INST_0_i_33_n_0\
    );
\pwm[6]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(4),
      I1 => count_reg(4),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(5),
      I3 => count_reg(5),
      O => \pwm[6]_INST_0_i_34_n_0\
    );
\pwm[6]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(2),
      I1 => count_reg(2),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(3),
      I3 => count_reg(3),
      O => \pwm[6]_INST_0_i_35_n_0\
    );
\pwm[6]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(0),
      I1 => count_reg(0),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(1),
      I3 => count_reg(1),
      O => \pwm[6]_INST_0_i_36_n_0\
    );
\pwm[6]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(29),
      O => \pwm[6]_INST_0_i_4_n_0\
    );
\pwm[6]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(27),
      O => \pwm[6]_INST_0_i_5_n_0\
    );
\pwm[6]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[6].duty_reg_latch_reg[6]_18\(25),
      O => \pwm[6]_INST_0_i_6_n_0\
    );
\pwm[6]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(30),
      I1 => count_reg(30),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(31),
      I3 => count_reg(31),
      O => \pwm[6]_INST_0_i_7_n_0\
    );
\pwm[6]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(28),
      I1 => count_reg(28),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(29),
      I3 => count_reg(29),
      O => \pwm[6]_INST_0_i_8_n_0\
    );
\pwm[6]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[6].duty_reg_latch_reg[6]_18\(26),
      I1 => count_reg(26),
      I2 => \genblk1[6].duty_reg_latch_reg[6]_18\(27),
      I3 => count_reg(27),
      O => \pwm[6]_INST_0_i_9_n_0\
    );
\pwm[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm112_in,
      I1 => enable,
      O => pwm(7)
    );
\pwm[7]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[7]_INST_0_i_2_n_0\,
      CO(3) => pwm112_in,
      CO(2) => \pwm[7]_INST_0_i_1_n_1\,
      CO(1) => \pwm[7]_INST_0_i_1_n_2\,
      CO(0) => \pwm[7]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[7]_INST_0_i_3_n_0\,
      DI(2) => \pwm[7]_INST_0_i_4_n_0\,
      DI(1) => \pwm[7]_INST_0_i_5_n_0\,
      DI(0) => \pwm[7]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[7]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[7]_INST_0_i_7_n_0\,
      S(2) => \pwm[7]_INST_0_i_8_n_0\,
      S(1) => \pwm[7]_INST_0_i_9_n_0\,
      S(0) => \pwm[7]_INST_0_i_10_n_0\
    );
\pwm[7]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(24),
      I1 => count_reg(24),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(25),
      I3 => count_reg(25),
      O => \pwm[7]_INST_0_i_10_n_0\
    );
\pwm[7]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[7]_INST_0_i_20_n_0\,
      CO(3) => \pwm[7]_INST_0_i_11_n_0\,
      CO(2) => \pwm[7]_INST_0_i_11_n_1\,
      CO(1) => \pwm[7]_INST_0_i_11_n_2\,
      CO(0) => \pwm[7]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[7]_INST_0_i_21_n_0\,
      DI(2) => \pwm[7]_INST_0_i_22_n_0\,
      DI(1) => \pwm[7]_INST_0_i_23_n_0\,
      DI(0) => \pwm[7]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[7]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[7]_INST_0_i_25_n_0\,
      S(2) => \pwm[7]_INST_0_i_26_n_0\,
      S(1) => \pwm[7]_INST_0_i_27_n_0\,
      S(0) => \pwm[7]_INST_0_i_28_n_0\
    );
\pwm[7]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(23),
      O => \pwm[7]_INST_0_i_12_n_0\
    );
\pwm[7]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(21),
      O => \pwm[7]_INST_0_i_13_n_0\
    );
\pwm[7]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(19),
      O => \pwm[7]_INST_0_i_14_n_0\
    );
\pwm[7]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(17),
      O => \pwm[7]_INST_0_i_15_n_0\
    );
\pwm[7]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(22),
      I1 => count_reg(22),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(23),
      I3 => count_reg(23),
      O => \pwm[7]_INST_0_i_16_n_0\
    );
\pwm[7]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(20),
      I1 => count_reg(20),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(21),
      I3 => count_reg(21),
      O => \pwm[7]_INST_0_i_17_n_0\
    );
\pwm[7]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(18),
      I1 => count_reg(18),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(19),
      I3 => count_reg(19),
      O => \pwm[7]_INST_0_i_18_n_0\
    );
\pwm[7]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(16),
      I1 => count_reg(16),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(17),
      I3 => count_reg(17),
      O => \pwm[7]_INST_0_i_19_n_0\
    );
\pwm[7]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[7]_INST_0_i_11_n_0\,
      CO(3) => \pwm[7]_INST_0_i_2_n_0\,
      CO(2) => \pwm[7]_INST_0_i_2_n_1\,
      CO(1) => \pwm[7]_INST_0_i_2_n_2\,
      CO(0) => \pwm[7]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[7]_INST_0_i_12_n_0\,
      DI(2) => \pwm[7]_INST_0_i_13_n_0\,
      DI(1) => \pwm[7]_INST_0_i_14_n_0\,
      DI(0) => \pwm[7]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[7]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[7]_INST_0_i_16_n_0\,
      S(2) => \pwm[7]_INST_0_i_17_n_0\,
      S(1) => \pwm[7]_INST_0_i_18_n_0\,
      S(0) => \pwm[7]_INST_0_i_19_n_0\
    );
\pwm[7]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[7]_INST_0_i_20_n_0\,
      CO(2) => \pwm[7]_INST_0_i_20_n_1\,
      CO(1) => \pwm[7]_INST_0_i_20_n_2\,
      CO(0) => \pwm[7]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[7]_INST_0_i_29_n_0\,
      DI(2) => \pwm[7]_INST_0_i_30_n_0\,
      DI(1) => \pwm[7]_INST_0_i_31_n_0\,
      DI(0) => \pwm[7]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[7]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[7]_INST_0_i_33_n_0\,
      S(2) => \pwm[7]_INST_0_i_34_n_0\,
      S(1) => \pwm[7]_INST_0_i_35_n_0\,
      S(0) => \pwm[7]_INST_0_i_36_n_0\
    );
\pwm[7]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(15),
      O => \pwm[7]_INST_0_i_21_n_0\
    );
\pwm[7]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(13),
      O => \pwm[7]_INST_0_i_22_n_0\
    );
\pwm[7]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(11),
      O => \pwm[7]_INST_0_i_23_n_0\
    );
\pwm[7]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(9),
      O => \pwm[7]_INST_0_i_24_n_0\
    );
\pwm[7]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(14),
      I1 => count_reg(14),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(15),
      I3 => count_reg(15),
      O => \pwm[7]_INST_0_i_25_n_0\
    );
\pwm[7]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(12),
      I1 => count_reg(12),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(13),
      I3 => count_reg(13),
      O => \pwm[7]_INST_0_i_26_n_0\
    );
\pwm[7]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(10),
      I1 => count_reg(10),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(11),
      I3 => count_reg(11),
      O => \pwm[7]_INST_0_i_27_n_0\
    );
\pwm[7]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(8),
      I1 => count_reg(8),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(9),
      I3 => count_reg(9),
      O => \pwm[7]_INST_0_i_28_n_0\
    );
\pwm[7]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(7),
      O => \pwm[7]_INST_0_i_29_n_0\
    );
\pwm[7]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(31),
      O => \pwm[7]_INST_0_i_3_n_0\
    );
\pwm[7]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(5),
      O => \pwm[7]_INST_0_i_30_n_0\
    );
\pwm[7]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(3),
      O => \pwm[7]_INST_0_i_31_n_0\
    );
\pwm[7]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(1),
      O => \pwm[7]_INST_0_i_32_n_0\
    );
\pwm[7]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(6),
      I1 => count_reg(6),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(7),
      I3 => count_reg(7),
      O => \pwm[7]_INST_0_i_33_n_0\
    );
\pwm[7]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(4),
      I1 => count_reg(4),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(5),
      I3 => count_reg(5),
      O => \pwm[7]_INST_0_i_34_n_0\
    );
\pwm[7]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(2),
      I1 => count_reg(2),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(3),
      I3 => count_reg(3),
      O => \pwm[7]_INST_0_i_35_n_0\
    );
\pwm[7]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(0),
      I1 => count_reg(0),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(1),
      I3 => count_reg(1),
      O => \pwm[7]_INST_0_i_36_n_0\
    );
\pwm[7]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(29),
      O => \pwm[7]_INST_0_i_4_n_0\
    );
\pwm[7]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(27),
      O => \pwm[7]_INST_0_i_5_n_0\
    );
\pwm[7]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[7].duty_reg_latch_reg[7]_19\(25),
      O => \pwm[7]_INST_0_i_6_n_0\
    );
\pwm[7]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(30),
      I1 => count_reg(30),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(31),
      I3 => count_reg(31),
      O => \pwm[7]_INST_0_i_7_n_0\
    );
\pwm[7]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(28),
      I1 => count_reg(28),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(29),
      I3 => count_reg(29),
      O => \pwm[7]_INST_0_i_8_n_0\
    );
\pwm[7]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[7].duty_reg_latch_reg[7]_19\(26),
      I1 => count_reg(26),
      I2 => \genblk1[7].duty_reg_latch_reg[7]_19\(27),
      I3 => count_reg(27),
      O => \pwm[7]_INST_0_i_9_n_0\
    );
\pwm[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm114_in,
      I1 => enable,
      O => pwm(8)
    );
\pwm[8]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[8]_INST_0_i_2_n_0\,
      CO(3) => pwm114_in,
      CO(2) => \pwm[8]_INST_0_i_1_n_1\,
      CO(1) => \pwm[8]_INST_0_i_1_n_2\,
      CO(0) => \pwm[8]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[8]_INST_0_i_3_n_0\,
      DI(2) => \pwm[8]_INST_0_i_4_n_0\,
      DI(1) => \pwm[8]_INST_0_i_5_n_0\,
      DI(0) => \pwm[8]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[8]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[8]_INST_0_i_7_n_0\,
      S(2) => \pwm[8]_INST_0_i_8_n_0\,
      S(1) => \pwm[8]_INST_0_i_9_n_0\,
      S(0) => \pwm[8]_INST_0_i_10_n_0\
    );
\pwm[8]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(24),
      I1 => count_reg(24),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(25),
      I3 => count_reg(25),
      O => \pwm[8]_INST_0_i_10_n_0\
    );
\pwm[8]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[8]_INST_0_i_20_n_0\,
      CO(3) => \pwm[8]_INST_0_i_11_n_0\,
      CO(2) => \pwm[8]_INST_0_i_11_n_1\,
      CO(1) => \pwm[8]_INST_0_i_11_n_2\,
      CO(0) => \pwm[8]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[8]_INST_0_i_21_n_0\,
      DI(2) => \pwm[8]_INST_0_i_22_n_0\,
      DI(1) => \pwm[8]_INST_0_i_23_n_0\,
      DI(0) => \pwm[8]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[8]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[8]_INST_0_i_25_n_0\,
      S(2) => \pwm[8]_INST_0_i_26_n_0\,
      S(1) => \pwm[8]_INST_0_i_27_n_0\,
      S(0) => \pwm[8]_INST_0_i_28_n_0\
    );
\pwm[8]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(23),
      O => \pwm[8]_INST_0_i_12_n_0\
    );
\pwm[8]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(21),
      O => \pwm[8]_INST_0_i_13_n_0\
    );
\pwm[8]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(19),
      O => \pwm[8]_INST_0_i_14_n_0\
    );
\pwm[8]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(17),
      O => \pwm[8]_INST_0_i_15_n_0\
    );
\pwm[8]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(22),
      I1 => count_reg(22),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(23),
      I3 => count_reg(23),
      O => \pwm[8]_INST_0_i_16_n_0\
    );
\pwm[8]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(20),
      I1 => count_reg(20),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(21),
      I3 => count_reg(21),
      O => \pwm[8]_INST_0_i_17_n_0\
    );
\pwm[8]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(18),
      I1 => count_reg(18),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(19),
      I3 => count_reg(19),
      O => \pwm[8]_INST_0_i_18_n_0\
    );
\pwm[8]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(16),
      I1 => count_reg(16),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(17),
      I3 => count_reg(17),
      O => \pwm[8]_INST_0_i_19_n_0\
    );
\pwm[8]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[8]_INST_0_i_11_n_0\,
      CO(3) => \pwm[8]_INST_0_i_2_n_0\,
      CO(2) => \pwm[8]_INST_0_i_2_n_1\,
      CO(1) => \pwm[8]_INST_0_i_2_n_2\,
      CO(0) => \pwm[8]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[8]_INST_0_i_12_n_0\,
      DI(2) => \pwm[8]_INST_0_i_13_n_0\,
      DI(1) => \pwm[8]_INST_0_i_14_n_0\,
      DI(0) => \pwm[8]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[8]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[8]_INST_0_i_16_n_0\,
      S(2) => \pwm[8]_INST_0_i_17_n_0\,
      S(1) => \pwm[8]_INST_0_i_18_n_0\,
      S(0) => \pwm[8]_INST_0_i_19_n_0\
    );
\pwm[8]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[8]_INST_0_i_20_n_0\,
      CO(2) => \pwm[8]_INST_0_i_20_n_1\,
      CO(1) => \pwm[8]_INST_0_i_20_n_2\,
      CO(0) => \pwm[8]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[8]_INST_0_i_29_n_0\,
      DI(2) => \pwm[8]_INST_0_i_30_n_0\,
      DI(1) => \pwm[8]_INST_0_i_31_n_0\,
      DI(0) => \pwm[8]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[8]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[8]_INST_0_i_33_n_0\,
      S(2) => \pwm[8]_INST_0_i_34_n_0\,
      S(1) => \pwm[8]_INST_0_i_35_n_0\,
      S(0) => \pwm[8]_INST_0_i_36_n_0\
    );
\pwm[8]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(15),
      O => \pwm[8]_INST_0_i_21_n_0\
    );
\pwm[8]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(13),
      O => \pwm[8]_INST_0_i_22_n_0\
    );
\pwm[8]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(11),
      O => \pwm[8]_INST_0_i_23_n_0\
    );
\pwm[8]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(9),
      O => \pwm[8]_INST_0_i_24_n_0\
    );
\pwm[8]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(14),
      I1 => count_reg(14),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(15),
      I3 => count_reg(15),
      O => \pwm[8]_INST_0_i_25_n_0\
    );
\pwm[8]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(12),
      I1 => count_reg(12),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(13),
      I3 => count_reg(13),
      O => \pwm[8]_INST_0_i_26_n_0\
    );
\pwm[8]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(10),
      I1 => count_reg(10),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(11),
      I3 => count_reg(11),
      O => \pwm[8]_INST_0_i_27_n_0\
    );
\pwm[8]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(8),
      I1 => count_reg(8),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(9),
      I3 => count_reg(9),
      O => \pwm[8]_INST_0_i_28_n_0\
    );
\pwm[8]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(7),
      O => \pwm[8]_INST_0_i_29_n_0\
    );
\pwm[8]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(31),
      O => \pwm[8]_INST_0_i_3_n_0\
    );
\pwm[8]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(5),
      O => \pwm[8]_INST_0_i_30_n_0\
    );
\pwm[8]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(3),
      O => \pwm[8]_INST_0_i_31_n_0\
    );
\pwm[8]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(1),
      O => \pwm[8]_INST_0_i_32_n_0\
    );
\pwm[8]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(6),
      I1 => count_reg(6),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(7),
      I3 => count_reg(7),
      O => \pwm[8]_INST_0_i_33_n_0\
    );
\pwm[8]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(4),
      I1 => count_reg(4),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(5),
      I3 => count_reg(5),
      O => \pwm[8]_INST_0_i_34_n_0\
    );
\pwm[8]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(2),
      I1 => count_reg(2),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(3),
      I3 => count_reg(3),
      O => \pwm[8]_INST_0_i_35_n_0\
    );
\pwm[8]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(0),
      I1 => count_reg(0),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(1),
      I3 => count_reg(1),
      O => \pwm[8]_INST_0_i_36_n_0\
    );
\pwm[8]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(29),
      O => \pwm[8]_INST_0_i_4_n_0\
    );
\pwm[8]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(27),
      O => \pwm[8]_INST_0_i_5_n_0\
    );
\pwm[8]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[8].duty_reg_latch_reg[8]_20\(25),
      O => \pwm[8]_INST_0_i_6_n_0\
    );
\pwm[8]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(30),
      I1 => count_reg(30),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(31),
      I3 => count_reg(31),
      O => \pwm[8]_INST_0_i_7_n_0\
    );
\pwm[8]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(28),
      I1 => count_reg(28),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(29),
      I3 => count_reg(29),
      O => \pwm[8]_INST_0_i_8_n_0\
    );
\pwm[8]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[8].duty_reg_latch_reg[8]_20\(26),
      I1 => count_reg(26),
      I2 => \genblk1[8].duty_reg_latch_reg[8]_20\(27),
      I3 => count_reg(27),
      O => \pwm[8]_INST_0_i_9_n_0\
    );
\pwm[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pwm116_in,
      I1 => enable,
      O => pwm(9)
    );
\pwm[9]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[9]_INST_0_i_2_n_0\,
      CO(3) => pwm116_in,
      CO(2) => \pwm[9]_INST_0_i_1_n_1\,
      CO(1) => \pwm[9]_INST_0_i_1_n_2\,
      CO(0) => \pwm[9]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[9]_INST_0_i_3_n_0\,
      DI(2) => \pwm[9]_INST_0_i_4_n_0\,
      DI(1) => \pwm[9]_INST_0_i_5_n_0\,
      DI(0) => \pwm[9]_INST_0_i_6_n_0\,
      O(3 downto 0) => \NLW_pwm[9]_INST_0_i_1_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[9]_INST_0_i_7_n_0\,
      S(2) => \pwm[9]_INST_0_i_8_n_0\,
      S(1) => \pwm[9]_INST_0_i_9_n_0\,
      S(0) => \pwm[9]_INST_0_i_10_n_0\
    );
\pwm[9]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(24),
      I1 => count_reg(24),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(25),
      I3 => count_reg(25),
      O => \pwm[9]_INST_0_i_10_n_0\
    );
\pwm[9]_INST_0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[9]_INST_0_i_20_n_0\,
      CO(3) => \pwm[9]_INST_0_i_11_n_0\,
      CO(2) => \pwm[9]_INST_0_i_11_n_1\,
      CO(1) => \pwm[9]_INST_0_i_11_n_2\,
      CO(0) => \pwm[9]_INST_0_i_11_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[9]_INST_0_i_21_n_0\,
      DI(2) => \pwm[9]_INST_0_i_22_n_0\,
      DI(1) => \pwm[9]_INST_0_i_23_n_0\,
      DI(0) => \pwm[9]_INST_0_i_24_n_0\,
      O(3 downto 0) => \NLW_pwm[9]_INST_0_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[9]_INST_0_i_25_n_0\,
      S(2) => \pwm[9]_INST_0_i_26_n_0\,
      S(1) => \pwm[9]_INST_0_i_27_n_0\,
      S(0) => \pwm[9]_INST_0_i_28_n_0\
    );
\pwm[9]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(22),
      I1 => count_reg(22),
      I2 => count_reg(23),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(23),
      O => \pwm[9]_INST_0_i_12_n_0\
    );
\pwm[9]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(20),
      I1 => count_reg(20),
      I2 => count_reg(21),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(21),
      O => \pwm[9]_INST_0_i_13_n_0\
    );
\pwm[9]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(18),
      I1 => count_reg(18),
      I2 => count_reg(19),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(19),
      O => \pwm[9]_INST_0_i_14_n_0\
    );
\pwm[9]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(16),
      I1 => count_reg(16),
      I2 => count_reg(17),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(17),
      O => \pwm[9]_INST_0_i_15_n_0\
    );
\pwm[9]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(22),
      I1 => count_reg(22),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(23),
      I3 => count_reg(23),
      O => \pwm[9]_INST_0_i_16_n_0\
    );
\pwm[9]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(20),
      I1 => count_reg(20),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(21),
      I3 => count_reg(21),
      O => \pwm[9]_INST_0_i_17_n_0\
    );
\pwm[9]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(18),
      I1 => count_reg(18),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(19),
      I3 => count_reg(19),
      O => \pwm[9]_INST_0_i_18_n_0\
    );
\pwm[9]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(16),
      I1 => count_reg(16),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(17),
      I3 => count_reg(17),
      O => \pwm[9]_INST_0_i_19_n_0\
    );
\pwm[9]_INST_0_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \pwm[9]_INST_0_i_11_n_0\,
      CO(3) => \pwm[9]_INST_0_i_2_n_0\,
      CO(2) => \pwm[9]_INST_0_i_2_n_1\,
      CO(1) => \pwm[9]_INST_0_i_2_n_2\,
      CO(0) => \pwm[9]_INST_0_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[9]_INST_0_i_12_n_0\,
      DI(2) => \pwm[9]_INST_0_i_13_n_0\,
      DI(1) => \pwm[9]_INST_0_i_14_n_0\,
      DI(0) => \pwm[9]_INST_0_i_15_n_0\,
      O(3 downto 0) => \NLW_pwm[9]_INST_0_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[9]_INST_0_i_16_n_0\,
      S(2) => \pwm[9]_INST_0_i_17_n_0\,
      S(1) => \pwm[9]_INST_0_i_18_n_0\,
      S(0) => \pwm[9]_INST_0_i_19_n_0\
    );
\pwm[9]_INST_0_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pwm[9]_INST_0_i_20_n_0\,
      CO(2) => \pwm[9]_INST_0_i_20_n_1\,
      CO(1) => \pwm[9]_INST_0_i_20_n_2\,
      CO(0) => \pwm[9]_INST_0_i_20_n_3\,
      CYINIT => '0',
      DI(3) => \pwm[9]_INST_0_i_29_n_0\,
      DI(2) => \pwm[9]_INST_0_i_30_n_0\,
      DI(1) => \pwm[9]_INST_0_i_31_n_0\,
      DI(0) => \pwm[9]_INST_0_i_32_n_0\,
      O(3 downto 0) => \NLW_pwm[9]_INST_0_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm[9]_INST_0_i_33_n_0\,
      S(2) => \pwm[9]_INST_0_i_34_n_0\,
      S(1) => \pwm[9]_INST_0_i_35_n_0\,
      S(0) => \pwm[9]_INST_0_i_36_n_0\
    );
\pwm[9]_INST_0_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(14),
      I1 => count_reg(14),
      I2 => count_reg(15),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(15),
      O => \pwm[9]_INST_0_i_21_n_0\
    );
\pwm[9]_INST_0_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(12),
      I1 => count_reg(12),
      I2 => count_reg(13),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(13),
      O => \pwm[9]_INST_0_i_22_n_0\
    );
\pwm[9]_INST_0_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(10),
      I1 => count_reg(10),
      I2 => count_reg(11),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(11),
      O => \pwm[9]_INST_0_i_23_n_0\
    );
\pwm[9]_INST_0_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(8),
      I1 => count_reg(8),
      I2 => count_reg(9),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(9),
      O => \pwm[9]_INST_0_i_24_n_0\
    );
\pwm[9]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(14),
      I1 => count_reg(14),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(15),
      I3 => count_reg(15),
      O => \pwm[9]_INST_0_i_25_n_0\
    );
\pwm[9]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(12),
      I1 => count_reg(12),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(13),
      I3 => count_reg(13),
      O => \pwm[9]_INST_0_i_26_n_0\
    );
\pwm[9]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(10),
      I1 => count_reg(10),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(11),
      I3 => count_reg(11),
      O => \pwm[9]_INST_0_i_27_n_0\
    );
\pwm[9]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(8),
      I1 => count_reg(8),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(9),
      I3 => count_reg(9),
      O => \pwm[9]_INST_0_i_28_n_0\
    );
\pwm[9]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(6),
      I1 => count_reg(6),
      I2 => count_reg(7),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(7),
      O => \pwm[9]_INST_0_i_29_n_0\
    );
\pwm[9]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(30),
      I1 => count_reg(30),
      I2 => count_reg(31),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(31),
      O => \pwm[9]_INST_0_i_3_n_0\
    );
\pwm[9]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(4),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(5),
      O => \pwm[9]_INST_0_i_30_n_0\
    );
\pwm[9]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(2),
      I1 => count_reg(2),
      I2 => count_reg(3),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(3),
      O => \pwm[9]_INST_0_i_31_n_0\
    );
\pwm[9]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(0),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(1),
      O => \pwm[9]_INST_0_i_32_n_0\
    );
\pwm[9]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(6),
      I1 => count_reg(6),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(7),
      I3 => count_reg(7),
      O => \pwm[9]_INST_0_i_33_n_0\
    );
\pwm[9]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(4),
      I1 => count_reg(4),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(5),
      I3 => count_reg(5),
      O => \pwm[9]_INST_0_i_34_n_0\
    );
\pwm[9]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(2),
      I1 => count_reg(2),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(3),
      I3 => count_reg(3),
      O => \pwm[9]_INST_0_i_35_n_0\
    );
\pwm[9]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(0),
      I1 => count_reg(0),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(1),
      I3 => count_reg(1),
      O => \pwm[9]_INST_0_i_36_n_0\
    );
\pwm[9]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(28),
      I1 => count_reg(28),
      I2 => count_reg(29),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(29),
      O => \pwm[9]_INST_0_i_4_n_0\
    );
\pwm[9]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(26),
      I1 => count_reg(26),
      I2 => count_reg(27),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(27),
      O => \pwm[9]_INST_0_i_5_n_0\
    );
\pwm[9]_INST_0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(24),
      I1 => count_reg(24),
      I2 => count_reg(25),
      I3 => \genblk1[9].duty_reg_latch_reg[9]_21\(25),
      O => \pwm[9]_INST_0_i_6_n_0\
    );
\pwm[9]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(30),
      I1 => count_reg(30),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(31),
      I3 => count_reg(31),
      O => \pwm[9]_INST_0_i_7_n_0\
    );
\pwm[9]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(28),
      I1 => count_reg(28),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(29),
      I3 => count_reg(29),
      O => \pwm[9]_INST_0_i_8_n_0\
    );
\pwm[9]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \genblk1[9].duty_reg_latch_reg[9]_21\(26),
      I1 => count_reg(26),
      I2 => \genblk1[9].duty_reg_latch_reg[9]_21\(27),
      I3 => count_reg(27),
      O => \pwm[9]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_PWM_0_0 is
  port (
    pwm : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_awready : out STD_LOGIC;
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_wready : out STD_LOGIC;
    pwm_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_axi_bvalid : out STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_arready : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_axi_rvalid : out STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC;
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_PWM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_PWM_0_0 : entity is "system_PWM_0_0,PWM_v2_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_PWM_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_PWM_0_0 : entity is "PWM_v2_0,Vivado 2019.1";
end system_PWM_0_0;

architecture STRUCTURE of system_PWM_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pwm_axi_aclk : signal is "xilinx.com:signal:clock:1.0 PWM_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pwm_axi_aclk : signal is "XIL_INTERFACENAME PWM_AXI_CLK, ASSOCIATED_BUSIF PWM_AXI, ASSOCIATED_RESET pwm_axi_aresetn, FREQ_HZ 83333333, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pwm_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 PWM_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of pwm_axi_aresetn : signal is "XIL_INTERFACENAME PWM_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pwm_axi_arready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARREADY";
  attribute X_INTERFACE_INFO of pwm_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARVALID";
  attribute X_INTERFACE_INFO of pwm_axi_awready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWREADY";
  attribute X_INTERFACE_INFO of pwm_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWVALID";
  attribute X_INTERFACE_INFO of pwm_axi_bready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI BREADY";
  attribute X_INTERFACE_INFO of pwm_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI BVALID";
  attribute X_INTERFACE_INFO of pwm_axi_rready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of pwm_axi_rready : signal is "XIL_INTERFACENAME PWM_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 83333333, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_cl" & LF &
 "k, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pwm_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RVALID";
  attribute X_INTERFACE_INFO of pwm_axi_wready : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WREADY";
  attribute X_INTERFACE_INFO of pwm_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WVALID";
  attribute X_INTERFACE_INFO of pwm_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARADDR";
  attribute X_INTERFACE_INFO of pwm_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI ARPROT";
  attribute X_INTERFACE_INFO of pwm_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWADDR";
  attribute X_INTERFACE_INFO of pwm_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI AWPROT";
  attribute X_INTERFACE_INFO of pwm_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI BRESP";
  attribute X_INTERFACE_INFO of pwm_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RDATA";
  attribute X_INTERFACE_INFO of pwm_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI RRESP";
  attribute X_INTERFACE_INFO of pwm_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WDATA";
  attribute X_INTERFACE_INFO of pwm_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 PWM_AXI WSTRB";
begin
  pwm_axi_bresp(1) <= \<const0>\;
  pwm_axi_bresp(0) <= \<const0>\;
  pwm_axi_rresp(1) <= \<const0>\;
  pwm_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_PWM_0_0_PWM_v2_0
     port map (
      pwm(11 downto 0) => pwm(11 downto 0),
      pwm_axi_aclk => pwm_axi_aclk,
      pwm_axi_araddr(4 downto 0) => pwm_axi_araddr(6 downto 2),
      pwm_axi_aresetn => pwm_axi_aresetn,
      pwm_axi_arready => pwm_axi_arready,
      pwm_axi_arvalid => pwm_axi_arvalid,
      pwm_axi_awaddr(4 downto 0) => pwm_axi_awaddr(6 downto 2),
      pwm_axi_awready => pwm_axi_awready,
      pwm_axi_awvalid => pwm_axi_awvalid,
      pwm_axi_bready => pwm_axi_bready,
      pwm_axi_bvalid => pwm_axi_bvalid,
      pwm_axi_rdata(31 downto 0) => pwm_axi_rdata(31 downto 0),
      pwm_axi_rready => pwm_axi_rready,
      pwm_axi_rvalid => pwm_axi_rvalid,
      pwm_axi_wdata(31 downto 0) => pwm_axi_wdata(31 downto 0),
      pwm_axi_wready => pwm_axi_wready,
      pwm_axi_wstrb(3 downto 0) => pwm_axi_wstrb(3 downto 0),
      pwm_axi_wvalid => pwm_axi_wvalid
    );
end STRUCTURE;
