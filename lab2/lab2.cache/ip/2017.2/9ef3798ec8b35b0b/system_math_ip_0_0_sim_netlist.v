// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Mar  2 17:57:57 2021
// Host        : lfsecuritas running 64-bit Ubuntu 20.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_math_ip_0_0_sim_netlist.v
// Design      : system_math_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_user_logic
   (D,
    result,
    SR,
    axi_araddr,
    Q,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    \slv_reg0_reg[7] ,
    ain_vio,
    sel,
    bin_vio);
  output [8:0]D;
  output [8:0]result;
  output [0:0]SR;
  input [2:0]axi_araddr;
  input [8:0]Q;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input [7:0]\slv_reg0_reg[7] ;
  input [7:0]ain_vio;
  input sel;
  input [7:0]bin_vio;

  wire [8:0]D;
  wire [7:0]L;
  wire [8:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [7:0]ain_vio;
  wire [2:0]axi_araddr;
  wire [7:0]bin_vio;
  wire [8:0]plusOp;
  wire [8:0]result;
  wire \result[3]_i_6_n_0 ;
  wire \result[3]_i_7_n_0 ;
  wire \result[3]_i_8_n_0 ;
  wire \result[3]_i_9_n_0 ;
  wire \result[7]_i_6_n_0 ;
  wire \result[7]_i_7_n_0 ;
  wire \result[7]_i_8_n_0 ;
  wire \result[7]_i_9_n_0 ;
  wire \result_reg[3]_i_1_n_0 ;
  wire \result_reg[3]_i_1_n_1 ;
  wire \result_reg[3]_i_1_n_2 ;
  wire \result_reg[3]_i_1_n_3 ;
  wire \result_reg[7]_i_1_n_0 ;
  wire \result_reg[7]_i_1_n_1 ;
  wire \result_reg[7]_i_1_n_2 ;
  wire \result_reg[7]_i_1_n_3 ;
  wire sel;
  wire [7:0]\slv_reg0_reg[7] ;
  wire [3:1]\NLW_result_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_result_reg[8]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[0]_i_1 
       (.I0(result[0]),
        .I1(axi_araddr[0]),
        .I2(Q[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[1]_i_1 
       (.I0(result[1]),
        .I1(axi_araddr[0]),
        .I2(Q[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[2]_i_1 
       (.I0(result[2]),
        .I1(axi_araddr[0]),
        .I2(Q[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[3]_i_1 
       (.I0(result[3]),
        .I1(axi_araddr[0]),
        .I2(Q[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[4]_i_1 
       (.I0(result[4]),
        .I1(axi_araddr[0]),
        .I2(Q[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[5]_i_1 
       (.I0(result[5]),
        .I1(axi_araddr[0]),
        .I2(Q[5]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[6]_i_1 
       (.I0(result[6]),
        .I1(axi_araddr[0]),
        .I2(Q[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[7]_i_1 
       (.I0(result[7]),
        .I1(axi_araddr[0]),
        .I2(Q[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \axi_rdata[8]_i_1 
       (.I0(result[8]),
        .I1(axi_araddr[0]),
        .I2(Q[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[1]),
        .O(D[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_2 
       (.I0(ain_vio[3]),
        .I1(\slv_reg0_reg[7] [3]),
        .I2(sel),
        .O(L[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_3 
       (.I0(ain_vio[2]),
        .I1(\slv_reg0_reg[7] [2]),
        .I2(sel),
        .O(L[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_4 
       (.I0(ain_vio[1]),
        .I1(\slv_reg0_reg[7] [1]),
        .I2(sel),
        .O(L[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[3]_i_5 
       (.I0(ain_vio[0]),
        .I1(\slv_reg0_reg[7] [0]),
        .I2(sel),
        .O(L[0]));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[3]_i_6 
       (.I0(\slv_reg0_reg[7] [3]),
        .I1(ain_vio[3]),
        .I2(sel),
        .I3(Q[3]),
        .I4(bin_vio[3]),
        .O(\result[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[3]_i_7 
       (.I0(\slv_reg0_reg[7] [2]),
        .I1(ain_vio[2]),
        .I2(sel),
        .I3(Q[2]),
        .I4(bin_vio[2]),
        .O(\result[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[3]_i_8 
       (.I0(\slv_reg0_reg[7] [1]),
        .I1(ain_vio[1]),
        .I2(sel),
        .I3(Q[1]),
        .I4(bin_vio[1]),
        .O(\result[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[3]_i_9 
       (.I0(\slv_reg0_reg[7] [0]),
        .I1(ain_vio[0]),
        .I2(sel),
        .I3(Q[0]),
        .I4(bin_vio[0]),
        .O(\result[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[7]_i_2 
       (.I0(ain_vio[7]),
        .I1(\slv_reg0_reg[7] [7]),
        .I2(sel),
        .O(L[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[7]_i_3 
       (.I0(ain_vio[6]),
        .I1(\slv_reg0_reg[7] [6]),
        .I2(sel),
        .O(L[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[7]_i_4 
       (.I0(ain_vio[5]),
        .I1(\slv_reg0_reg[7] [5]),
        .I2(sel),
        .O(L[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \result[7]_i_5 
       (.I0(ain_vio[4]),
        .I1(\slv_reg0_reg[7] [4]),
        .I2(sel),
        .O(L[4]));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[7]_i_6 
       (.I0(\slv_reg0_reg[7] [7]),
        .I1(ain_vio[7]),
        .I2(sel),
        .I3(Q[7]),
        .I4(bin_vio[7]),
        .O(\result[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[7]_i_7 
       (.I0(\slv_reg0_reg[7] [6]),
        .I1(ain_vio[6]),
        .I2(sel),
        .I3(Q[6]),
        .I4(bin_vio[6]),
        .O(\result[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[7]_i_8 
       (.I0(\slv_reg0_reg[7] [5]),
        .I1(ain_vio[5]),
        .I2(sel),
        .I3(Q[5]),
        .I4(bin_vio[5]),
        .O(\result[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h353AC5CA)) 
    \result[7]_i_9 
       (.I0(\slv_reg0_reg[7] [4]),
        .I1(ain_vio[4]),
        .I2(sel),
        .I3(Q[4]),
        .I4(bin_vio[4]),
        .O(\result[7]_i_9_n_0 ));
  FDRE \result_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(result[0]),
        .R(SR));
  FDRE \result_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(result[1]),
        .R(SR));
  FDRE \result_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[2]),
        .Q(result[2]),
        .R(SR));
  FDRE \result_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[3]),
        .Q(result[3]),
        .R(SR));
  CARRY4 \result_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\result_reg[3]_i_1_n_0 ,\result_reg[3]_i_1_n_1 ,\result_reg[3]_i_1_n_2 ,\result_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(L[3:0]),
        .O(plusOp[3:0]),
        .S({\result[3]_i_6_n_0 ,\result[3]_i_7_n_0 ,\result[3]_i_8_n_0 ,\result[3]_i_9_n_0 }));
  FDRE \result_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[4]),
        .Q(result[4]),
        .R(SR));
  FDRE \result_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[5]),
        .Q(result[5]),
        .R(SR));
  FDRE \result_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[6]),
        .Q(result[6]),
        .R(SR));
  FDRE \result_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[7]),
        .Q(result[7]),
        .R(SR));
  CARRY4 \result_reg[7]_i_1 
       (.CI(\result_reg[3]_i_1_n_0 ),
        .CO({\result_reg[7]_i_1_n_0 ,\result_reg[7]_i_1_n_1 ,\result_reg[7]_i_1_n_2 ,\result_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(L[7:4]),
        .O(plusOp[7:4]),
        .S({\result[7]_i_6_n_0 ,\result[7]_i_7_n_0 ,\result[7]_i_8_n_0 ,\result[7]_i_9_n_0 }));
  FDRE \result_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(plusOp[8]),
        .Q(result[8]),
        .R(SR));
  CARRY4 \result_reg[8]_i_1 
       (.CI(\result_reg[7]_i_1_n_0 ),
        .CO({\NLW_result_reg[8]_i_1_CO_UNCONNECTED [3:1],plusOp[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_result_reg[8]_i_1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_math_ip
   (S_AXI_WREADY,
    S_AXI_AWREADY,
    result,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_WSTRB,
    S_AXI_ARVALID,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    ain_vio,
    sel,
    bin_vio,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output [8:0]result;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_ARVALID;
  input S_AXI_ACLK;
  input [2:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [2:0]S_AXI_ARADDR;
  input [7:0]ain_vio;
  input sel;
  input [7:0]bin_vio;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [2:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [2:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire U1_n_0;
  wire U1_n_1;
  wire U1_n_18;
  wire U1_n_2;
  wire U1_n_3;
  wire U1_n_4;
  wire U1_n_5;
  wire U1_n_6;
  wire U1_n_7;
  wire U1_n_8;
  wire [7:0]ain_vio;
  wire [4:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire axi_awready_i_2_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[10]_i_1_n_0 ;
  wire \axi_rdata[11]_i_1_n_0 ;
  wire \axi_rdata[12]_i_1_n_0 ;
  wire \axi_rdata[13]_i_1_n_0 ;
  wire \axi_rdata[14]_i_1_n_0 ;
  wire \axi_rdata[15]_i_1_n_0 ;
  wire \axi_rdata[16]_i_1_n_0 ;
  wire \axi_rdata[17]_i_1_n_0 ;
  wire \axi_rdata[18]_i_1_n_0 ;
  wire \axi_rdata[19]_i_1_n_0 ;
  wire \axi_rdata[20]_i_1_n_0 ;
  wire \axi_rdata[21]_i_1_n_0 ;
  wire \axi_rdata[22]_i_1_n_0 ;
  wire \axi_rdata[23]_i_1_n_0 ;
  wire \axi_rdata[24]_i_1_n_0 ;
  wire \axi_rdata[25]_i_1_n_0 ;
  wire \axi_rdata[26]_i_1_n_0 ;
  wire \axi_rdata[27]_i_1_n_0 ;
  wire \axi_rdata[28]_i_1_n_0 ;
  wire \axi_rdata[29]_i_1_n_0 ;
  wire \axi_rdata[30]_i_1_n_0 ;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire \axi_rdata[9]_i_1_n_0 ;
  wire axi_rvalid00_out__0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire [7:0]bin_vio;
  wire p_0_in;
  wire [8:0]result;
  wire sel;
  wire [7:0]slv_reg0;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lab2_user_logic U1
       (.D({U1_n_0,U1_n_1,U1_n_2,U1_n_3,U1_n_4,U1_n_5,U1_n_6,U1_n_7,U1_n_8}),
        .Q(slv_reg1[8:0]),
        .SR(U1_n_18),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .ain_vio(ain_vio),
        .axi_araddr(axi_araddr),
        .bin_vio(bin_vio),
        .result(result),
        .sel(sel),
        .\slv_reg0_reg[7] (slv_reg0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(U1_n_18));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(U1_n_18));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(axi_araddr[4]),
        .R(U1_n_18));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(U1_n_18));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWREADY),
        .I4(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[4]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWREADY),
        .I4(\axi_awaddr_reg_n_0_[4] ),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in),
        .R(U1_n_18));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(U1_n_18));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(U1_n_18));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(S_AXI_AWREADY),
        .R(U1_n_18));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(U1_n_18));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[4]),
        .I3(axi_araddr[3]),
        .O(\axi_rdata[9]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_8),
        .Q(S_AXI_RDATA[0]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[10]_i_1_n_0 ),
        .Q(S_AXI_RDATA[10]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[11]_i_1_n_0 ),
        .Q(S_AXI_RDATA[11]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[12]_i_1_n_0 ),
        .Q(S_AXI_RDATA[12]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[13]_i_1_n_0 ),
        .Q(S_AXI_RDATA[13]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[14]_i_1_n_0 ),
        .Q(S_AXI_RDATA[14]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[15]_i_1_n_0 ),
        .Q(S_AXI_RDATA[15]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[16]_i_1_n_0 ),
        .Q(S_AXI_RDATA[16]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[17]_i_1_n_0 ),
        .Q(S_AXI_RDATA[17]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[18]_i_1_n_0 ),
        .Q(S_AXI_RDATA[18]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[19]_i_1_n_0 ),
        .Q(S_AXI_RDATA[19]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_7),
        .Q(S_AXI_RDATA[1]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[20]_i_1_n_0 ),
        .Q(S_AXI_RDATA[20]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[21]_i_1_n_0 ),
        .Q(S_AXI_RDATA[21]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[22]_i_1_n_0 ),
        .Q(S_AXI_RDATA[22]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[23]_i_1_n_0 ),
        .Q(S_AXI_RDATA[23]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[24]_i_1_n_0 ),
        .Q(S_AXI_RDATA[24]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[25]_i_1_n_0 ),
        .Q(S_AXI_RDATA[25]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[26]_i_1_n_0 ),
        .Q(S_AXI_RDATA[26]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[27]_i_1_n_0 ),
        .Q(S_AXI_RDATA[27]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[28]_i_1_n_0 ),
        .Q(S_AXI_RDATA[28]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[29]_i_1_n_0 ),
        .Q(S_AXI_RDATA[29]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_6),
        .Q(S_AXI_RDATA[2]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[30]_i_1_n_0 ),
        .Q(S_AXI_RDATA[30]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[31]_i_1_n_0 ),
        .Q(S_AXI_RDATA[31]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_5),
        .Q(S_AXI_RDATA[3]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_4),
        .Q(S_AXI_RDATA[4]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_3),
        .Q(S_AXI_RDATA[5]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_2),
        .Q(S_AXI_RDATA[6]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_1),
        .Q(S_AXI_RDATA[7]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(U1_n_0),
        .Q(S_AXI_RDATA[8]),
        .R(U1_n_18));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_rvalid00_out__0),
        .D(\axi_rdata[9]_i_1_n_0 ),
        .Q(S_AXI_RDATA[9]),
        .R(U1_n_18));
  LUT3 #(
    .INIT(8'h40)) 
    axi_rvalid00_out
       (.I0(S_AXI_RVALID),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .O(axi_rvalid00_out__0));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(U1_n_18));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(U1_n_18));
  LUT5 #(
    .INIT(32'h00000010)) 
    \slv_reg0[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(S_AXI_WSTRB[0]),
        .I3(p_0_in),
        .I4(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg0[0]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg0[1]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg0[2]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg0[3]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg0[4]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg0[5]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg0[6]),
        .R(U1_n_18));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg0[7]),
        .R(U1_n_18));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg1[15]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(p_0_in),
        .I3(S_AXI_WSTRB[1]),
        .I4(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg1[23]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(p_0_in),
        .I3(S_AXI_WSTRB[2]),
        .I4(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg1[31]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(p_0_in),
        .I3(S_AXI_WSTRB[3]),
        .I4(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    \slv_reg1[7]_i_1 
       (.I0(\axi_awaddr_reg_n_0_[3] ),
        .I1(\axi_awaddr_reg_n_0_[4] ),
        .I2(p_0_in),
        .I3(S_AXI_WSTRB[0]),
        .I4(\slv_reg1[31]_i_2_n_0 ),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg1[0]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg1[10]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg1[11]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg1[12]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg1[13]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg1[14]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg1[15]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg1[16]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg1[17]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg1[18]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg1[19]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg1[1]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg1[20]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg1[21]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg1[22]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg1[23]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg1[24]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg1[25]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg1[26]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg1[27]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg1[28]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg1[29]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg1[2]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg1[30]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg1[31]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg1[3]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg1[4]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg1[5]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg1[6]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg1[7]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg1[8]),
        .R(U1_n_18));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg1[9]),
        .R(U1_n_18));
endmodule

(* CHECK_LICENSE_TYPE = "system_math_ip_0_0,math_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "math_ip,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    ain_vio,
    bin_vio,
    sel,
    result);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [4:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [4:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  input [7:0]ain_vio;
  input [7:0]bin_vio;
  input sel;
  output [8:0]result;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [4:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [4:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [7:0]ain_vio;
  wire [7:0]bin_vio;
  wire [8:0]result;
  wire sel;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_math_ip inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[4:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[4:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .ain_vio(ain_vio),
        .bin_vio(bin_vio),
        .result(result),
        .sel(sel));
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
