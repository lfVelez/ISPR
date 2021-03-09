// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Mar  2 17:59:00 2021
// Host        : lfsecuritas running 64-bit Ubuntu 20.10
// Command     : write_verilog -force -mode synth_stub
//               /home/lf-securitas/Documentos/ISPR/lab2/lab2.srcs/sources_1/bd/system/ip/system_ila_0_0/system_ila_0_0_stub.v
// Design      : system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2017.2" *)
module system_ila_0_0(clk, trig_out, trig_out_ack, trig_in, 
  trig_in_ack, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,trig_out,trig_out_ack,trig_in,trig_in_ack,probe0[3:0]" */;
  input clk;
  output trig_out;
  input trig_out_ack;
  input trig_in;
  output trig_in_ack;
  input [3:0]probe0;
endmodule
