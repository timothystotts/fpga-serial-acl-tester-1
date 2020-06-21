// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue May 26 23:08:27 2020
// Host        : M3ENGINEERING running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/wa/Stotts-Homework-2019-Portfolio.git/ACL2-Experiment-AXI/IPI-BDs/system/ip/system_PWM_0_0/system_PWM_0_0_sim_netlist.v
// Design      : system_PWM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_PWM_0_0,PWM_v2_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PWM_v2_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module system_PWM_0_0
   (pwm,
    pwm_axi_awaddr,
    pwm_axi_awprot,
    pwm_axi_awvalid,
    pwm_axi_awready,
    pwm_axi_wdata,
    pwm_axi_wstrb,
    pwm_axi_wvalid,
    pwm_axi_wready,
    pwm_axi_bresp,
    pwm_axi_bvalid,
    pwm_axi_bready,
    pwm_axi_araddr,
    pwm_axi_arprot,
    pwm_axi_arvalid,
    pwm_axi_arready,
    pwm_axi_rdata,
    pwm_axi_rresp,
    pwm_axi_rvalid,
    pwm_axi_rready,
    pwm_axi_aclk,
    pwm_axi_aresetn);
  output [11:0]pwm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWADDR" *) input [6:0]pwm_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWPROT" *) input [2:0]pwm_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWVALID" *) input pwm_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI AWREADY" *) output pwm_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WDATA" *) input [31:0]pwm_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WSTRB" *) input [3:0]pwm_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WVALID" *) input pwm_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI WREADY" *) output pwm_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI BRESP" *) output [1:0]pwm_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI BVALID" *) output pwm_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI BREADY" *) input pwm_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARADDR" *) input [6:0]pwm_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARPROT" *) input [2:0]pwm_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARVALID" *) input pwm_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI ARREADY" *) output pwm_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RDATA" *) output [31:0]pwm_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RRESP" *) output [1:0]pwm_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RVALID" *) output pwm_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 PWM_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PWM_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 83333333, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_cl\nk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input pwm_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 PWM_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PWM_AXI_CLK, ASSOCIATED_BUSIF PWM_AXI, ASSOCIATED_RESET pwm_axi_aresetn, FREQ_HZ 83333333, PHASE 0, CLK_DOMAIN system_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input pwm_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 PWM_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PWM_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input pwm_axi_aresetn;

  wire \<const0> ;
  wire [11:0]pwm;
  wire pwm_axi_aclk;
  wire [6:0]pwm_axi_araddr;
  wire pwm_axi_aresetn;
  wire pwm_axi_arready;
  wire pwm_axi_arvalid;
  wire [6:0]pwm_axi_awaddr;
  wire pwm_axi_awready;
  wire pwm_axi_awvalid;
  wire pwm_axi_bready;
  wire pwm_axi_bvalid;
  wire [31:0]pwm_axi_rdata;
  wire pwm_axi_rready;
  wire pwm_axi_rvalid;
  wire [31:0]pwm_axi_wdata;
  wire pwm_axi_wready;
  wire [3:0]pwm_axi_wstrb;
  wire pwm_axi_wvalid;

  assign pwm_axi_bresp[1] = \<const0> ;
  assign pwm_axi_bresp[0] = \<const0> ;
  assign pwm_axi_rresp[1] = \<const0> ;
  assign pwm_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  system_PWM_0_0_PWM_v2_0 inst
       (.pwm(pwm),
        .pwm_axi_aclk(pwm_axi_aclk),
        .pwm_axi_araddr(pwm_axi_araddr[6:2]),
        .pwm_axi_aresetn(pwm_axi_aresetn),
        .pwm_axi_arready(pwm_axi_arready),
        .pwm_axi_arvalid(pwm_axi_arvalid),
        .pwm_axi_awaddr(pwm_axi_awaddr[6:2]),
        .pwm_axi_awready(pwm_axi_awready),
        .pwm_axi_awvalid(pwm_axi_awvalid),
        .pwm_axi_bready(pwm_axi_bready),
        .pwm_axi_bvalid(pwm_axi_bvalid),
        .pwm_axi_rdata(pwm_axi_rdata),
        .pwm_axi_rready(pwm_axi_rready),
        .pwm_axi_rvalid(pwm_axi_rvalid),
        .pwm_axi_wdata(pwm_axi_wdata),
        .pwm_axi_wready(pwm_axi_wready),
        .pwm_axi_wstrb(pwm_axi_wstrb),
        .pwm_axi_wvalid(pwm_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "PWM_AXI" *) 
module system_PWM_0_0_PWM_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    Q,
    \duty_reg_reg[1][31]_0 ,
    \duty_reg_reg[2][31]_0 ,
    \duty_reg_reg[3][31]_0 ,
    \duty_reg_reg[4][31]_0 ,
    \duty_reg_reg[5][31]_0 ,
    \duty_reg_reg[6][31]_0 ,
    \duty_reg_reg[7][31]_0 ,
    \duty_reg_reg[8][31]_0 ,
    \duty_reg_reg[9][31]_0 ,
    \duty_reg_reg[10][31]_0 ,
    \duty_reg_reg[11][31]_0 ,
    \period_reg_reg[31]_0 ,
    \ctrl_reg_reg[0]_0 ,
    S_AXI_ARREADY,
    pwm_axi_rdata,
    pwm_axi_rvalid,
    pwm_axi_bvalid,
    pwm_axi_aclk,
    pwm_axi_awaddr,
    pwm_axi_wdata,
    pwm_axi_araddr,
    pwm_axi_wstrb,
    pwm_axi_awvalid,
    pwm_axi_wvalid,
    pwm_axi_arvalid,
    pwm_axi_aresetn,
    pwm_axi_bready,
    pwm_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]Q;
  output [31:0]\duty_reg_reg[1][31]_0 ;
  output [31:0]\duty_reg_reg[2][31]_0 ;
  output [31:0]\duty_reg_reg[3][31]_0 ;
  output [31:0]\duty_reg_reg[4][31]_0 ;
  output [31:0]\duty_reg_reg[5][31]_0 ;
  output [31:0]\duty_reg_reg[6][31]_0 ;
  output [31:0]\duty_reg_reg[7][31]_0 ;
  output [31:0]\duty_reg_reg[8][31]_0 ;
  output [31:0]\duty_reg_reg[9][31]_0 ;
  output [31:0]\duty_reg_reg[10][31]_0 ;
  output [31:0]\duty_reg_reg[11][31]_0 ;
  output [31:0]\period_reg_reg[31]_0 ;
  output [0:0]\ctrl_reg_reg[0]_0 ;
  output S_AXI_ARREADY;
  output [31:0]pwm_axi_rdata;
  output pwm_axi_rvalid;
  output pwm_axi_bvalid;
  input pwm_axi_aclk;
  input [4:0]pwm_axi_awaddr;
  input [31:0]pwm_axi_wdata;
  input [4:0]pwm_axi_araddr;
  input [3:0]pwm_axi_wstrb;
  input pwm_axi_awvalid;
  input pwm_axi_wvalid;
  input pwm_axi_arvalid;
  input pwm_axi_aresetn;
  input pwm_axi_bready;
  input pwm_axi_rready;

  wire [31:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire \axi_araddr_reg_n_0_[6] ;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[0]_i_4_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[10]_i_4_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[11]_i_4_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[12]_i_4_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[13]_i_4_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[14]_i_4_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[15]_i_4_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[16]_i_4_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[17]_i_4_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[18]_i_4_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[19]_i_4_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[1]_i_4_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[20]_i_4_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[21]_i_4_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[22]_i_4_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[23]_i_4_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[24]_i_4_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[25]_i_4_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[26]_i_4_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[27]_i_4_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[28]_i_4_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[29]_i_4_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[2]_i_1_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[2]_i_4_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[30]_i_4_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire \axi_rdata[31]_i_5_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[3]_i_1_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[3]_i_4_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[4]_i_1_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[4]_i_4_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[5]_i_1_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[5]_i_4_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[6]_i_1_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[6]_i_4_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[7]_i_1_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[7]_i_4_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[8]_i_1_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[8]_i_4_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire \axi_rdata[9]_i_4_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata_reg[0]_i_2_n_0 ;
  wire \axi_rdata_reg[10]_i_2_n_0 ;
  wire \axi_rdata_reg[11]_i_2_n_0 ;
  wire \axi_rdata_reg[12]_i_2_n_0 ;
  wire \axi_rdata_reg[13]_i_2_n_0 ;
  wire \axi_rdata_reg[14]_i_2_n_0 ;
  wire \axi_rdata_reg[15]_i_2_n_0 ;
  wire \axi_rdata_reg[16]_i_2_n_0 ;
  wire \axi_rdata_reg[17]_i_2_n_0 ;
  wire \axi_rdata_reg[18]_i_2_n_0 ;
  wire \axi_rdata_reg[19]_i_2_n_0 ;
  wire \axi_rdata_reg[1]_i_2_n_0 ;
  wire \axi_rdata_reg[20]_i_2_n_0 ;
  wire \axi_rdata_reg[21]_i_2_n_0 ;
  wire \axi_rdata_reg[22]_i_2_n_0 ;
  wire \axi_rdata_reg[23]_i_2_n_0 ;
  wire \axi_rdata_reg[24]_i_2_n_0 ;
  wire \axi_rdata_reg[25]_i_2_n_0 ;
  wire \axi_rdata_reg[26]_i_2_n_0 ;
  wire \axi_rdata_reg[27]_i_2_n_0 ;
  wire \axi_rdata_reg[28]_i_2_n_0 ;
  wire \axi_rdata_reg[29]_i_2_n_0 ;
  wire \axi_rdata_reg[2]_i_2_n_0 ;
  wire \axi_rdata_reg[30]_i_2_n_0 ;
  wire \axi_rdata_reg[31]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_2_n_0 ;
  wire \axi_rdata_reg[4]_i_2_n_0 ;
  wire \axi_rdata_reg[5]_i_2_n_0 ;
  wire \axi_rdata_reg[6]_i_2_n_0 ;
  wire \axi_rdata_reg[7]_i_2_n_0 ;
  wire \axi_rdata_reg[8]_i_2_n_0 ;
  wire \axi_rdata_reg[9]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire \ctrl_reg[15]_i_1_n_0 ;
  wire \ctrl_reg[23]_i_1_n_0 ;
  wire \ctrl_reg[31]_i_1_n_0 ;
  wire \ctrl_reg[31]_i_2_n_0 ;
  wire \ctrl_reg[7]_i_1_n_0 ;
  wire [0:0]\ctrl_reg_reg[0]_0 ;
  wire \ctrl_reg_reg_n_0_[10] ;
  wire \ctrl_reg_reg_n_0_[11] ;
  wire \ctrl_reg_reg_n_0_[12] ;
  wire \ctrl_reg_reg_n_0_[13] ;
  wire \ctrl_reg_reg_n_0_[14] ;
  wire \ctrl_reg_reg_n_0_[15] ;
  wire \ctrl_reg_reg_n_0_[16] ;
  wire \ctrl_reg_reg_n_0_[17] ;
  wire \ctrl_reg_reg_n_0_[18] ;
  wire \ctrl_reg_reg_n_0_[19] ;
  wire \ctrl_reg_reg_n_0_[1] ;
  wire \ctrl_reg_reg_n_0_[20] ;
  wire \ctrl_reg_reg_n_0_[21] ;
  wire \ctrl_reg_reg_n_0_[22] ;
  wire \ctrl_reg_reg_n_0_[23] ;
  wire \ctrl_reg_reg_n_0_[24] ;
  wire \ctrl_reg_reg_n_0_[25] ;
  wire \ctrl_reg_reg_n_0_[26] ;
  wire \ctrl_reg_reg_n_0_[27] ;
  wire \ctrl_reg_reg_n_0_[28] ;
  wire \ctrl_reg_reg_n_0_[29] ;
  wire \ctrl_reg_reg_n_0_[2] ;
  wire \ctrl_reg_reg_n_0_[30] ;
  wire \ctrl_reg_reg_n_0_[31] ;
  wire \ctrl_reg_reg_n_0_[3] ;
  wire \ctrl_reg_reg_n_0_[4] ;
  wire \ctrl_reg_reg_n_0_[5] ;
  wire \ctrl_reg_reg_n_0_[6] ;
  wire \ctrl_reg_reg_n_0_[7] ;
  wire \ctrl_reg_reg_n_0_[8] ;
  wire \ctrl_reg_reg_n_0_[9] ;
  wire \duty_reg[0][31]_i_2_n_0 ;
  wire \duty_reg[0][31]_i_3_n_0 ;
  wire \duty_reg[10][15]_i_1_n_0 ;
  wire \duty_reg[10][23]_i_1_n_0 ;
  wire \duty_reg[10][31]_i_1_n_0 ;
  wire \duty_reg[10][31]_i_2_n_0 ;
  wire \duty_reg[10][7]_i_1_n_0 ;
  wire \duty_reg[11][15]_i_1_n_0 ;
  wire \duty_reg[11][23]_i_1_n_0 ;
  wire \duty_reg[11][31]_i_1_n_0 ;
  wire \duty_reg[11][31]_i_2_n_0 ;
  wire \duty_reg[11][7]_i_1_n_0 ;
  wire \duty_reg[1][15]_i_1_n_0 ;
  wire \duty_reg[1][23]_i_1_n_0 ;
  wire \duty_reg[1][31]_i_1_n_0 ;
  wire \duty_reg[1][31]_i_2_n_0 ;
  wire \duty_reg[1][7]_i_1_n_0 ;
  wire \duty_reg[2][15]_i_1_n_0 ;
  wire \duty_reg[2][23]_i_1_n_0 ;
  wire \duty_reg[2][31]_i_1_n_0 ;
  wire \duty_reg[2][31]_i_2_n_0 ;
  wire \duty_reg[2][7]_i_1_n_0 ;
  wire \duty_reg[3][15]_i_1_n_0 ;
  wire \duty_reg[3][23]_i_1_n_0 ;
  wire \duty_reg[3][31]_i_1_n_0 ;
  wire \duty_reg[3][31]_i_2_n_0 ;
  wire \duty_reg[3][7]_i_1_n_0 ;
  wire \duty_reg[4][15]_i_1_n_0 ;
  wire \duty_reg[4][23]_i_1_n_0 ;
  wire \duty_reg[4][31]_i_1_n_0 ;
  wire \duty_reg[4][31]_i_2_n_0 ;
  wire \duty_reg[4][7]_i_1_n_0 ;
  wire \duty_reg[5][15]_i_1_n_0 ;
  wire \duty_reg[5][23]_i_1_n_0 ;
  wire \duty_reg[5][31]_i_1_n_0 ;
  wire \duty_reg[5][7]_i_1_n_0 ;
  wire \duty_reg[6][15]_i_1_n_0 ;
  wire \duty_reg[6][23]_i_1_n_0 ;
  wire \duty_reg[6][31]_i_1_n_0 ;
  wire \duty_reg[6][7]_i_1_n_0 ;
  wire \duty_reg[7][15]_i_1_n_0 ;
  wire \duty_reg[7][23]_i_1_n_0 ;
  wire \duty_reg[7][31]_i_1_n_0 ;
  wire \duty_reg[7][7]_i_1_n_0 ;
  wire \duty_reg[8][15]_i_1_n_0 ;
  wire \duty_reg[8][23]_i_1_n_0 ;
  wire \duty_reg[8][31]_i_1_n_0 ;
  wire \duty_reg[8][31]_i_2_n_0 ;
  wire \duty_reg[8][7]_i_1_n_0 ;
  wire \duty_reg[9][15]_i_1_n_0 ;
  wire \duty_reg[9][23]_i_1_n_0 ;
  wire \duty_reg[9][31]_i_1_n_0 ;
  wire \duty_reg[9][31]_i_2_n_0 ;
  wire \duty_reg[9][7]_i_1_n_0 ;
  wire [31:0]\duty_reg_reg[10][31]_0 ;
  wire [31:0]\duty_reg_reg[11][31]_0 ;
  wire [31:0]\duty_reg_reg[1][31]_0 ;
  wire [31:0]\duty_reg_reg[2][31]_0 ;
  wire [31:0]\duty_reg_reg[3][31]_0 ;
  wire [31:0]\duty_reg_reg[4][31]_0 ;
  wire [31:0]\duty_reg_reg[5][31]_0 ;
  wire [31:0]\duty_reg_reg[6][31]_0 ;
  wire [31:0]\duty_reg_reg[7][31]_0 ;
  wire [31:0]\duty_reg_reg[8][31]_0 ;
  wire [31:0]\duty_reg_reg[9][31]_0 ;
  wire [4:0]p_0_in;
  wire [31:7]p_1_in;
  wire \period_reg[15]_i_1_n_0 ;
  wire \period_reg[23]_i_1_n_0 ;
  wire \period_reg[31]_i_1_n_0 ;
  wire \period_reg[31]_i_2_n_0 ;
  wire \period_reg[7]_i_1_n_0 ;
  wire [31:0]\period_reg_reg[31]_0 ;
  wire pwm_axi_aclk;
  wire [4:0]pwm_axi_araddr;
  wire pwm_axi_aresetn;
  wire pwm_axi_arvalid;
  wire [4:0]pwm_axi_awaddr;
  wire pwm_axi_awvalid;
  wire pwm_axi_bready;
  wire pwm_axi_bvalid;
  wire [31:0]pwm_axi_rdata;
  wire pwm_axi_rready;
  wire pwm_axi_rvalid;
  wire [31:0]pwm_axi_wdata;
  wire [3:0]pwm_axi_wstrb;
  wire pwm_axi_wvalid;
  wire [3:0]sel0;
  wire slv_reg_rden;
  wire \status_reg[15]_i_1_n_0 ;
  wire \status_reg[23]_i_1_n_0 ;
  wire \status_reg[31]_i_1_n_0 ;
  wire \status_reg[31]_i_2_n_0 ;
  wire \status_reg[7]_i_1_n_0 ;
  wire \status_reg_reg_n_0_[0] ;
  wire \status_reg_reg_n_0_[10] ;
  wire \status_reg_reg_n_0_[11] ;
  wire \status_reg_reg_n_0_[12] ;
  wire \status_reg_reg_n_0_[13] ;
  wire \status_reg_reg_n_0_[14] ;
  wire \status_reg_reg_n_0_[15] ;
  wire \status_reg_reg_n_0_[16] ;
  wire \status_reg_reg_n_0_[17] ;
  wire \status_reg_reg_n_0_[18] ;
  wire \status_reg_reg_n_0_[19] ;
  wire \status_reg_reg_n_0_[1] ;
  wire \status_reg_reg_n_0_[20] ;
  wire \status_reg_reg_n_0_[21] ;
  wire \status_reg_reg_n_0_[22] ;
  wire \status_reg_reg_n_0_[23] ;
  wire \status_reg_reg_n_0_[24] ;
  wire \status_reg_reg_n_0_[25] ;
  wire \status_reg_reg_n_0_[26] ;
  wire \status_reg_reg_n_0_[27] ;
  wire \status_reg_reg_n_0_[28] ;
  wire \status_reg_reg_n_0_[29] ;
  wire \status_reg_reg_n_0_[2] ;
  wire \status_reg_reg_n_0_[30] ;
  wire \status_reg_reg_n_0_[31] ;
  wire \status_reg_reg_n_0_[3] ;
  wire \status_reg_reg_n_0_[4] ;
  wire \status_reg_reg_n_0_[5] ;
  wire \status_reg_reg_n_0_[6] ;
  wire \status_reg_reg_n_0_[7] ;
  wire \status_reg_reg_n_0_[8] ;
  wire \status_reg_reg_n_0_[9] ;

  FDRE \axi_araddr_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(axi_arready0),
        .D(pwm_axi_araddr[0]),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(axi_arready0),
        .D(pwm_axi_araddr[1]),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(axi_arready0),
        .D(pwm_axi_araddr[2]),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(axi_arready0),
        .D(pwm_axi_araddr[3]),
        .Q(sel0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(axi_arready0),
        .D(pwm_axi_araddr[4]),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(pwm_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(axi_awready0),
        .D(pwm_axi_awaddr[0]),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(axi_awready0),
        .D(pwm_axi_awaddr[1]),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(axi_awready0),
        .D(pwm_axi_awaddr[2]),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(axi_awready0),
        .D(pwm_axi_awaddr[3]),
        .Q(p_0_in[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(axi_awready0),
        .D(pwm_axi_awaddr[4]),
        .Q(p_0_in[4]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(pwm_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(pwm_axi_awvalid),
        .I1(pwm_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(pwm_axi_bready),
        .I1(pwm_axi_bvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(pwm_axi_awvalid),
        .I5(pwm_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(pwm_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata_reg[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[0]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [0]),
        .I1(\duty_reg_reg[10][31]_0 [0]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [0]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_4 
       (.I0(\period_reg_reg[31]_0 [0]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[0] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg[0]_0 ),
        .O(\axi_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [0]),
        .I1(\duty_reg_reg[2][31]_0 [0]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [0]),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [0]),
        .I1(\duty_reg_reg[6][31]_0 [0]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [0]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata_reg[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[10]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [10]),
        .I1(\duty_reg_reg[10][31]_0 [10]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [10]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[10]_i_4 
       (.I0(\period_reg_reg[31]_0 [10]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[10] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [10]),
        .I1(\duty_reg_reg[2][31]_0 [10]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [10]),
        .I4(sel0[0]),
        .I5(Q[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [10]),
        .I1(\duty_reg_reg[6][31]_0 [10]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [10]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata_reg[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[11]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [11]),
        .I1(\duty_reg_reg[10][31]_0 [11]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [11]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[11]_i_4 
       (.I0(\period_reg_reg[31]_0 [11]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[11] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [11]),
        .I1(\duty_reg_reg[2][31]_0 [11]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [11]),
        .I4(sel0[0]),
        .I5(Q[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [11]),
        .I1(\duty_reg_reg[6][31]_0 [11]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [11]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata_reg[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[12]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [12]),
        .I1(\duty_reg_reg[10][31]_0 [12]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [12]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[12]_i_4 
       (.I0(\period_reg_reg[31]_0 [12]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[12] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[12] ),
        .O(\axi_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [12]),
        .I1(\duty_reg_reg[2][31]_0 [12]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [12]),
        .I4(sel0[0]),
        .I5(Q[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [12]),
        .I1(\duty_reg_reg[6][31]_0 [12]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [12]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata_reg[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[13]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [13]),
        .I1(\duty_reg_reg[10][31]_0 [13]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [13]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[13]_i_4 
       (.I0(\period_reg_reg[31]_0 [13]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[13] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[13] ),
        .O(\axi_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [13]),
        .I1(\duty_reg_reg[2][31]_0 [13]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [13]),
        .I4(sel0[0]),
        .I5(Q[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [13]),
        .I1(\duty_reg_reg[6][31]_0 [13]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [13]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata_reg[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[14]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [14]),
        .I1(\duty_reg_reg[10][31]_0 [14]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [14]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[14]_i_4 
       (.I0(\period_reg_reg[31]_0 [14]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[14] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[14] ),
        .O(\axi_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [14]),
        .I1(\duty_reg_reg[2][31]_0 [14]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [14]),
        .I4(sel0[0]),
        .I5(Q[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [14]),
        .I1(\duty_reg_reg[6][31]_0 [14]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [14]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata_reg[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[15]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [15]),
        .I1(\duty_reg_reg[10][31]_0 [15]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [15]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_4 
       (.I0(\period_reg_reg[31]_0 [15]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[15] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[15] ),
        .O(\axi_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [15]),
        .I1(\duty_reg_reg[2][31]_0 [15]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [15]),
        .I4(sel0[0]),
        .I5(Q[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [15]),
        .I1(\duty_reg_reg[6][31]_0 [15]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [15]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata_reg[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[16]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [16]),
        .I1(\duty_reg_reg[10][31]_0 [16]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [16]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[16]_i_4 
       (.I0(\period_reg_reg[31]_0 [16]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[16] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [16]),
        .I1(\duty_reg_reg[2][31]_0 [16]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [16]),
        .I4(sel0[0]),
        .I5(Q[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [16]),
        .I1(\duty_reg_reg[6][31]_0 [16]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [16]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata_reg[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[17]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [17]),
        .I1(\duty_reg_reg[10][31]_0 [17]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [17]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_4 
       (.I0(\period_reg_reg[31]_0 [17]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[17] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [17]),
        .I1(\duty_reg_reg[2][31]_0 [17]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [17]),
        .I4(sel0[0]),
        .I5(Q[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [17]),
        .I1(\duty_reg_reg[6][31]_0 [17]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [17]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata_reg[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[18]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [18]),
        .I1(\duty_reg_reg[10][31]_0 [18]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [18]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_4 
       (.I0(\period_reg_reg[31]_0 [18]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[18] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[18] ),
        .O(\axi_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [18]),
        .I1(\duty_reg_reg[2][31]_0 [18]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [18]),
        .I4(sel0[0]),
        .I5(Q[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [18]),
        .I1(\duty_reg_reg[6][31]_0 [18]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [18]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata_reg[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[19]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [19]),
        .I1(\duty_reg_reg[10][31]_0 [19]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [19]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[19]_i_4 
       (.I0(\period_reg_reg[31]_0 [19]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[19] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[19] ),
        .O(\axi_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [19]),
        .I1(\duty_reg_reg[2][31]_0 [19]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [19]),
        .I4(sel0[0]),
        .I5(Q[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [19]),
        .I1(\duty_reg_reg[6][31]_0 [19]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [19]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata_reg[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[1]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [1]),
        .I1(\duty_reg_reg[10][31]_0 [1]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [1]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_4 
       (.I0(\period_reg_reg[31]_0 [1]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[1] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [1]),
        .I1(\duty_reg_reg[2][31]_0 [1]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [1]),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [1]),
        .I1(\duty_reg_reg[6][31]_0 [1]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [1]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata_reg[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[20]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [20]),
        .I1(\duty_reg_reg[10][31]_0 [20]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [20]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[20]_i_4 
       (.I0(\period_reg_reg[31]_0 [20]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[20] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[20] ),
        .O(\axi_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [20]),
        .I1(\duty_reg_reg[2][31]_0 [20]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [20]),
        .I4(sel0[0]),
        .I5(Q[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [20]),
        .I1(\duty_reg_reg[6][31]_0 [20]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [20]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata_reg[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[21]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [21]),
        .I1(\duty_reg_reg[10][31]_0 [21]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [21]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[21]_i_4 
       (.I0(\period_reg_reg[31]_0 [21]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[21] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[21] ),
        .O(\axi_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [21]),
        .I1(\duty_reg_reg[2][31]_0 [21]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [21]),
        .I4(sel0[0]),
        .I5(Q[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [21]),
        .I1(\duty_reg_reg[6][31]_0 [21]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [21]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata_reg[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[22]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [22]),
        .I1(\duty_reg_reg[10][31]_0 [22]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [22]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_4 
       (.I0(\period_reg_reg[31]_0 [22]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[22] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[22] ),
        .O(\axi_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [22]),
        .I1(\duty_reg_reg[2][31]_0 [22]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [22]),
        .I4(sel0[0]),
        .I5(Q[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [22]),
        .I1(\duty_reg_reg[6][31]_0 [22]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [22]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata_reg[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[23]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [23]),
        .I1(\duty_reg_reg[10][31]_0 [23]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [23]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_4 
       (.I0(\period_reg_reg[31]_0 [23]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[23] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[23] ),
        .O(\axi_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [23]),
        .I1(\duty_reg_reg[2][31]_0 [23]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [23]),
        .I4(sel0[0]),
        .I5(Q[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [23]),
        .I1(\duty_reg_reg[6][31]_0 [23]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [23]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata_reg[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[24]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [24]),
        .I1(\duty_reg_reg[10][31]_0 [24]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [24]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[24]_i_4 
       (.I0(\period_reg_reg[31]_0 [24]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[24] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[24] ),
        .O(\axi_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [24]),
        .I1(\duty_reg_reg[2][31]_0 [24]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [24]),
        .I4(sel0[0]),
        .I5(Q[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [24]),
        .I1(\duty_reg_reg[6][31]_0 [24]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [24]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata_reg[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[25]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [25]),
        .I1(\duty_reg_reg[10][31]_0 [25]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [25]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_4 
       (.I0(\period_reg_reg[31]_0 [25]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[25] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[25] ),
        .O(\axi_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [25]),
        .I1(\duty_reg_reg[2][31]_0 [25]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [25]),
        .I4(sel0[0]),
        .I5(Q[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [25]),
        .I1(\duty_reg_reg[6][31]_0 [25]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [25]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata_reg[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[26]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [26]),
        .I1(\duty_reg_reg[10][31]_0 [26]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [26]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[26]_i_4 
       (.I0(\period_reg_reg[31]_0 [26]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[26] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[26] ),
        .O(\axi_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [26]),
        .I1(\duty_reg_reg[2][31]_0 [26]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [26]),
        .I4(sel0[0]),
        .I5(Q[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [26]),
        .I1(\duty_reg_reg[6][31]_0 [26]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [26]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata_reg[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[27]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [27]),
        .I1(\duty_reg_reg[10][31]_0 [27]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [27]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_4 
       (.I0(\period_reg_reg[31]_0 [27]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[27] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[27] ),
        .O(\axi_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [27]),
        .I1(\duty_reg_reg[2][31]_0 [27]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [27]),
        .I4(sel0[0]),
        .I5(Q[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [27]),
        .I1(\duty_reg_reg[6][31]_0 [27]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [27]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata_reg[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[28]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [28]),
        .I1(\duty_reg_reg[10][31]_0 [28]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [28]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_4 
       (.I0(\period_reg_reg[31]_0 [28]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[28] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[28] ),
        .O(\axi_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [28]),
        .I1(\duty_reg_reg[2][31]_0 [28]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [28]),
        .I4(sel0[0]),
        .I5(Q[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [28]),
        .I1(\duty_reg_reg[6][31]_0 [28]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [28]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata_reg[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[29]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [29]),
        .I1(\duty_reg_reg[10][31]_0 [29]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [29]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_4 
       (.I0(\period_reg_reg[31]_0 [29]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[29] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[29] ),
        .O(\axi_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [29]),
        .I1(\duty_reg_reg[2][31]_0 [29]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [29]),
        .I4(sel0[0]),
        .I5(Q[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [29]),
        .I1(\duty_reg_reg[6][31]_0 [29]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [29]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata_reg[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[2]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [2]),
        .I1(\duty_reg_reg[10][31]_0 [2]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [2]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_4 
       (.I0(\period_reg_reg[31]_0 [2]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[2] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[2] ),
        .O(\axi_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [2]),
        .I1(\duty_reg_reg[2][31]_0 [2]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [2]),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [2]),
        .I1(\duty_reg_reg[6][31]_0 [2]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [2]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata_reg[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[30]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [30]),
        .I1(\duty_reg_reg[10][31]_0 [30]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [30]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_4 
       (.I0(\period_reg_reg[31]_0 [30]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[30] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[30] ),
        .O(\axi_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [30]),
        .I1(\duty_reg_reg[2][31]_0 [30]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [30]),
        .I4(sel0[0]),
        .I5(Q[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [30]),
        .I1(\duty_reg_reg[6][31]_0 [30]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [30]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(pwm_axi_arvalid),
        .I1(pwm_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata_reg[31]_i_3_n_0 ),
        .I1(\axi_rdata[31]_i_4_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[31]_i_5_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_4 
       (.I0(\duty_reg_reg[11][31]_0 [31]),
        .I1(\duty_reg_reg[10][31]_0 [31]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [31]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [31]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_5 
       (.I0(\period_reg_reg[31]_0 [31]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[31] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[31] ),
        .O(\axi_rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(\duty_reg_reg[3][31]_0 [31]),
        .I1(\duty_reg_reg[2][31]_0 [31]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [31]),
        .I4(sel0[0]),
        .I5(Q[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(\duty_reg_reg[7][31]_0 [31]),
        .I1(\duty_reg_reg[6][31]_0 [31]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [31]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata_reg[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[3]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [3]),
        .I1(\duty_reg_reg[10][31]_0 [3]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [3]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_4 
       (.I0(\period_reg_reg[31]_0 [3]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[3] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [3]),
        .I1(\duty_reg_reg[2][31]_0 [3]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [3]),
        .I4(sel0[0]),
        .I5(Q[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [3]),
        .I1(\duty_reg_reg[6][31]_0 [3]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [3]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata_reg[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[4]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [4]),
        .I1(\duty_reg_reg[10][31]_0 [4]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [4]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[4]_i_4 
       (.I0(\period_reg_reg[31]_0 [4]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[4] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [4]),
        .I1(\duty_reg_reg[2][31]_0 [4]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [4]),
        .I4(sel0[0]),
        .I5(Q[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [4]),
        .I1(\duty_reg_reg[6][31]_0 [4]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [4]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata_reg[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[5]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [5]),
        .I1(\duty_reg_reg[10][31]_0 [5]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [5]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[5]_i_4 
       (.I0(\period_reg_reg[31]_0 [5]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[5] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [5]),
        .I1(\duty_reg_reg[2][31]_0 [5]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [5]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [5]),
        .I1(\duty_reg_reg[6][31]_0 [5]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [5]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata_reg[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[6]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [6]),
        .I1(\duty_reg_reg[10][31]_0 [6]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [6]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[6]_i_4 
       (.I0(\period_reg_reg[31]_0 [6]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[6] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[6] ),
        .O(\axi_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [6]),
        .I1(\duty_reg_reg[2][31]_0 [6]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [6]),
        .I4(sel0[0]),
        .I5(Q[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [6]),
        .I1(\duty_reg_reg[6][31]_0 [6]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [6]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata_reg[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[7]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [7]),
        .I1(\duty_reg_reg[10][31]_0 [7]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [7]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[7]_i_4 
       (.I0(\period_reg_reg[31]_0 [7]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[7] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[7] ),
        .O(\axi_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [7]),
        .I1(\duty_reg_reg[2][31]_0 [7]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [7]),
        .I4(sel0[0]),
        .I5(Q[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [7]),
        .I1(\duty_reg_reg[6][31]_0 [7]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [7]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata_reg[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[8]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [8]),
        .I1(\duty_reg_reg[10][31]_0 [8]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [8]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[8]_i_4 
       (.I0(\period_reg_reg[31]_0 [8]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[8] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [8]),
        .I1(\duty_reg_reg[2][31]_0 [8]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [8]),
        .I4(sel0[0]),
        .I5(Q[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [8]),
        .I1(\duty_reg_reg[6][31]_0 [8]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [8]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0A000A00CA0FCA00)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata_reg[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .I2(sel0[3]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .I4(\axi_rdata[9]_i_4_n_0 ),
        .I5(sel0[2]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(\duty_reg_reg[11][31]_0 [9]),
        .I1(\duty_reg_reg[10][31]_0 [9]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[9][31]_0 [9]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[8][31]_0 [9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[9]_i_4 
       (.I0(\period_reg_reg[31]_0 [9]),
        .I1(sel0[1]),
        .I2(\status_reg_reg_n_0_[9] ),
        .I3(sel0[0]),
        .I4(\ctrl_reg_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(\duty_reg_reg[3][31]_0 [9]),
        .I1(\duty_reg_reg[2][31]_0 [9]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[1][31]_0 [9]),
        .I4(sel0[0]),
        .I5(Q[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(\duty_reg_reg[7][31]_0 [9]),
        .I1(\duty_reg_reg[6][31]_0 [9]),
        .I2(sel0[1]),
        .I3(\duty_reg_reg[5][31]_0 [9]),
        .I4(sel0[0]),
        .I5(\duty_reg_reg[4][31]_0 [9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[0]_i_1_n_0 ),
        .Q(pwm_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[0]_i_2 
       (.I0(\axi_rdata[0]_i_5_n_0 ),
        .I1(\axi_rdata[0]_i_6_n_0 ),
        .O(\axi_rdata_reg[0]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(pwm_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[10]_i_2 
       (.I0(\axi_rdata[10]_i_5_n_0 ),
        .I1(\axi_rdata[10]_i_6_n_0 ),
        .O(\axi_rdata_reg[10]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(pwm_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[11]_i_2 
       (.I0(\axi_rdata[11]_i_5_n_0 ),
        .I1(\axi_rdata[11]_i_6_n_0 ),
        .O(\axi_rdata_reg[11]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(pwm_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[12]_i_2 
       (.I0(\axi_rdata[12]_i_5_n_0 ),
        .I1(\axi_rdata[12]_i_6_n_0 ),
        .O(\axi_rdata_reg[12]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(pwm_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[13]_i_2 
       (.I0(\axi_rdata[13]_i_5_n_0 ),
        .I1(\axi_rdata[13]_i_6_n_0 ),
        .O(\axi_rdata_reg[13]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(pwm_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[14]_i_2 
       (.I0(\axi_rdata[14]_i_5_n_0 ),
        .I1(\axi_rdata[14]_i_6_n_0 ),
        .O(\axi_rdata_reg[14]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(pwm_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[15]_i_2 
       (.I0(\axi_rdata[15]_i_5_n_0 ),
        .I1(\axi_rdata[15]_i_6_n_0 ),
        .O(\axi_rdata_reg[15]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(pwm_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[16]_i_2 
       (.I0(\axi_rdata[16]_i_5_n_0 ),
        .I1(\axi_rdata[16]_i_6_n_0 ),
        .O(\axi_rdata_reg[16]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(pwm_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[17]_i_2 
       (.I0(\axi_rdata[17]_i_5_n_0 ),
        .I1(\axi_rdata[17]_i_6_n_0 ),
        .O(\axi_rdata_reg[17]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(pwm_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[18]_i_2 
       (.I0(\axi_rdata[18]_i_5_n_0 ),
        .I1(\axi_rdata[18]_i_6_n_0 ),
        .O(\axi_rdata_reg[18]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(pwm_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[19]_i_2 
       (.I0(\axi_rdata[19]_i_5_n_0 ),
        .I1(\axi_rdata[19]_i_6_n_0 ),
        .O(\axi_rdata_reg[19]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(pwm_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[1]_i_2 
       (.I0(\axi_rdata[1]_i_5_n_0 ),
        .I1(\axi_rdata[1]_i_6_n_0 ),
        .O(\axi_rdata_reg[1]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(pwm_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[20]_i_2 
       (.I0(\axi_rdata[20]_i_5_n_0 ),
        .I1(\axi_rdata[20]_i_6_n_0 ),
        .O(\axi_rdata_reg[20]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(pwm_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[21]_i_2 
       (.I0(\axi_rdata[21]_i_5_n_0 ),
        .I1(\axi_rdata[21]_i_6_n_0 ),
        .O(\axi_rdata_reg[21]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(pwm_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[22]_i_2 
       (.I0(\axi_rdata[22]_i_5_n_0 ),
        .I1(\axi_rdata[22]_i_6_n_0 ),
        .O(\axi_rdata_reg[22]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(pwm_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[23]_i_2 
       (.I0(\axi_rdata[23]_i_5_n_0 ),
        .I1(\axi_rdata[23]_i_6_n_0 ),
        .O(\axi_rdata_reg[23]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(pwm_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[24]_i_2 
       (.I0(\axi_rdata[24]_i_5_n_0 ),
        .I1(\axi_rdata[24]_i_6_n_0 ),
        .O(\axi_rdata_reg[24]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(pwm_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[25]_i_2 
       (.I0(\axi_rdata[25]_i_5_n_0 ),
        .I1(\axi_rdata[25]_i_6_n_0 ),
        .O(\axi_rdata_reg[25]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(pwm_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[26]_i_2 
       (.I0(\axi_rdata[26]_i_5_n_0 ),
        .I1(\axi_rdata[26]_i_6_n_0 ),
        .O(\axi_rdata_reg[26]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(pwm_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[27]_i_2 
       (.I0(\axi_rdata[27]_i_5_n_0 ),
        .I1(\axi_rdata[27]_i_6_n_0 ),
        .O(\axi_rdata_reg[27]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(pwm_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[28]_i_2 
       (.I0(\axi_rdata[28]_i_5_n_0 ),
        .I1(\axi_rdata[28]_i_6_n_0 ),
        .O(\axi_rdata_reg[28]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(pwm_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[29]_i_2 
       (.I0(\axi_rdata[29]_i_5_n_0 ),
        .I1(\axi_rdata[29]_i_6_n_0 ),
        .O(\axi_rdata_reg[29]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[2]_i_1_n_0 ),
        .Q(pwm_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[2]_i_2 
       (.I0(\axi_rdata[2]_i_5_n_0 ),
        .I1(\axi_rdata[2]_i_6_n_0 ),
        .O(\axi_rdata_reg[2]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(pwm_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[30]_i_2 
       (.I0(\axi_rdata[30]_i_5_n_0 ),
        .I1(\axi_rdata[30]_i_6_n_0 ),
        .O(\axi_rdata_reg[30]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[31]_i_2_n_0 ),
        .Q(pwm_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[31]_i_3 
       (.I0(\axi_rdata[31]_i_6_n_0 ),
        .I1(\axi_rdata[31]_i_7_n_0 ),
        .O(\axi_rdata_reg[31]_i_3_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[3]_i_1_n_0 ),
        .Q(pwm_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[3]_i_2 
       (.I0(\axi_rdata[3]_i_5_n_0 ),
        .I1(\axi_rdata[3]_i_6_n_0 ),
        .O(\axi_rdata_reg[3]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[4]_i_1_n_0 ),
        .Q(pwm_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[4]_i_2 
       (.I0(\axi_rdata[4]_i_5_n_0 ),
        .I1(\axi_rdata[4]_i_6_n_0 ),
        .O(\axi_rdata_reg[4]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[5]_i_1_n_0 ),
        .Q(pwm_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[5]_i_2 
       (.I0(\axi_rdata[5]_i_5_n_0 ),
        .I1(\axi_rdata[5]_i_6_n_0 ),
        .O(\axi_rdata_reg[5]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[6]_i_1_n_0 ),
        .Q(pwm_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[6]_i_2 
       (.I0(\axi_rdata[6]_i_5_n_0 ),
        .I1(\axi_rdata[6]_i_6_n_0 ),
        .O(\axi_rdata_reg[6]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[7]_i_1_n_0 ),
        .Q(pwm_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[7]_i_2 
       (.I0(\axi_rdata[7]_i_5_n_0 ),
        .I1(\axi_rdata[7]_i_6_n_0 ),
        .O(\axi_rdata_reg[7]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[8]_i_1_n_0 ),
        .Q(pwm_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[8]_i_2 
       (.I0(\axi_rdata[8]_i_5_n_0 ),
        .I1(\axi_rdata[8]_i_6_n_0 ),
        .O(\axi_rdata_reg[8]_i_2_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(pwm_axi_aclk),
        .CE(slv_reg_rden),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(pwm_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[9]_i_2 
       (.I0(\axi_rdata[9]_i_5_n_0 ),
        .I1(\axi_rdata[9]_i_6_n_0 ),
        .O(\axi_rdata_reg[9]_i_2_n_0 ),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(pwm_axi_arvalid),
        .I2(pwm_axi_rready),
        .I3(pwm_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(pwm_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(pwm_axi_awvalid),
        .I1(pwm_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl_reg[15]_i_1 
       (.I0(\ctrl_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\ctrl_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl_reg[23]_i_1 
       (.I0(\ctrl_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\ctrl_reg[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl_reg[31]_i_1 
       (.I0(\ctrl_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\ctrl_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \ctrl_reg[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(\duty_reg[0][31]_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(\ctrl_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ctrl_reg[7]_i_1 
       (.I0(\ctrl_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\ctrl_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[0] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\ctrl_reg_reg[0]_0 ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[10] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\ctrl_reg_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[11] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\ctrl_reg_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[12] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\ctrl_reg_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[13] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\ctrl_reg_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[14] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\ctrl_reg_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[15] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\ctrl_reg_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[16] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\ctrl_reg_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[17] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\ctrl_reg_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[18] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\ctrl_reg_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[19] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\ctrl_reg_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[1] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\ctrl_reg_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[20] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\ctrl_reg_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[21] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\ctrl_reg_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[22] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\ctrl_reg_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[23] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\ctrl_reg_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[24] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\ctrl_reg_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[25] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\ctrl_reg_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[26] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\ctrl_reg_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[27] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\ctrl_reg_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[28] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\ctrl_reg_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[29] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\ctrl_reg_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\ctrl_reg_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[30] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\ctrl_reg_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[31] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\ctrl_reg_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\ctrl_reg_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\ctrl_reg_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\ctrl_reg_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\ctrl_reg_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[7] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\ctrl_reg_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[8] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\ctrl_reg_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[9] 
       (.C(pwm_axi_aclk),
        .CE(\ctrl_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\ctrl_reg_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[0][15]_i_1 
       (.I0(\duty_reg[0][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[0][23]_i_1 
       (.I0(\duty_reg[0][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[0][31]_i_1 
       (.I0(\duty_reg[0][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \duty_reg[0][31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[4]),
        .I2(\duty_reg[0][31]_i_3_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[0]),
        .O(\duty_reg[0][31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \duty_reg[0][31]_i_3 
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(pwm_axi_awvalid),
        .I3(pwm_axi_wvalid),
        .O(\duty_reg[0][31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[0][7]_i_1 
       (.I0(\duty_reg[0][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[10][15]_i_1 
       (.I0(\duty_reg[10][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[10][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[10][23]_i_1 
       (.I0(\duty_reg[10][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[10][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[10][31]_i_1 
       (.I0(\duty_reg[10][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[10][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \duty_reg[10][31]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(\duty_reg[0][31]_i_3_n_0 ),
        .I5(p_0_in[2]),
        .O(\duty_reg[10][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[10][7]_i_1 
       (.I0(\duty_reg[10][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[10][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[11][15]_i_1 
       (.I0(\duty_reg[11][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[11][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[11][23]_i_1 
       (.I0(\duty_reg[11][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[11][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[11][31]_i_1 
       (.I0(\duty_reg[11][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[11][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \duty_reg[11][31]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(\duty_reg[0][31]_i_3_n_0 ),
        .I5(p_0_in[2]),
        .O(\duty_reg[11][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[11][7]_i_1 
       (.I0(\duty_reg[11][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[11][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[1][15]_i_1 
       (.I0(\duty_reg[1][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[1][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[1][23]_i_1 
       (.I0(\duty_reg[1][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[1][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[1][31]_i_1 
       (.I0(\duty_reg[1][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \duty_reg[1][31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[4]),
        .I2(\duty_reg[0][31]_i_3_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[0]),
        .O(\duty_reg[1][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[1][7]_i_1 
       (.I0(\duty_reg[1][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[1][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[2][15]_i_1 
       (.I0(\duty_reg[2][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[2][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[2][23]_i_1 
       (.I0(\duty_reg[2][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[2][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[2][31]_i_1 
       (.I0(\duty_reg[2][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \duty_reg[2][31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[4]),
        .I2(\duty_reg[0][31]_i_3_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[0]),
        .O(\duty_reg[2][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[2][7]_i_1 
       (.I0(\duty_reg[2][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[2][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[3][15]_i_1 
       (.I0(\duty_reg[3][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[3][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[3][23]_i_1 
       (.I0(\duty_reg[3][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[3][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[3][31]_i_1 
       (.I0(\duty_reg[3][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \duty_reg[3][31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[4]),
        .I2(\duty_reg[0][31]_i_3_n_0 ),
        .I3(p_0_in[2]),
        .I4(p_0_in[3]),
        .I5(p_0_in[0]),
        .O(\duty_reg[3][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[3][7]_i_1 
       (.I0(\duty_reg[3][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \duty_reg[4][15]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[1]),
        .O(\duty_reg[4][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \duty_reg[4][23]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[2]),
        .O(\duty_reg[4][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \duty_reg[4][31]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[3]),
        .O(\duty_reg[4][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \duty_reg[4][31]_i_2 
       (.I0(p_0_in[4]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(pwm_axi_awvalid),
        .I4(pwm_axi_wvalid),
        .I5(p_0_in[2]),
        .O(\duty_reg[4][31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \duty_reg[4][7]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[0]),
        .O(\duty_reg[4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \duty_reg[5][15]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[1]),
        .O(\duty_reg[5][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \duty_reg[5][23]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[2]),
        .O(\duty_reg[5][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \duty_reg[5][31]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[3]),
        .O(\duty_reg[5][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \duty_reg[5][7]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[0]),
        .O(\duty_reg[5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \duty_reg[6][15]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[1]),
        .O(\duty_reg[6][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \duty_reg[6][23]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[2]),
        .O(\duty_reg[6][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \duty_reg[6][31]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[3]),
        .O(\duty_reg[6][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \duty_reg[6][7]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[0]),
        .O(\duty_reg[6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \duty_reg[7][15]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[1]),
        .O(\duty_reg[7][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \duty_reg[7][23]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[2]),
        .O(\duty_reg[7][23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \duty_reg[7][31]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[3]),
        .O(\duty_reg[7][31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \duty_reg[7][7]_i_1 
       (.I0(\duty_reg[4][31]_i_2_n_0 ),
        .I1(p_0_in[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(pwm_axi_wstrb[0]),
        .O(\duty_reg[7][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[8][15]_i_1 
       (.I0(\duty_reg[8][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[8][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[8][23]_i_1 
       (.I0(\duty_reg[8][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[8][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[8][31]_i_1 
       (.I0(\duty_reg[8][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[8][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \duty_reg[8][31]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[3]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(\duty_reg[0][31]_i_3_n_0 ),
        .I5(p_0_in[2]),
        .O(\duty_reg[8][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[8][7]_i_1 
       (.I0(\duty_reg[8][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[8][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[9][15]_i_1 
       (.I0(\duty_reg[9][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\duty_reg[9][15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[9][23]_i_1 
       (.I0(\duty_reg[9][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\duty_reg[9][23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[9][31]_i_1 
       (.I0(\duty_reg[9][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\duty_reg[9][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \duty_reg[9][31]_i_2 
       (.I0(p_0_in[3]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[4]),
        .I4(\duty_reg[0][31]_i_3_n_0 ),
        .I5(p_0_in[2]),
        .O(\duty_reg[9][31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \duty_reg[9][7]_i_1 
       (.I0(\duty_reg[9][31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\duty_reg[9][7]_i_1_n_0 ));
  FDRE \duty_reg_reg[0][0] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][10] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[10]),
        .Q(Q[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][11] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[11]),
        .Q(Q[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][12] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[12]),
        .Q(Q[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][13] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[13]),
        .Q(Q[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][14] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[14]),
        .Q(Q[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][15] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[15]),
        .Q(Q[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][16] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[16]),
        .Q(Q[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][17] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[17]),
        .Q(Q[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][18] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[18]),
        .Q(Q[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][19] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[19]),
        .Q(Q[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][1] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][20] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[20]),
        .Q(Q[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][21] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[21]),
        .Q(Q[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][22] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[22]),
        .Q(Q[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][23] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[23]),
        .D(pwm_axi_wdata[23]),
        .Q(Q[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][24] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[24]),
        .Q(Q[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][25] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[25]),
        .Q(Q[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][26] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[26]),
        .Q(Q[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][27] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[27]),
        .Q(Q[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][28] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[28]),
        .Q(Q[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][29] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[29]),
        .Q(Q[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][2] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[2]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][30] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[30]),
        .Q(Q[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][31] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[31]),
        .D(pwm_axi_wdata[31]),
        .Q(Q[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][3] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[3]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][4] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[4]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][5] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[5]),
        .Q(Q[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][6] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[6]),
        .Q(Q[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][7] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[7]),
        .D(pwm_axi_wdata[7]),
        .Q(Q[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][8] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[8]),
        .Q(Q[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[0][9] 
       (.C(pwm_axi_aclk),
        .CE(p_1_in[15]),
        .D(pwm_axi_wdata[9]),
        .Q(Q[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[10][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[10][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[10][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[10][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[10][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[10][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[10][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[10][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[10][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[10][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[10][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[10][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[10][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[10][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[10][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[10][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[10][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[10][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[10][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[10][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[10][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[10][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[10][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[10][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[10][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[10][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[10][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[10][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[10][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[10][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[10][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[10][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[10][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[10][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[11][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[11][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[11][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[11][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[11][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[11][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[11][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[11][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[11][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[11][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[11][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[11][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[11][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[11][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[11][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[11][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[11][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[11][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[11][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[11][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[11][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[11][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[11][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[11][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[11][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[11][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[11][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[11][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[11][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[11][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[11][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[11][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[11][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[11][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[1][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[1][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[1][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[1][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[1][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[1][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[1][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[1][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[1][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[1][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[1][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[1][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[1][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[1][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[1][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[1][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[1][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[1][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[1][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[1][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[1][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[1][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[1][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[1][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[1][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[1][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[1][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[1][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[1][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[1][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[1][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[1][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[1][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[1][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[2][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[2][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[2][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[2][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[2][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[2][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[2][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[2][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[2][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[2][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[2][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[2][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[2][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[2][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[2][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[2][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[2][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[2][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[2][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[2][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[2][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[2][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[2][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[2][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[2][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[2][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[2][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[2][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[2][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[2][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[2][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[2][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[2][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[2][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[3][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[3][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[3][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[3][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[3][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[3][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[3][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[3][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[3][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[3][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[3][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[3][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[3][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[3][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[3][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[3][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[3][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[3][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[3][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[3][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[3][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[3][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[3][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[3][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[3][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[3][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[3][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[3][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[3][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[3][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[3][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[3][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[3][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[3][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[4][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[4][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[4][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[4][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[4][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[4][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[4][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[4][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[4][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[4][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[4][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[4][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[4][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[4][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[4][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[4][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[4][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[4][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[4][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[4][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[4][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[4][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[4][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[4][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[4][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[4][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[4][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[4][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[4][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[4][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[4][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[4][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[4][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[4][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[5][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[5][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[5][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[5][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[5][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[5][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[5][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[5][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[5][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[5][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[5][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[5][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[5][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[5][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[5][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[5][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[5][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[5][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[5][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[5][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[5][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[5][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[5][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[5][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[5][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[5][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[5][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[5][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[5][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[5][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[5][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[5][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[5][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[5][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[6][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[6][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[6][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[6][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[6][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[6][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[6][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[6][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[6][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[6][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[6][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[6][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[6][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[6][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[6][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[6][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[6][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[6][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[6][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[6][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[6][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[6][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[6][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[6][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[6][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[6][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[6][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[6][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[6][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[6][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[6][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[6][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[6][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[6][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[7][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[7][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[7][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[7][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[7][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[7][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[7][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[7][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[7][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[7][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[7][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[7][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[7][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[7][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[7][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[7][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[7][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[7][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[7][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[7][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[7][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[7][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[7][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[7][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[7][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[7][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[7][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[7][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[7][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[7][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[7][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[7][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[7][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[7][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[8][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[8][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[8][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[8][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[8][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[8][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[8][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[8][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[8][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[8][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[8][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[8][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[8][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[8][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[8][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[8][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[8][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[8][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[8][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[8][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[8][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[8][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[8][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[8][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[8][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[8][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[8][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[8][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[8][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[8][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[8][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[8][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[8][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[8][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][0] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\duty_reg_reg[9][31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][10] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\duty_reg_reg[9][31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][11] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\duty_reg_reg[9][31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][12] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\duty_reg_reg[9][31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][13] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\duty_reg_reg[9][31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][14] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\duty_reg_reg[9][31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][15] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\duty_reg_reg[9][31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][16] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\duty_reg_reg[9][31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][17] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\duty_reg_reg[9][31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][18] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\duty_reg_reg[9][31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][19] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\duty_reg_reg[9][31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][1] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\duty_reg_reg[9][31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][20] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\duty_reg_reg[9][31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][21] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\duty_reg_reg[9][31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][22] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\duty_reg_reg[9][31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][23] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\duty_reg_reg[9][31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][24] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\duty_reg_reg[9][31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][25] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\duty_reg_reg[9][31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][26] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\duty_reg_reg[9][31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][27] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\duty_reg_reg[9][31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][28] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\duty_reg_reg[9][31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][29] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\duty_reg_reg[9][31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][2] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\duty_reg_reg[9][31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][30] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\duty_reg_reg[9][31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][31] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\duty_reg_reg[9][31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][3] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\duty_reg_reg[9][31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][4] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\duty_reg_reg[9][31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][5] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\duty_reg_reg[9][31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][6] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\duty_reg_reg[9][31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][7] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\duty_reg_reg[9][31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][8] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\duty_reg_reg[9][31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \duty_reg_reg[9][9] 
       (.C(pwm_axi_aclk),
        .CE(\duty_reg[9][15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\duty_reg_reg[9][31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \period_reg[15]_i_1 
       (.I0(\period_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\period_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \period_reg[23]_i_1 
       (.I0(\period_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\period_reg[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \period_reg[31]_i_1 
       (.I0(\period_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\period_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \period_reg[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(\duty_reg[0][31]_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(\period_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \period_reg[7]_i_1 
       (.I0(\period_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\period_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[0] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\period_reg_reg[31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[10] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\period_reg_reg[31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[11] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\period_reg_reg[31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    \period_reg_reg[12] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\period_reg_reg[31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[13] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\period_reg_reg[31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[14] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\period_reg_reg[31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[15] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\period_reg_reg[31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[16] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\period_reg_reg[31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[17] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\period_reg_reg[31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[18] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\period_reg_reg[31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[19] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\period_reg_reg[31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[1] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\period_reg_reg[31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[20] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\period_reg_reg[31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[21] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\period_reg_reg[31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[22] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\period_reg_reg[31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[23] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\period_reg_reg[31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[24] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\period_reg_reg[31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[25] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\period_reg_reg[31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[26] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\period_reg_reg[31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[27] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\period_reg_reg[31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[28] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\period_reg_reg[31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[29] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\period_reg_reg[31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\period_reg_reg[31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[30] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\period_reg_reg[31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[31] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\period_reg_reg[31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\period_reg_reg[31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\period_reg_reg[31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\period_reg_reg[31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\period_reg_reg[31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[7] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\period_reg_reg[31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[8] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\period_reg_reg[31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \period_reg_reg[9] 
       (.C(pwm_axi_aclk),
        .CE(\period_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\period_reg_reg[31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[15]_i_1 
       (.I0(\status_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[1]),
        .O(\status_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[23]_i_1 
       (.I0(\status_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[2]),
        .O(\status_reg[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[31]_i_1 
       (.I0(\status_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[3]),
        .O(\status_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \status_reg[31]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(p_0_in[3]),
        .I3(\duty_reg[0][31]_i_3_n_0 ),
        .I4(p_0_in[2]),
        .I5(p_0_in[4]),
        .O(\status_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \status_reg[7]_i_1 
       (.I0(\status_reg[31]_i_2_n_0 ),
        .I1(pwm_axi_wstrb[0]),
        .O(\status_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[0] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[0]),
        .Q(\status_reg_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[10] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[10]),
        .Q(\status_reg_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[11] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[11]),
        .Q(\status_reg_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[12] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[12]),
        .Q(\status_reg_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[13] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[13]),
        .Q(\status_reg_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[14] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[14]),
        .Q(\status_reg_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[15] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[15]),
        .Q(\status_reg_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[16] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[16]),
        .Q(\status_reg_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[17] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[17]),
        .Q(\status_reg_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[18] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[18]),
        .Q(\status_reg_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[19] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[19]),
        .Q(\status_reg_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[1] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[1]),
        .Q(\status_reg_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[20] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[20]),
        .Q(\status_reg_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[21] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[21]),
        .Q(\status_reg_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[22] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[22]),
        .Q(\status_reg_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[23] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[23]_i_1_n_0 ),
        .D(pwm_axi_wdata[23]),
        .Q(\status_reg_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[24] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[24]),
        .Q(\status_reg_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[25] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[25]),
        .Q(\status_reg_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[26] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[26]),
        .Q(\status_reg_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[27] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[27]),
        .Q(\status_reg_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[28] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[28]),
        .Q(\status_reg_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[29] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[29]),
        .Q(\status_reg_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[2]),
        .Q(\status_reg_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[30] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[30]),
        .Q(\status_reg_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[31] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[31]_i_1_n_0 ),
        .D(pwm_axi_wdata[31]),
        .Q(\status_reg_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[3]),
        .Q(\status_reg_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[4]),
        .Q(\status_reg_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[5]),
        .Q(\status_reg_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[6]),
        .Q(\status_reg_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[7] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[7]_i_1_n_0 ),
        .D(pwm_axi_wdata[7]),
        .Q(\status_reg_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[8] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[8]),
        .Q(\status_reg_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg_reg[9] 
       (.C(pwm_axi_aclk),
        .CE(\status_reg[15]_i_1_n_0 ),
        .D(pwm_axi_wdata[9]),
        .Q(\status_reg_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
endmodule

(* ORIG_REF_NAME = "PWM_v2_0" *) 
module system_PWM_0_0_PWM_v2_0
   (pwm_axi_awready,
    pwm_axi_wready,
    pwm_axi_arready,
    pwm_axi_rdata,
    pwm_axi_rvalid,
    pwm_axi_bvalid,
    pwm,
    pwm_axi_aclk,
    pwm_axi_awaddr,
    pwm_axi_wdata,
    pwm_axi_araddr,
    pwm_axi_wstrb,
    pwm_axi_awvalid,
    pwm_axi_wvalid,
    pwm_axi_arvalid,
    pwm_axi_aresetn,
    pwm_axi_bready,
    pwm_axi_rready);
  output pwm_axi_awready;
  output pwm_axi_wready;
  output pwm_axi_arready;
  output [31:0]pwm_axi_rdata;
  output pwm_axi_rvalid;
  output pwm_axi_bvalid;
  output [11:0]pwm;
  input pwm_axi_aclk;
  input [4:0]pwm_axi_awaddr;
  input [31:0]pwm_axi_wdata;
  input [4:0]pwm_axi_araddr;
  input [3:0]pwm_axi_wstrb;
  input pwm_axi_awvalid;
  input pwm_axi_wvalid;
  input pwm_axi_arvalid;
  input pwm_axi_aresetn;
  input pwm_axi_bready;
  input pwm_axi_rready;

  wire count1;
  wire \count[0]_i_2_n_0 ;
  wire [31:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire ctrl_reg;
  wire [31:0]\duty_reg[0]_0 ;
  wire [31:0]\duty_reg[10]_10 ;
  wire [31:0]\duty_reg[11]_11 ;
  wire [31:0]\duty_reg[1]_1 ;
  wire [31:0]\duty_reg[2]_2 ;
  wire [31:0]\duty_reg[3]_3 ;
  wire [31:0]\duty_reg[4]_4 ;
  wire [31:0]\duty_reg[5]_5 ;
  wire [31:0]\duty_reg[6]_6 ;
  wire [31:0]\duty_reg[7]_7 ;
  wire [31:0]\duty_reg[8]_8 ;
  wire [31:0]\duty_reg[9]_9 ;
  wire enable;
  wire [31:0]\genblk1[0].duty_reg_latch_reg[0]_12 ;
  wire [31:0]\genblk1[10].duty_reg_latch_reg[10]_22 ;
  wire [31:0]\genblk1[11].duty_reg_latch_reg[11]_23 ;
  wire [31:0]\genblk1[1].duty_reg_latch_reg[1]_13 ;
  wire [31:0]\genblk1[2].duty_reg_latch_reg[2]_14 ;
  wire [31:0]\genblk1[3].duty_reg_latch_reg[3]_15 ;
  wire [31:0]\genblk1[4].duty_reg_latch_reg[4]_16 ;
  wire [31:0]\genblk1[5].duty_reg_latch_reg[5]_17 ;
  wire [31:0]\genblk1[6].duty_reg_latch_reg[6]_18 ;
  wire [31:0]\genblk1[7].duty_reg_latch_reg[7]_19 ;
  wire [31:0]\genblk1[8].duty_reg_latch_reg[8]_20 ;
  wire [31:0]\genblk1[9].duty_reg_latch_reg[9]_21 ;
  wire \max[31]_i_10_n_0 ;
  wire \max[31]_i_11_n_0 ;
  wire \max[31]_i_13_n_0 ;
  wire \max[31]_i_14_n_0 ;
  wire \max[31]_i_15_n_0 ;
  wire \max[31]_i_16_n_0 ;
  wire \max[31]_i_17_n_0 ;
  wire \max[31]_i_18_n_0 ;
  wire \max[31]_i_19_n_0 ;
  wire \max[31]_i_1_n_0 ;
  wire \max[31]_i_20_n_0 ;
  wire \max[31]_i_22_n_0 ;
  wire \max[31]_i_23_n_0 ;
  wire \max[31]_i_24_n_0 ;
  wire \max[31]_i_25_n_0 ;
  wire \max[31]_i_26_n_0 ;
  wire \max[31]_i_27_n_0 ;
  wire \max[31]_i_28_n_0 ;
  wire \max[31]_i_29_n_0 ;
  wire \max[31]_i_30_n_0 ;
  wire \max[31]_i_31_n_0 ;
  wire \max[31]_i_32_n_0 ;
  wire \max[31]_i_33_n_0 ;
  wire \max[31]_i_34_n_0 ;
  wire \max[31]_i_35_n_0 ;
  wire \max[31]_i_36_n_0 ;
  wire \max[31]_i_37_n_0 ;
  wire \max[31]_i_4_n_0 ;
  wire \max[31]_i_5_n_0 ;
  wire \max[31]_i_6_n_0 ;
  wire \max[31]_i_7_n_0 ;
  wire \max[31]_i_8_n_0 ;
  wire \max[31]_i_9_n_0 ;
  wire \max_reg[31]_i_12_n_0 ;
  wire \max_reg[31]_i_12_n_1 ;
  wire \max_reg[31]_i_12_n_2 ;
  wire \max_reg[31]_i_12_n_3 ;
  wire \max_reg[31]_i_21_n_0 ;
  wire \max_reg[31]_i_21_n_1 ;
  wire \max_reg[31]_i_21_n_2 ;
  wire \max_reg[31]_i_21_n_3 ;
  wire \max_reg[31]_i_2_n_1 ;
  wire \max_reg[31]_i_2_n_2 ;
  wire \max_reg[31]_i_2_n_3 ;
  wire \max_reg[31]_i_3_n_0 ;
  wire \max_reg[31]_i_3_n_1 ;
  wire \max_reg[31]_i_3_n_2 ;
  wire \max_reg[31]_i_3_n_3 ;
  wire \max_reg_n_0_[0] ;
  wire \max_reg_n_0_[10] ;
  wire \max_reg_n_0_[11] ;
  wire \max_reg_n_0_[12] ;
  wire \max_reg_n_0_[13] ;
  wire \max_reg_n_0_[14] ;
  wire \max_reg_n_0_[15] ;
  wire \max_reg_n_0_[16] ;
  wire \max_reg_n_0_[17] ;
  wire \max_reg_n_0_[18] ;
  wire \max_reg_n_0_[19] ;
  wire \max_reg_n_0_[1] ;
  wire \max_reg_n_0_[20] ;
  wire \max_reg_n_0_[21] ;
  wire \max_reg_n_0_[22] ;
  wire \max_reg_n_0_[23] ;
  wire \max_reg_n_0_[24] ;
  wire \max_reg_n_0_[25] ;
  wire \max_reg_n_0_[26] ;
  wire \max_reg_n_0_[27] ;
  wire \max_reg_n_0_[28] ;
  wire \max_reg_n_0_[29] ;
  wire \max_reg_n_0_[2] ;
  wire \max_reg_n_0_[30] ;
  wire \max_reg_n_0_[31] ;
  wire \max_reg_n_0_[3] ;
  wire \max_reg_n_0_[4] ;
  wire \max_reg_n_0_[5] ;
  wire \max_reg_n_0_[6] ;
  wire \max_reg_n_0_[7] ;
  wire \max_reg_n_0_[8] ;
  wire \max_reg_n_0_[9] ;
  wire [31:0]period_reg;
  wire [11:0]pwm;
  wire pwm1;
  wire pwm10_in;
  wire pwm110_in;
  wire pwm112_in;
  wire pwm114_in;
  wire pwm116_in;
  wire pwm118_in;
  wire pwm120_in;
  wire pwm12_in;
  wire pwm14_in;
  wire pwm16_in;
  wire pwm18_in;
  wire \pwm[0]_INST_0_i_10_n_0 ;
  wire \pwm[0]_INST_0_i_11_n_0 ;
  wire \pwm[0]_INST_0_i_11_n_1 ;
  wire \pwm[0]_INST_0_i_11_n_2 ;
  wire \pwm[0]_INST_0_i_11_n_3 ;
  wire \pwm[0]_INST_0_i_12_n_0 ;
  wire \pwm[0]_INST_0_i_13_n_0 ;
  wire \pwm[0]_INST_0_i_14_n_0 ;
  wire \pwm[0]_INST_0_i_15_n_0 ;
  wire \pwm[0]_INST_0_i_16_n_0 ;
  wire \pwm[0]_INST_0_i_17_n_0 ;
  wire \pwm[0]_INST_0_i_18_n_0 ;
  wire \pwm[0]_INST_0_i_19_n_0 ;
  wire \pwm[0]_INST_0_i_1_n_1 ;
  wire \pwm[0]_INST_0_i_1_n_2 ;
  wire \pwm[0]_INST_0_i_1_n_3 ;
  wire \pwm[0]_INST_0_i_20_n_0 ;
  wire \pwm[0]_INST_0_i_20_n_1 ;
  wire \pwm[0]_INST_0_i_20_n_2 ;
  wire \pwm[0]_INST_0_i_20_n_3 ;
  wire \pwm[0]_INST_0_i_21_n_0 ;
  wire \pwm[0]_INST_0_i_22_n_0 ;
  wire \pwm[0]_INST_0_i_23_n_0 ;
  wire \pwm[0]_INST_0_i_24_n_0 ;
  wire \pwm[0]_INST_0_i_25_n_0 ;
  wire \pwm[0]_INST_0_i_26_n_0 ;
  wire \pwm[0]_INST_0_i_27_n_0 ;
  wire \pwm[0]_INST_0_i_28_n_0 ;
  wire \pwm[0]_INST_0_i_29_n_0 ;
  wire \pwm[0]_INST_0_i_2_n_0 ;
  wire \pwm[0]_INST_0_i_2_n_1 ;
  wire \pwm[0]_INST_0_i_2_n_2 ;
  wire \pwm[0]_INST_0_i_2_n_3 ;
  wire \pwm[0]_INST_0_i_30_n_0 ;
  wire \pwm[0]_INST_0_i_31_n_0 ;
  wire \pwm[0]_INST_0_i_32_n_0 ;
  wire \pwm[0]_INST_0_i_33_n_0 ;
  wire \pwm[0]_INST_0_i_34_n_0 ;
  wire \pwm[0]_INST_0_i_35_n_0 ;
  wire \pwm[0]_INST_0_i_36_n_0 ;
  wire \pwm[0]_INST_0_i_3_n_0 ;
  wire \pwm[0]_INST_0_i_4_n_0 ;
  wire \pwm[0]_INST_0_i_5_n_0 ;
  wire \pwm[0]_INST_0_i_6_n_0 ;
  wire \pwm[0]_INST_0_i_7_n_0 ;
  wire \pwm[0]_INST_0_i_8_n_0 ;
  wire \pwm[0]_INST_0_i_9_n_0 ;
  wire \pwm[10]_INST_0_i_10_n_0 ;
  wire \pwm[10]_INST_0_i_11_n_0 ;
  wire \pwm[10]_INST_0_i_11_n_1 ;
  wire \pwm[10]_INST_0_i_11_n_2 ;
  wire \pwm[10]_INST_0_i_11_n_3 ;
  wire \pwm[10]_INST_0_i_12_n_0 ;
  wire \pwm[10]_INST_0_i_13_n_0 ;
  wire \pwm[10]_INST_0_i_14_n_0 ;
  wire \pwm[10]_INST_0_i_15_n_0 ;
  wire \pwm[10]_INST_0_i_16_n_0 ;
  wire \pwm[10]_INST_0_i_17_n_0 ;
  wire \pwm[10]_INST_0_i_18_n_0 ;
  wire \pwm[10]_INST_0_i_19_n_0 ;
  wire \pwm[10]_INST_0_i_1_n_1 ;
  wire \pwm[10]_INST_0_i_1_n_2 ;
  wire \pwm[10]_INST_0_i_1_n_3 ;
  wire \pwm[10]_INST_0_i_20_n_0 ;
  wire \pwm[10]_INST_0_i_20_n_1 ;
  wire \pwm[10]_INST_0_i_20_n_2 ;
  wire \pwm[10]_INST_0_i_20_n_3 ;
  wire \pwm[10]_INST_0_i_21_n_0 ;
  wire \pwm[10]_INST_0_i_22_n_0 ;
  wire \pwm[10]_INST_0_i_23_n_0 ;
  wire \pwm[10]_INST_0_i_24_n_0 ;
  wire \pwm[10]_INST_0_i_25_n_0 ;
  wire \pwm[10]_INST_0_i_26_n_0 ;
  wire \pwm[10]_INST_0_i_27_n_0 ;
  wire \pwm[10]_INST_0_i_28_n_0 ;
  wire \pwm[10]_INST_0_i_29_n_0 ;
  wire \pwm[10]_INST_0_i_2_n_0 ;
  wire \pwm[10]_INST_0_i_2_n_1 ;
  wire \pwm[10]_INST_0_i_2_n_2 ;
  wire \pwm[10]_INST_0_i_2_n_3 ;
  wire \pwm[10]_INST_0_i_30_n_0 ;
  wire \pwm[10]_INST_0_i_31_n_0 ;
  wire \pwm[10]_INST_0_i_32_n_0 ;
  wire \pwm[10]_INST_0_i_33_n_0 ;
  wire \pwm[10]_INST_0_i_34_n_0 ;
  wire \pwm[10]_INST_0_i_35_n_0 ;
  wire \pwm[10]_INST_0_i_36_n_0 ;
  wire \pwm[10]_INST_0_i_3_n_0 ;
  wire \pwm[10]_INST_0_i_4_n_0 ;
  wire \pwm[10]_INST_0_i_5_n_0 ;
  wire \pwm[10]_INST_0_i_6_n_0 ;
  wire \pwm[10]_INST_0_i_7_n_0 ;
  wire \pwm[10]_INST_0_i_8_n_0 ;
  wire \pwm[10]_INST_0_i_9_n_0 ;
  wire \pwm[11]_INST_0_i_10_n_0 ;
  wire \pwm[11]_INST_0_i_11_n_0 ;
  wire \pwm[11]_INST_0_i_11_n_1 ;
  wire \pwm[11]_INST_0_i_11_n_2 ;
  wire \pwm[11]_INST_0_i_11_n_3 ;
  wire \pwm[11]_INST_0_i_12_n_0 ;
  wire \pwm[11]_INST_0_i_13_n_0 ;
  wire \pwm[11]_INST_0_i_14_n_0 ;
  wire \pwm[11]_INST_0_i_15_n_0 ;
  wire \pwm[11]_INST_0_i_16_n_0 ;
  wire \pwm[11]_INST_0_i_17_n_0 ;
  wire \pwm[11]_INST_0_i_18_n_0 ;
  wire \pwm[11]_INST_0_i_19_n_0 ;
  wire \pwm[11]_INST_0_i_1_n_1 ;
  wire \pwm[11]_INST_0_i_1_n_2 ;
  wire \pwm[11]_INST_0_i_1_n_3 ;
  wire \pwm[11]_INST_0_i_20_n_0 ;
  wire \pwm[11]_INST_0_i_20_n_1 ;
  wire \pwm[11]_INST_0_i_20_n_2 ;
  wire \pwm[11]_INST_0_i_20_n_3 ;
  wire \pwm[11]_INST_0_i_21_n_0 ;
  wire \pwm[11]_INST_0_i_22_n_0 ;
  wire \pwm[11]_INST_0_i_23_n_0 ;
  wire \pwm[11]_INST_0_i_24_n_0 ;
  wire \pwm[11]_INST_0_i_25_n_0 ;
  wire \pwm[11]_INST_0_i_26_n_0 ;
  wire \pwm[11]_INST_0_i_27_n_0 ;
  wire \pwm[11]_INST_0_i_28_n_0 ;
  wire \pwm[11]_INST_0_i_29_n_0 ;
  wire \pwm[11]_INST_0_i_2_n_0 ;
  wire \pwm[11]_INST_0_i_2_n_1 ;
  wire \pwm[11]_INST_0_i_2_n_2 ;
  wire \pwm[11]_INST_0_i_2_n_3 ;
  wire \pwm[11]_INST_0_i_30_n_0 ;
  wire \pwm[11]_INST_0_i_31_n_0 ;
  wire \pwm[11]_INST_0_i_32_n_0 ;
  wire \pwm[11]_INST_0_i_33_n_0 ;
  wire \pwm[11]_INST_0_i_34_n_0 ;
  wire \pwm[11]_INST_0_i_35_n_0 ;
  wire \pwm[11]_INST_0_i_36_n_0 ;
  wire \pwm[11]_INST_0_i_3_n_0 ;
  wire \pwm[11]_INST_0_i_4_n_0 ;
  wire \pwm[11]_INST_0_i_5_n_0 ;
  wire \pwm[11]_INST_0_i_6_n_0 ;
  wire \pwm[11]_INST_0_i_7_n_0 ;
  wire \pwm[11]_INST_0_i_8_n_0 ;
  wire \pwm[11]_INST_0_i_9_n_0 ;
  wire \pwm[1]_INST_0_i_10_n_0 ;
  wire \pwm[1]_INST_0_i_11_n_0 ;
  wire \pwm[1]_INST_0_i_11_n_1 ;
  wire \pwm[1]_INST_0_i_11_n_2 ;
  wire \pwm[1]_INST_0_i_11_n_3 ;
  wire \pwm[1]_INST_0_i_12_n_0 ;
  wire \pwm[1]_INST_0_i_13_n_0 ;
  wire \pwm[1]_INST_0_i_14_n_0 ;
  wire \pwm[1]_INST_0_i_15_n_0 ;
  wire \pwm[1]_INST_0_i_16_n_0 ;
  wire \pwm[1]_INST_0_i_17_n_0 ;
  wire \pwm[1]_INST_0_i_18_n_0 ;
  wire \pwm[1]_INST_0_i_19_n_0 ;
  wire \pwm[1]_INST_0_i_1_n_1 ;
  wire \pwm[1]_INST_0_i_1_n_2 ;
  wire \pwm[1]_INST_0_i_1_n_3 ;
  wire \pwm[1]_INST_0_i_20_n_0 ;
  wire \pwm[1]_INST_0_i_20_n_1 ;
  wire \pwm[1]_INST_0_i_20_n_2 ;
  wire \pwm[1]_INST_0_i_20_n_3 ;
  wire \pwm[1]_INST_0_i_21_n_0 ;
  wire \pwm[1]_INST_0_i_22_n_0 ;
  wire \pwm[1]_INST_0_i_23_n_0 ;
  wire \pwm[1]_INST_0_i_24_n_0 ;
  wire \pwm[1]_INST_0_i_25_n_0 ;
  wire \pwm[1]_INST_0_i_26_n_0 ;
  wire \pwm[1]_INST_0_i_27_n_0 ;
  wire \pwm[1]_INST_0_i_28_n_0 ;
  wire \pwm[1]_INST_0_i_29_n_0 ;
  wire \pwm[1]_INST_0_i_2_n_0 ;
  wire \pwm[1]_INST_0_i_2_n_1 ;
  wire \pwm[1]_INST_0_i_2_n_2 ;
  wire \pwm[1]_INST_0_i_2_n_3 ;
  wire \pwm[1]_INST_0_i_30_n_0 ;
  wire \pwm[1]_INST_0_i_31_n_0 ;
  wire \pwm[1]_INST_0_i_32_n_0 ;
  wire \pwm[1]_INST_0_i_33_n_0 ;
  wire \pwm[1]_INST_0_i_34_n_0 ;
  wire \pwm[1]_INST_0_i_35_n_0 ;
  wire \pwm[1]_INST_0_i_36_n_0 ;
  wire \pwm[1]_INST_0_i_3_n_0 ;
  wire \pwm[1]_INST_0_i_4_n_0 ;
  wire \pwm[1]_INST_0_i_5_n_0 ;
  wire \pwm[1]_INST_0_i_6_n_0 ;
  wire \pwm[1]_INST_0_i_7_n_0 ;
  wire \pwm[1]_INST_0_i_8_n_0 ;
  wire \pwm[1]_INST_0_i_9_n_0 ;
  wire \pwm[2]_INST_0_i_10_n_0 ;
  wire \pwm[2]_INST_0_i_11_n_0 ;
  wire \pwm[2]_INST_0_i_11_n_1 ;
  wire \pwm[2]_INST_0_i_11_n_2 ;
  wire \pwm[2]_INST_0_i_11_n_3 ;
  wire \pwm[2]_INST_0_i_12_n_0 ;
  wire \pwm[2]_INST_0_i_13_n_0 ;
  wire \pwm[2]_INST_0_i_14_n_0 ;
  wire \pwm[2]_INST_0_i_15_n_0 ;
  wire \pwm[2]_INST_0_i_16_n_0 ;
  wire \pwm[2]_INST_0_i_17_n_0 ;
  wire \pwm[2]_INST_0_i_18_n_0 ;
  wire \pwm[2]_INST_0_i_19_n_0 ;
  wire \pwm[2]_INST_0_i_1_n_1 ;
  wire \pwm[2]_INST_0_i_1_n_2 ;
  wire \pwm[2]_INST_0_i_1_n_3 ;
  wire \pwm[2]_INST_0_i_20_n_0 ;
  wire \pwm[2]_INST_0_i_20_n_1 ;
  wire \pwm[2]_INST_0_i_20_n_2 ;
  wire \pwm[2]_INST_0_i_20_n_3 ;
  wire \pwm[2]_INST_0_i_21_n_0 ;
  wire \pwm[2]_INST_0_i_22_n_0 ;
  wire \pwm[2]_INST_0_i_23_n_0 ;
  wire \pwm[2]_INST_0_i_24_n_0 ;
  wire \pwm[2]_INST_0_i_25_n_0 ;
  wire \pwm[2]_INST_0_i_26_n_0 ;
  wire \pwm[2]_INST_0_i_27_n_0 ;
  wire \pwm[2]_INST_0_i_28_n_0 ;
  wire \pwm[2]_INST_0_i_29_n_0 ;
  wire \pwm[2]_INST_0_i_2_n_0 ;
  wire \pwm[2]_INST_0_i_2_n_1 ;
  wire \pwm[2]_INST_0_i_2_n_2 ;
  wire \pwm[2]_INST_0_i_2_n_3 ;
  wire \pwm[2]_INST_0_i_30_n_0 ;
  wire \pwm[2]_INST_0_i_31_n_0 ;
  wire \pwm[2]_INST_0_i_32_n_0 ;
  wire \pwm[2]_INST_0_i_33_n_0 ;
  wire \pwm[2]_INST_0_i_34_n_0 ;
  wire \pwm[2]_INST_0_i_35_n_0 ;
  wire \pwm[2]_INST_0_i_36_n_0 ;
  wire \pwm[2]_INST_0_i_3_n_0 ;
  wire \pwm[2]_INST_0_i_4_n_0 ;
  wire \pwm[2]_INST_0_i_5_n_0 ;
  wire \pwm[2]_INST_0_i_6_n_0 ;
  wire \pwm[2]_INST_0_i_7_n_0 ;
  wire \pwm[2]_INST_0_i_8_n_0 ;
  wire \pwm[2]_INST_0_i_9_n_0 ;
  wire \pwm[3]_INST_0_i_10_n_0 ;
  wire \pwm[3]_INST_0_i_11_n_0 ;
  wire \pwm[3]_INST_0_i_11_n_1 ;
  wire \pwm[3]_INST_0_i_11_n_2 ;
  wire \pwm[3]_INST_0_i_11_n_3 ;
  wire \pwm[3]_INST_0_i_12_n_0 ;
  wire \pwm[3]_INST_0_i_13_n_0 ;
  wire \pwm[3]_INST_0_i_14_n_0 ;
  wire \pwm[3]_INST_0_i_15_n_0 ;
  wire \pwm[3]_INST_0_i_16_n_0 ;
  wire \pwm[3]_INST_0_i_17_n_0 ;
  wire \pwm[3]_INST_0_i_18_n_0 ;
  wire \pwm[3]_INST_0_i_19_n_0 ;
  wire \pwm[3]_INST_0_i_1_n_1 ;
  wire \pwm[3]_INST_0_i_1_n_2 ;
  wire \pwm[3]_INST_0_i_1_n_3 ;
  wire \pwm[3]_INST_0_i_20_n_0 ;
  wire \pwm[3]_INST_0_i_20_n_1 ;
  wire \pwm[3]_INST_0_i_20_n_2 ;
  wire \pwm[3]_INST_0_i_20_n_3 ;
  wire \pwm[3]_INST_0_i_21_n_0 ;
  wire \pwm[3]_INST_0_i_22_n_0 ;
  wire \pwm[3]_INST_0_i_23_n_0 ;
  wire \pwm[3]_INST_0_i_24_n_0 ;
  wire \pwm[3]_INST_0_i_25_n_0 ;
  wire \pwm[3]_INST_0_i_26_n_0 ;
  wire \pwm[3]_INST_0_i_27_n_0 ;
  wire \pwm[3]_INST_0_i_28_n_0 ;
  wire \pwm[3]_INST_0_i_29_n_0 ;
  wire \pwm[3]_INST_0_i_2_n_0 ;
  wire \pwm[3]_INST_0_i_2_n_1 ;
  wire \pwm[3]_INST_0_i_2_n_2 ;
  wire \pwm[3]_INST_0_i_2_n_3 ;
  wire \pwm[3]_INST_0_i_30_n_0 ;
  wire \pwm[3]_INST_0_i_31_n_0 ;
  wire \pwm[3]_INST_0_i_32_n_0 ;
  wire \pwm[3]_INST_0_i_33_n_0 ;
  wire \pwm[3]_INST_0_i_34_n_0 ;
  wire \pwm[3]_INST_0_i_35_n_0 ;
  wire \pwm[3]_INST_0_i_36_n_0 ;
  wire \pwm[3]_INST_0_i_3_n_0 ;
  wire \pwm[3]_INST_0_i_4_n_0 ;
  wire \pwm[3]_INST_0_i_5_n_0 ;
  wire \pwm[3]_INST_0_i_6_n_0 ;
  wire \pwm[3]_INST_0_i_7_n_0 ;
  wire \pwm[3]_INST_0_i_8_n_0 ;
  wire \pwm[3]_INST_0_i_9_n_0 ;
  wire \pwm[4]_INST_0_i_10_n_0 ;
  wire \pwm[4]_INST_0_i_11_n_0 ;
  wire \pwm[4]_INST_0_i_11_n_1 ;
  wire \pwm[4]_INST_0_i_11_n_2 ;
  wire \pwm[4]_INST_0_i_11_n_3 ;
  wire \pwm[4]_INST_0_i_12_n_0 ;
  wire \pwm[4]_INST_0_i_13_n_0 ;
  wire \pwm[4]_INST_0_i_14_n_0 ;
  wire \pwm[4]_INST_0_i_15_n_0 ;
  wire \pwm[4]_INST_0_i_16_n_0 ;
  wire \pwm[4]_INST_0_i_17_n_0 ;
  wire \pwm[4]_INST_0_i_18_n_0 ;
  wire \pwm[4]_INST_0_i_19_n_0 ;
  wire \pwm[4]_INST_0_i_1_n_1 ;
  wire \pwm[4]_INST_0_i_1_n_2 ;
  wire \pwm[4]_INST_0_i_1_n_3 ;
  wire \pwm[4]_INST_0_i_20_n_0 ;
  wire \pwm[4]_INST_0_i_20_n_1 ;
  wire \pwm[4]_INST_0_i_20_n_2 ;
  wire \pwm[4]_INST_0_i_20_n_3 ;
  wire \pwm[4]_INST_0_i_21_n_0 ;
  wire \pwm[4]_INST_0_i_22_n_0 ;
  wire \pwm[4]_INST_0_i_23_n_0 ;
  wire \pwm[4]_INST_0_i_24_n_0 ;
  wire \pwm[4]_INST_0_i_25_n_0 ;
  wire \pwm[4]_INST_0_i_26_n_0 ;
  wire \pwm[4]_INST_0_i_27_n_0 ;
  wire \pwm[4]_INST_0_i_28_n_0 ;
  wire \pwm[4]_INST_0_i_29_n_0 ;
  wire \pwm[4]_INST_0_i_2_n_0 ;
  wire \pwm[4]_INST_0_i_2_n_1 ;
  wire \pwm[4]_INST_0_i_2_n_2 ;
  wire \pwm[4]_INST_0_i_2_n_3 ;
  wire \pwm[4]_INST_0_i_30_n_0 ;
  wire \pwm[4]_INST_0_i_31_n_0 ;
  wire \pwm[4]_INST_0_i_32_n_0 ;
  wire \pwm[4]_INST_0_i_33_n_0 ;
  wire \pwm[4]_INST_0_i_34_n_0 ;
  wire \pwm[4]_INST_0_i_35_n_0 ;
  wire \pwm[4]_INST_0_i_36_n_0 ;
  wire \pwm[4]_INST_0_i_3_n_0 ;
  wire \pwm[4]_INST_0_i_4_n_0 ;
  wire \pwm[4]_INST_0_i_5_n_0 ;
  wire \pwm[4]_INST_0_i_6_n_0 ;
  wire \pwm[4]_INST_0_i_7_n_0 ;
  wire \pwm[4]_INST_0_i_8_n_0 ;
  wire \pwm[4]_INST_0_i_9_n_0 ;
  wire \pwm[5]_INST_0_i_10_n_0 ;
  wire \pwm[5]_INST_0_i_11_n_0 ;
  wire \pwm[5]_INST_0_i_11_n_1 ;
  wire \pwm[5]_INST_0_i_11_n_2 ;
  wire \pwm[5]_INST_0_i_11_n_3 ;
  wire \pwm[5]_INST_0_i_12_n_0 ;
  wire \pwm[5]_INST_0_i_13_n_0 ;
  wire \pwm[5]_INST_0_i_14_n_0 ;
  wire \pwm[5]_INST_0_i_15_n_0 ;
  wire \pwm[5]_INST_0_i_16_n_0 ;
  wire \pwm[5]_INST_0_i_17_n_0 ;
  wire \pwm[5]_INST_0_i_18_n_0 ;
  wire \pwm[5]_INST_0_i_19_n_0 ;
  wire \pwm[5]_INST_0_i_1_n_1 ;
  wire \pwm[5]_INST_0_i_1_n_2 ;
  wire \pwm[5]_INST_0_i_1_n_3 ;
  wire \pwm[5]_INST_0_i_20_n_0 ;
  wire \pwm[5]_INST_0_i_20_n_1 ;
  wire \pwm[5]_INST_0_i_20_n_2 ;
  wire \pwm[5]_INST_0_i_20_n_3 ;
  wire \pwm[5]_INST_0_i_21_n_0 ;
  wire \pwm[5]_INST_0_i_22_n_0 ;
  wire \pwm[5]_INST_0_i_23_n_0 ;
  wire \pwm[5]_INST_0_i_24_n_0 ;
  wire \pwm[5]_INST_0_i_25_n_0 ;
  wire \pwm[5]_INST_0_i_26_n_0 ;
  wire \pwm[5]_INST_0_i_27_n_0 ;
  wire \pwm[5]_INST_0_i_28_n_0 ;
  wire \pwm[5]_INST_0_i_29_n_0 ;
  wire \pwm[5]_INST_0_i_2_n_0 ;
  wire \pwm[5]_INST_0_i_2_n_1 ;
  wire \pwm[5]_INST_0_i_2_n_2 ;
  wire \pwm[5]_INST_0_i_2_n_3 ;
  wire \pwm[5]_INST_0_i_30_n_0 ;
  wire \pwm[5]_INST_0_i_31_n_0 ;
  wire \pwm[5]_INST_0_i_32_n_0 ;
  wire \pwm[5]_INST_0_i_33_n_0 ;
  wire \pwm[5]_INST_0_i_34_n_0 ;
  wire \pwm[5]_INST_0_i_35_n_0 ;
  wire \pwm[5]_INST_0_i_36_n_0 ;
  wire \pwm[5]_INST_0_i_3_n_0 ;
  wire \pwm[5]_INST_0_i_4_n_0 ;
  wire \pwm[5]_INST_0_i_5_n_0 ;
  wire \pwm[5]_INST_0_i_6_n_0 ;
  wire \pwm[5]_INST_0_i_7_n_0 ;
  wire \pwm[5]_INST_0_i_8_n_0 ;
  wire \pwm[5]_INST_0_i_9_n_0 ;
  wire \pwm[6]_INST_0_i_10_n_0 ;
  wire \pwm[6]_INST_0_i_11_n_0 ;
  wire \pwm[6]_INST_0_i_11_n_1 ;
  wire \pwm[6]_INST_0_i_11_n_2 ;
  wire \pwm[6]_INST_0_i_11_n_3 ;
  wire \pwm[6]_INST_0_i_12_n_0 ;
  wire \pwm[6]_INST_0_i_13_n_0 ;
  wire \pwm[6]_INST_0_i_14_n_0 ;
  wire \pwm[6]_INST_0_i_15_n_0 ;
  wire \pwm[6]_INST_0_i_16_n_0 ;
  wire \pwm[6]_INST_0_i_17_n_0 ;
  wire \pwm[6]_INST_0_i_18_n_0 ;
  wire \pwm[6]_INST_0_i_19_n_0 ;
  wire \pwm[6]_INST_0_i_1_n_1 ;
  wire \pwm[6]_INST_0_i_1_n_2 ;
  wire \pwm[6]_INST_0_i_1_n_3 ;
  wire \pwm[6]_INST_0_i_20_n_0 ;
  wire \pwm[6]_INST_0_i_20_n_1 ;
  wire \pwm[6]_INST_0_i_20_n_2 ;
  wire \pwm[6]_INST_0_i_20_n_3 ;
  wire \pwm[6]_INST_0_i_21_n_0 ;
  wire \pwm[6]_INST_0_i_22_n_0 ;
  wire \pwm[6]_INST_0_i_23_n_0 ;
  wire \pwm[6]_INST_0_i_24_n_0 ;
  wire \pwm[6]_INST_0_i_25_n_0 ;
  wire \pwm[6]_INST_0_i_26_n_0 ;
  wire \pwm[6]_INST_0_i_27_n_0 ;
  wire \pwm[6]_INST_0_i_28_n_0 ;
  wire \pwm[6]_INST_0_i_29_n_0 ;
  wire \pwm[6]_INST_0_i_2_n_0 ;
  wire \pwm[6]_INST_0_i_2_n_1 ;
  wire \pwm[6]_INST_0_i_2_n_2 ;
  wire \pwm[6]_INST_0_i_2_n_3 ;
  wire \pwm[6]_INST_0_i_30_n_0 ;
  wire \pwm[6]_INST_0_i_31_n_0 ;
  wire \pwm[6]_INST_0_i_32_n_0 ;
  wire \pwm[6]_INST_0_i_33_n_0 ;
  wire \pwm[6]_INST_0_i_34_n_0 ;
  wire \pwm[6]_INST_0_i_35_n_0 ;
  wire \pwm[6]_INST_0_i_36_n_0 ;
  wire \pwm[6]_INST_0_i_3_n_0 ;
  wire \pwm[6]_INST_0_i_4_n_0 ;
  wire \pwm[6]_INST_0_i_5_n_0 ;
  wire \pwm[6]_INST_0_i_6_n_0 ;
  wire \pwm[6]_INST_0_i_7_n_0 ;
  wire \pwm[6]_INST_0_i_8_n_0 ;
  wire \pwm[6]_INST_0_i_9_n_0 ;
  wire \pwm[7]_INST_0_i_10_n_0 ;
  wire \pwm[7]_INST_0_i_11_n_0 ;
  wire \pwm[7]_INST_0_i_11_n_1 ;
  wire \pwm[7]_INST_0_i_11_n_2 ;
  wire \pwm[7]_INST_0_i_11_n_3 ;
  wire \pwm[7]_INST_0_i_12_n_0 ;
  wire \pwm[7]_INST_0_i_13_n_0 ;
  wire \pwm[7]_INST_0_i_14_n_0 ;
  wire \pwm[7]_INST_0_i_15_n_0 ;
  wire \pwm[7]_INST_0_i_16_n_0 ;
  wire \pwm[7]_INST_0_i_17_n_0 ;
  wire \pwm[7]_INST_0_i_18_n_0 ;
  wire \pwm[7]_INST_0_i_19_n_0 ;
  wire \pwm[7]_INST_0_i_1_n_1 ;
  wire \pwm[7]_INST_0_i_1_n_2 ;
  wire \pwm[7]_INST_0_i_1_n_3 ;
  wire \pwm[7]_INST_0_i_20_n_0 ;
  wire \pwm[7]_INST_0_i_20_n_1 ;
  wire \pwm[7]_INST_0_i_20_n_2 ;
  wire \pwm[7]_INST_0_i_20_n_3 ;
  wire \pwm[7]_INST_0_i_21_n_0 ;
  wire \pwm[7]_INST_0_i_22_n_0 ;
  wire \pwm[7]_INST_0_i_23_n_0 ;
  wire \pwm[7]_INST_0_i_24_n_0 ;
  wire \pwm[7]_INST_0_i_25_n_0 ;
  wire \pwm[7]_INST_0_i_26_n_0 ;
  wire \pwm[7]_INST_0_i_27_n_0 ;
  wire \pwm[7]_INST_0_i_28_n_0 ;
  wire \pwm[7]_INST_0_i_29_n_0 ;
  wire \pwm[7]_INST_0_i_2_n_0 ;
  wire \pwm[7]_INST_0_i_2_n_1 ;
  wire \pwm[7]_INST_0_i_2_n_2 ;
  wire \pwm[7]_INST_0_i_2_n_3 ;
  wire \pwm[7]_INST_0_i_30_n_0 ;
  wire \pwm[7]_INST_0_i_31_n_0 ;
  wire \pwm[7]_INST_0_i_32_n_0 ;
  wire \pwm[7]_INST_0_i_33_n_0 ;
  wire \pwm[7]_INST_0_i_34_n_0 ;
  wire \pwm[7]_INST_0_i_35_n_0 ;
  wire \pwm[7]_INST_0_i_36_n_0 ;
  wire \pwm[7]_INST_0_i_3_n_0 ;
  wire \pwm[7]_INST_0_i_4_n_0 ;
  wire \pwm[7]_INST_0_i_5_n_0 ;
  wire \pwm[7]_INST_0_i_6_n_0 ;
  wire \pwm[7]_INST_0_i_7_n_0 ;
  wire \pwm[7]_INST_0_i_8_n_0 ;
  wire \pwm[7]_INST_0_i_9_n_0 ;
  wire \pwm[8]_INST_0_i_10_n_0 ;
  wire \pwm[8]_INST_0_i_11_n_0 ;
  wire \pwm[8]_INST_0_i_11_n_1 ;
  wire \pwm[8]_INST_0_i_11_n_2 ;
  wire \pwm[8]_INST_0_i_11_n_3 ;
  wire \pwm[8]_INST_0_i_12_n_0 ;
  wire \pwm[8]_INST_0_i_13_n_0 ;
  wire \pwm[8]_INST_0_i_14_n_0 ;
  wire \pwm[8]_INST_0_i_15_n_0 ;
  wire \pwm[8]_INST_0_i_16_n_0 ;
  wire \pwm[8]_INST_0_i_17_n_0 ;
  wire \pwm[8]_INST_0_i_18_n_0 ;
  wire \pwm[8]_INST_0_i_19_n_0 ;
  wire \pwm[8]_INST_0_i_1_n_1 ;
  wire \pwm[8]_INST_0_i_1_n_2 ;
  wire \pwm[8]_INST_0_i_1_n_3 ;
  wire \pwm[8]_INST_0_i_20_n_0 ;
  wire \pwm[8]_INST_0_i_20_n_1 ;
  wire \pwm[8]_INST_0_i_20_n_2 ;
  wire \pwm[8]_INST_0_i_20_n_3 ;
  wire \pwm[8]_INST_0_i_21_n_0 ;
  wire \pwm[8]_INST_0_i_22_n_0 ;
  wire \pwm[8]_INST_0_i_23_n_0 ;
  wire \pwm[8]_INST_0_i_24_n_0 ;
  wire \pwm[8]_INST_0_i_25_n_0 ;
  wire \pwm[8]_INST_0_i_26_n_0 ;
  wire \pwm[8]_INST_0_i_27_n_0 ;
  wire \pwm[8]_INST_0_i_28_n_0 ;
  wire \pwm[8]_INST_0_i_29_n_0 ;
  wire \pwm[8]_INST_0_i_2_n_0 ;
  wire \pwm[8]_INST_0_i_2_n_1 ;
  wire \pwm[8]_INST_0_i_2_n_2 ;
  wire \pwm[8]_INST_0_i_2_n_3 ;
  wire \pwm[8]_INST_0_i_30_n_0 ;
  wire \pwm[8]_INST_0_i_31_n_0 ;
  wire \pwm[8]_INST_0_i_32_n_0 ;
  wire \pwm[8]_INST_0_i_33_n_0 ;
  wire \pwm[8]_INST_0_i_34_n_0 ;
  wire \pwm[8]_INST_0_i_35_n_0 ;
  wire \pwm[8]_INST_0_i_36_n_0 ;
  wire \pwm[8]_INST_0_i_3_n_0 ;
  wire \pwm[8]_INST_0_i_4_n_0 ;
  wire \pwm[8]_INST_0_i_5_n_0 ;
  wire \pwm[8]_INST_0_i_6_n_0 ;
  wire \pwm[8]_INST_0_i_7_n_0 ;
  wire \pwm[8]_INST_0_i_8_n_0 ;
  wire \pwm[8]_INST_0_i_9_n_0 ;
  wire \pwm[9]_INST_0_i_10_n_0 ;
  wire \pwm[9]_INST_0_i_11_n_0 ;
  wire \pwm[9]_INST_0_i_11_n_1 ;
  wire \pwm[9]_INST_0_i_11_n_2 ;
  wire \pwm[9]_INST_0_i_11_n_3 ;
  wire \pwm[9]_INST_0_i_12_n_0 ;
  wire \pwm[9]_INST_0_i_13_n_0 ;
  wire \pwm[9]_INST_0_i_14_n_0 ;
  wire \pwm[9]_INST_0_i_15_n_0 ;
  wire \pwm[9]_INST_0_i_16_n_0 ;
  wire \pwm[9]_INST_0_i_17_n_0 ;
  wire \pwm[9]_INST_0_i_18_n_0 ;
  wire \pwm[9]_INST_0_i_19_n_0 ;
  wire \pwm[9]_INST_0_i_1_n_1 ;
  wire \pwm[9]_INST_0_i_1_n_2 ;
  wire \pwm[9]_INST_0_i_1_n_3 ;
  wire \pwm[9]_INST_0_i_20_n_0 ;
  wire \pwm[9]_INST_0_i_20_n_1 ;
  wire \pwm[9]_INST_0_i_20_n_2 ;
  wire \pwm[9]_INST_0_i_20_n_3 ;
  wire \pwm[9]_INST_0_i_21_n_0 ;
  wire \pwm[9]_INST_0_i_22_n_0 ;
  wire \pwm[9]_INST_0_i_23_n_0 ;
  wire \pwm[9]_INST_0_i_24_n_0 ;
  wire \pwm[9]_INST_0_i_25_n_0 ;
  wire \pwm[9]_INST_0_i_26_n_0 ;
  wire \pwm[9]_INST_0_i_27_n_0 ;
  wire \pwm[9]_INST_0_i_28_n_0 ;
  wire \pwm[9]_INST_0_i_29_n_0 ;
  wire \pwm[9]_INST_0_i_2_n_0 ;
  wire \pwm[9]_INST_0_i_2_n_1 ;
  wire \pwm[9]_INST_0_i_2_n_2 ;
  wire \pwm[9]_INST_0_i_2_n_3 ;
  wire \pwm[9]_INST_0_i_30_n_0 ;
  wire \pwm[9]_INST_0_i_31_n_0 ;
  wire \pwm[9]_INST_0_i_32_n_0 ;
  wire \pwm[9]_INST_0_i_33_n_0 ;
  wire \pwm[9]_INST_0_i_34_n_0 ;
  wire \pwm[9]_INST_0_i_35_n_0 ;
  wire \pwm[9]_INST_0_i_36_n_0 ;
  wire \pwm[9]_INST_0_i_3_n_0 ;
  wire \pwm[9]_INST_0_i_4_n_0 ;
  wire \pwm[9]_INST_0_i_5_n_0 ;
  wire \pwm[9]_INST_0_i_6_n_0 ;
  wire \pwm[9]_INST_0_i_7_n_0 ;
  wire \pwm[9]_INST_0_i_8_n_0 ;
  wire \pwm[9]_INST_0_i_9_n_0 ;
  wire pwm_axi_aclk;
  wire [4:0]pwm_axi_araddr;
  wire pwm_axi_aresetn;
  wire pwm_axi_arready;
  wire pwm_axi_arvalid;
  wire [4:0]pwm_axi_awaddr;
  wire pwm_axi_awready;
  wire pwm_axi_awvalid;
  wire pwm_axi_bready;
  wire pwm_axi_bvalid;
  wire [31:0]pwm_axi_rdata;
  wire pwm_axi_rready;
  wire pwm_axi_rvalid;
  wire [31:0]pwm_axi_wdata;
  wire pwm_axi_wready;
  wire [3:0]pwm_axi_wstrb;
  wire pwm_axi_wvalid;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_max_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_max_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_max_reg[31]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_max_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[0]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[0]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[0]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[0]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[10]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[10]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[10]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[10]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[11]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[11]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[11]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[11]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[1]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[1]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[1]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[1]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[2]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[2]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[2]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[2]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[3]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[3]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[3]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[3]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[4]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[4]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[4]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[4]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[5]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[5]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[5]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[5]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[6]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[6]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[6]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[6]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[7]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[7]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[7]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[7]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[8]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[8]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[8]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[8]_INST_0_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[9]_INST_0_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[9]_INST_0_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[9]_INST_0_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_pwm[9]_INST_0_i_20_O_UNCONNECTED ;

  system_PWM_0_0_PWM_AXI PWM_AXI_inst
       (.Q(\duty_reg[0]_0 ),
        .S_AXI_ARREADY(pwm_axi_arready),
        .S_AXI_AWREADY(pwm_axi_awready),
        .S_AXI_WREADY(pwm_axi_wready),
        .\ctrl_reg_reg[0]_0 (ctrl_reg),
        .\duty_reg_reg[10][31]_0 (\duty_reg[10]_10 ),
        .\duty_reg_reg[11][31]_0 (\duty_reg[11]_11 ),
        .\duty_reg_reg[1][31]_0 (\duty_reg[1]_1 ),
        .\duty_reg_reg[2][31]_0 (\duty_reg[2]_2 ),
        .\duty_reg_reg[3][31]_0 (\duty_reg[3]_3 ),
        .\duty_reg_reg[4][31]_0 (\duty_reg[4]_4 ),
        .\duty_reg_reg[5][31]_0 (\duty_reg[5]_5 ),
        .\duty_reg_reg[6][31]_0 (\duty_reg[6]_6 ),
        .\duty_reg_reg[7][31]_0 (\duty_reg[7]_7 ),
        .\duty_reg_reg[8][31]_0 (\duty_reg[8]_8 ),
        .\duty_reg_reg[9][31]_0 (\duty_reg[9]_9 ),
        .\period_reg_reg[31]_0 (period_reg),
        .pwm_axi_aclk(pwm_axi_aclk),
        .pwm_axi_araddr(pwm_axi_araddr),
        .pwm_axi_aresetn(pwm_axi_aresetn),
        .pwm_axi_arvalid(pwm_axi_arvalid),
        .pwm_axi_awaddr(pwm_axi_awaddr),
        .pwm_axi_awvalid(pwm_axi_awvalid),
        .pwm_axi_bready(pwm_axi_bready),
        .pwm_axi_bvalid(pwm_axi_bvalid),
        .pwm_axi_rdata(pwm_axi_rdata),
        .pwm_axi_rready(pwm_axi_rready),
        .pwm_axi_rvalid(pwm_axi_rvalid),
        .pwm_axi_wdata(pwm_axi_wdata),
        .pwm_axi_wstrb(pwm_axi_wstrb),
        .pwm_axi_wvalid(pwm_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S(count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S(count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(\max[31]_i_1_n_0 ));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(\max[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    enable_reg
       (.C(pwm_axi_aclk),
        .CE(1'b1),
        .D(ctrl_reg),
        .Q(enable),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [0]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [0]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [10]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [10]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [11]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [11]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [12]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [12]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [13]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [13]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [14]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [14]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [15]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [15]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [16]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [16]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [17]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [17]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [18]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [18]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [19]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [19]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [1]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [1]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [20]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [20]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [21]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [21]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [22]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [22]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [23]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [23]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [24]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [24]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [25]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [25]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [26]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [26]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [27]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [27]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [28]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [28]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [29]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [29]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [2]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [2]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [30]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [30]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [31]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [31]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [3]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [3]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [4]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [4]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [5]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [5]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [6]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [6]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [7]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [7]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [8]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [8]),
        .R(1'b0));
  FDRE \genblk1[0].duty_reg_latch_reg[0][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[0]_0 [9]),
        .Q(\genblk1[0].duty_reg_latch_reg[0]_12 [9]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [0]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [0]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [10]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [10]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [11]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [11]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [12]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [12]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [13]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [13]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [14]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [14]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [15]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [15]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [16]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [16]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [17]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [17]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [18]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [18]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [19]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [19]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [1]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [1]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [20]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [20]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [21]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [21]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [22]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [22]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [23]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [23]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [24]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [24]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [25]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [25]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [26]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [26]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [27]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [27]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [28]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [28]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [29]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [29]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [2]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [2]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [30]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [30]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [31]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [31]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [3]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [3]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [4]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [4]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [5]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [5]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [6]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [6]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [7]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [7]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [8]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [8]),
        .R(1'b0));
  FDRE \genblk1[10].duty_reg_latch_reg[10][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[10]_10 [9]),
        .Q(\genblk1[10].duty_reg_latch_reg[10]_22 [9]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [0]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [0]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [10]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [10]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [11]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [11]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [12]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [12]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [13]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [13]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [14]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [14]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [15]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [15]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [16]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [16]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [17]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [17]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [18]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [18]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [19]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [19]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [1]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [1]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [20]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [20]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [21]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [21]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [22]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [22]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [23]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [23]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [24]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [24]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [25]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [25]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [26]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [26]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [27]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [27]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [28]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [28]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [29]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [29]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [2]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [2]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [30]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [30]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [31]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [31]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [3]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [3]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [4]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [4]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [5]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [5]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [6]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [6]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [7]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [7]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [8]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [8]),
        .R(1'b0));
  FDRE \genblk1[11].duty_reg_latch_reg[11][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[11]_11 [9]),
        .Q(\genblk1[11].duty_reg_latch_reg[11]_23 [9]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [0]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [0]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [10]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [10]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [11]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [11]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [12]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [12]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [13]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [13]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [14]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [14]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [15]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [15]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [16]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [16]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [17]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [17]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [18]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [18]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [19]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [19]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [1]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [1]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [20]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [20]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [21]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [21]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [22]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [22]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [23]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [23]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [24]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [24]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [25]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [25]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [26]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [26]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [27]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [27]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [28]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [28]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [29]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [29]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [2]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [2]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [30]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [30]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [31]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [31]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [3]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [3]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [4]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [4]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [5]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [5]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [6]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [6]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [7]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [7]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [8]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [8]),
        .R(1'b0));
  FDRE \genblk1[1].duty_reg_latch_reg[1][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[1]_1 [9]),
        .Q(\genblk1[1].duty_reg_latch_reg[1]_13 [9]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [0]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [0]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [10]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [10]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [11]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [11]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [12]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [12]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [13]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [13]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [14]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [14]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [15]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [15]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [16]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [16]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [17]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [17]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [18]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [18]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [19]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [19]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [1]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [1]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [20]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [20]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [21]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [21]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [22]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [22]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [23]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [23]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [24]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [24]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [25]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [25]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [26]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [26]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [27]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [27]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [28]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [28]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [29]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [29]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [2]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [2]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [30]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [30]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [31]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [31]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [3]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [3]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [4]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [4]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [5]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [5]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [6]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [6]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [7]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [7]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [8]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [8]),
        .R(1'b0));
  FDRE \genblk1[2].duty_reg_latch_reg[2][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[2]_2 [9]),
        .Q(\genblk1[2].duty_reg_latch_reg[2]_14 [9]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [0]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [0]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [10]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [10]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [11]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [11]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [12]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [12]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [13]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [13]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [14]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [14]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [15]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [15]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [16]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [16]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [17]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [17]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [18]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [18]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [19]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [19]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [1]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [1]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [20]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [20]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [21]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [21]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [22]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [22]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [23]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [23]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [24]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [24]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [25]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [25]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [26]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [26]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [27]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [27]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [28]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [28]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [29]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [29]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [2]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [2]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [30]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [30]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [31]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [31]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [3]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [3]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [4]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [4]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [5]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [5]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [6]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [6]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [7]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [7]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [8]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [8]),
        .R(1'b0));
  FDRE \genblk1[3].duty_reg_latch_reg[3][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[3]_3 [9]),
        .Q(\genblk1[3].duty_reg_latch_reg[3]_15 [9]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [0]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [0]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [10]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [10]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [11]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [11]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [12]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [12]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [13]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [13]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [14]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [14]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [15]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [15]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [16]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [16]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [17]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [17]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [18]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [18]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [19]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [19]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [1]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [1]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [20]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [20]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [21]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [21]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [22]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [22]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [23]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [23]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [24]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [24]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [25]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [25]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [26]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [26]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [27]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [27]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [28]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [28]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [29]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [29]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [2]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [2]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [30]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [30]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [31]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [31]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [3]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [3]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [4]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [4]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [5]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [5]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [6]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [6]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [7]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [7]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [8]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [8]),
        .R(1'b0));
  FDRE \genblk1[4].duty_reg_latch_reg[4][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[4]_4 [9]),
        .Q(\genblk1[4].duty_reg_latch_reg[4]_16 [9]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [0]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [0]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [10]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [10]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [11]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [11]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [12]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [12]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [13]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [13]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [14]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [14]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [15]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [15]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [16]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [16]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [17]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [17]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [18]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [18]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [19]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [19]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [1]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [1]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [20]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [20]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [21]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [21]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [22]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [22]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [23]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [23]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [24]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [24]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [25]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [25]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [26]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [26]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [27]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [27]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [28]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [28]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [29]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [29]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [2]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [2]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [30]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [30]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [31]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [31]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [3]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [3]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [4]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [4]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [5]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [5]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [6]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [6]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [7]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [7]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [8]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [8]),
        .R(1'b0));
  FDRE \genblk1[5].duty_reg_latch_reg[5][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[5]_5 [9]),
        .Q(\genblk1[5].duty_reg_latch_reg[5]_17 [9]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [0]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [0]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [10]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [10]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [11]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [11]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [12]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [12]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [13]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [13]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [14]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [14]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [15]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [15]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [16]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [16]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [17]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [17]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [18]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [18]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [19]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [19]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [1]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [1]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [20]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [20]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [21]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [21]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [22]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [22]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [23]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [23]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [24]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [24]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [25]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [25]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [26]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [26]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [27]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [27]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [28]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [28]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [29]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [29]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [2]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [2]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [30]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [30]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [31]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [31]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [3]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [3]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [4]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [4]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [5]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [5]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [6]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [6]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [7]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [7]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [8]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [8]),
        .R(1'b0));
  FDRE \genblk1[6].duty_reg_latch_reg[6][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[6]_6 [9]),
        .Q(\genblk1[6].duty_reg_latch_reg[6]_18 [9]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [0]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [0]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [10]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [10]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [11]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [11]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [12]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [12]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [13]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [13]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [14]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [14]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [15]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [15]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [16]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [16]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [17]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [17]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [18]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [18]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [19]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [19]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [1]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [1]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [20]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [20]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [21]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [21]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [22]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [22]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [23]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [23]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [24]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [24]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [25]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [25]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [26]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [26]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [27]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [27]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [28]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [28]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [29]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [29]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [2]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [2]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [30]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [30]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [31]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [31]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [3]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [3]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [4]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [4]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [5]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [5]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [6]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [6]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [7]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [7]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [8]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [8]),
        .R(1'b0));
  FDRE \genblk1[7].duty_reg_latch_reg[7][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[7]_7 [9]),
        .Q(\genblk1[7].duty_reg_latch_reg[7]_19 [9]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [0]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [0]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [10]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [10]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [11]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [11]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [12]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [12]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [13]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [13]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [14]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [14]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [15]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [15]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [16]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [16]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [17]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [17]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [18]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [18]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [19]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [19]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [1]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [1]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [20]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [20]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [21]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [21]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [22]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [22]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [23]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [23]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [24]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [24]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [25]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [25]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [26]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [26]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [27]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [27]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [28]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [28]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [29]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [29]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [2]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [2]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [30]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [30]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [31]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [31]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [3]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [3]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [4]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [4]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [5]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [5]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [6]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [6]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [7]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [7]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [8]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [8]),
        .R(1'b0));
  FDRE \genblk1[8].duty_reg_latch_reg[8][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[8]_8 [9]),
        .Q(\genblk1[8].duty_reg_latch_reg[8]_20 [9]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [0]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [0]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [10]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [10]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [11]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [11]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [12]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [12]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [13]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [13]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [14]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [14]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [15]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [15]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [16]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [16]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [17]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [17]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [18]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [18]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [19]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [19]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [1]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [1]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [20]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [20]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [21]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [21]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [22]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [22]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [23]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [23]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [24]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [24]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [25]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [25]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [26]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [26]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [27]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [27]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [28]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [28]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [29]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [29]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [2]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [2]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [30]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [30]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [31]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [31]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [3]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [3]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [4]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [4]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [5]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [5]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [6]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [6]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [7]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [7]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [8]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [8]),
        .R(1'b0));
  FDRE \genblk1[9].duty_reg_latch_reg[9][9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(\duty_reg[9]_9 [9]),
        .Q(\genblk1[9].duty_reg_latch_reg[9]_21 [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \max[31]_i_1 
       (.I0(enable),
        .I1(count1),
        .O(\max[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_10 
       (.I0(\max_reg_n_0_[26] ),
        .I1(count_reg[26]),
        .I2(\max_reg_n_0_[27] ),
        .I3(count_reg[27]),
        .O(\max[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_11 
       (.I0(\max_reg_n_0_[24] ),
        .I1(count_reg[24]),
        .I2(\max_reg_n_0_[25] ),
        .I3(count_reg[25]),
        .O(\max[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_13 
       (.I0(\max_reg_n_0_[22] ),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\max_reg_n_0_[23] ),
        .O(\max[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_14 
       (.I0(\max_reg_n_0_[20] ),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\max_reg_n_0_[21] ),
        .O(\max[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_15 
       (.I0(\max_reg_n_0_[18] ),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\max_reg_n_0_[19] ),
        .O(\max[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_16 
       (.I0(\max_reg_n_0_[16] ),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\max_reg_n_0_[17] ),
        .O(\max[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_17 
       (.I0(\max_reg_n_0_[22] ),
        .I1(count_reg[22]),
        .I2(\max_reg_n_0_[23] ),
        .I3(count_reg[23]),
        .O(\max[31]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_18 
       (.I0(\max_reg_n_0_[20] ),
        .I1(count_reg[20]),
        .I2(\max_reg_n_0_[21] ),
        .I3(count_reg[21]),
        .O(\max[31]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_19 
       (.I0(\max_reg_n_0_[18] ),
        .I1(count_reg[18]),
        .I2(\max_reg_n_0_[19] ),
        .I3(count_reg[19]),
        .O(\max[31]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_20 
       (.I0(\max_reg_n_0_[16] ),
        .I1(count_reg[16]),
        .I2(\max_reg_n_0_[17] ),
        .I3(count_reg[17]),
        .O(\max[31]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_22 
       (.I0(\max_reg_n_0_[14] ),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\max_reg_n_0_[15] ),
        .O(\max[31]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_23 
       (.I0(\max_reg_n_0_[12] ),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\max_reg_n_0_[13] ),
        .O(\max[31]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_24 
       (.I0(\max_reg_n_0_[10] ),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\max_reg_n_0_[11] ),
        .O(\max[31]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_25 
       (.I0(\max_reg_n_0_[8] ),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\max_reg_n_0_[9] ),
        .O(\max[31]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_26 
       (.I0(\max_reg_n_0_[14] ),
        .I1(count_reg[14]),
        .I2(\max_reg_n_0_[15] ),
        .I3(count_reg[15]),
        .O(\max[31]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_27 
       (.I0(\max_reg_n_0_[12] ),
        .I1(count_reg[12]),
        .I2(\max_reg_n_0_[13] ),
        .I3(count_reg[13]),
        .O(\max[31]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_28 
       (.I0(\max_reg_n_0_[10] ),
        .I1(count_reg[10]),
        .I2(\max_reg_n_0_[11] ),
        .I3(count_reg[11]),
        .O(\max[31]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_29 
       (.I0(\max_reg_n_0_[8] ),
        .I1(count_reg[8]),
        .I2(\max_reg_n_0_[9] ),
        .I3(count_reg[9]),
        .O(\max[31]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_30 
       (.I0(\max_reg_n_0_[6] ),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\max_reg_n_0_[7] ),
        .O(\max[31]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_31 
       (.I0(\max_reg_n_0_[4] ),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\max_reg_n_0_[5] ),
        .O(\max[31]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_32 
       (.I0(\max_reg_n_0_[2] ),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\max_reg_n_0_[3] ),
        .O(\max[31]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_33 
       (.I0(\max_reg_n_0_[0] ),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\max_reg_n_0_[1] ),
        .O(\max[31]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_34 
       (.I0(\max_reg_n_0_[6] ),
        .I1(count_reg[6]),
        .I2(\max_reg_n_0_[7] ),
        .I3(count_reg[7]),
        .O(\max[31]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_35 
       (.I0(\max_reg_n_0_[4] ),
        .I1(count_reg[4]),
        .I2(\max_reg_n_0_[5] ),
        .I3(count_reg[5]),
        .O(\max[31]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_36 
       (.I0(\max_reg_n_0_[2] ),
        .I1(count_reg[2]),
        .I2(\max_reg_n_0_[3] ),
        .I3(count_reg[3]),
        .O(\max[31]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_37 
       (.I0(\max_reg_n_0_[0] ),
        .I1(count_reg[0]),
        .I2(\max_reg_n_0_[1] ),
        .I3(count_reg[1]),
        .O(\max[31]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_4 
       (.I0(\max_reg_n_0_[30] ),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\max_reg_n_0_[31] ),
        .O(\max[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_5 
       (.I0(\max_reg_n_0_[28] ),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\max_reg_n_0_[29] ),
        .O(\max[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_6 
       (.I0(\max_reg_n_0_[26] ),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\max_reg_n_0_[27] ),
        .O(\max[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \max[31]_i_7 
       (.I0(\max_reg_n_0_[24] ),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\max_reg_n_0_[25] ),
        .O(\max[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_8 
       (.I0(\max_reg_n_0_[30] ),
        .I1(count_reg[30]),
        .I2(\max_reg_n_0_[31] ),
        .I3(count_reg[31]),
        .O(\max[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \max[31]_i_9 
       (.I0(\max_reg_n_0_[28] ),
        .I1(count_reg[28]),
        .I2(\max_reg_n_0_[29] ),
        .I3(count_reg[29]),
        .O(\max[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[0] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[0]),
        .Q(\max_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[10] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[10]),
        .Q(\max_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[11] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[11]),
        .Q(\max_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \max_reg[12] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[12]),
        .Q(\max_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[13] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[13]),
        .Q(\max_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[14] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[14]),
        .Q(\max_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[15] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[15]),
        .Q(\max_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[16] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[16]),
        .Q(\max_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[17] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[17]),
        .Q(\max_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[18] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[18]),
        .Q(\max_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[19] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[19]),
        .Q(\max_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[1] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[1]),
        .Q(\max_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[20] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[20]),
        .Q(\max_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[21] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[21]),
        .Q(\max_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[22] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[22]),
        .Q(\max_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[23] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[23]),
        .Q(\max_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[24] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[24]),
        .Q(\max_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[25] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[25]),
        .Q(\max_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[26] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[26]),
        .Q(\max_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[27] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[27]),
        .Q(\max_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[28] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[28]),
        .Q(\max_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[29] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[29]),
        .Q(\max_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[2] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[2]),
        .Q(\max_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[30] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[30]),
        .Q(\max_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[31] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[31]),
        .Q(\max_reg_n_0_[31] ),
        .R(1'b0));
  CARRY4 \max_reg[31]_i_12 
       (.CI(\max_reg[31]_i_21_n_0 ),
        .CO({\max_reg[31]_i_12_n_0 ,\max_reg[31]_i_12_n_1 ,\max_reg[31]_i_12_n_2 ,\max_reg[31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({\max[31]_i_22_n_0 ,\max[31]_i_23_n_0 ,\max[31]_i_24_n_0 ,\max[31]_i_25_n_0 }),
        .O(\NLW_max_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\max[31]_i_26_n_0 ,\max[31]_i_27_n_0 ,\max[31]_i_28_n_0 ,\max[31]_i_29_n_0 }));
  CARRY4 \max_reg[31]_i_2 
       (.CI(\max_reg[31]_i_3_n_0 ),
        .CO({count1,\max_reg[31]_i_2_n_1 ,\max_reg[31]_i_2_n_2 ,\max_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\max[31]_i_4_n_0 ,\max[31]_i_5_n_0 ,\max[31]_i_6_n_0 ,\max[31]_i_7_n_0 }),
        .O(\NLW_max_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({\max[31]_i_8_n_0 ,\max[31]_i_9_n_0 ,\max[31]_i_10_n_0 ,\max[31]_i_11_n_0 }));
  CARRY4 \max_reg[31]_i_21 
       (.CI(1'b0),
        .CO({\max_reg[31]_i_21_n_0 ,\max_reg[31]_i_21_n_1 ,\max_reg[31]_i_21_n_2 ,\max_reg[31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({\max[31]_i_30_n_0 ,\max[31]_i_31_n_0 ,\max[31]_i_32_n_0 ,\max[31]_i_33_n_0 }),
        .O(\NLW_max_reg[31]_i_21_O_UNCONNECTED [3:0]),
        .S({\max[31]_i_34_n_0 ,\max[31]_i_35_n_0 ,\max[31]_i_36_n_0 ,\max[31]_i_37_n_0 }));
  CARRY4 \max_reg[31]_i_3 
       (.CI(\max_reg[31]_i_12_n_0 ),
        .CO({\max_reg[31]_i_3_n_0 ,\max_reg[31]_i_3_n_1 ,\max_reg[31]_i_3_n_2 ,\max_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\max[31]_i_13_n_0 ,\max[31]_i_14_n_0 ,\max[31]_i_15_n_0 ,\max[31]_i_16_n_0 }),
        .O(\NLW_max_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({\max[31]_i_17_n_0 ,\max[31]_i_18_n_0 ,\max[31]_i_19_n_0 ,\max[31]_i_20_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[3] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[3]),
        .Q(\max_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[4] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[4]),
        .Q(\max_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[5] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[5]),
        .Q(\max_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[6] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[6]),
        .Q(\max_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[7] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[7]),
        .Q(\max_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[8] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[8]),
        .Q(\max_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \max_reg[9] 
       (.C(pwm_axi_aclk),
        .CE(\max[31]_i_1_n_0 ),
        .D(period_reg[9]),
        .Q(\max_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[0]_INST_0 
       (.I0(pwm1),
        .I1(enable),
        .O(pwm[0]));
  CARRY4 \pwm[0]_INST_0_i_1 
       (.CI(\pwm[0]_INST_0_i_2_n_0 ),
        .CO({pwm1,\pwm[0]_INST_0_i_1_n_1 ,\pwm[0]_INST_0_i_1_n_2 ,\pwm[0]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[0]_INST_0_i_3_n_0 ,\pwm[0]_INST_0_i_4_n_0 ,\pwm[0]_INST_0_i_5_n_0 ,\pwm[0]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[0]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[0]_INST_0_i_7_n_0 ,\pwm[0]_INST_0_i_8_n_0 ,\pwm[0]_INST_0_i_9_n_0 ,\pwm[0]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_10 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [25]),
        .I3(count_reg[25]),
        .O(\pwm[0]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[0]_INST_0_i_11 
       (.CI(\pwm[0]_INST_0_i_20_n_0 ),
        .CO({\pwm[0]_INST_0_i_11_n_0 ,\pwm[0]_INST_0_i_11_n_1 ,\pwm[0]_INST_0_i_11_n_2 ,\pwm[0]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[0]_INST_0_i_21_n_0 ,\pwm[0]_INST_0_i_22_n_0 ,\pwm[0]_INST_0_i_23_n_0 ,\pwm[0]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[0]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[0]_INST_0_i_25_n_0 ,\pwm[0]_INST_0_i_26_n_0 ,\pwm[0]_INST_0_i_27_n_0 ,\pwm[0]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_12 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [23]),
        .O(\pwm[0]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_13 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [21]),
        .O(\pwm[0]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_14 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [19]),
        .O(\pwm[0]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_15 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [17]),
        .O(\pwm[0]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_16 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [23]),
        .I3(count_reg[23]),
        .O(\pwm[0]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_17 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [21]),
        .I3(count_reg[21]),
        .O(\pwm[0]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_18 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [19]),
        .I3(count_reg[19]),
        .O(\pwm[0]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_19 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [17]),
        .I3(count_reg[17]),
        .O(\pwm[0]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[0]_INST_0_i_2 
       (.CI(\pwm[0]_INST_0_i_11_n_0 ),
        .CO({\pwm[0]_INST_0_i_2_n_0 ,\pwm[0]_INST_0_i_2_n_1 ,\pwm[0]_INST_0_i_2_n_2 ,\pwm[0]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[0]_INST_0_i_12_n_0 ,\pwm[0]_INST_0_i_13_n_0 ,\pwm[0]_INST_0_i_14_n_0 ,\pwm[0]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[0]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[0]_INST_0_i_16_n_0 ,\pwm[0]_INST_0_i_17_n_0 ,\pwm[0]_INST_0_i_18_n_0 ,\pwm[0]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[0]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[0]_INST_0_i_20_n_0 ,\pwm[0]_INST_0_i_20_n_1 ,\pwm[0]_INST_0_i_20_n_2 ,\pwm[0]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[0]_INST_0_i_29_n_0 ,\pwm[0]_INST_0_i_30_n_0 ,\pwm[0]_INST_0_i_31_n_0 ,\pwm[0]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[0]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[0]_INST_0_i_33_n_0 ,\pwm[0]_INST_0_i_34_n_0 ,\pwm[0]_INST_0_i_35_n_0 ,\pwm[0]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_21 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [15]),
        .O(\pwm[0]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_22 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [13]),
        .O(\pwm[0]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_23 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [11]),
        .O(\pwm[0]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_24 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [9]),
        .O(\pwm[0]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_25 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [15]),
        .I3(count_reg[15]),
        .O(\pwm[0]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_26 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [13]),
        .I3(count_reg[13]),
        .O(\pwm[0]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_27 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [11]),
        .I3(count_reg[11]),
        .O(\pwm[0]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_28 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [9]),
        .I3(count_reg[9]),
        .O(\pwm[0]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_29 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [7]),
        .O(\pwm[0]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_3 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [31]),
        .O(\pwm[0]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_30 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [5]),
        .O(\pwm[0]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_31 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [3]),
        .O(\pwm[0]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_32 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [1]),
        .O(\pwm[0]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_33 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [7]),
        .I3(count_reg[7]),
        .O(\pwm[0]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_34 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [5]),
        .I3(count_reg[5]),
        .O(\pwm[0]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_35 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [3]),
        .I3(count_reg[3]),
        .O(\pwm[0]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_36 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [1]),
        .I3(count_reg[1]),
        .O(\pwm[0]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_4 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [29]),
        .O(\pwm[0]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_5 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [27]),
        .O(\pwm[0]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[0]_INST_0_i_6 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[0].duty_reg_latch_reg[0]_12 [25]),
        .O(\pwm[0]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_7 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [31]),
        .I3(count_reg[31]),
        .O(\pwm[0]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_8 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [29]),
        .I3(count_reg[29]),
        .O(\pwm[0]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[0]_INST_0_i_9 
       (.I0(\genblk1[0].duty_reg_latch_reg[0]_12 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[0].duty_reg_latch_reg[0]_12 [27]),
        .I3(count_reg[27]),
        .O(\pwm[0]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[10]_INST_0 
       (.I0(pwm118_in),
        .I1(enable),
        .O(pwm[10]));
  CARRY4 \pwm[10]_INST_0_i_1 
       (.CI(\pwm[10]_INST_0_i_2_n_0 ),
        .CO({pwm118_in,\pwm[10]_INST_0_i_1_n_1 ,\pwm[10]_INST_0_i_1_n_2 ,\pwm[10]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[10]_INST_0_i_3_n_0 ,\pwm[10]_INST_0_i_4_n_0 ,\pwm[10]_INST_0_i_5_n_0 ,\pwm[10]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[10]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[10]_INST_0_i_7_n_0 ,\pwm[10]_INST_0_i_8_n_0 ,\pwm[10]_INST_0_i_9_n_0 ,\pwm[10]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_10 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [25]),
        .I3(count_reg[25]),
        .O(\pwm[10]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[10]_INST_0_i_11 
       (.CI(\pwm[10]_INST_0_i_20_n_0 ),
        .CO({\pwm[10]_INST_0_i_11_n_0 ,\pwm[10]_INST_0_i_11_n_1 ,\pwm[10]_INST_0_i_11_n_2 ,\pwm[10]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[10]_INST_0_i_21_n_0 ,\pwm[10]_INST_0_i_22_n_0 ,\pwm[10]_INST_0_i_23_n_0 ,\pwm[10]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[10]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[10]_INST_0_i_25_n_0 ,\pwm[10]_INST_0_i_26_n_0 ,\pwm[10]_INST_0_i_27_n_0 ,\pwm[10]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_12 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [23]),
        .O(\pwm[10]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_13 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [21]),
        .O(\pwm[10]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_14 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [19]),
        .O(\pwm[10]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_15 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [17]),
        .O(\pwm[10]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_16 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [23]),
        .I3(count_reg[23]),
        .O(\pwm[10]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_17 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [21]),
        .I3(count_reg[21]),
        .O(\pwm[10]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_18 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [19]),
        .I3(count_reg[19]),
        .O(\pwm[10]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_19 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [17]),
        .I3(count_reg[17]),
        .O(\pwm[10]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[10]_INST_0_i_2 
       (.CI(\pwm[10]_INST_0_i_11_n_0 ),
        .CO({\pwm[10]_INST_0_i_2_n_0 ,\pwm[10]_INST_0_i_2_n_1 ,\pwm[10]_INST_0_i_2_n_2 ,\pwm[10]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[10]_INST_0_i_12_n_0 ,\pwm[10]_INST_0_i_13_n_0 ,\pwm[10]_INST_0_i_14_n_0 ,\pwm[10]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[10]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[10]_INST_0_i_16_n_0 ,\pwm[10]_INST_0_i_17_n_0 ,\pwm[10]_INST_0_i_18_n_0 ,\pwm[10]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[10]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[10]_INST_0_i_20_n_0 ,\pwm[10]_INST_0_i_20_n_1 ,\pwm[10]_INST_0_i_20_n_2 ,\pwm[10]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[10]_INST_0_i_29_n_0 ,\pwm[10]_INST_0_i_30_n_0 ,\pwm[10]_INST_0_i_31_n_0 ,\pwm[10]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[10]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[10]_INST_0_i_33_n_0 ,\pwm[10]_INST_0_i_34_n_0 ,\pwm[10]_INST_0_i_35_n_0 ,\pwm[10]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_21 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [15]),
        .O(\pwm[10]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_22 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [13]),
        .O(\pwm[10]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_23 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [11]),
        .O(\pwm[10]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_24 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [9]),
        .O(\pwm[10]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_25 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [15]),
        .I3(count_reg[15]),
        .O(\pwm[10]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_26 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [13]),
        .I3(count_reg[13]),
        .O(\pwm[10]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_27 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [11]),
        .I3(count_reg[11]),
        .O(\pwm[10]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_28 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [9]),
        .I3(count_reg[9]),
        .O(\pwm[10]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_29 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [7]),
        .O(\pwm[10]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_3 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [31]),
        .O(\pwm[10]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_30 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [5]),
        .O(\pwm[10]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_31 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [3]),
        .O(\pwm[10]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_32 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [1]),
        .O(\pwm[10]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_33 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [7]),
        .I3(count_reg[7]),
        .O(\pwm[10]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_34 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [5]),
        .I3(count_reg[5]),
        .O(\pwm[10]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_35 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [3]),
        .I3(count_reg[3]),
        .O(\pwm[10]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_36 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [1]),
        .I3(count_reg[1]),
        .O(\pwm[10]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_4 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [29]),
        .O(\pwm[10]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_5 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [27]),
        .O(\pwm[10]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[10]_INST_0_i_6 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[10].duty_reg_latch_reg[10]_22 [25]),
        .O(\pwm[10]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_7 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [31]),
        .I3(count_reg[31]),
        .O(\pwm[10]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_8 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [29]),
        .I3(count_reg[29]),
        .O(\pwm[10]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[10]_INST_0_i_9 
       (.I0(\genblk1[10].duty_reg_latch_reg[10]_22 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[10].duty_reg_latch_reg[10]_22 [27]),
        .I3(count_reg[27]),
        .O(\pwm[10]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[11]_INST_0 
       (.I0(pwm120_in),
        .I1(enable),
        .O(pwm[11]));
  CARRY4 \pwm[11]_INST_0_i_1 
       (.CI(\pwm[11]_INST_0_i_2_n_0 ),
        .CO({pwm120_in,\pwm[11]_INST_0_i_1_n_1 ,\pwm[11]_INST_0_i_1_n_2 ,\pwm[11]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[11]_INST_0_i_3_n_0 ,\pwm[11]_INST_0_i_4_n_0 ,\pwm[11]_INST_0_i_5_n_0 ,\pwm[11]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[11]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[11]_INST_0_i_7_n_0 ,\pwm[11]_INST_0_i_8_n_0 ,\pwm[11]_INST_0_i_9_n_0 ,\pwm[11]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_10 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [25]),
        .I3(count_reg[25]),
        .O(\pwm[11]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[11]_INST_0_i_11 
       (.CI(\pwm[11]_INST_0_i_20_n_0 ),
        .CO({\pwm[11]_INST_0_i_11_n_0 ,\pwm[11]_INST_0_i_11_n_1 ,\pwm[11]_INST_0_i_11_n_2 ,\pwm[11]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[11]_INST_0_i_21_n_0 ,\pwm[11]_INST_0_i_22_n_0 ,\pwm[11]_INST_0_i_23_n_0 ,\pwm[11]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[11]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[11]_INST_0_i_25_n_0 ,\pwm[11]_INST_0_i_26_n_0 ,\pwm[11]_INST_0_i_27_n_0 ,\pwm[11]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_12 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [23]),
        .O(\pwm[11]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_13 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [21]),
        .O(\pwm[11]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_14 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [19]),
        .O(\pwm[11]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_15 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [17]),
        .O(\pwm[11]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_16 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [23]),
        .I3(count_reg[23]),
        .O(\pwm[11]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_17 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [21]),
        .I3(count_reg[21]),
        .O(\pwm[11]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_18 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [19]),
        .I3(count_reg[19]),
        .O(\pwm[11]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_19 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [17]),
        .I3(count_reg[17]),
        .O(\pwm[11]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[11]_INST_0_i_2 
       (.CI(\pwm[11]_INST_0_i_11_n_0 ),
        .CO({\pwm[11]_INST_0_i_2_n_0 ,\pwm[11]_INST_0_i_2_n_1 ,\pwm[11]_INST_0_i_2_n_2 ,\pwm[11]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[11]_INST_0_i_12_n_0 ,\pwm[11]_INST_0_i_13_n_0 ,\pwm[11]_INST_0_i_14_n_0 ,\pwm[11]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[11]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[11]_INST_0_i_16_n_0 ,\pwm[11]_INST_0_i_17_n_0 ,\pwm[11]_INST_0_i_18_n_0 ,\pwm[11]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[11]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[11]_INST_0_i_20_n_0 ,\pwm[11]_INST_0_i_20_n_1 ,\pwm[11]_INST_0_i_20_n_2 ,\pwm[11]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[11]_INST_0_i_29_n_0 ,\pwm[11]_INST_0_i_30_n_0 ,\pwm[11]_INST_0_i_31_n_0 ,\pwm[11]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[11]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[11]_INST_0_i_33_n_0 ,\pwm[11]_INST_0_i_34_n_0 ,\pwm[11]_INST_0_i_35_n_0 ,\pwm[11]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_21 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [15]),
        .O(\pwm[11]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_22 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [13]),
        .O(\pwm[11]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_23 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [11]),
        .O(\pwm[11]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_24 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [9]),
        .O(\pwm[11]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_25 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [15]),
        .I3(count_reg[15]),
        .O(\pwm[11]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_26 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [13]),
        .I3(count_reg[13]),
        .O(\pwm[11]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_27 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [11]),
        .I3(count_reg[11]),
        .O(\pwm[11]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_28 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [9]),
        .I3(count_reg[9]),
        .O(\pwm[11]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_29 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [7]),
        .O(\pwm[11]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_3 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [31]),
        .O(\pwm[11]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_30 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [5]),
        .O(\pwm[11]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_31 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [3]),
        .O(\pwm[11]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_32 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [1]),
        .O(\pwm[11]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_33 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [7]),
        .I3(count_reg[7]),
        .O(\pwm[11]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_34 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [5]),
        .I3(count_reg[5]),
        .O(\pwm[11]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_35 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [3]),
        .I3(count_reg[3]),
        .O(\pwm[11]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_36 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [1]),
        .I3(count_reg[1]),
        .O(\pwm[11]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_4 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [29]),
        .O(\pwm[11]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_5 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [27]),
        .O(\pwm[11]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[11]_INST_0_i_6 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[11].duty_reg_latch_reg[11]_23 [25]),
        .O(\pwm[11]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_7 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [31]),
        .I3(count_reg[31]),
        .O(\pwm[11]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_8 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [29]),
        .I3(count_reg[29]),
        .O(\pwm[11]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[11]_INST_0_i_9 
       (.I0(\genblk1[11].duty_reg_latch_reg[11]_23 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[11].duty_reg_latch_reg[11]_23 [27]),
        .I3(count_reg[27]),
        .O(\pwm[11]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[1]_INST_0 
       (.I0(pwm10_in),
        .I1(enable),
        .O(pwm[1]));
  CARRY4 \pwm[1]_INST_0_i_1 
       (.CI(\pwm[1]_INST_0_i_2_n_0 ),
        .CO({pwm10_in,\pwm[1]_INST_0_i_1_n_1 ,\pwm[1]_INST_0_i_1_n_2 ,\pwm[1]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[1]_INST_0_i_3_n_0 ,\pwm[1]_INST_0_i_4_n_0 ,\pwm[1]_INST_0_i_5_n_0 ,\pwm[1]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[1]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[1]_INST_0_i_7_n_0 ,\pwm[1]_INST_0_i_8_n_0 ,\pwm[1]_INST_0_i_9_n_0 ,\pwm[1]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_10 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [25]),
        .I3(count_reg[25]),
        .O(\pwm[1]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[1]_INST_0_i_11 
       (.CI(\pwm[1]_INST_0_i_20_n_0 ),
        .CO({\pwm[1]_INST_0_i_11_n_0 ,\pwm[1]_INST_0_i_11_n_1 ,\pwm[1]_INST_0_i_11_n_2 ,\pwm[1]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[1]_INST_0_i_21_n_0 ,\pwm[1]_INST_0_i_22_n_0 ,\pwm[1]_INST_0_i_23_n_0 ,\pwm[1]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[1]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[1]_INST_0_i_25_n_0 ,\pwm[1]_INST_0_i_26_n_0 ,\pwm[1]_INST_0_i_27_n_0 ,\pwm[1]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_12 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [23]),
        .O(\pwm[1]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_13 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [21]),
        .O(\pwm[1]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_14 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [19]),
        .O(\pwm[1]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_15 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [17]),
        .O(\pwm[1]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_16 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [23]),
        .I3(count_reg[23]),
        .O(\pwm[1]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_17 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [21]),
        .I3(count_reg[21]),
        .O(\pwm[1]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_18 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [19]),
        .I3(count_reg[19]),
        .O(\pwm[1]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_19 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [17]),
        .I3(count_reg[17]),
        .O(\pwm[1]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[1]_INST_0_i_2 
       (.CI(\pwm[1]_INST_0_i_11_n_0 ),
        .CO({\pwm[1]_INST_0_i_2_n_0 ,\pwm[1]_INST_0_i_2_n_1 ,\pwm[1]_INST_0_i_2_n_2 ,\pwm[1]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[1]_INST_0_i_12_n_0 ,\pwm[1]_INST_0_i_13_n_0 ,\pwm[1]_INST_0_i_14_n_0 ,\pwm[1]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[1]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[1]_INST_0_i_16_n_0 ,\pwm[1]_INST_0_i_17_n_0 ,\pwm[1]_INST_0_i_18_n_0 ,\pwm[1]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[1]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[1]_INST_0_i_20_n_0 ,\pwm[1]_INST_0_i_20_n_1 ,\pwm[1]_INST_0_i_20_n_2 ,\pwm[1]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[1]_INST_0_i_29_n_0 ,\pwm[1]_INST_0_i_30_n_0 ,\pwm[1]_INST_0_i_31_n_0 ,\pwm[1]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[1]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[1]_INST_0_i_33_n_0 ,\pwm[1]_INST_0_i_34_n_0 ,\pwm[1]_INST_0_i_35_n_0 ,\pwm[1]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_21 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [15]),
        .O(\pwm[1]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_22 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [13]),
        .O(\pwm[1]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_23 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [11]),
        .O(\pwm[1]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_24 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [9]),
        .O(\pwm[1]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_25 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [15]),
        .I3(count_reg[15]),
        .O(\pwm[1]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_26 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [13]),
        .I3(count_reg[13]),
        .O(\pwm[1]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_27 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [11]),
        .I3(count_reg[11]),
        .O(\pwm[1]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_28 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [9]),
        .I3(count_reg[9]),
        .O(\pwm[1]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_29 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [7]),
        .O(\pwm[1]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_3 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [31]),
        .O(\pwm[1]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_30 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [5]),
        .O(\pwm[1]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_31 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [3]),
        .O(\pwm[1]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_32 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [1]),
        .O(\pwm[1]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_33 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [7]),
        .I3(count_reg[7]),
        .O(\pwm[1]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_34 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [5]),
        .I3(count_reg[5]),
        .O(\pwm[1]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_35 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [3]),
        .I3(count_reg[3]),
        .O(\pwm[1]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_36 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [1]),
        .I3(count_reg[1]),
        .O(\pwm[1]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_4 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [29]),
        .O(\pwm[1]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_5 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [27]),
        .O(\pwm[1]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[1]_INST_0_i_6 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[1].duty_reg_latch_reg[1]_13 [25]),
        .O(\pwm[1]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_7 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [31]),
        .I3(count_reg[31]),
        .O(\pwm[1]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_8 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [29]),
        .I3(count_reg[29]),
        .O(\pwm[1]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[1]_INST_0_i_9 
       (.I0(\genblk1[1].duty_reg_latch_reg[1]_13 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[1].duty_reg_latch_reg[1]_13 [27]),
        .I3(count_reg[27]),
        .O(\pwm[1]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[2]_INST_0 
       (.I0(pwm12_in),
        .I1(enable),
        .O(pwm[2]));
  CARRY4 \pwm[2]_INST_0_i_1 
       (.CI(\pwm[2]_INST_0_i_2_n_0 ),
        .CO({pwm12_in,\pwm[2]_INST_0_i_1_n_1 ,\pwm[2]_INST_0_i_1_n_2 ,\pwm[2]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[2]_INST_0_i_3_n_0 ,\pwm[2]_INST_0_i_4_n_0 ,\pwm[2]_INST_0_i_5_n_0 ,\pwm[2]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[2]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[2]_INST_0_i_7_n_0 ,\pwm[2]_INST_0_i_8_n_0 ,\pwm[2]_INST_0_i_9_n_0 ,\pwm[2]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_10 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [25]),
        .I3(count_reg[25]),
        .O(\pwm[2]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[2]_INST_0_i_11 
       (.CI(\pwm[2]_INST_0_i_20_n_0 ),
        .CO({\pwm[2]_INST_0_i_11_n_0 ,\pwm[2]_INST_0_i_11_n_1 ,\pwm[2]_INST_0_i_11_n_2 ,\pwm[2]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[2]_INST_0_i_21_n_0 ,\pwm[2]_INST_0_i_22_n_0 ,\pwm[2]_INST_0_i_23_n_0 ,\pwm[2]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[2]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[2]_INST_0_i_25_n_0 ,\pwm[2]_INST_0_i_26_n_0 ,\pwm[2]_INST_0_i_27_n_0 ,\pwm[2]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_12 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [23]),
        .O(\pwm[2]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_13 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [21]),
        .O(\pwm[2]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_14 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [19]),
        .O(\pwm[2]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_15 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [17]),
        .O(\pwm[2]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_16 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [23]),
        .I3(count_reg[23]),
        .O(\pwm[2]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_17 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [21]),
        .I3(count_reg[21]),
        .O(\pwm[2]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_18 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [19]),
        .I3(count_reg[19]),
        .O(\pwm[2]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_19 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [17]),
        .I3(count_reg[17]),
        .O(\pwm[2]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[2]_INST_0_i_2 
       (.CI(\pwm[2]_INST_0_i_11_n_0 ),
        .CO({\pwm[2]_INST_0_i_2_n_0 ,\pwm[2]_INST_0_i_2_n_1 ,\pwm[2]_INST_0_i_2_n_2 ,\pwm[2]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[2]_INST_0_i_12_n_0 ,\pwm[2]_INST_0_i_13_n_0 ,\pwm[2]_INST_0_i_14_n_0 ,\pwm[2]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[2]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[2]_INST_0_i_16_n_0 ,\pwm[2]_INST_0_i_17_n_0 ,\pwm[2]_INST_0_i_18_n_0 ,\pwm[2]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[2]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[2]_INST_0_i_20_n_0 ,\pwm[2]_INST_0_i_20_n_1 ,\pwm[2]_INST_0_i_20_n_2 ,\pwm[2]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[2]_INST_0_i_29_n_0 ,\pwm[2]_INST_0_i_30_n_0 ,\pwm[2]_INST_0_i_31_n_0 ,\pwm[2]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[2]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[2]_INST_0_i_33_n_0 ,\pwm[2]_INST_0_i_34_n_0 ,\pwm[2]_INST_0_i_35_n_0 ,\pwm[2]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_21 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [15]),
        .O(\pwm[2]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_22 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [13]),
        .O(\pwm[2]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_23 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [11]),
        .O(\pwm[2]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_24 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [9]),
        .O(\pwm[2]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_25 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [15]),
        .I3(count_reg[15]),
        .O(\pwm[2]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_26 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [13]),
        .I3(count_reg[13]),
        .O(\pwm[2]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_27 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [11]),
        .I3(count_reg[11]),
        .O(\pwm[2]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_28 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [9]),
        .I3(count_reg[9]),
        .O(\pwm[2]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_29 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [7]),
        .O(\pwm[2]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_3 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [31]),
        .O(\pwm[2]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_30 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [5]),
        .O(\pwm[2]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_31 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [3]),
        .O(\pwm[2]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_32 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [1]),
        .O(\pwm[2]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_33 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [7]),
        .I3(count_reg[7]),
        .O(\pwm[2]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_34 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [5]),
        .I3(count_reg[5]),
        .O(\pwm[2]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_35 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [3]),
        .I3(count_reg[3]),
        .O(\pwm[2]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_36 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [1]),
        .I3(count_reg[1]),
        .O(\pwm[2]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_4 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [29]),
        .O(\pwm[2]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_5 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [27]),
        .O(\pwm[2]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[2]_INST_0_i_6 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[2].duty_reg_latch_reg[2]_14 [25]),
        .O(\pwm[2]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_7 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [31]),
        .I3(count_reg[31]),
        .O(\pwm[2]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_8 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [29]),
        .I3(count_reg[29]),
        .O(\pwm[2]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[2]_INST_0_i_9 
       (.I0(\genblk1[2].duty_reg_latch_reg[2]_14 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[2].duty_reg_latch_reg[2]_14 [27]),
        .I3(count_reg[27]),
        .O(\pwm[2]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[3]_INST_0 
       (.I0(pwm14_in),
        .I1(enable),
        .O(pwm[3]));
  CARRY4 \pwm[3]_INST_0_i_1 
       (.CI(\pwm[3]_INST_0_i_2_n_0 ),
        .CO({pwm14_in,\pwm[3]_INST_0_i_1_n_1 ,\pwm[3]_INST_0_i_1_n_2 ,\pwm[3]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[3]_INST_0_i_3_n_0 ,\pwm[3]_INST_0_i_4_n_0 ,\pwm[3]_INST_0_i_5_n_0 ,\pwm[3]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[3]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[3]_INST_0_i_7_n_0 ,\pwm[3]_INST_0_i_8_n_0 ,\pwm[3]_INST_0_i_9_n_0 ,\pwm[3]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_10 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [25]),
        .I3(count_reg[25]),
        .O(\pwm[3]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[3]_INST_0_i_11 
       (.CI(\pwm[3]_INST_0_i_20_n_0 ),
        .CO({\pwm[3]_INST_0_i_11_n_0 ,\pwm[3]_INST_0_i_11_n_1 ,\pwm[3]_INST_0_i_11_n_2 ,\pwm[3]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[3]_INST_0_i_21_n_0 ,\pwm[3]_INST_0_i_22_n_0 ,\pwm[3]_INST_0_i_23_n_0 ,\pwm[3]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[3]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[3]_INST_0_i_25_n_0 ,\pwm[3]_INST_0_i_26_n_0 ,\pwm[3]_INST_0_i_27_n_0 ,\pwm[3]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_12 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [23]),
        .O(\pwm[3]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_13 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [21]),
        .O(\pwm[3]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_14 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [19]),
        .O(\pwm[3]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_15 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [17]),
        .O(\pwm[3]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_16 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [23]),
        .I3(count_reg[23]),
        .O(\pwm[3]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_17 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [21]),
        .I3(count_reg[21]),
        .O(\pwm[3]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_18 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [19]),
        .I3(count_reg[19]),
        .O(\pwm[3]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_19 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [17]),
        .I3(count_reg[17]),
        .O(\pwm[3]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[3]_INST_0_i_2 
       (.CI(\pwm[3]_INST_0_i_11_n_0 ),
        .CO({\pwm[3]_INST_0_i_2_n_0 ,\pwm[3]_INST_0_i_2_n_1 ,\pwm[3]_INST_0_i_2_n_2 ,\pwm[3]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[3]_INST_0_i_12_n_0 ,\pwm[3]_INST_0_i_13_n_0 ,\pwm[3]_INST_0_i_14_n_0 ,\pwm[3]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[3]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[3]_INST_0_i_16_n_0 ,\pwm[3]_INST_0_i_17_n_0 ,\pwm[3]_INST_0_i_18_n_0 ,\pwm[3]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[3]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[3]_INST_0_i_20_n_0 ,\pwm[3]_INST_0_i_20_n_1 ,\pwm[3]_INST_0_i_20_n_2 ,\pwm[3]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[3]_INST_0_i_29_n_0 ,\pwm[3]_INST_0_i_30_n_0 ,\pwm[3]_INST_0_i_31_n_0 ,\pwm[3]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[3]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[3]_INST_0_i_33_n_0 ,\pwm[3]_INST_0_i_34_n_0 ,\pwm[3]_INST_0_i_35_n_0 ,\pwm[3]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_21 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [15]),
        .O(\pwm[3]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_22 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [13]),
        .O(\pwm[3]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_23 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [11]),
        .O(\pwm[3]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_24 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [9]),
        .O(\pwm[3]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_25 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [15]),
        .I3(count_reg[15]),
        .O(\pwm[3]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_26 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [13]),
        .I3(count_reg[13]),
        .O(\pwm[3]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_27 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [11]),
        .I3(count_reg[11]),
        .O(\pwm[3]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_28 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [9]),
        .I3(count_reg[9]),
        .O(\pwm[3]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_29 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [7]),
        .O(\pwm[3]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_3 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [31]),
        .O(\pwm[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_30 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [5]),
        .O(\pwm[3]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_31 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [3]),
        .O(\pwm[3]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_32 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [1]),
        .O(\pwm[3]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_33 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [7]),
        .I3(count_reg[7]),
        .O(\pwm[3]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_34 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [5]),
        .I3(count_reg[5]),
        .O(\pwm[3]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_35 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [3]),
        .I3(count_reg[3]),
        .O(\pwm[3]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_36 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [1]),
        .I3(count_reg[1]),
        .O(\pwm[3]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_4 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [29]),
        .O(\pwm[3]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_5 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [27]),
        .O(\pwm[3]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[3]_INST_0_i_6 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[3].duty_reg_latch_reg[3]_15 [25]),
        .O(\pwm[3]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_7 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [31]),
        .I3(count_reg[31]),
        .O(\pwm[3]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_8 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [29]),
        .I3(count_reg[29]),
        .O(\pwm[3]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[3]_INST_0_i_9 
       (.I0(\genblk1[3].duty_reg_latch_reg[3]_15 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[3].duty_reg_latch_reg[3]_15 [27]),
        .I3(count_reg[27]),
        .O(\pwm[3]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[4]_INST_0 
       (.I0(pwm16_in),
        .I1(enable),
        .O(pwm[4]));
  CARRY4 \pwm[4]_INST_0_i_1 
       (.CI(\pwm[4]_INST_0_i_2_n_0 ),
        .CO({pwm16_in,\pwm[4]_INST_0_i_1_n_1 ,\pwm[4]_INST_0_i_1_n_2 ,\pwm[4]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[4]_INST_0_i_3_n_0 ,\pwm[4]_INST_0_i_4_n_0 ,\pwm[4]_INST_0_i_5_n_0 ,\pwm[4]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[4]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[4]_INST_0_i_7_n_0 ,\pwm[4]_INST_0_i_8_n_0 ,\pwm[4]_INST_0_i_9_n_0 ,\pwm[4]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_10 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [25]),
        .I3(count_reg[25]),
        .O(\pwm[4]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[4]_INST_0_i_11 
       (.CI(\pwm[4]_INST_0_i_20_n_0 ),
        .CO({\pwm[4]_INST_0_i_11_n_0 ,\pwm[4]_INST_0_i_11_n_1 ,\pwm[4]_INST_0_i_11_n_2 ,\pwm[4]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[4]_INST_0_i_21_n_0 ,\pwm[4]_INST_0_i_22_n_0 ,\pwm[4]_INST_0_i_23_n_0 ,\pwm[4]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[4]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[4]_INST_0_i_25_n_0 ,\pwm[4]_INST_0_i_26_n_0 ,\pwm[4]_INST_0_i_27_n_0 ,\pwm[4]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_12 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [23]),
        .O(\pwm[4]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_13 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [21]),
        .O(\pwm[4]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_14 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [19]),
        .O(\pwm[4]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_15 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [17]),
        .O(\pwm[4]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_16 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [23]),
        .I3(count_reg[23]),
        .O(\pwm[4]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_17 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [21]),
        .I3(count_reg[21]),
        .O(\pwm[4]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_18 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [19]),
        .I3(count_reg[19]),
        .O(\pwm[4]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_19 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [17]),
        .I3(count_reg[17]),
        .O(\pwm[4]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[4]_INST_0_i_2 
       (.CI(\pwm[4]_INST_0_i_11_n_0 ),
        .CO({\pwm[4]_INST_0_i_2_n_0 ,\pwm[4]_INST_0_i_2_n_1 ,\pwm[4]_INST_0_i_2_n_2 ,\pwm[4]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[4]_INST_0_i_12_n_0 ,\pwm[4]_INST_0_i_13_n_0 ,\pwm[4]_INST_0_i_14_n_0 ,\pwm[4]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[4]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[4]_INST_0_i_16_n_0 ,\pwm[4]_INST_0_i_17_n_0 ,\pwm[4]_INST_0_i_18_n_0 ,\pwm[4]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[4]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[4]_INST_0_i_20_n_0 ,\pwm[4]_INST_0_i_20_n_1 ,\pwm[4]_INST_0_i_20_n_2 ,\pwm[4]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[4]_INST_0_i_29_n_0 ,\pwm[4]_INST_0_i_30_n_0 ,\pwm[4]_INST_0_i_31_n_0 ,\pwm[4]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[4]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[4]_INST_0_i_33_n_0 ,\pwm[4]_INST_0_i_34_n_0 ,\pwm[4]_INST_0_i_35_n_0 ,\pwm[4]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_21 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [15]),
        .O(\pwm[4]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_22 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [13]),
        .O(\pwm[4]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_23 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [11]),
        .O(\pwm[4]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_24 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [9]),
        .O(\pwm[4]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_25 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [15]),
        .I3(count_reg[15]),
        .O(\pwm[4]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_26 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [13]),
        .I3(count_reg[13]),
        .O(\pwm[4]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_27 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [11]),
        .I3(count_reg[11]),
        .O(\pwm[4]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_28 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [9]),
        .I3(count_reg[9]),
        .O(\pwm[4]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_29 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [7]),
        .O(\pwm[4]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_3 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [31]),
        .O(\pwm[4]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_30 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [5]),
        .O(\pwm[4]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_31 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [3]),
        .O(\pwm[4]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_32 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [1]),
        .O(\pwm[4]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_33 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [7]),
        .I3(count_reg[7]),
        .O(\pwm[4]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_34 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [5]),
        .I3(count_reg[5]),
        .O(\pwm[4]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_35 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [3]),
        .I3(count_reg[3]),
        .O(\pwm[4]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_36 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [1]),
        .I3(count_reg[1]),
        .O(\pwm[4]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_4 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [29]),
        .O(\pwm[4]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_5 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [27]),
        .O(\pwm[4]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[4]_INST_0_i_6 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[4].duty_reg_latch_reg[4]_16 [25]),
        .O(\pwm[4]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_7 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [31]),
        .I3(count_reg[31]),
        .O(\pwm[4]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_8 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [29]),
        .I3(count_reg[29]),
        .O(\pwm[4]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[4]_INST_0_i_9 
       (.I0(\genblk1[4].duty_reg_latch_reg[4]_16 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[4].duty_reg_latch_reg[4]_16 [27]),
        .I3(count_reg[27]),
        .O(\pwm[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[5]_INST_0 
       (.I0(pwm18_in),
        .I1(enable),
        .O(pwm[5]));
  CARRY4 \pwm[5]_INST_0_i_1 
       (.CI(\pwm[5]_INST_0_i_2_n_0 ),
        .CO({pwm18_in,\pwm[5]_INST_0_i_1_n_1 ,\pwm[5]_INST_0_i_1_n_2 ,\pwm[5]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[5]_INST_0_i_3_n_0 ,\pwm[5]_INST_0_i_4_n_0 ,\pwm[5]_INST_0_i_5_n_0 ,\pwm[5]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[5]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[5]_INST_0_i_7_n_0 ,\pwm[5]_INST_0_i_8_n_0 ,\pwm[5]_INST_0_i_9_n_0 ,\pwm[5]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_10 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [25]),
        .I3(count_reg[25]),
        .O(\pwm[5]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[5]_INST_0_i_11 
       (.CI(\pwm[5]_INST_0_i_20_n_0 ),
        .CO({\pwm[5]_INST_0_i_11_n_0 ,\pwm[5]_INST_0_i_11_n_1 ,\pwm[5]_INST_0_i_11_n_2 ,\pwm[5]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[5]_INST_0_i_21_n_0 ,\pwm[5]_INST_0_i_22_n_0 ,\pwm[5]_INST_0_i_23_n_0 ,\pwm[5]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[5]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[5]_INST_0_i_25_n_0 ,\pwm[5]_INST_0_i_26_n_0 ,\pwm[5]_INST_0_i_27_n_0 ,\pwm[5]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_12 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [23]),
        .O(\pwm[5]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_13 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [21]),
        .O(\pwm[5]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_14 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [19]),
        .O(\pwm[5]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_15 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [17]),
        .O(\pwm[5]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_16 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [23]),
        .I3(count_reg[23]),
        .O(\pwm[5]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_17 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [21]),
        .I3(count_reg[21]),
        .O(\pwm[5]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_18 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [19]),
        .I3(count_reg[19]),
        .O(\pwm[5]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_19 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [17]),
        .I3(count_reg[17]),
        .O(\pwm[5]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[5]_INST_0_i_2 
       (.CI(\pwm[5]_INST_0_i_11_n_0 ),
        .CO({\pwm[5]_INST_0_i_2_n_0 ,\pwm[5]_INST_0_i_2_n_1 ,\pwm[5]_INST_0_i_2_n_2 ,\pwm[5]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[5]_INST_0_i_12_n_0 ,\pwm[5]_INST_0_i_13_n_0 ,\pwm[5]_INST_0_i_14_n_0 ,\pwm[5]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[5]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[5]_INST_0_i_16_n_0 ,\pwm[5]_INST_0_i_17_n_0 ,\pwm[5]_INST_0_i_18_n_0 ,\pwm[5]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[5]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[5]_INST_0_i_20_n_0 ,\pwm[5]_INST_0_i_20_n_1 ,\pwm[5]_INST_0_i_20_n_2 ,\pwm[5]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[5]_INST_0_i_29_n_0 ,\pwm[5]_INST_0_i_30_n_0 ,\pwm[5]_INST_0_i_31_n_0 ,\pwm[5]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[5]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[5]_INST_0_i_33_n_0 ,\pwm[5]_INST_0_i_34_n_0 ,\pwm[5]_INST_0_i_35_n_0 ,\pwm[5]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_21 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [15]),
        .O(\pwm[5]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_22 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [13]),
        .O(\pwm[5]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_23 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [11]),
        .O(\pwm[5]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_24 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [9]),
        .O(\pwm[5]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_25 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [15]),
        .I3(count_reg[15]),
        .O(\pwm[5]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_26 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [13]),
        .I3(count_reg[13]),
        .O(\pwm[5]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_27 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [11]),
        .I3(count_reg[11]),
        .O(\pwm[5]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_28 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [9]),
        .I3(count_reg[9]),
        .O(\pwm[5]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_29 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [7]),
        .O(\pwm[5]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_3 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [31]),
        .O(\pwm[5]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_30 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [5]),
        .O(\pwm[5]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_31 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [3]),
        .O(\pwm[5]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_32 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [1]),
        .O(\pwm[5]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_33 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [7]),
        .I3(count_reg[7]),
        .O(\pwm[5]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_34 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [5]),
        .I3(count_reg[5]),
        .O(\pwm[5]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_35 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [3]),
        .I3(count_reg[3]),
        .O(\pwm[5]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_36 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [1]),
        .I3(count_reg[1]),
        .O(\pwm[5]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_4 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [29]),
        .O(\pwm[5]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_5 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [27]),
        .O(\pwm[5]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[5]_INST_0_i_6 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[5].duty_reg_latch_reg[5]_17 [25]),
        .O(\pwm[5]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_7 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [31]),
        .I3(count_reg[31]),
        .O(\pwm[5]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_8 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [29]),
        .I3(count_reg[29]),
        .O(\pwm[5]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[5]_INST_0_i_9 
       (.I0(\genblk1[5].duty_reg_latch_reg[5]_17 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[5].duty_reg_latch_reg[5]_17 [27]),
        .I3(count_reg[27]),
        .O(\pwm[5]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[6]_INST_0 
       (.I0(pwm110_in),
        .I1(enable),
        .O(pwm[6]));
  CARRY4 \pwm[6]_INST_0_i_1 
       (.CI(\pwm[6]_INST_0_i_2_n_0 ),
        .CO({pwm110_in,\pwm[6]_INST_0_i_1_n_1 ,\pwm[6]_INST_0_i_1_n_2 ,\pwm[6]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[6]_INST_0_i_3_n_0 ,\pwm[6]_INST_0_i_4_n_0 ,\pwm[6]_INST_0_i_5_n_0 ,\pwm[6]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[6]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[6]_INST_0_i_7_n_0 ,\pwm[6]_INST_0_i_8_n_0 ,\pwm[6]_INST_0_i_9_n_0 ,\pwm[6]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_10 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [25]),
        .I3(count_reg[25]),
        .O(\pwm[6]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[6]_INST_0_i_11 
       (.CI(\pwm[6]_INST_0_i_20_n_0 ),
        .CO({\pwm[6]_INST_0_i_11_n_0 ,\pwm[6]_INST_0_i_11_n_1 ,\pwm[6]_INST_0_i_11_n_2 ,\pwm[6]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[6]_INST_0_i_21_n_0 ,\pwm[6]_INST_0_i_22_n_0 ,\pwm[6]_INST_0_i_23_n_0 ,\pwm[6]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[6]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[6]_INST_0_i_25_n_0 ,\pwm[6]_INST_0_i_26_n_0 ,\pwm[6]_INST_0_i_27_n_0 ,\pwm[6]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_12 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [23]),
        .O(\pwm[6]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_13 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [21]),
        .O(\pwm[6]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_14 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [19]),
        .O(\pwm[6]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_15 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [17]),
        .O(\pwm[6]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_16 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [23]),
        .I3(count_reg[23]),
        .O(\pwm[6]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_17 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [21]),
        .I3(count_reg[21]),
        .O(\pwm[6]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_18 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [19]),
        .I3(count_reg[19]),
        .O(\pwm[6]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_19 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [17]),
        .I3(count_reg[17]),
        .O(\pwm[6]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[6]_INST_0_i_2 
       (.CI(\pwm[6]_INST_0_i_11_n_0 ),
        .CO({\pwm[6]_INST_0_i_2_n_0 ,\pwm[6]_INST_0_i_2_n_1 ,\pwm[6]_INST_0_i_2_n_2 ,\pwm[6]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[6]_INST_0_i_12_n_0 ,\pwm[6]_INST_0_i_13_n_0 ,\pwm[6]_INST_0_i_14_n_0 ,\pwm[6]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[6]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[6]_INST_0_i_16_n_0 ,\pwm[6]_INST_0_i_17_n_0 ,\pwm[6]_INST_0_i_18_n_0 ,\pwm[6]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[6]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[6]_INST_0_i_20_n_0 ,\pwm[6]_INST_0_i_20_n_1 ,\pwm[6]_INST_0_i_20_n_2 ,\pwm[6]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[6]_INST_0_i_29_n_0 ,\pwm[6]_INST_0_i_30_n_0 ,\pwm[6]_INST_0_i_31_n_0 ,\pwm[6]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[6]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[6]_INST_0_i_33_n_0 ,\pwm[6]_INST_0_i_34_n_0 ,\pwm[6]_INST_0_i_35_n_0 ,\pwm[6]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_21 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [15]),
        .O(\pwm[6]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_22 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [13]),
        .O(\pwm[6]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_23 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [11]),
        .O(\pwm[6]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_24 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [9]),
        .O(\pwm[6]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_25 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [15]),
        .I3(count_reg[15]),
        .O(\pwm[6]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_26 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [13]),
        .I3(count_reg[13]),
        .O(\pwm[6]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_27 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [11]),
        .I3(count_reg[11]),
        .O(\pwm[6]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_28 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [9]),
        .I3(count_reg[9]),
        .O(\pwm[6]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_29 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [7]),
        .O(\pwm[6]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_3 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [31]),
        .O(\pwm[6]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_30 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [5]),
        .O(\pwm[6]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_31 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [3]),
        .O(\pwm[6]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_32 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [1]),
        .O(\pwm[6]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_33 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [7]),
        .I3(count_reg[7]),
        .O(\pwm[6]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_34 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [5]),
        .I3(count_reg[5]),
        .O(\pwm[6]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_35 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [3]),
        .I3(count_reg[3]),
        .O(\pwm[6]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_36 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [1]),
        .I3(count_reg[1]),
        .O(\pwm[6]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_4 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [29]),
        .O(\pwm[6]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_5 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [27]),
        .O(\pwm[6]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[6]_INST_0_i_6 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[6].duty_reg_latch_reg[6]_18 [25]),
        .O(\pwm[6]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_7 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [31]),
        .I3(count_reg[31]),
        .O(\pwm[6]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_8 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [29]),
        .I3(count_reg[29]),
        .O(\pwm[6]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[6]_INST_0_i_9 
       (.I0(\genblk1[6].duty_reg_latch_reg[6]_18 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[6].duty_reg_latch_reg[6]_18 [27]),
        .I3(count_reg[27]),
        .O(\pwm[6]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[7]_INST_0 
       (.I0(pwm112_in),
        .I1(enable),
        .O(pwm[7]));
  CARRY4 \pwm[7]_INST_0_i_1 
       (.CI(\pwm[7]_INST_0_i_2_n_0 ),
        .CO({pwm112_in,\pwm[7]_INST_0_i_1_n_1 ,\pwm[7]_INST_0_i_1_n_2 ,\pwm[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[7]_INST_0_i_3_n_0 ,\pwm[7]_INST_0_i_4_n_0 ,\pwm[7]_INST_0_i_5_n_0 ,\pwm[7]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[7]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[7]_INST_0_i_7_n_0 ,\pwm[7]_INST_0_i_8_n_0 ,\pwm[7]_INST_0_i_9_n_0 ,\pwm[7]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_10 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [25]),
        .I3(count_reg[25]),
        .O(\pwm[7]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[7]_INST_0_i_11 
       (.CI(\pwm[7]_INST_0_i_20_n_0 ),
        .CO({\pwm[7]_INST_0_i_11_n_0 ,\pwm[7]_INST_0_i_11_n_1 ,\pwm[7]_INST_0_i_11_n_2 ,\pwm[7]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[7]_INST_0_i_21_n_0 ,\pwm[7]_INST_0_i_22_n_0 ,\pwm[7]_INST_0_i_23_n_0 ,\pwm[7]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[7]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[7]_INST_0_i_25_n_0 ,\pwm[7]_INST_0_i_26_n_0 ,\pwm[7]_INST_0_i_27_n_0 ,\pwm[7]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_12 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [23]),
        .O(\pwm[7]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_13 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [21]),
        .O(\pwm[7]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_14 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [19]),
        .O(\pwm[7]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_15 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [17]),
        .O(\pwm[7]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_16 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [23]),
        .I3(count_reg[23]),
        .O(\pwm[7]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_17 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [21]),
        .I3(count_reg[21]),
        .O(\pwm[7]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_18 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [19]),
        .I3(count_reg[19]),
        .O(\pwm[7]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_19 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [17]),
        .I3(count_reg[17]),
        .O(\pwm[7]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[7]_INST_0_i_2 
       (.CI(\pwm[7]_INST_0_i_11_n_0 ),
        .CO({\pwm[7]_INST_0_i_2_n_0 ,\pwm[7]_INST_0_i_2_n_1 ,\pwm[7]_INST_0_i_2_n_2 ,\pwm[7]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[7]_INST_0_i_12_n_0 ,\pwm[7]_INST_0_i_13_n_0 ,\pwm[7]_INST_0_i_14_n_0 ,\pwm[7]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[7]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[7]_INST_0_i_16_n_0 ,\pwm[7]_INST_0_i_17_n_0 ,\pwm[7]_INST_0_i_18_n_0 ,\pwm[7]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[7]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[7]_INST_0_i_20_n_0 ,\pwm[7]_INST_0_i_20_n_1 ,\pwm[7]_INST_0_i_20_n_2 ,\pwm[7]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[7]_INST_0_i_29_n_0 ,\pwm[7]_INST_0_i_30_n_0 ,\pwm[7]_INST_0_i_31_n_0 ,\pwm[7]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[7]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[7]_INST_0_i_33_n_0 ,\pwm[7]_INST_0_i_34_n_0 ,\pwm[7]_INST_0_i_35_n_0 ,\pwm[7]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_21 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [15]),
        .O(\pwm[7]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_22 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [13]),
        .O(\pwm[7]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_23 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [11]),
        .O(\pwm[7]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_24 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [9]),
        .O(\pwm[7]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_25 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [15]),
        .I3(count_reg[15]),
        .O(\pwm[7]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_26 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [13]),
        .I3(count_reg[13]),
        .O(\pwm[7]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_27 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [11]),
        .I3(count_reg[11]),
        .O(\pwm[7]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_28 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [9]),
        .I3(count_reg[9]),
        .O(\pwm[7]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_29 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [7]),
        .O(\pwm[7]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_3 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [31]),
        .O(\pwm[7]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_30 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [5]),
        .O(\pwm[7]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_31 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [3]),
        .O(\pwm[7]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_32 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [1]),
        .O(\pwm[7]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_33 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [7]),
        .I3(count_reg[7]),
        .O(\pwm[7]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_34 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [5]),
        .I3(count_reg[5]),
        .O(\pwm[7]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_35 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [3]),
        .I3(count_reg[3]),
        .O(\pwm[7]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_36 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [1]),
        .I3(count_reg[1]),
        .O(\pwm[7]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_4 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [29]),
        .O(\pwm[7]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_5 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [27]),
        .O(\pwm[7]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[7]_INST_0_i_6 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[7].duty_reg_latch_reg[7]_19 [25]),
        .O(\pwm[7]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_7 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [31]),
        .I3(count_reg[31]),
        .O(\pwm[7]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_8 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [29]),
        .I3(count_reg[29]),
        .O(\pwm[7]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[7]_INST_0_i_9 
       (.I0(\genblk1[7].duty_reg_latch_reg[7]_19 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[7].duty_reg_latch_reg[7]_19 [27]),
        .I3(count_reg[27]),
        .O(\pwm[7]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[8]_INST_0 
       (.I0(pwm114_in),
        .I1(enable),
        .O(pwm[8]));
  CARRY4 \pwm[8]_INST_0_i_1 
       (.CI(\pwm[8]_INST_0_i_2_n_0 ),
        .CO({pwm114_in,\pwm[8]_INST_0_i_1_n_1 ,\pwm[8]_INST_0_i_1_n_2 ,\pwm[8]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[8]_INST_0_i_3_n_0 ,\pwm[8]_INST_0_i_4_n_0 ,\pwm[8]_INST_0_i_5_n_0 ,\pwm[8]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[8]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[8]_INST_0_i_7_n_0 ,\pwm[8]_INST_0_i_8_n_0 ,\pwm[8]_INST_0_i_9_n_0 ,\pwm[8]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_10 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [25]),
        .I3(count_reg[25]),
        .O(\pwm[8]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[8]_INST_0_i_11 
       (.CI(\pwm[8]_INST_0_i_20_n_0 ),
        .CO({\pwm[8]_INST_0_i_11_n_0 ,\pwm[8]_INST_0_i_11_n_1 ,\pwm[8]_INST_0_i_11_n_2 ,\pwm[8]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[8]_INST_0_i_21_n_0 ,\pwm[8]_INST_0_i_22_n_0 ,\pwm[8]_INST_0_i_23_n_0 ,\pwm[8]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[8]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[8]_INST_0_i_25_n_0 ,\pwm[8]_INST_0_i_26_n_0 ,\pwm[8]_INST_0_i_27_n_0 ,\pwm[8]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_12 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [23]),
        .O(\pwm[8]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_13 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [21]),
        .O(\pwm[8]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_14 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [19]),
        .O(\pwm[8]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_15 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [17]),
        .O(\pwm[8]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_16 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [23]),
        .I3(count_reg[23]),
        .O(\pwm[8]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_17 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [21]),
        .I3(count_reg[21]),
        .O(\pwm[8]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_18 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [19]),
        .I3(count_reg[19]),
        .O(\pwm[8]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_19 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [17]),
        .I3(count_reg[17]),
        .O(\pwm[8]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[8]_INST_0_i_2 
       (.CI(\pwm[8]_INST_0_i_11_n_0 ),
        .CO({\pwm[8]_INST_0_i_2_n_0 ,\pwm[8]_INST_0_i_2_n_1 ,\pwm[8]_INST_0_i_2_n_2 ,\pwm[8]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[8]_INST_0_i_12_n_0 ,\pwm[8]_INST_0_i_13_n_0 ,\pwm[8]_INST_0_i_14_n_0 ,\pwm[8]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[8]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[8]_INST_0_i_16_n_0 ,\pwm[8]_INST_0_i_17_n_0 ,\pwm[8]_INST_0_i_18_n_0 ,\pwm[8]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[8]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[8]_INST_0_i_20_n_0 ,\pwm[8]_INST_0_i_20_n_1 ,\pwm[8]_INST_0_i_20_n_2 ,\pwm[8]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[8]_INST_0_i_29_n_0 ,\pwm[8]_INST_0_i_30_n_0 ,\pwm[8]_INST_0_i_31_n_0 ,\pwm[8]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[8]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[8]_INST_0_i_33_n_0 ,\pwm[8]_INST_0_i_34_n_0 ,\pwm[8]_INST_0_i_35_n_0 ,\pwm[8]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_21 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [15]),
        .O(\pwm[8]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_22 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [13]),
        .O(\pwm[8]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_23 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [11]),
        .O(\pwm[8]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_24 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [9]),
        .O(\pwm[8]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_25 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [15]),
        .I3(count_reg[15]),
        .O(\pwm[8]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_26 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [13]),
        .I3(count_reg[13]),
        .O(\pwm[8]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_27 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [11]),
        .I3(count_reg[11]),
        .O(\pwm[8]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_28 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [9]),
        .I3(count_reg[9]),
        .O(\pwm[8]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_29 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [7]),
        .O(\pwm[8]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_3 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [31]),
        .O(\pwm[8]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_30 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [5]),
        .O(\pwm[8]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_31 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [3]),
        .O(\pwm[8]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_32 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [1]),
        .O(\pwm[8]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_33 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [7]),
        .I3(count_reg[7]),
        .O(\pwm[8]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_34 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [5]),
        .I3(count_reg[5]),
        .O(\pwm[8]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_35 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [3]),
        .I3(count_reg[3]),
        .O(\pwm[8]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_36 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [1]),
        .I3(count_reg[1]),
        .O(\pwm[8]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_4 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [29]),
        .O(\pwm[8]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_5 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [27]),
        .O(\pwm[8]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[8]_INST_0_i_6 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[8].duty_reg_latch_reg[8]_20 [25]),
        .O(\pwm[8]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_7 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [31]),
        .I3(count_reg[31]),
        .O(\pwm[8]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_8 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [29]),
        .I3(count_reg[29]),
        .O(\pwm[8]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[8]_INST_0_i_9 
       (.I0(\genblk1[8].duty_reg_latch_reg[8]_20 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[8].duty_reg_latch_reg[8]_20 [27]),
        .I3(count_reg[27]),
        .O(\pwm[8]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pwm[9]_INST_0 
       (.I0(pwm116_in),
        .I1(enable),
        .O(pwm[9]));
  CARRY4 \pwm[9]_INST_0_i_1 
       (.CI(\pwm[9]_INST_0_i_2_n_0 ),
        .CO({pwm116_in,\pwm[9]_INST_0_i_1_n_1 ,\pwm[9]_INST_0_i_1_n_2 ,\pwm[9]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[9]_INST_0_i_3_n_0 ,\pwm[9]_INST_0_i_4_n_0 ,\pwm[9]_INST_0_i_5_n_0 ,\pwm[9]_INST_0_i_6_n_0 }),
        .O(\NLW_pwm[9]_INST_0_i_1_O_UNCONNECTED [3:0]),
        .S({\pwm[9]_INST_0_i_7_n_0 ,\pwm[9]_INST_0_i_8_n_0 ,\pwm[9]_INST_0_i_9_n_0 ,\pwm[9]_INST_0_i_10_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_10 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [24]),
        .I1(count_reg[24]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [25]),
        .I3(count_reg[25]),
        .O(\pwm[9]_INST_0_i_10_n_0 ));
  CARRY4 \pwm[9]_INST_0_i_11 
       (.CI(\pwm[9]_INST_0_i_20_n_0 ),
        .CO({\pwm[9]_INST_0_i_11_n_0 ,\pwm[9]_INST_0_i_11_n_1 ,\pwm[9]_INST_0_i_11_n_2 ,\pwm[9]_INST_0_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[9]_INST_0_i_21_n_0 ,\pwm[9]_INST_0_i_22_n_0 ,\pwm[9]_INST_0_i_23_n_0 ,\pwm[9]_INST_0_i_24_n_0 }),
        .O(\NLW_pwm[9]_INST_0_i_11_O_UNCONNECTED [3:0]),
        .S({\pwm[9]_INST_0_i_25_n_0 ,\pwm[9]_INST_0_i_26_n_0 ,\pwm[9]_INST_0_i_27_n_0 ,\pwm[9]_INST_0_i_28_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_12 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [22]),
        .I1(count_reg[22]),
        .I2(count_reg[23]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [23]),
        .O(\pwm[9]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_13 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [20]),
        .I1(count_reg[20]),
        .I2(count_reg[21]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [21]),
        .O(\pwm[9]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_14 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [18]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [19]),
        .O(\pwm[9]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_15 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [16]),
        .I1(count_reg[16]),
        .I2(count_reg[17]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [17]),
        .O(\pwm[9]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_16 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [22]),
        .I1(count_reg[22]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [23]),
        .I3(count_reg[23]),
        .O(\pwm[9]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_17 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [20]),
        .I1(count_reg[20]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [21]),
        .I3(count_reg[21]),
        .O(\pwm[9]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_18 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [18]),
        .I1(count_reg[18]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [19]),
        .I3(count_reg[19]),
        .O(\pwm[9]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_19 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [16]),
        .I1(count_reg[16]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [17]),
        .I3(count_reg[17]),
        .O(\pwm[9]_INST_0_i_19_n_0 ));
  CARRY4 \pwm[9]_INST_0_i_2 
       (.CI(\pwm[9]_INST_0_i_11_n_0 ),
        .CO({\pwm[9]_INST_0_i_2_n_0 ,\pwm[9]_INST_0_i_2_n_1 ,\pwm[9]_INST_0_i_2_n_2 ,\pwm[9]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[9]_INST_0_i_12_n_0 ,\pwm[9]_INST_0_i_13_n_0 ,\pwm[9]_INST_0_i_14_n_0 ,\pwm[9]_INST_0_i_15_n_0 }),
        .O(\NLW_pwm[9]_INST_0_i_2_O_UNCONNECTED [3:0]),
        .S({\pwm[9]_INST_0_i_16_n_0 ,\pwm[9]_INST_0_i_17_n_0 ,\pwm[9]_INST_0_i_18_n_0 ,\pwm[9]_INST_0_i_19_n_0 }));
  CARRY4 \pwm[9]_INST_0_i_20 
       (.CI(1'b0),
        .CO({\pwm[9]_INST_0_i_20_n_0 ,\pwm[9]_INST_0_i_20_n_1 ,\pwm[9]_INST_0_i_20_n_2 ,\pwm[9]_INST_0_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\pwm[9]_INST_0_i_29_n_0 ,\pwm[9]_INST_0_i_30_n_0 ,\pwm[9]_INST_0_i_31_n_0 ,\pwm[9]_INST_0_i_32_n_0 }),
        .O(\NLW_pwm[9]_INST_0_i_20_O_UNCONNECTED [3:0]),
        .S({\pwm[9]_INST_0_i_33_n_0 ,\pwm[9]_INST_0_i_34_n_0 ,\pwm[9]_INST_0_i_35_n_0 ,\pwm[9]_INST_0_i_36_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_21 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [14]),
        .I1(count_reg[14]),
        .I2(count_reg[15]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [15]),
        .O(\pwm[9]_INST_0_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_22 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [12]),
        .I1(count_reg[12]),
        .I2(count_reg[13]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [13]),
        .O(\pwm[9]_INST_0_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_23 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [10]),
        .I1(count_reg[10]),
        .I2(count_reg[11]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [11]),
        .O(\pwm[9]_INST_0_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_24 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [8]),
        .I1(count_reg[8]),
        .I2(count_reg[9]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [9]),
        .O(\pwm[9]_INST_0_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_25 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [14]),
        .I1(count_reg[14]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [15]),
        .I3(count_reg[15]),
        .O(\pwm[9]_INST_0_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_26 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [12]),
        .I1(count_reg[12]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [13]),
        .I3(count_reg[13]),
        .O(\pwm[9]_INST_0_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_27 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [10]),
        .I1(count_reg[10]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [11]),
        .I3(count_reg[11]),
        .O(\pwm[9]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_28 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [8]),
        .I1(count_reg[8]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [9]),
        .I3(count_reg[9]),
        .O(\pwm[9]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_29 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [6]),
        .I1(count_reg[6]),
        .I2(count_reg[7]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [7]),
        .O(\pwm[9]_INST_0_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_3 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [30]),
        .I1(count_reg[30]),
        .I2(count_reg[31]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [31]),
        .O(\pwm[9]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_30 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [4]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [5]),
        .O(\pwm[9]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_31 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [2]),
        .I1(count_reg[2]),
        .I2(count_reg[3]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [3]),
        .O(\pwm[9]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_32 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [0]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [1]),
        .O(\pwm[9]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_33 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [6]),
        .I1(count_reg[6]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [7]),
        .I3(count_reg[7]),
        .O(\pwm[9]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_34 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [4]),
        .I1(count_reg[4]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [5]),
        .I3(count_reg[5]),
        .O(\pwm[9]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_35 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [2]),
        .I1(count_reg[2]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [3]),
        .I3(count_reg[3]),
        .O(\pwm[9]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_36 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [0]),
        .I1(count_reg[0]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [1]),
        .I3(count_reg[1]),
        .O(\pwm[9]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_4 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [28]),
        .I1(count_reg[28]),
        .I2(count_reg[29]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [29]),
        .O(\pwm[9]_INST_0_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_5 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [26]),
        .I1(count_reg[26]),
        .I2(count_reg[27]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [27]),
        .O(\pwm[9]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \pwm[9]_INST_0_i_6 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [24]),
        .I1(count_reg[24]),
        .I2(count_reg[25]),
        .I3(\genblk1[9].duty_reg_latch_reg[9]_21 [25]),
        .O(\pwm[9]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_7 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [30]),
        .I1(count_reg[30]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [31]),
        .I3(count_reg[31]),
        .O(\pwm[9]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_8 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [28]),
        .I1(count_reg[28]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [29]),
        .I3(count_reg[29]),
        .O(\pwm[9]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \pwm[9]_INST_0_i_9 
       (.I0(\genblk1[9].duty_reg_latch_reg[9]_21 [26]),
        .I1(count_reg[26]),
        .I2(\genblk1[9].duty_reg_latch_reg[9]_21 [27]),
        .I3(count_reg[27]),
        .O(\pwm[9]_INST_0_i_9_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
