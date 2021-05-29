// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module read_data (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        buf_r_address0,
        buf_r_ce0,
        buf_r_we0,
        buf_r_d0,
        buf_r_q0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_pp0_stage0 = 4'd2;
parameter    ap_ST_fsm_pp0_stage1 = 4'd4;
parameter    ap_ST_fsm_state8 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [2:0] buf_r_address0;
output   buf_r_ce0;
output   buf_r_we0;
output  [127:0] buf_r_d0;
input  [127:0] buf_r_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg buf_r_ce0;
reg buf_r_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_81;
reg   [3:0] r_reg_92;
reg   [3:0] c_reg_104;
wire   [0:0] exitcond_flatten_fu_116_p2;
reg   [0:0] exitcond_flatten_reg_332;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_flatten_reg_332;
reg   [0:0] ap_reg_pp0_iter2_exitcond_flatten_reg_332;
wire   [6:0] indvar_flatten_next_fu_122_p2;
reg   [6:0] indvar_flatten_next_reg_336;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] c_mid2_fu_140_p3;
reg   [3:0] c_mid2_reg_341;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_state7_pp0_stage1_iter2;
wire    ap_block_pp0_stage1_flag00011001;
wire   [3:0] tmp_mid2_v_v_fu_148_p3;
reg   [3:0] tmp_mid2_v_v_reg_347;
wire   [2:0] tmp_fu_156_p1;
reg   [2:0] tmp_reg_352;
reg   [2:0] buf_addr_reg_357;
reg   [2:0] ap_reg_pp0_iter1_buf_addr_reg_357;
wire   [2:0] tmp_4_fu_165_p1;
reg   [2:0] tmp_4_reg_362;
wire   [3:0] c_2_fu_190_p2;
reg   [3:0] c_2_reg_372;
reg    ap_enable_reg_pp0_iter1;
reg   [15:0] input_load_reg_377;
wire   [0:0] tmp_5_fu_208_p2;
reg   [0:0] tmp_5_reg_382;
wire   [7:0] tmp_6_fu_214_p1;
reg   [7:0] tmp_6_reg_388;
wire   [127:0] p_demorgan_fu_264_p2;
reg   [127:0] p_demorgan_reg_394;
wire   [127:0] tmp_18_fu_288_p2;
reg   [127:0] tmp_18_reg_400;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage1_flag00011011;
reg    ap_enable_reg_pp0_iter2;
reg   [6:0] indvar_flatten_phi_fu_85_p4;
wire    ap_block_pp0_stage0_flag00000000;
reg   [3:0] r_phi_fu_96_p4;
wire    ap_block_pp0_stage1_flag00000000;
reg   [3:0] c_phi_fu_108_p4;
wire   [63:0] tmp_7_mid2_fu_160_p1;
wire   [63:0] tmp_s_fu_185_p1;
wire   [0:0] exitcond5_fu_134_p2;
wire   [3:0] r_2_fu_128_p2;
wire   [5:0] c_cast2_fu_176_p1;
wire   [5:0] tmp_mid2_fu_169_p3;
wire   [5:0] tmp_9_fu_179_p2;
wire   [6:0] tmp_2_fu_195_p3;
wire   [6:0] tmp_3_fu_202_p2;
wire   [7:0] tmp_7_fu_218_p1;
wire   [7:0] tmp_11_fu_222_p3;
wire   [7:0] tmp_12_fu_230_p3;
wire   [7:0] tmp_14_fu_238_p2;
wire   [127:0] tmp_16_fu_244_p1;
wire   [127:0] tmp_17_fu_248_p1;
wire   [127:0] tmp_21_fu_252_p2;
wire   [127:0] tmp_22_fu_258_p2;
wire   [7:0] tmp_10_fu_273_p2;
wire   [7:0] tmp_13_fu_278_p3;
wire   [127:0] tmp_8_fu_270_p1;
wire   [127:0] tmp_15_fu_284_p1;
reg   [127:0] tmp_19_fu_294_p4;
wire   [127:0] tmp_23_fu_309_p2;
wire   [127:0] tmp_20_fu_303_p3;
wire   [127:0] tmp_24_fu_314_p2;
wire   [127:0] tmp_25_fu_320_p2;
wire    ap_CS_fsm_state8;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state8)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011011 == 1'b0))) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011011 == 1'b0))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_reg_pp0_iter1_exitcond_flatten_reg_332 == 1'd0))) begin
        c_reg_104 <= c_2_reg_372;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        c_reg_104 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_332 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        indvar_flatten_reg_81 <= indvar_flatten_next_reg_336;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_reg_81 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_reg_pp0_iter1_exitcond_flatten_reg_332 == 1'd0))) begin
        r_reg_92 <= tmp_mid2_v_v_reg_347;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        r_reg_92 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_buf_addr_reg_357 <= buf_addr_reg_357;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond_flatten_reg_332 <= exitcond_flatten_reg_332;
        ap_reg_pp0_iter2_exitcond_flatten_reg_332 <= ap_reg_pp0_iter1_exitcond_flatten_reg_332;
        exitcond_flatten_reg_332 <= exitcond_flatten_fu_116_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (exitcond_flatten_reg_332 == 1'd0))) begin
        buf_addr_reg_357 <= tmp_7_mid2_fu_160_p1;
        c_mid2_reg_341 <= c_mid2_fu_140_p3;
        tmp_4_reg_362 <= tmp_4_fu_165_p1;
        tmp_reg_352 <= tmp_fu_156_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_332 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        c_2_reg_372 <= c_2_fu_190_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        indvar_flatten_next_reg_336 <= indvar_flatten_next_fu_122_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (ap_reg_pp0_iter1_exitcond_flatten_reg_332 == 1'd0))) begin
        input_load_reg_377 <= input_r_q0;
        p_demorgan_reg_394 <= p_demorgan_fu_264_p2;
        tmp_5_reg_382 <= tmp_5_fu_208_p2;
        tmp_6_reg_388[6 : 4] <= tmp_6_fu_214_p1[6 : 4];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter1_exitcond_flatten_reg_332 == 1'd0))) begin
        tmp_18_reg_400 <= tmp_18_fu_288_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_enable_reg_pp0_iter0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (exitcond_flatten_reg_332 == 1'd0))) begin
        tmp_mid2_v_v_reg_347 <= tmp_mid2_v_v_fu_148_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_116_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2)))) begin
        buf_r_ce0 = 1'b1;
    end else begin
        buf_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter2_exitcond_flatten_reg_332 == 1'd0))) begin
        buf_r_we0 = 1'b1;
    end else begin
        buf_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_reg_pp0_iter1_exitcond_flatten_reg_332 == 1'd0) & (ap_block_pp0_stage1_flag00000000 == 1'b0))) begin
        c_phi_fu_108_p4 = c_2_reg_372;
    end else begin
        c_phi_fu_108_p4 = c_reg_104;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_332 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        indvar_flatten_phi_fu_85_p4 = indvar_flatten_next_reg_336;
    end else begin
        indvar_flatten_phi_fu_85_p4 = indvar_flatten_reg_81;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_reg_pp0_iter1_exitcond_flatten_reg_332 == 1'd0) & (ap_block_pp0_stage1_flag00000000 == 1'b0))) begin
        r_phi_fu_96_p4 = tmp_mid2_v_v_reg_347;
    end else begin
        r_phi_fu_96_p4 = r_reg_92;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_block_pp0_stage0_flag00011011 == 1'b0) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_116_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_116_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((ap_block_pp0_stage1_flag00011011 == 1'b0) & ~((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (ap_block_pp0_stage1_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011011 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_flag00011011 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buf_r_address0 = ap_reg_pp0_iter1_buf_addr_reg_357;

assign buf_r_d0 = (tmp_24_fu_314_p2 | tmp_25_fu_320_p2);

assign c_2_fu_190_p2 = (4'd1 + c_mid2_reg_341);

assign c_cast2_fu_176_p1 = c_mid2_reg_341;

assign c_mid2_fu_140_p3 = ((exitcond5_fu_134_p2[0:0] === 1'b1) ? 4'd0 : c_phi_fu_108_p4);

assign exitcond5_fu_134_p2 = ((c_phi_fu_108_p4 == 4'd8) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_116_p2 = ((indvar_flatten_phi_fu_85_p4 == 7'd64) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_122_p2 = (indvar_flatten_phi_fu_85_p4 + 7'd1);

assign input_r_address0 = tmp_s_fu_185_p1;

assign p_demorgan_fu_264_p2 = (tmp_21_fu_252_p2 & tmp_22_fu_258_p2);

assign r_2_fu_128_p2 = (4'd1 + r_phi_fu_96_p4);

assign tmp_10_fu_273_p2 = (tmp_6_reg_388 ^ 8'd127);

assign tmp_11_fu_222_p3 = ((tmp_5_fu_208_p2[0:0] === 1'b1) ? tmp_6_fu_214_p1 : tmp_7_fu_218_p1);

assign tmp_12_fu_230_p3 = ((tmp_5_fu_208_p2[0:0] === 1'b1) ? tmp_7_fu_218_p1 : tmp_6_fu_214_p1);

assign tmp_13_fu_278_p3 = ((tmp_5_reg_382[0:0] === 1'b1) ? tmp_10_fu_273_p2 : tmp_6_reg_388);

assign tmp_14_fu_238_p2 = (tmp_11_fu_222_p3 ^ 8'd127);

assign tmp_15_fu_284_p1 = tmp_13_fu_278_p3;

assign tmp_16_fu_244_p1 = tmp_12_fu_230_p3;

assign tmp_17_fu_248_p1 = tmp_14_fu_238_p2;

assign tmp_18_fu_288_p2 = tmp_8_fu_270_p1 << tmp_15_fu_284_p1;

integer ap_tvar_int_0;

always @ (tmp_18_reg_400) begin
    for (ap_tvar_int_0 = 128 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 127 - 0) begin
            tmp_19_fu_294_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_19_fu_294_p4[ap_tvar_int_0] = tmp_18_reg_400[127 - ap_tvar_int_0];
        end
    end
end

assign tmp_20_fu_303_p3 = ((tmp_5_reg_382[0:0] === 1'b1) ? tmp_19_fu_294_p4 : tmp_18_reg_400);

assign tmp_21_fu_252_p2 = 128'd340282366920938463463374607431768211455 << tmp_16_fu_244_p1;

assign tmp_22_fu_258_p2 = 128'd340282366920938463463374607431768211455 >> tmp_17_fu_248_p1;

assign tmp_23_fu_309_p2 = (p_demorgan_reg_394 ^ 128'd340282366920938463463374607431768211455);

assign tmp_24_fu_314_p2 = (buf_r_q0 & tmp_23_fu_309_p2);

assign tmp_25_fu_320_p2 = (tmp_20_fu_303_p3 & p_demorgan_reg_394);

assign tmp_2_fu_195_p3 = {{tmp_4_reg_362}, {4'd0}};

assign tmp_3_fu_202_p2 = (tmp_2_fu_195_p3 | 7'd15);

assign tmp_4_fu_165_p1 = c_mid2_fu_140_p3[2:0];

assign tmp_5_fu_208_p2 = ((tmp_2_fu_195_p3 > tmp_3_fu_202_p2) ? 1'b1 : 1'b0);

assign tmp_6_fu_214_p1 = tmp_2_fu_195_p3;

assign tmp_7_fu_218_p1 = tmp_3_fu_202_p2;

assign tmp_7_mid2_fu_160_p1 = tmp_mid2_v_v_fu_148_p3;

assign tmp_8_fu_270_p1 = input_load_reg_377;

assign tmp_9_fu_179_p2 = (c_cast2_fu_176_p1 + tmp_mid2_fu_169_p3);

assign tmp_fu_156_p1 = tmp_mid2_v_v_fu_148_p3[2:0];

assign tmp_mid2_fu_169_p3 = {{tmp_reg_352}, {3'd0}};

assign tmp_mid2_v_v_fu_148_p3 = ((exitcond5_fu_134_p2[0:0] === 1'b1) ? r_2_fu_128_p2 : r_phi_fu_96_p4);

assign tmp_s_fu_185_p1 = tmp_9_fu_179_p2;

always @ (posedge ap_clk) begin
    tmp_6_reg_388[3:0] <= 4'b0000;
    tmp_6_reg_388[7] <= 1'b0;
end

endmodule //read_data