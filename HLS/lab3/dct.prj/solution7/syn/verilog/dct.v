// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="dct,hls_ip_2017_1,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=9.727437,HLS_SYN_LAT=647,HLS_SYN_TPT=134,HLS_SYN_MEM=22,HLS_SYN_DSP=16,HLS_SYN_FF=4342,HLS_SYN_LUT=5587}" *)

module dct (
        ap_clk,
        ap_rst,
        input_r_address0,
        input_r_ce0,
        input_r_d0,
        input_r_q0,
        input_r_we0,
        input_r_address1,
        input_r_ce1,
        input_r_d1,
        input_r_q1,
        input_r_we1,
        output_r_address0,
        output_r_ce0,
        output_r_d0,
        output_r_q0,
        output_r_we0,
        output_r_address1,
        output_r_ce1,
        output_r_d1,
        output_r_q1,
        output_r_we1,
        ap_done,
        ap_start,
        ap_ready,
        ap_idle
);


input   ap_clk;
input   ap_rst;
output  [5:0] input_r_address0;
output   input_r_ce0;
output  [15:0] input_r_d0;
input  [15:0] input_r_q0;
output   input_r_we0;
output  [5:0] input_r_address1;
output   input_r_ce1;
output  [15:0] input_r_d1;
input  [15:0] input_r_q1;
output   input_r_we1;
output  [5:0] output_r_address0;
output   output_r_ce0;
output  [15:0] output_r_d0;
input  [15:0] output_r_q0;
output   output_r_we0;
output  [5:0] output_r_address1;
output   output_r_ce1;
output  [15:0] output_r_d1;
input  [15:0] output_r_q1;
output   output_r_we1;
output   ap_done;
input   ap_start;
output   ap_ready;
output   ap_idle;

wire   [15:0] row_outbuf_i_i_q0;
wire   [15:0] row_outbuf_i_t_q0;
wire   [15:0] col_outbuf_i_i_q0;
wire   [15:0] col_outbuf_i_t_q0;
wire   [127:0] col_inbuf_i_q0;
wire   [127:0] col_inbuf_t_q0;
wire   [127:0] buf_2d_in_i_q0;
wire   [127:0] buf_2d_in_t_q0;
wire   [15:0] buf_2d_out_i_q0;
wire   [15:0] buf_2d_out_t_q0;
wire    read_data_U0_ap_start;
wire    read_data_U0_ap_done;
wire    read_data_U0_ap_continue;
wire    read_data_U0_ap_idle;
wire    read_data_U0_ap_ready;
wire   [5:0] read_data_U0_input_r_address0;
wire    read_data_U0_input_r_ce0;
wire   [2:0] read_data_U0_buf_r_address0;
wire    read_data_U0_buf_r_ce0;
wire    read_data_U0_buf_r_we0;
wire   [127:0] read_data_U0_buf_r_d0;
wire    ap_channel_done_buf_2d_in;
wire    read_data_U0_buf_r_full_n;
wire    Loop_Row_DCT_Loop_pr_U0_ap_start;
wire    Loop_Row_DCT_Loop_pr_U0_ap_done;
wire    Loop_Row_DCT_Loop_pr_U0_ap_continue;
wire    Loop_Row_DCT_Loop_pr_U0_ap_idle;
wire    Loop_Row_DCT_Loop_pr_U0_ap_ready;
wire   [2:0] Loop_Row_DCT_Loop_pr_U0_buf_2d_in_address0;
wire    Loop_Row_DCT_Loop_pr_U0_buf_2d_in_ce0;
wire   [5:0] Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_address0;
wire    Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_ce0;
wire    Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_we0;
wire   [15:0] Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_d0;
wire    ap_channel_done_row_outbuf_i;
wire    Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_full_n;
wire    Loop_Xpose_Row_Outer_U0_ap_start;
wire    Loop_Xpose_Row_Outer_U0_ap_done;
wire    Loop_Xpose_Row_Outer_U0_ap_continue;
wire    Loop_Xpose_Row_Outer_U0_ap_idle;
wire    Loop_Xpose_Row_Outer_U0_ap_ready;
wire   [5:0] Loop_Xpose_Row_Outer_U0_row_outbuf_i_address0;
wire    Loop_Xpose_Row_Outer_U0_row_outbuf_i_ce0;
wire   [2:0] Loop_Xpose_Row_Outer_U0_col_inbuf_address0;
wire    Loop_Xpose_Row_Outer_U0_col_inbuf_ce0;
wire    Loop_Xpose_Row_Outer_U0_col_inbuf_we0;
wire   [127:0] Loop_Xpose_Row_Outer_U0_col_inbuf_d0;
wire    ap_channel_done_col_inbuf;
wire    Loop_Xpose_Row_Outer_U0_col_inbuf_full_n;
wire    Loop_Col_DCT_Loop_pr_U0_ap_start;
wire    Loop_Col_DCT_Loop_pr_U0_ap_done;
wire    Loop_Col_DCT_Loop_pr_U0_ap_continue;
wire    Loop_Col_DCT_Loop_pr_U0_ap_idle;
wire    Loop_Col_DCT_Loop_pr_U0_ap_ready;
wire   [2:0] Loop_Col_DCT_Loop_pr_U0_col_inbuf_address0;
wire    Loop_Col_DCT_Loop_pr_U0_col_inbuf_ce0;
wire   [5:0] Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_address0;
wire    Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_ce0;
wire    Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_we0;
wire   [15:0] Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_d0;
wire    ap_channel_done_col_outbuf_i;
wire    Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_full_n;
wire    Loop_Xpose_Col_Outer_U0_ap_start;
wire    Loop_Xpose_Col_Outer_U0_ap_done;
wire    Loop_Xpose_Col_Outer_U0_ap_continue;
wire    Loop_Xpose_Col_Outer_U0_ap_idle;
wire    Loop_Xpose_Col_Outer_U0_ap_ready;
wire   [5:0] Loop_Xpose_Col_Outer_U0_col_outbuf_i_address0;
wire    Loop_Xpose_Col_Outer_U0_col_outbuf_i_ce0;
wire   [5:0] Loop_Xpose_Col_Outer_U0_buf_2d_out_address0;
wire    Loop_Xpose_Col_Outer_U0_buf_2d_out_ce0;
wire    Loop_Xpose_Col_Outer_U0_buf_2d_out_we0;
wire   [15:0] Loop_Xpose_Col_Outer_U0_buf_2d_out_d0;
wire    ap_channel_done_buf_2d_out;
wire    Loop_Xpose_Col_Outer_U0_buf_2d_out_full_n;
wire    write_data_U0_ap_start;
wire    write_data_U0_ap_done;
wire    write_data_U0_ap_continue;
wire    write_data_U0_ap_idle;
wire    write_data_U0_ap_ready;
wire   [5:0] write_data_U0_buf_r_address0;
wire    write_data_U0_buf_r_ce0;
wire   [5:0] write_data_U0_output_r_address0;
wire    write_data_U0_output_r_ce0;
wire    write_data_U0_output_r_we0;
wire   [15:0] write_data_U0_output_r_d0;
wire    ap_sync_continue;
wire    buf_2d_in_i_full_n;
wire    buf_2d_in_t_empty_n;
wire    row_outbuf_i_i_full_n;
wire    row_outbuf_i_t_empty_n;
wire    col_inbuf_i_full_n;
wire    col_inbuf_t_empty_n;
wire    col_outbuf_i_i_full_n;
wire    col_outbuf_i_t_empty_n;
wire    buf_2d_out_i_full_n;
wire    buf_2d_out_t_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    read_data_U0_start_full_n;
wire    read_data_U0_start_write;
wire    Loop_Row_DCT_Loop_pr_U0_start_full_n;
wire    Loop_Row_DCT_Loop_pr_U0_start_write;
wire    Loop_Xpose_Row_Outer_U0_start_full_n;
wire    Loop_Xpose_Row_Outer_U0_start_write;
wire    Loop_Col_DCT_Loop_pr_U0_start_full_n;
wire    Loop_Col_DCT_Loop_pr_U0_start_write;
wire    Loop_Xpose_Col_Outer_U0_start_full_n;
wire    Loop_Xpose_Col_Outer_U0_start_write;
wire    write_data_U0_start_full_n;
wire    write_data_U0_start_write;

dct_row_outbuf_i #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
row_outbuf_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_address0),
    .i_ce0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_ce0),
    .i_we0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_we0),
    .i_d0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_d0),
    .i_q0(row_outbuf_i_i_q0),
    .t_address0(Loop_Xpose_Row_Outer_U0_row_outbuf_i_address0),
    .t_ce0(Loop_Xpose_Row_Outer_U0_row_outbuf_i_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(row_outbuf_i_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(row_outbuf_i_i_full_n),
    .i_write(Loop_Row_DCT_Loop_pr_U0_ap_done),
    .t_empty_n(row_outbuf_i_t_empty_n),
    .t_read(Loop_Xpose_Row_Outer_U0_ap_ready)
);

dct_row_outbuf_i #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
col_outbuf_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_address0),
    .i_ce0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_ce0),
    .i_we0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_we0),
    .i_d0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_d0),
    .i_q0(col_outbuf_i_i_q0),
    .t_address0(Loop_Xpose_Col_Outer_U0_col_outbuf_i_address0),
    .t_ce0(Loop_Xpose_Col_Outer_U0_col_outbuf_i_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(col_outbuf_i_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(col_outbuf_i_i_full_n),
    .i_write(Loop_Col_DCT_Loop_pr_U0_ap_done),
    .t_empty_n(col_outbuf_i_t_empty_n),
    .t_read(Loop_Xpose_Col_Outer_U0_ap_ready)
);

dct_col_inbuf #(
    .DataWidth( 128 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
col_inbuf_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_Xpose_Row_Outer_U0_col_inbuf_address0),
    .i_ce0(Loop_Xpose_Row_Outer_U0_col_inbuf_ce0),
    .i_we0(Loop_Xpose_Row_Outer_U0_col_inbuf_we0),
    .i_d0(Loop_Xpose_Row_Outer_U0_col_inbuf_d0),
    .i_q0(col_inbuf_i_q0),
    .t_address0(Loop_Col_DCT_Loop_pr_U0_col_inbuf_address0),
    .t_ce0(Loop_Col_DCT_Loop_pr_U0_col_inbuf_ce0),
    .t_we0(1'b0),
    .t_d0(128'd0),
    .t_q0(col_inbuf_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(col_inbuf_i_full_n),
    .i_write(Loop_Xpose_Row_Outer_U0_ap_done),
    .t_empty_n(col_inbuf_t_empty_n),
    .t_read(Loop_Col_DCT_Loop_pr_U0_ap_ready)
);

dct_col_inbuf #(
    .DataWidth( 128 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
buf_2d_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(read_data_U0_buf_r_address0),
    .i_ce0(read_data_U0_buf_r_ce0),
    .i_we0(read_data_U0_buf_r_we0),
    .i_d0(read_data_U0_buf_r_d0),
    .i_q0(buf_2d_in_i_q0),
    .t_address0(Loop_Row_DCT_Loop_pr_U0_buf_2d_in_address0),
    .t_ce0(Loop_Row_DCT_Loop_pr_U0_buf_2d_in_ce0),
    .t_we0(1'b0),
    .t_d0(128'd0),
    .t_q0(buf_2d_in_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_in_i_full_n),
    .i_write(read_data_U0_ap_done),
    .t_empty_n(buf_2d_in_t_empty_n),
    .t_read(Loop_Row_DCT_Loop_pr_U0_ap_ready)
);

dct_row_outbuf_i #(
    .DataWidth( 16 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
buf_2d_out_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .i_address0(Loop_Xpose_Col_Outer_U0_buf_2d_out_address0),
    .i_ce0(Loop_Xpose_Col_Outer_U0_buf_2d_out_ce0),
    .i_we0(Loop_Xpose_Col_Outer_U0_buf_2d_out_we0),
    .i_d0(Loop_Xpose_Col_Outer_U0_buf_2d_out_d0),
    .i_q0(buf_2d_out_i_q0),
    .t_address0(write_data_U0_buf_r_address0),
    .t_ce0(write_data_U0_buf_r_ce0),
    .t_we0(1'b0),
    .t_d0(16'd0),
    .t_q0(buf_2d_out_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_2d_out_i_full_n),
    .i_write(Loop_Xpose_Col_Outer_U0_ap_done),
    .t_empty_n(buf_2d_out_t_empty_n),
    .t_read(write_data_U0_ap_ready)
);

read_data read_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(read_data_U0_ap_start),
    .ap_done(read_data_U0_ap_done),
    .ap_continue(read_data_U0_ap_continue),
    .ap_idle(read_data_U0_ap_idle),
    .ap_ready(read_data_U0_ap_ready),
    .input_r_address0(read_data_U0_input_r_address0),
    .input_r_ce0(read_data_U0_input_r_ce0),
    .input_r_q0(input_r_q0),
    .buf_r_address0(read_data_U0_buf_r_address0),
    .buf_r_ce0(read_data_U0_buf_r_ce0),
    .buf_r_we0(read_data_U0_buf_r_we0),
    .buf_r_d0(read_data_U0_buf_r_d0),
    .buf_r_q0(buf_2d_in_i_q0)
);

Loop_Row_DCT_Loop_pr Loop_Row_DCT_Loop_pr_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_Row_DCT_Loop_pr_U0_ap_start),
    .ap_done(Loop_Row_DCT_Loop_pr_U0_ap_done),
    .ap_continue(Loop_Row_DCT_Loop_pr_U0_ap_continue),
    .ap_idle(Loop_Row_DCT_Loop_pr_U0_ap_idle),
    .ap_ready(Loop_Row_DCT_Loop_pr_U0_ap_ready),
    .buf_2d_in_address0(Loop_Row_DCT_Loop_pr_U0_buf_2d_in_address0),
    .buf_2d_in_ce0(Loop_Row_DCT_Loop_pr_U0_buf_2d_in_ce0),
    .buf_2d_in_q0(buf_2d_in_t_q0),
    .row_outbuf_i_address0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_address0),
    .row_outbuf_i_ce0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_ce0),
    .row_outbuf_i_we0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_we0),
    .row_outbuf_i_d0(Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_d0)
);

Loop_Xpose_Row_Outer Loop_Xpose_Row_Outer_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_Xpose_Row_Outer_U0_ap_start),
    .ap_done(Loop_Xpose_Row_Outer_U0_ap_done),
    .ap_continue(Loop_Xpose_Row_Outer_U0_ap_continue),
    .ap_idle(Loop_Xpose_Row_Outer_U0_ap_idle),
    .ap_ready(Loop_Xpose_Row_Outer_U0_ap_ready),
    .row_outbuf_i_address0(Loop_Xpose_Row_Outer_U0_row_outbuf_i_address0),
    .row_outbuf_i_ce0(Loop_Xpose_Row_Outer_U0_row_outbuf_i_ce0),
    .row_outbuf_i_q0(row_outbuf_i_t_q0),
    .col_inbuf_address0(Loop_Xpose_Row_Outer_U0_col_inbuf_address0),
    .col_inbuf_ce0(Loop_Xpose_Row_Outer_U0_col_inbuf_ce0),
    .col_inbuf_we0(Loop_Xpose_Row_Outer_U0_col_inbuf_we0),
    .col_inbuf_d0(Loop_Xpose_Row_Outer_U0_col_inbuf_d0),
    .col_inbuf_q0(col_inbuf_i_q0)
);

Loop_Col_DCT_Loop_pr Loop_Col_DCT_Loop_pr_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_Col_DCT_Loop_pr_U0_ap_start),
    .ap_done(Loop_Col_DCT_Loop_pr_U0_ap_done),
    .ap_continue(Loop_Col_DCT_Loop_pr_U0_ap_continue),
    .ap_idle(Loop_Col_DCT_Loop_pr_U0_ap_idle),
    .ap_ready(Loop_Col_DCT_Loop_pr_U0_ap_ready),
    .col_inbuf_address0(Loop_Col_DCT_Loop_pr_U0_col_inbuf_address0),
    .col_inbuf_ce0(Loop_Col_DCT_Loop_pr_U0_col_inbuf_ce0),
    .col_inbuf_q0(col_inbuf_t_q0),
    .col_outbuf_i_address0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_address0),
    .col_outbuf_i_ce0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_ce0),
    .col_outbuf_i_we0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_we0),
    .col_outbuf_i_d0(Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_d0)
);

Loop_Xpose_Col_Outer Loop_Xpose_Col_Outer_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(Loop_Xpose_Col_Outer_U0_ap_start),
    .ap_done(Loop_Xpose_Col_Outer_U0_ap_done),
    .ap_continue(Loop_Xpose_Col_Outer_U0_ap_continue),
    .ap_idle(Loop_Xpose_Col_Outer_U0_ap_idle),
    .ap_ready(Loop_Xpose_Col_Outer_U0_ap_ready),
    .col_outbuf_i_address0(Loop_Xpose_Col_Outer_U0_col_outbuf_i_address0),
    .col_outbuf_i_ce0(Loop_Xpose_Col_Outer_U0_col_outbuf_i_ce0),
    .col_outbuf_i_q0(col_outbuf_i_t_q0),
    .buf_2d_out_address0(Loop_Xpose_Col_Outer_U0_buf_2d_out_address0),
    .buf_2d_out_ce0(Loop_Xpose_Col_Outer_U0_buf_2d_out_ce0),
    .buf_2d_out_we0(Loop_Xpose_Col_Outer_U0_buf_2d_out_we0),
    .buf_2d_out_d0(Loop_Xpose_Col_Outer_U0_buf_2d_out_d0)
);

write_data write_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(write_data_U0_ap_start),
    .ap_done(write_data_U0_ap_done),
    .ap_continue(write_data_U0_ap_continue),
    .ap_idle(write_data_U0_ap_idle),
    .ap_ready(write_data_U0_ap_ready),
    .buf_r_address0(write_data_U0_buf_r_address0),
    .buf_r_ce0(write_data_U0_buf_r_ce0),
    .buf_r_q0(buf_2d_out_t_q0),
    .output_r_address0(write_data_U0_output_r_address0),
    .output_r_ce0(write_data_U0_output_r_ce0),
    .output_r_we0(write_data_U0_output_r_we0),
    .output_r_d0(write_data_U0_output_r_d0)
);

assign Loop_Col_DCT_Loop_pr_U0_ap_continue = col_outbuf_i_i_full_n;

assign Loop_Col_DCT_Loop_pr_U0_ap_start = col_inbuf_t_empty_n;

assign Loop_Col_DCT_Loop_pr_U0_col_outbuf_i_full_n = col_outbuf_i_i_full_n;

assign Loop_Col_DCT_Loop_pr_U0_start_full_n = 1'b0;

assign Loop_Col_DCT_Loop_pr_U0_start_write = 1'b0;

assign Loop_Row_DCT_Loop_pr_U0_ap_continue = row_outbuf_i_i_full_n;

assign Loop_Row_DCT_Loop_pr_U0_ap_start = buf_2d_in_t_empty_n;

assign Loop_Row_DCT_Loop_pr_U0_row_outbuf_i_full_n = row_outbuf_i_i_full_n;

assign Loop_Row_DCT_Loop_pr_U0_start_full_n = 1'b0;

assign Loop_Row_DCT_Loop_pr_U0_start_write = 1'b0;

assign Loop_Xpose_Col_Outer_U0_ap_continue = buf_2d_out_i_full_n;

assign Loop_Xpose_Col_Outer_U0_ap_start = col_outbuf_i_t_empty_n;

assign Loop_Xpose_Col_Outer_U0_buf_2d_out_full_n = buf_2d_out_i_full_n;

assign Loop_Xpose_Col_Outer_U0_start_full_n = 1'b0;

assign Loop_Xpose_Col_Outer_U0_start_write = 1'b0;

assign Loop_Xpose_Row_Outer_U0_ap_continue = col_inbuf_i_full_n;

assign Loop_Xpose_Row_Outer_U0_ap_start = row_outbuf_i_t_empty_n;

assign Loop_Xpose_Row_Outer_U0_col_inbuf_full_n = col_inbuf_i_full_n;

assign Loop_Xpose_Row_Outer_U0_start_full_n = 1'b0;

assign Loop_Xpose_Row_Outer_U0_start_write = 1'b0;

assign ap_channel_done_buf_2d_in = read_data_U0_ap_done;

assign ap_channel_done_buf_2d_out = Loop_Xpose_Col_Outer_U0_ap_done;

assign ap_channel_done_col_inbuf = Loop_Xpose_Row_Outer_U0_ap_done;

assign ap_channel_done_col_outbuf_i = Loop_Col_DCT_Loop_pr_U0_ap_done;

assign ap_channel_done_row_outbuf_i = Loop_Row_DCT_Loop_pr_U0_ap_done;

assign ap_done = write_data_U0_ap_done;

assign ap_idle = (read_data_U0_ap_idle & Loop_Row_DCT_Loop_pr_U0_ap_idle & Loop_Xpose_Row_Outer_U0_ap_idle & Loop_Col_DCT_Loop_pr_U0_ap_idle & Loop_Xpose_Col_Outer_U0_ap_idle & write_data_U0_ap_idle & (buf_2d_in_t_empty_n ^ 1'b1) & (row_outbuf_i_t_empty_n ^ 1'b1) & (col_inbuf_t_empty_n ^ 1'b1) & (col_outbuf_i_t_empty_n ^ 1'b1) & (buf_2d_out_t_empty_n ^ 1'b1));

assign ap_ready = read_data_U0_ap_ready;

assign ap_sync_continue = 1'b1;

assign ap_sync_done = write_data_U0_ap_done;

assign ap_sync_ready = read_data_U0_ap_ready;

assign input_r_address0 = read_data_U0_input_r_address0;

assign input_r_address1 = 6'd0;

assign input_r_ce0 = read_data_U0_input_r_ce0;

assign input_r_ce1 = 1'b0;

assign input_r_d0 = 16'd0;

assign input_r_d1 = 16'd0;

assign input_r_we0 = 1'b0;

assign input_r_we1 = 1'b0;

assign output_r_address0 = write_data_U0_output_r_address0;

assign output_r_address1 = 6'd0;

assign output_r_ce0 = write_data_U0_output_r_ce0;

assign output_r_ce1 = 1'b0;

assign output_r_d0 = write_data_U0_output_r_d0;

assign output_r_d1 = 16'd0;

assign output_r_we0 = write_data_U0_output_r_we0;

assign output_r_we1 = 1'b0;

assign read_data_U0_ap_continue = buf_2d_in_i_full_n;

assign read_data_U0_ap_start = ap_start;

assign read_data_U0_buf_r_full_n = buf_2d_in_i_full_n;

assign read_data_U0_start_full_n = 1'b0;

assign read_data_U0_start_write = 1'b0;

assign write_data_U0_ap_continue = 1'b1;

assign write_data_U0_ap_start = buf_2d_out_t_empty_n;

assign write_data_U0_start_full_n = 1'b0;

assign write_data_U0_start_write = 1'b0;

endmodule //dct