// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="matrixmul,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=106,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=61,HLS_SYN_LUT=168}" *)

module matrixmul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        res_address0,
        res_ce0,
        res_we0,
        res_d0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [3:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [3:0] res_address0;
output   res_ce0;
output   res_we0;
output  [15:0] res_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg b_ce0;
reg res_ce0;
reg res_we0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] i_1_fu_127_p2;
reg   [1:0] i_1_reg_252;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp_s_fu_149_p2;
reg   [4:0] tmp_s_reg_257;
wire   [0:0] exitcond2_fu_121_p2;
wire   [1:0] j_1_fu_161_p2;
reg   [1:0] j_1_reg_266;
wire    ap_CS_fsm_state3;
wire   [4:0] tmp_2_cast_fu_167_p1;
reg   [4:0] tmp_2_cast_reg_271;
wire   [0:0] exitcond1_fu_155_p2;
reg   [3:0] res_addr_reg_276;
wire   [1:0] k_1_fu_187_p2;
reg   [1:0] k_1_reg_284;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond_fu_181_p2;
reg  signed [7:0] a_load_reg_299;
wire    ap_CS_fsm_state5;
reg  signed [7:0] b_load_reg_304;
wire  signed [15:0] grp_fu_241_p3;
wire    ap_CS_fsm_state6;
reg   [1:0] i_reg_75;
reg   [1:0] j_reg_86;
reg   [15:0] res_load_reg_97;
reg   [1:0] k_reg_110;
wire  signed [63:0] tmp_11_cast_fu_176_p1;
wire  signed [63:0] tmp_12_cast_fu_202_p1;
wire  signed [63:0] tmp_15_cast_fu_230_p1;
wire   [3:0] tmp_9_fu_137_p3;
wire   [4:0] p_shl_cast_fu_145_p1;
wire   [4:0] tmp_cast_fu_133_p1;
wire   [4:0] tmp_2_fu_171_p2;
wire   [4:0] tmp_4_cast_fu_193_p1;
wire   [4:0] tmp_4_fu_197_p2;
wire   [3:0] tmp_10_fu_207_p3;
wire   [4:0] p_shl1_cast_fu_215_p1;
wire   [4:0] tmp_11_fu_219_p2;
wire   [4:0] tmp_12_fu_225_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

matrixmul_mac_mulbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
matrixmul_mac_mulbkb_U1(
    .din0(b_load_reg_304),
    .din1(a_load_reg_299),
    .din2(res_load_reg_97),
    .dout(grp_fu_241_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (exitcond1_fu_155_p2 == 1'd1))) begin
        i_reg_75 <= i_1_reg_252;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_75 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_181_p2 == 1'd1))) begin
        j_reg_86 <= j_1_reg_266;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_121_p2 == 1'd0))) begin
        j_reg_86 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        k_reg_110 <= k_1_reg_284;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_155_p2))) begin
        k_reg_110 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        res_load_reg_97 <= grp_fu_241_p3;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_155_p2))) begin
        res_load_reg_97 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        a_load_reg_299 <= a_q0;
        b_load_reg_304 <= b_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_1_reg_252 <= i_1_fu_127_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_1_reg_266 <= j_1_fu_161_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        k_1_reg_284 <= k_1_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond1_fu_155_p2))) begin
        res_addr_reg_276 <= tmp_11_cast_fu_176_p1;
        tmp_2_cast_reg_271[1 : 0] <= tmp_2_cast_fu_167_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_121_p2 == 1'd0))) begin
        tmp_s_reg_257 <= tmp_s_fu_149_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_121_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_121_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        res_ce0 = 1'b1;
    end else begin
        res_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        res_we0 = 1'b1;
    end else begin
        res_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond2_fu_121_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond1_fu_155_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (exitcond_fu_181_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = tmp_12_cast_fu_202_p1;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign b_address0 = tmp_15_cast_fu_230_p1;

assign exitcond1_fu_155_p2 = ((j_reg_86 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond2_fu_121_p2 = ((i_reg_75 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_fu_181_p2 = ((k_reg_110 == 2'd3) ? 1'b1 : 1'b0);

assign i_1_fu_127_p2 = (i_reg_75 + 2'd1);

assign j_1_fu_161_p2 = (j_reg_86 + 2'd1);

assign k_1_fu_187_p2 = (k_reg_110 + 2'd1);

assign p_shl1_cast_fu_215_p1 = tmp_10_fu_207_p3;

assign p_shl_cast_fu_145_p1 = tmp_9_fu_137_p3;

assign res_address0 = res_addr_reg_276;

assign res_d0 = res_load_reg_97;

assign tmp_10_fu_207_p3 = {{k_reg_110}, {2'd0}};

assign tmp_11_cast_fu_176_p1 = $signed(tmp_2_fu_171_p2);

assign tmp_11_fu_219_p2 = (p_shl1_cast_fu_215_p1 - tmp_4_cast_fu_193_p1);

assign tmp_12_cast_fu_202_p1 = $signed(tmp_4_fu_197_p2);

assign tmp_12_fu_225_p2 = (tmp_11_fu_219_p2 + tmp_2_cast_reg_271);

assign tmp_15_cast_fu_230_p1 = $signed(tmp_12_fu_225_p2);

assign tmp_2_cast_fu_167_p1 = j_reg_86;

assign tmp_2_fu_171_p2 = (tmp_s_reg_257 + tmp_2_cast_fu_167_p1);

assign tmp_4_cast_fu_193_p1 = k_reg_110;

assign tmp_4_fu_197_p2 = (tmp_s_reg_257 + tmp_4_cast_fu_193_p1);

assign tmp_9_fu_137_p3 = {{i_reg_75}, {2'd0}};

assign tmp_cast_fu_133_p1 = i_reg_75;

assign tmp_s_fu_149_p2 = (p_shl_cast_fu_145_p1 - tmp_cast_fu_133_p1);

always @ (posedge ap_clk) begin
    tmp_2_cast_reg_271[4:2] <= 3'b000;
end

endmodule //matrixmul
