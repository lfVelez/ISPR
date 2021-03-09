// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Mar  2 17:57:25 2021
// Host        : lfsecuritas running 64-bit Ubuntu 20.10
// Command     : write_verilog -force -mode synth_stub
//               /home/lf-securitas/Documentos/ISPR/lab2/lab2.srcs/sources_1/bd/system/ip/system_vio_0_0/system_vio_0_0_stub.v
// Design      : system_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2017.2" *)
module system_vio_0_0(clk, probe_in0, probe_out0, probe_out1, 
  probe_out2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[8:0],probe_out0[0:0],probe_out1[7:0],probe_out2[7:0]" */;
  input clk;
  input [8:0]probe_in0;
  output [0:0]probe_out0;
  output [7:0]probe_out1;
  output [7:0]probe_out2;
endmodule
