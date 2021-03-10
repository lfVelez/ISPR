// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Mar  3 18:28:25 2021
// Host        : lfsecuritas running 64-bit Ubuntu 20.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_fir_top_0_0_sim_netlist.v
// Design      : system_fir_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir
   (sig_fir_y_ap_vld,
    CO,
    \rdata_reg[7] ,
    ap_CS_fsm,
    \rdata_reg[3] ,
    \rdata_reg[2] ,
    \rdata_reg[4] ,
    \rdata_reg[5] ,
    \rdata_reg[6] ,
    \rdata_reg[8] ,
    \rdata_reg[9] ,
    \rdata_reg[10] ,
    \rdata_reg[11] ,
    \rdata_reg[12] ,
    \rdata_reg[13] ,
    \rdata_reg[14] ,
    \rdata_reg[15] ,
    ap_done_reg,
    _y_ap_vld_reg,
    aclk,
    Q,
    DI,
    S,
    \_x_reg[9] ,
    \_x_reg[6] ,
    \_x_reg[13] ,
    \_x_reg[10] ,
    \_x_reg[15] ,
    \_x_reg[14] ,
    \_x_reg[15]_0 ,
    s_axi_fir_io_ARADDR,
    sig_fir_ap_start,
    \s_axi_fir_io_ARADDR[4] ,
    aresetn,
    \rstate_reg[0] ,
    ap_done,
    \rstate_reg[0]_0 ,
    _y_ap_vld,
    sig_fir_ap_rst);
  output sig_fir_y_ap_vld;
  output [0:0]CO;
  output [2:0]\rdata_reg[7] ;
  output [1:0]ap_CS_fsm;
  output \rdata_reg[3] ;
  output \rdata_reg[2] ;
  output \rdata_reg[4] ;
  output \rdata_reg[5] ;
  output \rdata_reg[6] ;
  output \rdata_reg[8] ;
  output \rdata_reg[9] ;
  output \rdata_reg[10] ;
  output \rdata_reg[11] ;
  output \rdata_reg[12] ;
  output \rdata_reg[13] ;
  output \rdata_reg[14] ;
  output \rdata_reg[15] ;
  output ap_done_reg;
  output _y_ap_vld_reg;
  input aclk;
  input [15:0]Q;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\_x_reg[9] ;
  input [3:0]\_x_reg[6] ;
  input [3:0]\_x_reg[13] ;
  input [3:0]\_x_reg[10] ;
  input [0:0]\_x_reg[15] ;
  input [3:0]\_x_reg[14] ;
  input [0:0]\_x_reg[15]_0 ;
  input [3:0]s_axi_fir_io_ARADDR;
  input sig_fir_ap_start;
  input \s_axi_fir_io_ARADDR[4] ;
  input aresetn;
  input \rstate_reg[0] ;
  input ap_done;
  input \rstate_reg[0]_0 ;
  input _y_ap_vld;
  input sig_fir_ap_rst;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire [3:0]\_x_reg[10] ;
  wire [3:0]\_x_reg[13] ;
  wire [3:0]\_x_reg[14] ;
  wire [0:0]\_x_reg[15] ;
  wire [0:0]\_x_reg[15]_0 ;
  wire [3:0]\_x_reg[6] ;
  wire [3:0]\_x_reg[9] ;
  wire _y_ap_vld;
  wire _y_ap_vld_reg;
  wire [30:6]acc_1_cast8_reg_334_reg;
  wire acc_2_fu_272_p2_carry__0_i_1_n_0;
  wire acc_2_fu_272_p2_carry__0_i_2_n_0;
  wire acc_2_fu_272_p2_carry__0_i_3_n_0;
  wire acc_2_fu_272_p2_carry__0_i_4_n_0;
  wire acc_2_fu_272_p2_carry__0_n_0;
  wire acc_2_fu_272_p2_carry__0_n_1;
  wire acc_2_fu_272_p2_carry__0_n_2;
  wire acc_2_fu_272_p2_carry__0_n_3;
  wire acc_2_fu_272_p2_carry__1_i_1_n_0;
  wire acc_2_fu_272_p2_carry__1_i_2_n_0;
  wire acc_2_fu_272_p2_carry__1_i_3_n_0;
  wire acc_2_fu_272_p2_carry__1_i_4_n_0;
  wire acc_2_fu_272_p2_carry__1_n_0;
  wire acc_2_fu_272_p2_carry__1_n_1;
  wire acc_2_fu_272_p2_carry__1_n_2;
  wire acc_2_fu_272_p2_carry__1_n_3;
  wire acc_2_fu_272_p2_carry__2_i_1_n_0;
  wire acc_2_fu_272_p2_carry__2_i_2_n_0;
  wire acc_2_fu_272_p2_carry__2_i_3_n_0;
  wire acc_2_fu_272_p2_carry__2_i_4_n_0;
  wire acc_2_fu_272_p2_carry__2_n_0;
  wire acc_2_fu_272_p2_carry__2_n_1;
  wire acc_2_fu_272_p2_carry__2_n_2;
  wire acc_2_fu_272_p2_carry__2_n_3;
  wire acc_2_fu_272_p2_carry__3_i_1_n_0;
  wire acc_2_fu_272_p2_carry__3_i_2_n_0;
  wire acc_2_fu_272_p2_carry__3_i_3_n_0;
  wire acc_2_fu_272_p2_carry__3_i_4_n_0;
  wire acc_2_fu_272_p2_carry__3_n_0;
  wire acc_2_fu_272_p2_carry__3_n_1;
  wire acc_2_fu_272_p2_carry__3_n_2;
  wire acc_2_fu_272_p2_carry__3_n_3;
  wire acc_2_fu_272_p2_carry__4_i_2_n_0;
  wire acc_2_fu_272_p2_carry__4_i_3_n_0;
  wire acc_2_fu_272_p2_carry__4_i_4_n_0;
  wire acc_2_fu_272_p2_carry__4_i_5_n_0;
  wire acc_2_fu_272_p2_carry__4_n_0;
  wire acc_2_fu_272_p2_carry__4_n_1;
  wire acc_2_fu_272_p2_carry__4_n_2;
  wire acc_2_fu_272_p2_carry__4_n_3;
  wire acc_2_fu_272_p2_carry__5_i_1_n_0;
  wire acc_2_fu_272_p2_carry_i_1_n_0;
  wire acc_2_fu_272_p2_carry_i_2_n_0;
  wire acc_2_fu_272_p2_carry_i_3_n_0;
  wire acc_2_fu_272_p2_carry_i_4_n_0;
  wire acc_2_fu_272_p2_carry_n_0;
  wire acc_2_fu_272_p2_carry_n_1;
  wire acc_2_fu_272_p2_carry_n_2;
  wire acc_2_fu_272_p2_carry_n_3;
  wire acc_3_fu_230_p2_i_1_n_0;
  wire acc_3_fu_230_p2_i_2_n_0;
  wire acc_3_fu_230_p2_i_3_n_0;
  wire acc_3_fu_230_p2_n_100;
  wire acc_3_fu_230_p2_n_101;
  wire acc_3_fu_230_p2_n_102;
  wire acc_3_fu_230_p2_n_103;
  wire acc_3_fu_230_p2_n_104;
  wire acc_3_fu_230_p2_n_105;
  wire acc_3_fu_230_p2_n_69;
  wire acc_3_fu_230_p2_n_70;
  wire acc_3_fu_230_p2_n_71;
  wire acc_3_fu_230_p2_n_72;
  wire acc_3_fu_230_p2_n_73;
  wire acc_3_fu_230_p2_n_74;
  wire acc_3_fu_230_p2_n_75;
  wire acc_3_fu_230_p2_n_76;
  wire acc_3_fu_230_p2_n_77;
  wire acc_3_fu_230_p2_n_78;
  wire acc_3_fu_230_p2_n_79;
  wire acc_3_fu_230_p2_n_80;
  wire acc_3_fu_230_p2_n_81;
  wire acc_3_fu_230_p2_n_82;
  wire acc_3_fu_230_p2_n_83;
  wire acc_3_fu_230_p2_n_84;
  wire acc_3_fu_230_p2_n_85;
  wire acc_3_fu_230_p2_n_86;
  wire acc_3_fu_230_p2_n_87;
  wire acc_3_fu_230_p2_n_88;
  wire acc_3_fu_230_p2_n_89;
  wire acc_3_fu_230_p2_n_90;
  wire acc_3_fu_230_p2_n_91;
  wire acc_3_fu_230_p2_n_92;
  wire acc_3_fu_230_p2_n_93;
  wire acc_3_fu_230_p2_n_94;
  wire acc_3_fu_230_p2_n_95;
  wire acc_3_fu_230_p2_n_96;
  wire acc_3_fu_230_p2_n_97;
  wire acc_3_fu_230_p2_n_98;
  wire acc_3_fu_230_p2_n_99;
  wire [25:9]acc_fu_162_p20_out;
  wire acc_fu_162_p2__0_carry__0_n_0;
  wire acc_fu_162_p2__0_carry__0_n_1;
  wire acc_fu_162_p2__0_carry__0_n_2;
  wire acc_fu_162_p2__0_carry__0_n_3;
  wire acc_fu_162_p2__0_carry__1_n_0;
  wire acc_fu_162_p2__0_carry__1_n_1;
  wire acc_fu_162_p2__0_carry__1_n_2;
  wire acc_fu_162_p2__0_carry__1_n_3;
  wire acc_fu_162_p2__0_carry__2_n_0;
  wire acc_fu_162_p2__0_carry__2_n_1;
  wire acc_fu_162_p2__0_carry__2_n_2;
  wire acc_fu_162_p2__0_carry__2_n_3;
  wire acc_fu_162_p2__0_carry_n_0;
  wire acc_fu_162_p2__0_carry_n_1;
  wire acc_fu_162_p2__0_carry_n_2;
  wire acc_fu_162_p2__0_carry_n_3;
  wire aclk;
  wire [1:0]ap_CS_fsm;
  wire \ap_CS_fsm[0]_i_1_n_0 ;
  wire \ap_CS_fsm[1]_i_1_n_0 ;
  wire ap_done;
  wire ap_done_reg;
  wire ap_reg_ppiten_pp0_it0;
  wire ap_reg_ppiten_pp0_it0_i_1_n_0;
  wire ap_reg_ppiten_pp0_it1;
  wire ap_reg_ppiten_pp0_it1_i_1_n_0;
  wire ap_reg_ppiten_pp0_it2_i_1_n_0;
  wire ap_reg_ppiten_pp0_it2_reg_n_0;
  wire \ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1_n_0 ;
  wire \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0] ;
  wire aresetn;
  wire c_U_n_16;
  wire c_U_n_17;
  wire c_U_n_18;
  wire c_U_n_19;
  wire [15:2]data5;
  wire \exitcond2_reg_300[0]_i_1_n_0 ;
  wire \exitcond2_reg_300_reg_n_0_[0] ;
  wire [15:0]\fir_c_rom_U/q0_reg ;
  wire \i_cast_reg_309_reg_n_0_[0] ;
  wire \i_cast_reg_309_reg_n_0_[1] ;
  wire \i_cast_reg_309_reg_n_0_[2] ;
  wire \i_cast_reg_309_reg_n_0_[3] ;
  wire \i_cast_reg_309_reg_n_0_[4] ;
  wire \i_cast_reg_309_reg_n_0_[5] ;
  wire [5:2]indvar_next_fu_178_p2;
  wire \indvar_reg_113[1]_i_1_n_0 ;
  wire \indvar_reg_113[5]_i_1_n_0 ;
  wire [5:0]indvar_reg_113_reg__0;
  wire [1:1]indvar_reg_113_reg__1;
  wire [0:0]p_0_in;
  wire p_3_in;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata_reg[10] ;
  wire \rdata_reg[11] ;
  wire \rdata_reg[12] ;
  wire \rdata_reg[13] ;
  wire \rdata_reg[14] ;
  wire \rdata_reg[15] ;
  wire \rdata_reg[2] ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[5] ;
  wire \rdata_reg[6] ;
  wire [2:0]\rdata_reg[7] ;
  wire \rdata_reg[8] ;
  wire \rdata_reg[9] ;
  wire \rstate_reg[0] ;
  wire \rstate_reg[0]_0 ;
  wire [3:0]s_axi_fir_io_ARADDR;
  wire \s_axi_fir_io_ARADDR[4] ;
  wire shift_reg_U_n_16;
  wire shift_reg_U_n_17;
  wire shift_reg_U_n_18;
  wire shift_reg_U_n_19;
  wire shift_reg_U_n_20;
  wire shift_reg_U_n_21;
  wire shift_reg_U_n_22;
  wire shift_reg_U_n_23;
  wire shift_reg_U_n_24;
  wire shift_reg_U_n_25;
  wire shift_reg_U_n_26;
  wire shift_reg_U_n_27;
  wire shift_reg_U_n_28;
  wire shift_reg_U_n_29;
  wire shift_reg_U_n_30;
  wire shift_reg_U_n_31;
  wire shift_reg_U_n_32;
  wire shift_reg_U_n_33;
  wire shift_reg_U_n_34;
  wire shift_reg_U_n_35;
  wire shift_reg_U_n_36;
  wire shift_reg_U_n_37;
  wire shift_reg_U_n_38;
  wire shift_reg_U_n_39;
  wire shift_reg_U_n_40;
  wire shift_reg_U_n_41;
  wire shift_reg_U_n_42;
  wire shift_reg_U_n_43;
  wire shift_reg_U_n_44;
  wire shift_reg_U_n_45;
  wire shift_reg_U_n_46;
  wire [15:0]shift_reg_q0;
  wire sig_fir_ap_rst;
  wire sig_fir_ap_start;
  wire sig_fir_y_ap_vld;
  wire [24:9]tmp_3_fu_262_p21_out;
  wire tmp_3_fu_262_p2__0_carry__0_n_0;
  wire tmp_3_fu_262_p2__0_carry__0_n_1;
  wire tmp_3_fu_262_p2__0_carry__0_n_2;
  wire tmp_3_fu_262_p2__0_carry__0_n_3;
  wire tmp_3_fu_262_p2__0_carry__1_n_0;
  wire tmp_3_fu_262_p2__0_carry__1_n_1;
  wire tmp_3_fu_262_p2__0_carry__1_n_2;
  wire tmp_3_fu_262_p2__0_carry__1_n_3;
  wire tmp_3_fu_262_p2__0_carry__2_n_1;
  wire tmp_3_fu_262_p2__0_carry__2_n_2;
  wire tmp_3_fu_262_p2__0_carry__2_n_3;
  wire tmp_3_fu_262_p2__0_carry_n_0;
  wire tmp_3_fu_262_p2__0_carry_n_1;
  wire tmp_3_fu_262_p2__0_carry_n_2;
  wire tmp_3_fu_262_p2__0_carry_n_3;
  wire [3:0]NLW_acc_2_fu_272_p2_carry_O_UNCONNECTED;
  wire [3:0]NLW_acc_2_fu_272_p2_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_acc_2_fu_272_p2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_acc_2_fu_272_p2_carry__5_CO_UNCONNECTED;
  wire [3:1]NLW_acc_2_fu_272_p2_carry__5_O_UNCONNECTED;
  wire NLW_acc_3_fu_230_p2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_acc_3_fu_230_p2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_acc_3_fu_230_p2_OVERFLOW_UNCONNECTED;
  wire NLW_acc_3_fu_230_p2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_acc_3_fu_230_p2_PATTERNDETECT_UNCONNECTED;
  wire NLW_acc_3_fu_230_p2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_acc_3_fu_230_p2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_acc_3_fu_230_p2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_acc_3_fu_230_p2_CARRYOUT_UNCONNECTED;
  wire [47:37]NLW_acc_3_fu_230_p2_P_UNCONNECTED;
  wire [47:0]NLW_acc_3_fu_230_p2_PCOUT_UNCONNECTED;
  wire [3:0]NLW_acc_fu_162_p2__0_carry__3_CO_UNCONNECTED;
  wire [3:1]NLW_acc_fu_162_p2__0_carry__3_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    _y_ap_vld_i_1
       (.I0(ap_CS_fsm[1]),
        .I1(ap_CS_fsm[0]),
        .I2(\rstate_reg[0]_0 ),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(s_axi_fir_io_ARADDR[0]),
        .I5(_y_ap_vld),
        .O(_y_ap_vld_reg));
  LUT3 #(
    .INIT(8'h40)) 
    \acc_1_cast8_reg_334[30]_i_1 
       (.I0(ap_CS_fsm[0]),
        .I1(ap_CS_fsm[1]),
        .I2(ap_reg_ppiten_pp0_it2_reg_n_0),
        .O(p_3_in));
  FDRE \acc_1_cast8_reg_334_reg[10] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_95),
        .Q(acc_1_cast8_reg_334_reg[10]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[11] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_94),
        .Q(acc_1_cast8_reg_334_reg[11]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[12] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_93),
        .Q(acc_1_cast8_reg_334_reg[12]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[13] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_92),
        .Q(acc_1_cast8_reg_334_reg[13]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[14] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_91),
        .Q(acc_1_cast8_reg_334_reg[14]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[15] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_90),
        .Q(acc_1_cast8_reg_334_reg[15]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[16] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_89),
        .Q(acc_1_cast8_reg_334_reg[16]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[17] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_88),
        .Q(acc_1_cast8_reg_334_reg[17]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[18] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_87),
        .Q(acc_1_cast8_reg_334_reg[18]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[19] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_86),
        .Q(acc_1_cast8_reg_334_reg[19]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[20] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_85),
        .Q(acc_1_cast8_reg_334_reg[20]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[21] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_84),
        .Q(acc_1_cast8_reg_334_reg[21]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[22] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_83),
        .Q(acc_1_cast8_reg_334_reg[22]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[23] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_82),
        .Q(acc_1_cast8_reg_334_reg[23]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[24] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_81),
        .Q(acc_1_cast8_reg_334_reg[24]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[25] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_80),
        .Q(acc_1_cast8_reg_334_reg[25]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[26] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_79),
        .Q(acc_1_cast8_reg_334_reg[26]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[27] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_78),
        .Q(acc_1_cast8_reg_334_reg[27]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[28] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_77),
        .Q(acc_1_cast8_reg_334_reg[28]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[29] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_76),
        .Q(acc_1_cast8_reg_334_reg[29]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[30] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_75),
        .Q(acc_1_cast8_reg_334_reg[30]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[6] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_99),
        .Q(acc_1_cast8_reg_334_reg[6]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[7] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_98),
        .Q(acc_1_cast8_reg_334_reg[7]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[8] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_97),
        .Q(acc_1_cast8_reg_334_reg[8]),
        .R(1'b0));
  FDRE \acc_1_cast8_reg_334_reg[9] 
       (.C(aclk),
        .CE(p_3_in),
        .D(acc_3_fu_230_p2_n_96),
        .Q(acc_1_cast8_reg_334_reg[9]),
        .R(1'b0));
  CARRY4 acc_2_fu_272_p2_carry
       (.CI(1'b0),
        .CO({acc_2_fu_272_p2_carry_n_0,acc_2_fu_272_p2_carry_n_1,acc_2_fu_272_p2_carry_n_2,acc_2_fu_272_p2_carry_n_3}),
        .CYINIT(1'b0),
        .DI(acc_1_cast8_reg_334_reg[9:6]),
        .O(NLW_acc_2_fu_272_p2_carry_O_UNCONNECTED[3:0]),
        .S({acc_2_fu_272_p2_carry_i_1_n_0,acc_2_fu_272_p2_carry_i_2_n_0,acc_2_fu_272_p2_carry_i_3_n_0,acc_2_fu_272_p2_carry_i_4_n_0}));
  CARRY4 acc_2_fu_272_p2_carry__0
       (.CI(acc_2_fu_272_p2_carry_n_0),
        .CO({acc_2_fu_272_p2_carry__0_n_0,acc_2_fu_272_p2_carry__0_n_1,acc_2_fu_272_p2_carry__0_n_2,acc_2_fu_272_p2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(acc_1_cast8_reg_334_reg[13:10]),
        .O(NLW_acc_2_fu_272_p2_carry__0_O_UNCONNECTED[3:0]),
        .S({acc_2_fu_272_p2_carry__0_i_1_n_0,acc_2_fu_272_p2_carry__0_i_2_n_0,acc_2_fu_272_p2_carry__0_i_3_n_0,acc_2_fu_272_p2_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__0_i_1
       (.I0(acc_1_cast8_reg_334_reg[13]),
        .I1(tmp_3_fu_262_p21_out[13]),
        .O(acc_2_fu_272_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__0_i_2
       (.I0(acc_1_cast8_reg_334_reg[12]),
        .I1(tmp_3_fu_262_p21_out[12]),
        .O(acc_2_fu_272_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__0_i_3
       (.I0(acc_1_cast8_reg_334_reg[11]),
        .I1(tmp_3_fu_262_p21_out[11]),
        .O(acc_2_fu_272_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__0_i_4
       (.I0(acc_1_cast8_reg_334_reg[10]),
        .I1(tmp_3_fu_262_p21_out[10]),
        .O(acc_2_fu_272_p2_carry__0_i_4_n_0));
  CARRY4 acc_2_fu_272_p2_carry__1
       (.CI(acc_2_fu_272_p2_carry__0_n_0),
        .CO({acc_2_fu_272_p2_carry__1_n_0,acc_2_fu_272_p2_carry__1_n_1,acc_2_fu_272_p2_carry__1_n_2,acc_2_fu_272_p2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(acc_1_cast8_reg_334_reg[17:14]),
        .O({data5[2],\rdata_reg[7] [1:0],NLW_acc_2_fu_272_p2_carry__1_O_UNCONNECTED[0]}),
        .S({acc_2_fu_272_p2_carry__1_i_1_n_0,acc_2_fu_272_p2_carry__1_i_2_n_0,acc_2_fu_272_p2_carry__1_i_3_n_0,acc_2_fu_272_p2_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__1_i_1
       (.I0(acc_1_cast8_reg_334_reg[17]),
        .I1(tmp_3_fu_262_p21_out[17]),
        .O(acc_2_fu_272_p2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__1_i_2
       (.I0(acc_1_cast8_reg_334_reg[16]),
        .I1(tmp_3_fu_262_p21_out[16]),
        .O(acc_2_fu_272_p2_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__1_i_3
       (.I0(acc_1_cast8_reg_334_reg[15]),
        .I1(tmp_3_fu_262_p21_out[15]),
        .O(acc_2_fu_272_p2_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__1_i_4
       (.I0(acc_1_cast8_reg_334_reg[14]),
        .I1(tmp_3_fu_262_p21_out[14]),
        .O(acc_2_fu_272_p2_carry__1_i_4_n_0));
  CARRY4 acc_2_fu_272_p2_carry__2
       (.CI(acc_2_fu_272_p2_carry__1_n_0),
        .CO({acc_2_fu_272_p2_carry__2_n_0,acc_2_fu_272_p2_carry__2_n_1,acc_2_fu_272_p2_carry__2_n_2,acc_2_fu_272_p2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(acc_1_cast8_reg_334_reg[21:18]),
        .O(data5[6:3]),
        .S({acc_2_fu_272_p2_carry__2_i_1_n_0,acc_2_fu_272_p2_carry__2_i_2_n_0,acc_2_fu_272_p2_carry__2_i_3_n_0,acc_2_fu_272_p2_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__2_i_1
       (.I0(acc_1_cast8_reg_334_reg[21]),
        .I1(tmp_3_fu_262_p21_out[21]),
        .O(acc_2_fu_272_p2_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__2_i_2
       (.I0(acc_1_cast8_reg_334_reg[20]),
        .I1(tmp_3_fu_262_p21_out[20]),
        .O(acc_2_fu_272_p2_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__2_i_3
       (.I0(acc_1_cast8_reg_334_reg[19]),
        .I1(tmp_3_fu_262_p21_out[19]),
        .O(acc_2_fu_272_p2_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__2_i_4
       (.I0(acc_1_cast8_reg_334_reg[18]),
        .I1(tmp_3_fu_262_p21_out[18]),
        .O(acc_2_fu_272_p2_carry__2_i_4_n_0));
  CARRY4 acc_2_fu_272_p2_carry__3
       (.CI(acc_2_fu_272_p2_carry__2_n_0),
        .CO({acc_2_fu_272_p2_carry__3_n_0,acc_2_fu_272_p2_carry__3_n_1,acc_2_fu_272_p2_carry__3_n_2,acc_2_fu_272_p2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(acc_1_cast8_reg_334_reg[25:22]),
        .O({data5[10:8],\rdata_reg[7] [2]}),
        .S({acc_2_fu_272_p2_carry__3_i_1_n_0,acc_2_fu_272_p2_carry__3_i_2_n_0,acc_2_fu_272_p2_carry__3_i_3_n_0,acc_2_fu_272_p2_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    acc_2_fu_272_p2_carry__3_i_1
       (.I0(\_x_reg[15]_0 ),
        .I1(acc_1_cast8_reg_334_reg[25]),
        .O(acc_2_fu_272_p2_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__3_i_2
       (.I0(acc_1_cast8_reg_334_reg[24]),
        .I1(tmp_3_fu_262_p21_out[24]),
        .O(acc_2_fu_272_p2_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__3_i_3
       (.I0(acc_1_cast8_reg_334_reg[23]),
        .I1(tmp_3_fu_262_p21_out[23]),
        .O(acc_2_fu_272_p2_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry__3_i_4
       (.I0(acc_1_cast8_reg_334_reg[22]),
        .I1(tmp_3_fu_262_p21_out[22]),
        .O(acc_2_fu_272_p2_carry__3_i_4_n_0));
  CARRY4 acc_2_fu_272_p2_carry__4
       (.CI(acc_2_fu_272_p2_carry__3_n_0),
        .CO({acc_2_fu_272_p2_carry__4_n_0,acc_2_fu_272_p2_carry__4_n_1,acc_2_fu_272_p2_carry__4_n_2,acc_2_fu_272_p2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({acc_1_cast8_reg_334_reg[28:26],\_x_reg[15]_0 }),
        .O(data5[14:11]),
        .S({acc_2_fu_272_p2_carry__4_i_2_n_0,acc_2_fu_272_p2_carry__4_i_3_n_0,acc_2_fu_272_p2_carry__4_i_4_n_0,acc_2_fu_272_p2_carry__4_i_5_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    acc_2_fu_272_p2_carry__4_i_2
       (.I0(acc_1_cast8_reg_334_reg[28]),
        .I1(acc_1_cast8_reg_334_reg[29]),
        .O(acc_2_fu_272_p2_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    acc_2_fu_272_p2_carry__4_i_3
       (.I0(acc_1_cast8_reg_334_reg[27]),
        .I1(acc_1_cast8_reg_334_reg[28]),
        .O(acc_2_fu_272_p2_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    acc_2_fu_272_p2_carry__4_i_4
       (.I0(acc_1_cast8_reg_334_reg[26]),
        .I1(acc_1_cast8_reg_334_reg[27]),
        .O(acc_2_fu_272_p2_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    acc_2_fu_272_p2_carry__4_i_5
       (.I0(\_x_reg[15]_0 ),
        .I1(acc_1_cast8_reg_334_reg[26]),
        .O(acc_2_fu_272_p2_carry__4_i_5_n_0));
  CARRY4 acc_2_fu_272_p2_carry__5
       (.CI(acc_2_fu_272_p2_carry__4_n_0),
        .CO(NLW_acc_2_fu_272_p2_carry__5_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_acc_2_fu_272_p2_carry__5_O_UNCONNECTED[3:1],data5[15]}),
        .S({1'b0,1'b0,1'b0,acc_2_fu_272_p2_carry__5_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    acc_2_fu_272_p2_carry__5_i_1
       (.I0(acc_1_cast8_reg_334_reg[29]),
        .I1(acc_1_cast8_reg_334_reg[30]),
        .O(acc_2_fu_272_p2_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry_i_1
       (.I0(acc_1_cast8_reg_334_reg[9]),
        .I1(tmp_3_fu_262_p21_out[9]),
        .O(acc_2_fu_272_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry_i_2
       (.I0(acc_1_cast8_reg_334_reg[8]),
        .I1(Q[2]),
        .O(acc_2_fu_272_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry_i_3
       (.I0(acc_1_cast8_reg_334_reg[7]),
        .I1(Q[1]),
        .O(acc_2_fu_272_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    acc_2_fu_272_p2_carry_i_4
       (.I0(acc_1_cast8_reg_334_reg[6]),
        .I1(Q[0]),
        .O(acc_2_fu_272_p2_carry_i_4_n_0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    acc_3_fu_230_p2
       (.A({\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg [15],\fir_c_rom_U/q0_reg }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_acc_3_fu_230_p2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({shift_reg_q0[15],shift_reg_q0[15],shift_reg_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_acc_3_fu_230_p2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out[25],acc_fu_162_p20_out,shift_reg_q0[2:0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_acc_3_fu_230_p2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_acc_3_fu_230_p2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(shift_reg_U_n_16),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(shift_reg_U_n_16),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(acc_3_fu_230_p2_i_1_n_0),
        .CLK(aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_acc_3_fu_230_p2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,acc_3_fu_230_p2_i_2_n_0,1'b0,acc_3_fu_230_p2_i_3_n_0,1'b0,acc_3_fu_230_p2_i_3_n_0}),
        .OVERFLOW(NLW_acc_3_fu_230_p2_OVERFLOW_UNCONNECTED),
        .P({NLW_acc_3_fu_230_p2_P_UNCONNECTED[47:37],acc_3_fu_230_p2_n_69,acc_3_fu_230_p2_n_70,acc_3_fu_230_p2_n_71,acc_3_fu_230_p2_n_72,acc_3_fu_230_p2_n_73,acc_3_fu_230_p2_n_74,acc_3_fu_230_p2_n_75,acc_3_fu_230_p2_n_76,acc_3_fu_230_p2_n_77,acc_3_fu_230_p2_n_78,acc_3_fu_230_p2_n_79,acc_3_fu_230_p2_n_80,acc_3_fu_230_p2_n_81,acc_3_fu_230_p2_n_82,acc_3_fu_230_p2_n_83,acc_3_fu_230_p2_n_84,acc_3_fu_230_p2_n_85,acc_3_fu_230_p2_n_86,acc_3_fu_230_p2_n_87,acc_3_fu_230_p2_n_88,acc_3_fu_230_p2_n_89,acc_3_fu_230_p2_n_90,acc_3_fu_230_p2_n_91,acc_3_fu_230_p2_n_92,acc_3_fu_230_p2_n_93,acc_3_fu_230_p2_n_94,acc_3_fu_230_p2_n_95,acc_3_fu_230_p2_n_96,acc_3_fu_230_p2_n_97,acc_3_fu_230_p2_n_98,acc_3_fu_230_p2_n_99,acc_3_fu_230_p2_n_100,acc_3_fu_230_p2_n_101,acc_3_fu_230_p2_n_102,acc_3_fu_230_p2_n_103,acc_3_fu_230_p2_n_104,acc_3_fu_230_p2_n_105}),
        .PATTERNBDETECT(NLW_acc_3_fu_230_p2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_acc_3_fu_230_p2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_acc_3_fu_230_p2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_acc_3_fu_230_p2_UNDERFLOW_UNCONNECTED));
  LUT4 #(
    .INIT(16'h0F40)) 
    acc_3_fu_230_p2_i_1
       (.I0(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0] ),
        .I1(ap_reg_ppiten_pp0_it2_reg_n_0),
        .I2(ap_CS_fsm[1]),
        .I3(ap_CS_fsm[0]),
        .O(acc_3_fu_230_p2_i_1_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    acc_3_fu_230_p2_i_2
       (.I0(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0] ),
        .I1(ap_CS_fsm[0]),
        .I2(ap_CS_fsm[1]),
        .I3(ap_reg_ppiten_pp0_it2_reg_n_0),
        .O(acc_3_fu_230_p2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    acc_3_fu_230_p2_i_3
       (.I0(ap_reg_ppiten_pp0_it2_reg_n_0),
        .I1(ap_CS_fsm[1]),
        .I2(ap_CS_fsm[0]),
        .I3(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0] ),
        .O(acc_3_fu_230_p2_i_3_n_0));
  CARRY4 acc_fu_162_p2__0_carry
       (.CI(1'b0),
        .CO({acc_fu_162_p2__0_carry_n_0,acc_fu_162_p2__0_carry_n_1,acc_fu_162_p2__0_carry_n_2,acc_fu_162_p2__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({shift_reg_U_n_23,shift_reg_U_n_24,shift_reg_U_n_25,1'b0}),
        .O(acc_fu_162_p20_out[12:9]),
        .S({shift_reg_U_n_19,shift_reg_U_n_20,shift_reg_U_n_21,shift_reg_U_n_22}));
  CARRY4 acc_fu_162_p2__0_carry__0
       (.CI(acc_fu_162_p2__0_carry_n_0),
        .CO({acc_fu_162_p2__0_carry__0_n_0,acc_fu_162_p2__0_carry__0_n_1,acc_fu_162_p2__0_carry__0_n_2,acc_fu_162_p2__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({shift_reg_U_n_26,shift_reg_U_n_27,shift_reg_U_n_28,shift_reg_U_n_29}),
        .O(acc_fu_162_p20_out[16:13]),
        .S({shift_reg_U_n_39,shift_reg_U_n_40,shift_reg_U_n_41,shift_reg_U_n_42}));
  CARRY4 acc_fu_162_p2__0_carry__1
       (.CI(acc_fu_162_p2__0_carry__0_n_0),
        .CO({acc_fu_162_p2__0_carry__1_n_0,acc_fu_162_p2__0_carry__1_n_1,acc_fu_162_p2__0_carry__1_n_2,acc_fu_162_p2__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({shift_reg_U_n_30,shift_reg_U_n_31,shift_reg_U_n_32,shift_reg_U_n_33}),
        .O(acc_fu_162_p20_out[20:17]),
        .S({shift_reg_U_n_43,shift_reg_U_n_44,shift_reg_U_n_45,shift_reg_U_n_46}));
  CARRY4 acc_fu_162_p2__0_carry__2
       (.CI(acc_fu_162_p2__0_carry__1_n_0),
        .CO({acc_fu_162_p2__0_carry__2_n_0,acc_fu_162_p2__0_carry__2_n_1,acc_fu_162_p2__0_carry__2_n_2,acc_fu_162_p2__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({shift_reg_q0[15:13],shift_reg_U_n_34}),
        .O(acc_fu_162_p20_out[24:21]),
        .S({shift_reg_U_n_35,shift_reg_U_n_36,shift_reg_U_n_37,shift_reg_U_n_38}));
  CARRY4 acc_fu_162_p2__0_carry__3
       (.CI(acc_fu_162_p2__0_carry__2_n_0),
        .CO(NLW_acc_fu_162_p2__0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_acc_fu_162_p2__0_carry__3_O_UNCONNECTED[3:1],acc_fu_162_p20_out[25]}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'h030A000A)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(sig_fir_ap_start),
        .I1(ap_reg_ppiten_pp0_it1),
        .I2(ap_CS_fsm[0]),
        .I3(ap_CS_fsm[1]),
        .I4(ap_reg_ppiten_pp0_it2_reg_n_0),
        .O(\ap_CS_fsm[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm[0]),
        .I1(ap_CS_fsm[1]),
        .O(\ap_CS_fsm[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_0 ),
        .Q(ap_CS_fsm[0]),
        .R(sig_fir_ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_0 ),
        .Q(ap_CS_fsm[1]),
        .R(sig_fir_ap_rst));
  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    ap_done_i_1
       (.I0(ap_CS_fsm[1]),
        .I1(ap_CS_fsm[0]),
        .I2(\rstate_reg[0] ),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(s_axi_fir_io_ARADDR[3]),
        .I5(ap_done),
        .O(ap_done_reg));
  LUT5 #(
    .INIT(32'h8808CC88)) 
    ap_reg_ppiten_pp0_it0_i_1
       (.I0(ap_reg_ppiten_pp0_it0),
        .I1(aresetn),
        .I2(shift_reg_U_n_18),
        .I3(ap_CS_fsm[0]),
        .I4(ap_CS_fsm[1]),
        .O(ap_reg_ppiten_pp0_it0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ppiten_pp0_it0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ap_reg_ppiten_pp0_it0_i_1_n_0),
        .Q(ap_reg_ppiten_pp0_it0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA000C0A0)) 
    ap_reg_ppiten_pp0_it1_i_1
       (.I0(ap_reg_ppiten_pp0_it1),
        .I1(ap_reg_ppiten_pp0_it0),
        .I2(aresetn),
        .I3(ap_CS_fsm[1]),
        .I4(ap_CS_fsm[0]),
        .O(ap_reg_ppiten_pp0_it1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ppiten_pp0_it1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ap_reg_ppiten_pp0_it1_i_1_n_0),
        .Q(ap_reg_ppiten_pp0_it1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA000C0A0)) 
    ap_reg_ppiten_pp0_it2_i_1
       (.I0(ap_reg_ppiten_pp0_it2_reg_n_0),
        .I1(ap_reg_ppiten_pp0_it1),
        .I2(aresetn),
        .I3(ap_CS_fsm[1]),
        .I4(ap_CS_fsm[0]),
        .O(ap_reg_ppiten_pp0_it2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_reg_ppiten_pp0_it2_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ap_reg_ppiten_pp0_it2_i_1_n_0),
        .Q(ap_reg_ppiten_pp0_it2_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1 
       (.I0(\exitcond2_reg_300_reg_n_0_[0] ),
        .I1(ap_CS_fsm[1]),
        .I2(ap_CS_fsm[0]),
        .I3(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0] ),
        .O(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1_n_0 ));
  FDRE \ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1[0]_i_1_n_0 ),
        .Q(\ap_reg_ppstg_exitcond2_reg_300_pp0_it1_reg_n_0_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_c c_U
       (.D({c_U_n_16,c_U_n_17,c_U_n_18,c_U_n_19,p_0_in}),
        .DOADO(\fir_c_rom_U/q0_reg ),
        .Q({indvar_reg_113_reg__0[5:2],indvar_reg_113_reg__1,indvar_reg_113_reg__0[0]}),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it0_reg(shift_reg_U_n_17));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \exitcond2_reg_300[0]_i_1 
       (.I0(shift_reg_U_n_18),
        .I1(ap_CS_fsm[0]),
        .I2(ap_CS_fsm[1]),
        .I3(ap_reg_ppiten_pp0_it0),
        .I4(\exitcond2_reg_300_reg_n_0_[0] ),
        .O(\exitcond2_reg_300[0]_i_1_n_0 ));
  FDRE \exitcond2_reg_300_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\exitcond2_reg_300[0]_i_1_n_0 ),
        .Q(\exitcond2_reg_300_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_cast_reg_309_reg[0] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(p_0_in),
        .Q(\i_cast_reg_309_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_cast_reg_309_reg[1] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(indvar_reg_113_reg__1),
        .Q(\i_cast_reg_309_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_cast_reg_309_reg[2] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(c_U_n_19),
        .Q(\i_cast_reg_309_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \i_cast_reg_309_reg[3] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(c_U_n_18),
        .Q(\i_cast_reg_309_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \i_cast_reg_309_reg[4] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(c_U_n_17),
        .Q(\i_cast_reg_309_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \i_cast_reg_309_reg[5] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(c_U_n_16),
        .Q(\i_cast_reg_309_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_reg_113[1]_i_1 
       (.I0(indvar_reg_113_reg__0[0]),
        .I1(indvar_reg_113_reg__1),
        .O(\indvar_reg_113[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \indvar_reg_113[2]_i_1 
       (.I0(indvar_reg_113_reg__0[0]),
        .I1(indvar_reg_113_reg__1),
        .I2(indvar_reg_113_reg__0[2]),
        .O(indvar_next_fu_178_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \indvar_reg_113[3]_i_1 
       (.I0(indvar_reg_113_reg__1),
        .I1(indvar_reg_113_reg__0[0]),
        .I2(indvar_reg_113_reg__0[2]),
        .I3(indvar_reg_113_reg__0[3]),
        .O(indvar_next_fu_178_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \indvar_reg_113[4]_i_1 
       (.I0(indvar_reg_113_reg__0[2]),
        .I1(indvar_reg_113_reg__0[0]),
        .I2(indvar_reg_113_reg__1),
        .I3(indvar_reg_113_reg__0[3]),
        .I4(indvar_reg_113_reg__0[4]),
        .O(indvar_next_fu_178_p2[4]));
  LUT3 #(
    .INIT(8'h04)) 
    \indvar_reg_113[5]_i_1 
       (.I0(ap_CS_fsm[1]),
        .I1(ap_CS_fsm[0]),
        .I2(shift_reg_U_n_17),
        .O(\indvar_reg_113[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \indvar_reg_113[5]_i_2 
       (.I0(indvar_reg_113_reg__0[3]),
        .I1(indvar_reg_113_reg__1),
        .I2(indvar_reg_113_reg__0[0]),
        .I3(indvar_reg_113_reg__0[2]),
        .I4(indvar_reg_113_reg__0[4]),
        .I5(indvar_reg_113_reg__0[5]),
        .O(indvar_next_fu_178_p2[5]));
  FDRE \indvar_reg_113_reg[0] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(p_0_in),
        .Q(indvar_reg_113_reg__0[0]),
        .R(\indvar_reg_113[5]_i_1_n_0 ));
  FDRE \indvar_reg_113_reg[1] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(\indvar_reg_113[1]_i_1_n_0 ),
        .Q(indvar_reg_113_reg__1),
        .R(\indvar_reg_113[5]_i_1_n_0 ));
  FDRE \indvar_reg_113_reg[2] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(indvar_next_fu_178_p2[2]),
        .Q(indvar_reg_113_reg__0[2]),
        .R(\indvar_reg_113[5]_i_1_n_0 ));
  FDRE \indvar_reg_113_reg[3] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(indvar_next_fu_178_p2[3]),
        .Q(indvar_reg_113_reg__0[3]),
        .R(\indvar_reg_113[5]_i_1_n_0 ));
  FDRE \indvar_reg_113_reg[4] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(indvar_next_fu_178_p2[4]),
        .Q(indvar_reg_113_reg__0[4]),
        .R(\indvar_reg_113[5]_i_1_n_0 ));
  FDRE \indvar_reg_113_reg[5] 
       (.C(aclk),
        .CE(shift_reg_U_n_17),
        .D(indvar_next_fu_178_p2[5]),
        .Q(indvar_reg_113_reg__0[5]),
        .R(\indvar_reg_113[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_9
       (.I0(ap_CS_fsm[0]),
        .I1(ap_CS_fsm[1]),
        .O(sig_fir_y_ap_vld));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[10]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[10]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[10]),
        .O(\rdata_reg[10] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[11]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[11]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[11]),
        .O(\rdata_reg[11] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[12]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[12]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[12]),
        .O(\rdata_reg[12] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[13]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[13]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[13]),
        .O(\rdata_reg[13] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[14]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[14]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[14]),
        .O(\rdata_reg[14] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[15]_i_3 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[15]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[15]),
        .O(\rdata_reg[15] ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(s_axi_fir_io_ARADDR[2]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(data5[2]),
        .I4(\s_axi_fir_io_ARADDR[4] ),
        .I5(\rdata[2]_i_2_n_0 ),
        .O(\rdata_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \rdata[2]_i_2 
       (.I0(s_axi_fir_io_ARADDR[1]),
        .I1(ap_CS_fsm[1]),
        .I2(ap_CS_fsm[0]),
        .I3(sig_fir_ap_start),
        .I4(s_axi_fir_io_ARADDR[2]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA000A000C00FC000)) 
    \rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(data5[3]),
        .I2(\s_axi_fir_io_ARADDR[4] ),
        .I3(s_axi_fir_io_ARADDR[1]),
        .I4(sig_fir_y_ap_vld),
        .I5(s_axi_fir_io_ARADDR[2]),
        .O(\rdata_reg[3] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[4]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[4]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[4]),
        .O(\rdata_reg[4] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[5]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[5]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[5]),
        .O(\rdata_reg[5] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[6]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[6]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[6]),
        .O(\rdata_reg[6] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[8]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[8]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[8]),
        .O(\rdata_reg[8] ));
  LUT5 #(
    .INIT(32'hA0800080)) 
    \rdata[9]_i_1 
       (.I0(\s_axi_fir_io_ARADDR[4] ),
        .I1(data5[9]),
        .I2(s_axi_fir_io_ARADDR[1]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(Q[9]),
        .O(\rdata_reg[9] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_shift_reg shift_reg_U
       (.CEA2(shift_reg_U_n_16),
        .DI({shift_reg_U_n_23,shift_reg_U_n_24,shift_reg_U_n_25}),
        .DOADO(shift_reg_q0),
        .Q({\i_cast_reg_309_reg_n_0_[5] ,\i_cast_reg_309_reg_n_0_[4] ,\i_cast_reg_309_reg_n_0_[3] ,\i_cast_reg_309_reg_n_0_[2] ,\i_cast_reg_309_reg_n_0_[1] ,\i_cast_reg_309_reg_n_0_[0] }),
        .S({shift_reg_U_n_19,shift_reg_U_n_20,shift_reg_U_n_21,shift_reg_U_n_22}),
        .WEA(sig_fir_y_ap_vld),
        .\_x_reg[15] (Q),
        .acc_3_fu_230_p2({shift_reg_U_n_26,shift_reg_U_n_27,shift_reg_U_n_28,shift_reg_U_n_29}),
        .acc_3_fu_230_p2_0({shift_reg_U_n_30,shift_reg_U_n_31,shift_reg_U_n_32,shift_reg_U_n_33}),
        .acc_3_fu_230_p2_1(shift_reg_U_n_34),
        .acc_3_fu_230_p2_2({shift_reg_U_n_35,shift_reg_U_n_36,shift_reg_U_n_37,shift_reg_U_n_38}),
        .acc_3_fu_230_p2_3({shift_reg_U_n_39,shift_reg_U_n_40,shift_reg_U_n_41,shift_reg_U_n_42}),
        .acc_3_fu_230_p2_4({shift_reg_U_n_43,shift_reg_U_n_44,shift_reg_U_n_45,shift_reg_U_n_46}),
        .aclk(aclk),
        .\ap_CS_fsm_reg[0] (ap_CS_fsm[0]),
        .\ap_CS_fsm_reg[1] (ap_CS_fsm[1]),
        .ap_reg_ppiten_pp0_it0(ap_reg_ppiten_pp0_it0),
        .ap_reg_ppiten_pp0_it1(ap_reg_ppiten_pp0_it1),
        .\exitcond2_reg_300_reg[0] (\exitcond2_reg_300_reg_n_0_[0] ),
        .\indvar_reg_113_reg[5] ({indvar_reg_113_reg__0[5:2],indvar_reg_113_reg__1,indvar_reg_113_reg__0[0]}),
        .q0_reg(shift_reg_U_n_17),
        .q0_reg_0(shift_reg_U_n_18),
        .sig_fir_ap_start(sig_fir_ap_start));
  CARRY4 tmp_3_fu_262_p2__0_carry
       (.CI(1'b0),
        .CO({tmp_3_fu_262_p2__0_carry_n_0,tmp_3_fu_262_p2__0_carry_n_1,tmp_3_fu_262_p2__0_carry_n_2,tmp_3_fu_262_p2__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(tmp_3_fu_262_p21_out[12:9]),
        .S(S));
  CARRY4 tmp_3_fu_262_p2__0_carry__0
       (.CI(tmp_3_fu_262_p2__0_carry_n_0),
        .CO({tmp_3_fu_262_p2__0_carry__0_n_0,tmp_3_fu_262_p2__0_carry__0_n_1,tmp_3_fu_262_p2__0_carry__0_n_2,tmp_3_fu_262_p2__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\_x_reg[9] ),
        .O(tmp_3_fu_262_p21_out[16:13]),
        .S(\_x_reg[6] ));
  CARRY4 tmp_3_fu_262_p2__0_carry__1
       (.CI(tmp_3_fu_262_p2__0_carry__0_n_0),
        .CO({tmp_3_fu_262_p2__0_carry__1_n_0,tmp_3_fu_262_p2__0_carry__1_n_1,tmp_3_fu_262_p2__0_carry__1_n_2,tmp_3_fu_262_p2__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\_x_reg[13] ),
        .O(tmp_3_fu_262_p21_out[20:17]),
        .S(\_x_reg[10] ));
  CARRY4 tmp_3_fu_262_p2__0_carry__2
       (.CI(tmp_3_fu_262_p2__0_carry__1_n_0),
        .CO({CO,tmp_3_fu_262_p2__0_carry__2_n_1,tmp_3_fu_262_p2__0_carry__2_n_2,tmp_3_fu_262_p2__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({Q[15:13],\_x_reg[15] }),
        .O(tmp_3_fu_262_p21_out[24:21]),
        .S(\_x_reg[14] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_c
   (DOADO,
    D,
    aclk,
    ap_reg_ppiten_pp0_it0_reg,
    Q);
  output [15:0]DOADO;
  output [4:0]D;
  input aclk;
  input ap_reg_ppiten_pp0_it0_reg;
  input [5:0]Q;

  wire [4:0]D;
  wire [15:0]DOADO;
  wire [5:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it0_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_c_rom fir_c_rom_U
       (.D(D),
        .DOADO(DOADO),
        .Q(Q),
        .aclk(aclk),
        .ap_reg_ppiten_pp0_it0_reg(ap_reg_ppiten_pp0_it0_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_c_rom
   (DOADO,
    D,
    aclk,
    ap_reg_ppiten_pp0_it0_reg,
    Q);
  output [15:0]DOADO;
  output [4:0]D;
  input aclk;
  input ap_reg_ppiten_pp0_it0_reg;
  input [5:0]Q;

  wire [4:0]D;
  wire [15:0]DOADO;
  wire [5:0]Q;
  wire aclk;
  wire ap_reg_ppiten_pp0_it0_reg;
  wire [15:0]NLW_q0_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_q0_reg_DOPBDOP_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \i_cast_reg_309[0]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \i_cast_reg_309[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'h1E)) 
    \i_cast_reg_309[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFE01)) 
    \i_cast_reg_309[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hAAA85557)) 
    \i_cast_reg_309[5]_i_2 
       (.I0(Q[4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(D[4]));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/fir_U/c_U/fir_c_rom_U/q0" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h056605A7057504E0040102F601DC00CFFFE5FF2FFEB3FE74FE6AFE8BFECAFE40),
    .INIT_01(256'h0010FE16FC26FA6CF90FF82F77E3F82FF90FFA6CFC26FE16001001EA037C04AB),
    .INIT_02(256'hFE6AFE74FEB3FF2FFFE500CF01DC02F6040104E0057505A7056604AB037C01EA),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000FE40FECAFE8B),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    q0_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,D[4:1],Q[1],D[0],1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO(DOADO),
        .DOBDO(NLW_q0_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_q0_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_q0_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(ap_reg_ppiten_pp0_it0_reg),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_io_if
   (s_axi_fir_io_RVALID,
    sig_fir_ap_rst,
    ap_done,
    _y_ap_vld,
    S,
    Q,
    DI,
    \rdata_reg[2]_0 ,
    \rdata_reg[6]_0 ,
    \rdata_reg[14]_0 ,
    \rdata_reg[14]_1 ,
    interrupt,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_ARREADY,
    _y_ap_vld_reg_0,
    ap_done_reg_0,
    \rdata_reg[0]_0 ,
    sig_fir_ap_start,
    \rdata_reg[14]_2 ,
    \rdata_reg[2]_1 ,
    \rdata_reg[6]_1 ,
    s_axi_fir_io_RDATA,
    aclk,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[1]_0 ,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_WDATA,
    aresetn,
    sig_fir_y_ap_vld,
    s_axi_fir_io_RREADY,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_BREADY,
    \acc_1_cast8_reg_334_reg[25] ,
    CO,
    s_axi_fir_io_AWADDR,
    ap_CS_fsm,
    \_x_reg[15]_0 ,
    \_x_reg[14]_0 ,
    \_x_reg[13]_0 ,
    \_x_reg[12]_0 ,
    \_x_reg[11]_0 ,
    \_x_reg[10]_0 ,
    \_x_reg[9]_0 ,
    \_x_reg[8]_0 ,
    \_x_reg[6]_0 ,
    \_x_reg[5]_0 ,
    \_x_reg[4]_0 ,
    \_x_reg[3]_0 ,
    \_x_reg[2]_0 );
  output s_axi_fir_io_RVALID;
  output sig_fir_ap_rst;
  output ap_done;
  output _y_ap_vld;
  output [3:0]S;
  output [15:0]Q;
  output [2:0]DI;
  output [3:0]\rdata_reg[2]_0 ;
  output [3:0]\rdata_reg[6]_0 ;
  output [0:0]\rdata_reg[14]_0 ;
  output [3:0]\rdata_reg[14]_1 ;
  output interrupt;
  output s_axi_fir_io_AWREADY;
  output s_axi_fir_io_WREADY;
  output s_axi_fir_io_BVALID;
  output s_axi_fir_io_ARREADY;
  output _y_ap_vld_reg_0;
  output ap_done_reg_0;
  output \rdata_reg[0]_0 ;
  output sig_fir_ap_start;
  output [0:0]\rdata_reg[14]_2 ;
  output [3:0]\rdata_reg[2]_1 ;
  output [3:0]\rdata_reg[6]_1 ;
  output [15:0]s_axi_fir_io_RDATA;
  input aclk;
  input \ap_CS_fsm_reg[1] ;
  input \ap_CS_fsm_reg[1]_0 ;
  input s_axi_fir_io_WVALID;
  input s_axi_fir_io_ARVALID;
  input [15:0]s_axi_fir_io_WDATA;
  input aresetn;
  input sig_fir_y_ap_vld;
  input s_axi_fir_io_RREADY;
  input s_axi_fir_io_AWVALID;
  input [1:0]s_axi_fir_io_WSTRB;
  input [4:0]s_axi_fir_io_ARADDR;
  input s_axi_fir_io_BREADY;
  input [2:0]\acc_1_cast8_reg_334_reg[25] ;
  input [0:0]CO;
  input [4:0]s_axi_fir_io_AWADDR;
  input [1:0]ap_CS_fsm;
  input \_x_reg[15]_0 ;
  input \_x_reg[14]_0 ;
  input \_x_reg[13]_0 ;
  input \_x_reg[12]_0 ;
  input \_x_reg[11]_0 ;
  input \_x_reg[10]_0 ;
  input \_x_reg[9]_0 ;
  input \_x_reg[8]_0 ;
  input \_x_reg[6]_0 ;
  input \_x_reg[5]_0 ;
  input \_x_reg[4]_0 ;
  input \_x_reg[3]_0 ;
  input \_x_reg[2]_0 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [15:0]Q;
  wire [3:0]S;
  wire \_x[0]_i_1_n_0 ;
  wire \_x[10]_i_1_n_0 ;
  wire \_x[11]_i_1_n_0 ;
  wire \_x[12]_i_1_n_0 ;
  wire \_x[13]_i_1_n_0 ;
  wire \_x[14]_i_1_n_0 ;
  wire \_x[15]_i_1_n_0 ;
  wire \_x[15]_i_2_n_0 ;
  wire \_x[15]_i_3_n_0 ;
  wire \_x[1]_i_1_n_0 ;
  wire \_x[2]_i_1_n_0 ;
  wire \_x[3]_i_1_n_0 ;
  wire \_x[4]_i_1_n_0 ;
  wire \_x[5]_i_1_n_0 ;
  wire \_x[6]_i_1_n_0 ;
  wire \_x[7]_i_1_n_0 ;
  wire \_x[8]_i_1_n_0 ;
  wire \_x[9]_i_1_n_0 ;
  wire \_x_reg[10]_0 ;
  wire \_x_reg[11]_0 ;
  wire \_x_reg[12]_0 ;
  wire \_x_reg[13]_0 ;
  wire \_x_reg[14]_0 ;
  wire \_x_reg[15]_0 ;
  wire \_x_reg[2]_0 ;
  wire \_x_reg[3]_0 ;
  wire \_x_reg[4]_0 ;
  wire \_x_reg[5]_0 ;
  wire \_x_reg[6]_0 ;
  wire \_x_reg[8]_0 ;
  wire \_x_reg[9]_0 ;
  wire _y_ap_vld;
  wire _y_ap_vld_reg_0;
  wire [2:0]\acc_1_cast8_reg_334_reg[25] ;
  wire aclk;
  wire [1:0]ap_CS_fsm;
  wire \ap_CS_fsm_reg[1] ;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire ap_done;
  wire ap_done_reg_0;
  wire ap_start0;
  wire ap_start_i_1_n_0;
  wire aresetn;
  wire auto_restart;
  wire auto_restart_i_1_n_0;
  wire aw_hs;
  wire gie;
  wire gie_i_1_n_0;
  wire \ier[0]_i_1_n_0 ;
  wire \ier[1]_i_1_n_0 ;
  wire \ier[1]_i_2_n_0 ;
  wire \ier_reg_n_0_[0] ;
  wire interrupt;
  wire isr_reg0;
  wire isr_reg00_out;
  wire \isr_reg_n_0_[0] ;
  wire \isr_reg_n_0_[1] ;
  wire p_0_in1_in;
  wire p_19_in;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[15]_i_2_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_i_1_n_0 ;
  wire [0:0]\rdata_reg[14]_0 ;
  wire [3:0]\rdata_reg[14]_1 ;
  wire [0:0]\rdata_reg[14]_2 ;
  wire [3:0]\rdata_reg[2]_0 ;
  wire [3:0]\rdata_reg[2]_1 ;
  wire [3:0]\rdata_reg[6]_0 ;
  wire [3:0]\rdata_reg[6]_1 ;
  wire \rstate[0]_i_2_n_0 ;
  wire [4:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [4:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [15:0]s_axi_fir_io_RDATA;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [15:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [1:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire sig_fir_ap_rst;
  wire sig_fir_ap_start;
  wire sig_fir_y_ap_vld;
  wire [4:0]waddr;
  wire [1:0]wstate;
  wire \wstate[0]_i_1_n_0 ;
  wire \wstate[1]_i_1_n_0 ;
  wire [3:1]NLW_acc_2_fu_272_p2_carry__4_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_acc_2_fu_272_p2_carry__4_i_1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[0]),
        .O(\_x[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[10]_i_1 
       (.I0(s_axi_fir_io_WDATA[10]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[10]),
        .O(\_x[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[11]_i_1 
       (.I0(s_axi_fir_io_WDATA[11]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[11]),
        .O(\_x[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[12]_i_1 
       (.I0(s_axi_fir_io_WDATA[12]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[12]),
        .O(\_x[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[13]_i_1 
       (.I0(s_axi_fir_io_WDATA[13]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[13]),
        .O(\_x[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[14]_i_1 
       (.I0(s_axi_fir_io_WDATA[14]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[14]),
        .O(\_x[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \_x[15]_i_1 
       (.I0(waddr[4]),
        .I1(waddr[2]),
        .I2(\_x[15]_i_3_n_0 ),
        .I3(waddr[3]),
        .O(\_x[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[15]_i_2 
       (.I0(s_axi_fir_io_WDATA[15]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[15]),
        .O(\_x[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \_x[15]_i_3 
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .I2(s_axi_fir_io_WVALID),
        .I3(waddr[0]),
        .I4(waddr[1]),
        .O(\_x[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[1]),
        .O(\_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[2]_i_1 
       (.I0(s_axi_fir_io_WDATA[2]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[2]),
        .O(\_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[3]_i_1 
       (.I0(s_axi_fir_io_WDATA[3]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[3]),
        .O(\_x[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[4]_i_1 
       (.I0(s_axi_fir_io_WDATA[4]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[4]),
        .O(\_x[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[5]_i_1 
       (.I0(s_axi_fir_io_WDATA[5]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[5]),
        .O(\_x[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[6]_i_1 
       (.I0(s_axi_fir_io_WDATA[6]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[6]),
        .O(\_x[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[7]_i_1 
       (.I0(s_axi_fir_io_WDATA[7]),
        .I1(s_axi_fir_io_WSTRB[0]),
        .I2(Q[7]),
        .O(\_x[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[8]_i_1 
       (.I0(s_axi_fir_io_WDATA[8]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[8]),
        .O(\_x[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \_x[9]_i_1 
       (.I0(s_axi_fir_io_WDATA[9]),
        .I1(s_axi_fir_io_WSTRB[1]),
        .I2(Q[9]),
        .O(\_x[9]_i_1_n_0 ));
  FDRE \_x_reg[0] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \_x_reg[10] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \_x_reg[11] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \_x_reg[12] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \_x_reg[13] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \_x_reg[14] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[14]_i_1_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \_x_reg[15] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[15]_i_2_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \_x_reg[1] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \_x_reg[2] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \_x_reg[3] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \_x_reg[4] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \_x_reg[5] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \_x_reg[6] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \_x_reg[7] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \_x_reg[8] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \_x_reg[9] 
       (.C(aclk),
        .CE(\_x[15]_i_1_n_0 ),
        .D(\_x[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    _y_ap_vld_i_2
       (.I0(s_axi_fir_io_ARADDR[1]),
        .I1(s_axi_fir_io_ARADDR[2]),
        .I2(s_axi_fir_io_ARVALID),
        .I3(s_axi_fir_io_RVALID),
        .I4(s_axi_fir_io_ARADDR[4]),
        .O(_y_ap_vld_reg_0));
  FDRE _y_ap_vld_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg[1]_0 ),
        .Q(_y_ap_vld),
        .R(sig_fir_ap_rst));
  CARRY4 acc_2_fu_272_p2_carry__4_i_1
       (.CI(CO),
        .CO({NLW_acc_2_fu_272_p2_carry__4_i_1_CO_UNCONNECTED[3:1],\rdata_reg[14]_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_acc_2_fu_272_p2_carry__4_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    ap_done_i_2
       (.I0(s_axi_fir_io_ARADDR[1]),
        .I1(s_axi_fir_io_ARADDR[2]),
        .I2(s_axi_fir_io_ARVALID),
        .I3(s_axi_fir_io_RVALID),
        .I4(s_axi_fir_io_ARADDR[0]),
        .O(ap_done_reg_0));
  FDRE ap_done_reg
       (.C(aclk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg[1] ),
        .Q(ap_done),
        .R(sig_fir_ap_rst));
  LUT5 #(
    .INIT(32'hFFBFFF80)) 
    ap_start_i_1
       (.I0(auto_restart),
        .I1(ap_CS_fsm[1]),
        .I2(ap_CS_fsm[0]),
        .I3(ap_start0),
        .I4(sig_fir_ap_start),
        .O(ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    ap_start_i_2
       (.I0(s_axi_fir_io_WSTRB[0]),
        .I1(waddr[3]),
        .I2(\ier[1]_i_2_n_0 ),
        .I3(waddr[2]),
        .I4(s_axi_fir_io_WDATA[0]),
        .O(ap_start0));
  FDRE ap_start_reg
       (.C(aclk),
        .CE(1'b1),
        .D(ap_start_i_1_n_0),
        .Q(sig_fir_ap_start),
        .R(sig_fir_ap_rst));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    auto_restart_i_1
       (.I0(s_axi_fir_io_WDATA[7]),
        .I1(waddr[2]),
        .I2(\ier[1]_i_2_n_0 ),
        .I3(waddr[3]),
        .I4(s_axi_fir_io_WSTRB[0]),
        .I5(auto_restart),
        .O(auto_restart_i_1_n_0));
  FDRE auto_restart_reg
       (.C(aclk),
        .CE(1'b1),
        .D(auto_restart_i_1_n_0),
        .Q(auto_restart),
        .R(sig_fir_ap_rst));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    gie_i_1
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(\ier[1]_i_2_n_0 ),
        .I2(waddr[3]),
        .I3(waddr[2]),
        .I4(s_axi_fir_io_WSTRB[0]),
        .I5(gie),
        .O(gie_i_1_n_0));
  FDRE gie_reg
       (.C(aclk),
        .CE(1'b1),
        .D(gie_i_1_n_0),
        .Q(gie),
        .R(sig_fir_ap_rst));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \ier[0]_i_1 
       (.I0(s_axi_fir_io_WDATA[0]),
        .I1(waddr[2]),
        .I2(waddr[3]),
        .I3(\ier[1]_i_2_n_0 ),
        .I4(s_axi_fir_io_WSTRB[0]),
        .I5(\ier_reg_n_0_[0] ),
        .O(\ier[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \ier[1]_i_1 
       (.I0(s_axi_fir_io_WDATA[1]),
        .I1(waddr[2]),
        .I2(waddr[3]),
        .I3(\ier[1]_i_2_n_0 ),
        .I4(s_axi_fir_io_WSTRB[0]),
        .I5(p_0_in1_in),
        .O(\ier[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \ier[1]_i_2 
       (.I0(waddr[1]),
        .I1(waddr[0]),
        .I2(s_axi_fir_io_WVALID),
        .I3(wstate[1]),
        .I4(wstate[0]),
        .I5(waddr[4]),
        .O(\ier[1]_i_2_n_0 ));
  FDRE \ier_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ier[0]_i_1_n_0 ),
        .Q(\ier_reg_n_0_[0] ),
        .R(sig_fir_ap_rst));
  FDRE \ier_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\ier[1]_i_1_n_0 ),
        .Q(p_0_in1_in),
        .R(sig_fir_ap_rst));
  LUT3 #(
    .INIT(8'hA8)) 
    interrupt_INST_0
       (.I0(gie),
        .I1(\isr_reg_n_0_[0] ),
        .I2(\isr_reg_n_0_[1] ),
        .O(interrupt));
  LUT6 #(
    .INIT(64'hFF006A006A006A00)) 
    \isr[0]_i_1 
       (.I0(\isr_reg_n_0_[0] ),
        .I1(p_19_in),
        .I2(s_axi_fir_io_WDATA[0]),
        .I3(aresetn),
        .I4(sig_fir_y_ap_vld),
        .I5(\ier_reg_n_0_[0] ),
        .O(isr_reg00_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \isr[0]_i_2 
       (.I0(waddr[3]),
        .I1(\ier[1]_i_2_n_0 ),
        .I2(waddr[2]),
        .I3(s_axi_fir_io_WSTRB[0]),
        .O(p_19_in));
  LUT6 #(
    .INIT(64'hFF006A006A006A00)) 
    \isr[1]_i_1 
       (.I0(\isr_reg_n_0_[1] ),
        .I1(p_19_in),
        .I2(s_axi_fir_io_WDATA[1]),
        .I3(aresetn),
        .I4(sig_fir_y_ap_vld),
        .I5(p_0_in1_in),
        .O(isr_reg0));
  FDRE \isr_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(isr_reg00_out),
        .Q(\isr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \isr_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(isr_reg0),
        .Q(\isr_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rdata[0]_i_2 
       (.I0(\isr_reg_n_0_[0] ),
        .I1(\ier_reg_n_0_[0] ),
        .I2(s_axi_fir_io_ARADDR[3]),
        .I3(gie),
        .I4(s_axi_fir_io_ARADDR[2]),
        .I5(sig_fir_ap_start),
        .O(\rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \rdata[0]_i_3 
       (.I0(Q[0]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(\acc_1_cast8_reg_334_reg[25] [0]),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(_y_ap_vld),
        .O(\rdata[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0E00)) 
    \rdata[15]_i_1 
       (.I0(s_axi_fir_io_ARADDR[1]),
        .I1(s_axi_fir_io_ARADDR[0]),
        .I2(s_axi_fir_io_RVALID),
        .I3(s_axi_fir_io_ARVALID),
        .O(\rdata[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rdata[15]_i_2 
       (.I0(s_axi_fir_io_ARVALID),
        .I1(s_axi_fir_io_RVALID),
        .O(\rdata[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rdata[15]_i_4 
       (.I0(s_axi_fir_io_ARADDR[1]),
        .I1(s_axi_fir_io_ARADDR[0]),
        .I2(s_axi_fir_io_ARADDR[4]),
        .O(\rdata_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hB080FFFFB0800000)) 
    \rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_fir_io_ARADDR[3]),
        .I2(s_axi_fir_io_ARADDR[2]),
        .I3(\acc_1_cast8_reg_334_reg[25] [1]),
        .I4(\rdata_reg[0]_0 ),
        .I5(\rdata[1]_i_2_n_0 ),
        .O(\rdata[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \rdata[1]_i_2 
       (.I0(\isr_reg_n_0_[1] ),
        .I1(p_0_in1_in),
        .I2(s_axi_fir_io_ARADDR[3]),
        .I3(ap_done),
        .I4(s_axi_fir_io_ARADDR[2]),
        .O(\rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA000A000C00FC000)) 
    \rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\acc_1_cast8_reg_334_reg[25] [2]),
        .I2(\rdata_reg[0]_0 ),
        .I3(s_axi_fir_io_ARADDR[2]),
        .I4(auto_restart),
        .I5(s_axi_fir_io_ARADDR[3]),
        .O(\rdata[7]_i_1_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\rdata_reg[0]_i_1_n_0 ),
        .Q(s_axi_fir_io_RDATA[0]),
        .R(\rdata[15]_i_1_n_0 ));
  MUXF7 \rdata_reg[0]_i_1 
       (.I0(\rdata[0]_i_2_n_0 ),
        .I1(\rdata[0]_i_3_n_0 ),
        .O(\rdata_reg[0]_i_1_n_0 ),
        .S(\rdata_reg[0]_0 ));
  FDRE \rdata_reg[10] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[10]_0 ),
        .Q(s_axi_fir_io_RDATA[10]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[11]_0 ),
        .Q(s_axi_fir_io_RDATA[11]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[12]_0 ),
        .Q(s_axi_fir_io_RDATA[12]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[13]_0 ),
        .Q(s_axi_fir_io_RDATA[13]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[14]_0 ),
        .Q(s_axi_fir_io_RDATA[14]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[15]_0 ),
        .Q(s_axi_fir_io_RDATA[15]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_fir_io_RDATA[1]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[2]_0 ),
        .Q(s_axi_fir_io_RDATA[2]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[3]_0 ),
        .Q(s_axi_fir_io_RDATA[3]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[4]_0 ),
        .Q(s_axi_fir_io_RDATA[4]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[5]_0 ),
        .Q(s_axi_fir_io_RDATA[5]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[6]_0 ),
        .Q(s_axi_fir_io_RDATA[6]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_fir_io_RDATA[7]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[8]_0 ),
        .Q(s_axi_fir_io_RDATA[8]),
        .R(\rdata[15]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(aclk),
        .CE(\rdata[15]_i_2_n_0 ),
        .D(\_x_reg[9]_0 ),
        .Q(s_axi_fir_io_RDATA[9]),
        .R(\rdata[15]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rstate[0]_i_1 
       (.I0(aresetn),
        .O(sig_fir_ap_rst));
  LUT3 #(
    .INIT(8'h74)) 
    \rstate[0]_i_2 
       (.I0(s_axi_fir_io_RREADY),
        .I1(s_axi_fir_io_RVALID),
        .I2(s_axi_fir_io_ARVALID),
        .O(\rstate[0]_i_2_n_0 ));
  FDRE \rstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\rstate[0]_i_2_n_0 ),
        .Q(s_axi_fir_io_RVALID),
        .R(sig_fir_ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_fir_io_ARREADY_INST_0
       (.I0(s_axi_fir_io_RVALID),
        .O(s_axi_fir_io_ARREADY));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axi_fir_io_AWREADY_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_fir_io_AWREADY));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_fir_io_BVALID_INST_0
       (.I0(wstate[1]),
        .I1(wstate[0]),
        .O(s_axi_fir_io_BVALID));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_fir_io_WREADY_INST_0
       (.I0(wstate[0]),
        .I1(wstate[1]),
        .O(s_axi_fir_io_WREADY));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__0_i_1
       (.I0(Q[9]),
        .I1(Q[6]),
        .O(\rdata_reg[2]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__0_i_2
       (.I0(Q[8]),
        .I1(Q[5]),
        .O(\rdata_reg[2]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__0_i_3
       (.I0(Q[7]),
        .I1(Q[4]),
        .O(\rdata_reg[2]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__0_i_4
       (.I0(Q[6]),
        .I1(Q[3]),
        .O(\rdata_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__0_i_5
       (.I0(Q[6]),
        .I1(Q[9]),
        .I2(Q[7]),
        .I3(Q[10]),
        .O(\rdata_reg[2]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__0_i_6
       (.I0(Q[5]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(Q[9]),
        .O(\rdata_reg[2]_1 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__0_i_7
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[8]),
        .O(\rdata_reg[2]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__0_i_8
       (.I0(Q[3]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[7]),
        .O(\rdata_reg[2]_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__1_i_1
       (.I0(Q[13]),
        .I1(Q[10]),
        .O(\rdata_reg[6]_0 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__1_i_2
       (.I0(Q[12]),
        .I1(Q[9]),
        .O(\rdata_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__1_i_3
       (.I0(Q[11]),
        .I1(Q[8]),
        .O(\rdata_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry__1_i_4
       (.I0(Q[10]),
        .I1(Q[7]),
        .O(\rdata_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__1_i_5
       (.I0(Q[10]),
        .I1(Q[13]),
        .I2(Q[11]),
        .I3(Q[14]),
        .O(\rdata_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__1_i_6
       (.I0(Q[9]),
        .I1(Q[12]),
        .I2(Q[10]),
        .I3(Q[13]),
        .O(\rdata_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__1_i_7
       (.I0(Q[8]),
        .I1(Q[11]),
        .I2(Q[9]),
        .I3(Q[12]),
        .O(\rdata_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry__1_i_8
       (.I0(Q[7]),
        .I1(Q[10]),
        .I2(Q[8]),
        .I3(Q[11]),
        .O(\rdata_reg[6]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    tmp_3_fu_262_p2__0_carry__2_i_1
       (.I0(Q[15]),
        .I1(Q[12]),
        .O(\rdata_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    tmp_3_fu_262_p2__0_carry__2_i_2
       (.I0(Q[14]),
        .I1(Q[15]),
        .O(\rdata_reg[14]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    tmp_3_fu_262_p2__0_carry__2_i_3
       (.I0(Q[13]),
        .I1(Q[14]),
        .O(\rdata_reg[14]_1 [2]));
  LUT3 #(
    .INIT(8'h87)) 
    tmp_3_fu_262_p2__0_carry__2_i_4
       (.I0(Q[15]),
        .I1(Q[12]),
        .I2(Q[13]),
        .O(\rdata_reg[14]_1 [1]));
  LUT4 #(
    .INIT(16'h9699)) 
    tmp_3_fu_262_p2__0_carry__2_i_5
       (.I0(Q[12]),
        .I1(Q[15]),
        .I2(Q[11]),
        .I3(Q[14]),
        .O(\rdata_reg[14]_1 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry_i_1
       (.I0(Q[5]),
        .I1(Q[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    tmp_3_fu_262_p2__0_carry_i_2
       (.I0(Q[4]),
        .I1(Q[1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hB)) 
    tmp_3_fu_262_p2__0_carry_i_3
       (.I0(Q[3]),
        .I1(Q[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry_i_4
       (.I0(Q[2]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(Q[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    tmp_3_fu_262_p2__0_carry_i_5
       (.I0(Q[1]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(Q[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    tmp_3_fu_262_p2__0_carry_i_6
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[4]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    tmp_3_fu_262_p2__0_carry_i_7
       (.I0(Q[3]),
        .I1(Q[0]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \waddr[4]_i_1 
       (.I0(s_axi_fir_io_AWVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_fir_io_AWADDR[0]),
        .Q(waddr[0]),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_fir_io_AWADDR[1]),
        .Q(waddr[1]),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_fir_io_AWADDR[2]),
        .Q(waddr[2]),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_fir_io_AWADDR[3]),
        .Q(waddr[3]),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(aclk),
        .CE(aw_hs),
        .D(s_axi_fir_io_AWADDR[4]),
        .Q(waddr[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0454)) 
    \wstate[0]_i_1 
       (.I0(wstate[1]),
        .I1(s_axi_fir_io_AWVALID),
        .I2(wstate[0]),
        .I3(s_axi_fir_io_WVALID),
        .O(\wstate[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0838)) 
    \wstate[1]_i_1 
       (.I0(s_axi_fir_io_WVALID),
        .I1(wstate[0]),
        .I2(wstate[1]),
        .I3(s_axi_fir_io_BREADY),
        .O(\wstate[1]_i_1_n_0 ));
  FDRE \wstate_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstate[0]_i_1_n_0 ),
        .Q(wstate[0]),
        .R(sig_fir_ap_rst));
  FDRE \wstate_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wstate[1]_i_1_n_0 ),
        .Q(wstate[1]),
        .R(sig_fir_ap_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_shift_reg
   (DOADO,
    CEA2,
    q0_reg,
    q0_reg_0,
    S,
    DI,
    acc_3_fu_230_p2,
    acc_3_fu_230_p2_0,
    acc_3_fu_230_p2_1,
    acc_3_fu_230_p2_2,
    acc_3_fu_230_p2_3,
    acc_3_fu_230_p2_4,
    aclk,
    Q,
    \_x_reg[15] ,
    WEA,
    \indvar_reg_113_reg[5] ,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[0] ,
    ap_reg_ppiten_pp0_it0,
    ap_reg_ppiten_pp0_it1,
    \exitcond2_reg_300_reg[0] ,
    sig_fir_ap_start);
  output [15:0]DOADO;
  output CEA2;
  output q0_reg;
  output q0_reg_0;
  output [3:0]S;
  output [2:0]DI;
  output [3:0]acc_3_fu_230_p2;
  output [3:0]acc_3_fu_230_p2_0;
  output [0:0]acc_3_fu_230_p2_1;
  output [3:0]acc_3_fu_230_p2_2;
  output [3:0]acc_3_fu_230_p2_3;
  output [3:0]acc_3_fu_230_p2_4;
  input aclk;
  input [5:0]Q;
  input [15:0]\_x_reg[15] ;
  input [0:0]WEA;
  input [5:0]\indvar_reg_113_reg[5] ;
  input \ap_CS_fsm_reg[1] ;
  input \ap_CS_fsm_reg[0] ;
  input ap_reg_ppiten_pp0_it0;
  input ap_reg_ppiten_pp0_it1;
  input \exitcond2_reg_300_reg[0] ;
  input sig_fir_ap_start;

  wire CEA2;
  wire [2:0]DI;
  wire [15:0]DOADO;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]WEA;
  wire [15:0]\_x_reg[15] ;
  wire [3:0]acc_3_fu_230_p2;
  wire [3:0]acc_3_fu_230_p2_0;
  wire [0:0]acc_3_fu_230_p2_1;
  wire [3:0]acc_3_fu_230_p2_2;
  wire [3:0]acc_3_fu_230_p2_3;
  wire [3:0]acc_3_fu_230_p2_4;
  wire aclk;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_reg_ppiten_pp0_it0;
  wire ap_reg_ppiten_pp0_it1;
  wire \exitcond2_reg_300_reg[0] ;
  wire [5:0]\indvar_reg_113_reg[5] ;
  wire q0_reg;
  wire q0_reg_0;
  wire sig_fir_ap_start;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_shift_reg_ram fir_shift_reg_ram_U
       (.DI(DI),
        .DOADO(DOADO),
        .Q(Q),
        .S(S),
        .WEA(WEA),
        .WEBWE(CEA2),
        .\_x_reg[15] (\_x_reg[15] ),
        .acc_3_fu_230_p2(acc_3_fu_230_p2),
        .acc_3_fu_230_p2_0(acc_3_fu_230_p2_0),
        .acc_3_fu_230_p2_1(acc_3_fu_230_p2_1),
        .acc_3_fu_230_p2_2(acc_3_fu_230_p2_2),
        .acc_3_fu_230_p2_3(acc_3_fu_230_p2_3),
        .acc_3_fu_230_p2_4(acc_3_fu_230_p2_4),
        .aclk(aclk),
        .\ap_CS_fsm_reg[0] (\ap_CS_fsm_reg[0] ),
        .\ap_CS_fsm_reg[1] (\ap_CS_fsm_reg[1] ),
        .ap_reg_ppiten_pp0_it0(ap_reg_ppiten_pp0_it0),
        .ap_reg_ppiten_pp0_it1(ap_reg_ppiten_pp0_it1),
        .\exitcond2_reg_300_reg[0] (\exitcond2_reg_300_reg[0] ),
        .\indvar_reg_113_reg[5] (\indvar_reg_113_reg[5] ),
        .q0_reg(q0_reg),
        .q0_reg_0(q0_reg_0),
        .sig_fir_ap_start(sig_fir_ap_start));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_shift_reg_ram
   (DOADO,
    WEBWE,
    q0_reg,
    q0_reg_0,
    S,
    DI,
    acc_3_fu_230_p2,
    acc_3_fu_230_p2_0,
    acc_3_fu_230_p2_1,
    acc_3_fu_230_p2_2,
    acc_3_fu_230_p2_3,
    acc_3_fu_230_p2_4,
    aclk,
    Q,
    \_x_reg[15] ,
    WEA,
    \indvar_reg_113_reg[5] ,
    \ap_CS_fsm_reg[1] ,
    \ap_CS_fsm_reg[0] ,
    ap_reg_ppiten_pp0_it0,
    ap_reg_ppiten_pp0_it1,
    \exitcond2_reg_300_reg[0] ,
    sig_fir_ap_start);
  output [15:0]DOADO;
  output [0:0]WEBWE;
  output q0_reg;
  output q0_reg_0;
  output [3:0]S;
  output [2:0]DI;
  output [3:0]acc_3_fu_230_p2;
  output [3:0]acc_3_fu_230_p2_0;
  output [0:0]acc_3_fu_230_p2_1;
  output [3:0]acc_3_fu_230_p2_2;
  output [3:0]acc_3_fu_230_p2_3;
  output [3:0]acc_3_fu_230_p2_4;
  input aclk;
  input [5:0]Q;
  input [15:0]\_x_reg[15] ;
  input [0:0]WEA;
  input [5:0]\indvar_reg_113_reg[5] ;
  input \ap_CS_fsm_reg[1] ;
  input \ap_CS_fsm_reg[0] ;
  input ap_reg_ppiten_pp0_it0;
  input ap_reg_ppiten_pp0_it1;
  input \exitcond2_reg_300_reg[0] ;
  input sig_fir_ap_start;

  wire [2:0]DI;
  wire [15:0]DOADO;
  wire [5:0]Q;
  wire [3:0]S;
  wire [0:0]WEA;
  wire [0:0]WEBWE;
  wire [15:0]\_x_reg[15] ;
  wire [3:0]acc_3_fu_230_p2;
  wire [3:0]acc_3_fu_230_p2_0;
  wire [0:0]acc_3_fu_230_p2_1;
  wire [3:0]acc_3_fu_230_p2_2;
  wire [3:0]acc_3_fu_230_p2_3;
  wire [3:0]acc_3_fu_230_p2_4;
  wire aclk;
  wire \ap_CS_fsm_reg[0] ;
  wire \ap_CS_fsm_reg[1] ;
  wire ap_reg_ppiten_pp0_it0;
  wire ap_reg_ppiten_pp0_it1;
  wire \exitcond2_reg_300_reg[0] ;
  wire [5:0]\indvar_reg_113_reg[5] ;
  wire q0_reg;
  wire q0_reg_0;
  wire ram_reg_i_10_n_0;
  wire ram_reg_i_3_n_0;
  wire ram_reg_i_4_n_0;
  wire ram_reg_i_5_n_0;
  wire ram_reg_i_6_n_0;
  wire ram_reg_i_7_n_0;
  wire ram_reg_i_8_n_0;
  wire shift_reg_ce0;
  wire sig_fir_ap_start;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__0_i_1
       (.I0(DOADO[9]),
        .I1(DOADO[6]),
        .O(acc_3_fu_230_p2[3]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__0_i_2
       (.I0(DOADO[8]),
        .I1(DOADO[5]),
        .O(acc_3_fu_230_p2[2]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__0_i_3
       (.I0(DOADO[7]),
        .I1(DOADO[4]),
        .O(acc_3_fu_230_p2[1]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__0_i_4
       (.I0(DOADO[6]),
        .I1(DOADO[3]),
        .O(acc_3_fu_230_p2[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__0_i_5
       (.I0(DOADO[6]),
        .I1(DOADO[9]),
        .I2(DOADO[7]),
        .I3(DOADO[10]),
        .O(acc_3_fu_230_p2_3[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__0_i_6
       (.I0(DOADO[5]),
        .I1(DOADO[8]),
        .I2(DOADO[6]),
        .I3(DOADO[9]),
        .O(acc_3_fu_230_p2_3[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__0_i_7
       (.I0(DOADO[4]),
        .I1(DOADO[7]),
        .I2(DOADO[5]),
        .I3(DOADO[8]),
        .O(acc_3_fu_230_p2_3[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__0_i_8
       (.I0(DOADO[3]),
        .I1(DOADO[6]),
        .I2(DOADO[4]),
        .I3(DOADO[7]),
        .O(acc_3_fu_230_p2_3[0]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__1_i_1
       (.I0(DOADO[13]),
        .I1(DOADO[10]),
        .O(acc_3_fu_230_p2_0[3]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__1_i_2
       (.I0(DOADO[12]),
        .I1(DOADO[9]),
        .O(acc_3_fu_230_p2_0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__1_i_3
       (.I0(DOADO[11]),
        .I1(DOADO[8]),
        .O(acc_3_fu_230_p2_0[1]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry__1_i_4
       (.I0(DOADO[10]),
        .I1(DOADO[7]),
        .O(acc_3_fu_230_p2_0[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__1_i_5
       (.I0(DOADO[10]),
        .I1(DOADO[13]),
        .I2(DOADO[11]),
        .I3(DOADO[14]),
        .O(acc_3_fu_230_p2_4[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__1_i_6
       (.I0(DOADO[9]),
        .I1(DOADO[12]),
        .I2(DOADO[10]),
        .I3(DOADO[13]),
        .O(acc_3_fu_230_p2_4[2]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__1_i_7
       (.I0(DOADO[8]),
        .I1(DOADO[11]),
        .I2(DOADO[9]),
        .I3(DOADO[12]),
        .O(acc_3_fu_230_p2_4[1]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry__1_i_8
       (.I0(DOADO[7]),
        .I1(DOADO[10]),
        .I2(DOADO[8]),
        .I3(DOADO[11]),
        .O(acc_3_fu_230_p2_4[0]));
  LUT2 #(
    .INIT(4'h9)) 
    acc_fu_162_p2__0_carry__2_i_1
       (.I0(DOADO[15]),
        .I1(DOADO[12]),
        .O(acc_3_fu_230_p2_1));
  LUT2 #(
    .INIT(4'h9)) 
    acc_fu_162_p2__0_carry__2_i_2
       (.I0(DOADO[14]),
        .I1(DOADO[15]),
        .O(acc_3_fu_230_p2_2[3]));
  LUT2 #(
    .INIT(4'h9)) 
    acc_fu_162_p2__0_carry__2_i_3
       (.I0(DOADO[13]),
        .I1(DOADO[14]),
        .O(acc_3_fu_230_p2_2[2]));
  LUT3 #(
    .INIT(8'h87)) 
    acc_fu_162_p2__0_carry__2_i_4
       (.I0(DOADO[15]),
        .I1(DOADO[12]),
        .I2(DOADO[13]),
        .O(acc_3_fu_230_p2_2[1]));
  LUT4 #(
    .INIT(16'h9699)) 
    acc_fu_162_p2__0_carry__2_i_5
       (.I0(DOADO[12]),
        .I1(DOADO[15]),
        .I2(DOADO[11]),
        .I3(DOADO[14]),
        .O(acc_3_fu_230_p2_2[0]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry_i_1
       (.I0(DOADO[5]),
        .I1(DOADO[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h2)) 
    acc_fu_162_p2__0_carry_i_2
       (.I0(DOADO[4]),
        .I1(DOADO[1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'hB)) 
    acc_fu_162_p2__0_carry_i_3
       (.I0(DOADO[3]),
        .I1(DOADO[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry_i_4
       (.I0(DOADO[2]),
        .I1(DOADO[5]),
        .I2(DOADO[3]),
        .I3(DOADO[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    acc_fu_162_p2__0_carry_i_5
       (.I0(DOADO[1]),
        .I1(DOADO[4]),
        .I2(DOADO[2]),
        .I3(DOADO[5]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h2DD2)) 
    acc_fu_162_p2__0_carry_i_6
       (.I0(DOADO[0]),
        .I1(DOADO[3]),
        .I2(DOADO[1]),
        .I3(DOADO[4]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    acc_fu_162_p2__0_carry_i_7
       (.I0(DOADO[3]),
        .I1(DOADO[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \i_cast_reg_309[5]_i_1 
       (.I0(ap_reg_ppiten_pp0_it0),
        .I1(\ap_CS_fsm_reg[1] ),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(q0_reg_0),
        .O(q0_reg));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \i_cast_reg_309[5]_i_3 
       (.I0(\indvar_reg_113_reg[5] [0]),
        .I1(\indvar_reg_113_reg[5] [2]),
        .I2(\indvar_reg_113_reg[5] [1]),
        .I3(\indvar_reg_113_reg[5] [5]),
        .I4(\indvar_reg_113_reg[5] [3]),
        .I5(\indvar_reg_113_reg[5] [4]),
        .O(q0_reg_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d16" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "800" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "15" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    ram_reg
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,ram_reg_i_3_n_0,ram_reg_i_4_n_0,ram_reg_i_5_n_0,ram_reg_i_6_n_0,ram_reg_i_7_n_0,ram_reg_i_8_n_0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,Q,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(aclk),
        .CLKBWRCLK(aclk),
        .DIADI(\_x_reg[15] ),
        .DIBDI(DOADO),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(DOADO),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(shift_reg_ce0),
        .ENBWREN(WEBWE),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,WEBWE,WEBWE}));
  LUT4 #(
    .INIT(16'hFCCE)) 
    ram_reg_i_1
       (.I0(sig_fir_ap_start),
        .I1(q0_reg),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(\ap_CS_fsm_reg[1] ),
        .O(shift_reg_ce0));
  LUT4 #(
    .INIT(16'h0001)) 
    ram_reg_i_10
       (.I0(\indvar_reg_113_reg[5] [2]),
        .I1(\indvar_reg_113_reg[5] [1]),
        .I2(\indvar_reg_113_reg[5] [0]),
        .I3(\indvar_reg_113_reg[5] [3]),
        .O(ram_reg_i_10_n_0));
  LUT4 #(
    .INIT(16'h0020)) 
    ram_reg_i_2
       (.I0(\ap_CS_fsm_reg[1] ),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(ap_reg_ppiten_pp0_it1),
        .I3(\exitcond2_reg_300_reg[0] ),
        .O(WEBWE));
  LUT6 #(
    .INIT(64'h00002DFF2DFF2DFF)) 
    ram_reg_i_3
       (.I0(\indvar_reg_113_reg[5] [4]),
        .I1(ram_reg_i_10_n_0),
        .I2(\indvar_reg_113_reg[5] [5]),
        .I3(q0_reg),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(\ap_CS_fsm_reg[0] ),
        .O(ram_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'h006F6F6F)) 
    ram_reg_i_4
       (.I0(ram_reg_i_10_n_0),
        .I1(\indvar_reg_113_reg[5] [4]),
        .I2(q0_reg),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(\ap_CS_fsm_reg[0] ),
        .O(ram_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000001FE0000)) 
    ram_reg_i_5
       (.I0(\indvar_reg_113_reg[5] [2]),
        .I1(\indvar_reg_113_reg[5] [1]),
        .I2(\indvar_reg_113_reg[5] [0]),
        .I3(\indvar_reg_113_reg[5] [3]),
        .I4(q0_reg),
        .I5(WEA),
        .O(ram_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h00001E001E001E00)) 
    ram_reg_i_6
       (.I0(\indvar_reg_113_reg[5] [0]),
        .I1(\indvar_reg_113_reg[5] [1]),
        .I2(\indvar_reg_113_reg[5] [2]),
        .I3(q0_reg),
        .I4(\ap_CS_fsm_reg[1] ),
        .I5(\ap_CS_fsm_reg[0] ),
        .O(ram_reg_i_6_n_0));
  LUT5 #(
    .INIT(32'h00606060)) 
    ram_reg_i_7
       (.I0(\indvar_reg_113_reg[5] [0]),
        .I1(\indvar_reg_113_reg[5] [1]),
        .I2(q0_reg),
        .I3(\ap_CS_fsm_reg[1] ),
        .I4(\ap_CS_fsm_reg[0] ),
        .O(ram_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'h0DDD)) 
    ram_reg_i_8
       (.I0(q0_reg),
        .I1(\indvar_reg_113_reg[5] [0]),
        .I2(\ap_CS_fsm_reg[1] ),
        .I3(\ap_CS_fsm_reg[0] ),
        .O(ram_reg_i_8_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_top
   (s_axi_fir_io_RVALID,
    s_axi_fir_io_RDATA,
    interrupt,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_ARREADY,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID,
    aclk,
    s_axi_fir_io_AWADDR,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    aresetn,
    s_axi_fir_io_RREADY,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_BREADY);
  output s_axi_fir_io_RVALID;
  output [15:0]s_axi_fir_io_RDATA;
  output interrupt;
  output s_axi_fir_io_AWREADY;
  output s_axi_fir_io_WREADY;
  output s_axi_fir_io_BVALID;
  output s_axi_fir_io_ARREADY;
  input s_axi_fir_io_WVALID;
  input [4:0]s_axi_fir_io_ARADDR;
  input s_axi_fir_io_ARVALID;
  input aclk;
  input [4:0]s_axi_fir_io_AWADDR;
  input [15:0]s_axi_fir_io_WDATA;
  input [1:0]s_axi_fir_io_WSTRB;
  input aresetn;
  input s_axi_fir_io_RREADY;
  input s_axi_fir_io_AWVALID;
  input s_axi_fir_io_BREADY;

  wire _y_ap_vld;
  wire aclk;
  wire [1:0]ap_CS_fsm;
  wire ap_done;
  wire aresetn;
  wire [7:0]data5;
  wire fir_U_n_1;
  wire fir_U_n_10;
  wire fir_U_n_11;
  wire fir_U_n_12;
  wire fir_U_n_13;
  wire fir_U_n_14;
  wire fir_U_n_15;
  wire fir_U_n_16;
  wire fir_U_n_17;
  wire fir_U_n_18;
  wire fir_U_n_19;
  wire fir_U_n_20;
  wire fir_U_n_21;
  wire fir_U_n_7;
  wire fir_U_n_8;
  wire fir_U_n_9;
  wire fir_io_if_U_n_24;
  wire fir_io_if_U_n_25;
  wire fir_io_if_U_n_26;
  wire fir_io_if_U_n_27;
  wire fir_io_if_U_n_28;
  wire fir_io_if_U_n_29;
  wire fir_io_if_U_n_30;
  wire fir_io_if_U_n_31;
  wire fir_io_if_U_n_32;
  wire fir_io_if_U_n_33;
  wire fir_io_if_U_n_34;
  wire fir_io_if_U_n_35;
  wire fir_io_if_U_n_36;
  wire fir_io_if_U_n_37;
  wire fir_io_if_U_n_38;
  wire fir_io_if_U_n_39;
  wire fir_io_if_U_n_4;
  wire fir_io_if_U_n_45;
  wire fir_io_if_U_n_46;
  wire fir_io_if_U_n_47;
  wire fir_io_if_U_n_49;
  wire fir_io_if_U_n_5;
  wire fir_io_if_U_n_50;
  wire fir_io_if_U_n_51;
  wire fir_io_if_U_n_52;
  wire fir_io_if_U_n_53;
  wire fir_io_if_U_n_54;
  wire fir_io_if_U_n_55;
  wire fir_io_if_U_n_56;
  wire fir_io_if_U_n_57;
  wire fir_io_if_U_n_6;
  wire fir_io_if_U_n_7;
  wire interrupt;
  wire [4:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [4:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [15:0]s_axi_fir_io_RDATA;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [15:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [1:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;
  wire sig_fir_ap_rst;
  wire sig_fir_ap_start;
  wire [15:0]sig_fir_x;
  wire sig_fir_y_ap_vld;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir fir_U
       (.CO(fir_U_n_1),
        .DI({fir_io_if_U_n_24,fir_io_if_U_n_25,fir_io_if_U_n_26}),
        .Q(sig_fir_x),
        .S({fir_io_if_U_n_4,fir_io_if_U_n_5,fir_io_if_U_n_6,fir_io_if_U_n_7}),
        .\_x_reg[10] ({fir_io_if_U_n_54,fir_io_if_U_n_55,fir_io_if_U_n_56,fir_io_if_U_n_57}),
        .\_x_reg[13] ({fir_io_if_U_n_31,fir_io_if_U_n_32,fir_io_if_U_n_33,fir_io_if_U_n_34}),
        .\_x_reg[14] ({fir_io_if_U_n_36,fir_io_if_U_n_37,fir_io_if_U_n_38,fir_io_if_U_n_39}),
        .\_x_reg[15] (fir_io_if_U_n_35),
        .\_x_reg[15]_0 (fir_io_if_U_n_49),
        .\_x_reg[6] ({fir_io_if_U_n_50,fir_io_if_U_n_51,fir_io_if_U_n_52,fir_io_if_U_n_53}),
        .\_x_reg[9] ({fir_io_if_U_n_27,fir_io_if_U_n_28,fir_io_if_U_n_29,fir_io_if_U_n_30}),
        ._y_ap_vld(_y_ap_vld),
        ._y_ap_vld_reg(fir_U_n_21),
        .aclk(aclk),
        .ap_CS_fsm(ap_CS_fsm),
        .ap_done(ap_done),
        .ap_done_reg(fir_U_n_20),
        .aresetn(aresetn),
        .\rdata_reg[10] (fir_U_n_14),
        .\rdata_reg[11] (fir_U_n_15),
        .\rdata_reg[12] (fir_U_n_16),
        .\rdata_reg[13] (fir_U_n_17),
        .\rdata_reg[14] (fir_U_n_18),
        .\rdata_reg[15] (fir_U_n_19),
        .\rdata_reg[2] (fir_U_n_8),
        .\rdata_reg[3] (fir_U_n_7),
        .\rdata_reg[4] (fir_U_n_9),
        .\rdata_reg[5] (fir_U_n_10),
        .\rdata_reg[6] (fir_U_n_11),
        .\rdata_reg[7] ({data5[7],data5[1:0]}),
        .\rdata_reg[8] (fir_U_n_12),
        .\rdata_reg[9] (fir_U_n_13),
        .\rstate_reg[0] (fir_io_if_U_n_46),
        .\rstate_reg[0]_0 (fir_io_if_U_n_45),
        .s_axi_fir_io_ARADDR({s_axi_fir_io_ARADDR[4:2],s_axi_fir_io_ARADDR[0]}),
        .\s_axi_fir_io_ARADDR[4] (fir_io_if_U_n_47),
        .sig_fir_ap_rst(sig_fir_ap_rst),
        .sig_fir_ap_start(sig_fir_ap_start),
        .sig_fir_y_ap_vld(sig_fir_y_ap_vld));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_io_if fir_io_if_U
       (.CO(fir_U_n_1),
        .DI({fir_io_if_U_n_24,fir_io_if_U_n_25,fir_io_if_U_n_26}),
        .Q(sig_fir_x),
        .S({fir_io_if_U_n_4,fir_io_if_U_n_5,fir_io_if_U_n_6,fir_io_if_U_n_7}),
        .\_x_reg[10]_0 (fir_U_n_14),
        .\_x_reg[11]_0 (fir_U_n_15),
        .\_x_reg[12]_0 (fir_U_n_16),
        .\_x_reg[13]_0 (fir_U_n_17),
        .\_x_reg[14]_0 (fir_U_n_18),
        .\_x_reg[15]_0 (fir_U_n_19),
        .\_x_reg[2]_0 (fir_U_n_8),
        .\_x_reg[3]_0 (fir_U_n_7),
        .\_x_reg[4]_0 (fir_U_n_9),
        .\_x_reg[5]_0 (fir_U_n_10),
        .\_x_reg[6]_0 (fir_U_n_11),
        .\_x_reg[8]_0 (fir_U_n_12),
        .\_x_reg[9]_0 (fir_U_n_13),
        ._y_ap_vld(_y_ap_vld),
        ._y_ap_vld_reg_0(fir_io_if_U_n_45),
        .\acc_1_cast8_reg_334_reg[25] ({data5[7],data5[1:0]}),
        .aclk(aclk),
        .ap_CS_fsm(ap_CS_fsm),
        .\ap_CS_fsm_reg[1] (fir_U_n_20),
        .\ap_CS_fsm_reg[1]_0 (fir_U_n_21),
        .ap_done(ap_done),
        .ap_done_reg_0(fir_io_if_U_n_46),
        .aresetn(aresetn),
        .interrupt(interrupt),
        .\rdata_reg[0]_0 (fir_io_if_U_n_47),
        .\rdata_reg[14]_0 (fir_io_if_U_n_35),
        .\rdata_reg[14]_1 ({fir_io_if_U_n_36,fir_io_if_U_n_37,fir_io_if_U_n_38,fir_io_if_U_n_39}),
        .\rdata_reg[14]_2 (fir_io_if_U_n_49),
        .\rdata_reg[2]_0 ({fir_io_if_U_n_27,fir_io_if_U_n_28,fir_io_if_U_n_29,fir_io_if_U_n_30}),
        .\rdata_reg[2]_1 ({fir_io_if_U_n_50,fir_io_if_U_n_51,fir_io_if_U_n_52,fir_io_if_U_n_53}),
        .\rdata_reg[6]_0 ({fir_io_if_U_n_31,fir_io_if_U_n_32,fir_io_if_U_n_33,fir_io_if_U_n_34}),
        .\rdata_reg[6]_1 ({fir_io_if_U_n_54,fir_io_if_U_n_55,fir_io_if_U_n_56,fir_io_if_U_n_57}),
        .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR),
        .s_axi_fir_io_ARREADY(s_axi_fir_io_ARREADY),
        .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
        .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR),
        .s_axi_fir_io_AWREADY(s_axi_fir_io_AWREADY),
        .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
        .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
        .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
        .s_axi_fir_io_RDATA(s_axi_fir_io_RDATA),
        .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
        .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
        .s_axi_fir_io_WDATA(s_axi_fir_io_WDATA),
        .s_axi_fir_io_WREADY(s_axi_fir_io_WREADY),
        .s_axi_fir_io_WSTRB(s_axi_fir_io_WSTRB),
        .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID),
        .sig_fir_ap_rst(sig_fir_ap_rst),
        .sig_fir_ap_start(sig_fir_ap_start),
        .sig_fir_y_ap_vld(sig_fir_y_ap_vld));
endmodule

(* CHECK_LICENSE_TYPE = "system_fir_top_0_0,fir_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fir_top,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_fir_io_AWADDR,
    s_axi_fir_io_AWVALID,
    s_axi_fir_io_AWREADY,
    s_axi_fir_io_WDATA,
    s_axi_fir_io_WSTRB,
    s_axi_fir_io_WVALID,
    s_axi_fir_io_WREADY,
    s_axi_fir_io_BRESP,
    s_axi_fir_io_BVALID,
    s_axi_fir_io_BREADY,
    s_axi_fir_io_ARADDR,
    s_axi_fir_io_ARVALID,
    s_axi_fir_io_ARREADY,
    s_axi_fir_io_RDATA,
    s_axi_fir_io_RRESP,
    s_axi_fir_io_RVALID,
    s_axi_fir_io_RREADY,
    interrupt,
    aresetn,
    aclk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWADDR" *) input [15:0]s_axi_fir_io_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWVALID" *) input s_axi_fir_io_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io AWREADY" *) output s_axi_fir_io_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WDATA" *) input [31:0]s_axi_fir_io_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WSTRB" *) input [3:0]s_axi_fir_io_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WVALID" *) input s_axi_fir_io_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io WREADY" *) output s_axi_fir_io_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BRESP" *) output [1:0]s_axi_fir_io_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BVALID" *) output s_axi_fir_io_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io BREADY" *) input s_axi_fir_io_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARADDR" *) input [15:0]s_axi_fir_io_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARVALID" *) input s_axi_fir_io_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io ARREADY" *) output s_axi_fir_io_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RDATA" *) output [31:0]s_axi_fir_io_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RRESP" *) output [1:0]s_axi_fir_io_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RVALID" *) output s_axi_fir_io_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_fir_io RREADY" *) input s_axi_fir_io_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 signal_interrupt INTERRUPT" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_reset RST" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_clock CLK" *) input aclk;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire interrupt;
  wire [15:0]s_axi_fir_io_ARADDR;
  wire s_axi_fir_io_ARREADY;
  wire s_axi_fir_io_ARVALID;
  wire [15:0]s_axi_fir_io_AWADDR;
  wire s_axi_fir_io_AWREADY;
  wire s_axi_fir_io_AWVALID;
  wire s_axi_fir_io_BREADY;
  wire s_axi_fir_io_BVALID;
  wire [15:0]\^s_axi_fir_io_RDATA ;
  wire s_axi_fir_io_RREADY;
  wire s_axi_fir_io_RVALID;
  wire [31:0]s_axi_fir_io_WDATA;
  wire s_axi_fir_io_WREADY;
  wire [3:0]s_axi_fir_io_WSTRB;
  wire s_axi_fir_io_WVALID;

  assign s_axi_fir_io_BRESP[1] = \<const0> ;
  assign s_axi_fir_io_BRESP[0] = \<const0> ;
  assign s_axi_fir_io_RDATA[31] = \<const0> ;
  assign s_axi_fir_io_RDATA[30] = \<const0> ;
  assign s_axi_fir_io_RDATA[29] = \<const0> ;
  assign s_axi_fir_io_RDATA[28] = \<const0> ;
  assign s_axi_fir_io_RDATA[27] = \<const0> ;
  assign s_axi_fir_io_RDATA[26] = \<const0> ;
  assign s_axi_fir_io_RDATA[25] = \<const0> ;
  assign s_axi_fir_io_RDATA[24] = \<const0> ;
  assign s_axi_fir_io_RDATA[23] = \<const0> ;
  assign s_axi_fir_io_RDATA[22] = \<const0> ;
  assign s_axi_fir_io_RDATA[21] = \<const0> ;
  assign s_axi_fir_io_RDATA[20] = \<const0> ;
  assign s_axi_fir_io_RDATA[19] = \<const0> ;
  assign s_axi_fir_io_RDATA[18] = \<const0> ;
  assign s_axi_fir_io_RDATA[17] = \<const0> ;
  assign s_axi_fir_io_RDATA[16] = \<const0> ;
  assign s_axi_fir_io_RDATA[15:0] = \^s_axi_fir_io_RDATA [15:0];
  assign s_axi_fir_io_RRESP[1] = \<const0> ;
  assign s_axi_fir_io_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fir_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .interrupt(interrupt),
        .s_axi_fir_io_ARADDR(s_axi_fir_io_ARADDR[4:0]),
        .s_axi_fir_io_ARREADY(s_axi_fir_io_ARREADY),
        .s_axi_fir_io_ARVALID(s_axi_fir_io_ARVALID),
        .s_axi_fir_io_AWADDR(s_axi_fir_io_AWADDR[4:0]),
        .s_axi_fir_io_AWREADY(s_axi_fir_io_AWREADY),
        .s_axi_fir_io_AWVALID(s_axi_fir_io_AWVALID),
        .s_axi_fir_io_BREADY(s_axi_fir_io_BREADY),
        .s_axi_fir_io_BVALID(s_axi_fir_io_BVALID),
        .s_axi_fir_io_RDATA(\^s_axi_fir_io_RDATA ),
        .s_axi_fir_io_RREADY(s_axi_fir_io_RREADY),
        .s_axi_fir_io_RVALID(s_axi_fir_io_RVALID),
        .s_axi_fir_io_WDATA(s_axi_fir_io_WDATA[15:0]),
        .s_axi_fir_io_WREADY(s_axi_fir_io_WREADY),
        .s_axi_fir_io_WSTRB(s_axi_fir_io_WSTRB[1:0]),
        .s_axi_fir_io_WVALID(s_axi_fir_io_WVALID));
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
