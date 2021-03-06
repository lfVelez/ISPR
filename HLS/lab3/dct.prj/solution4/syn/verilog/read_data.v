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
        ap_idle,
        ap_ready,
        input_r_address0,
        input_r_ce0,
        input_r_q0,
        buf_0_address0,
        buf_0_ce0,
        buf_0_we0,
        buf_0_d0,
        buf_1_address0,
        buf_1_ce0,
        buf_1_we0,
        buf_1_d0,
        buf_2_address0,
        buf_2_ce0,
        buf_2_we0,
        buf_2_d0,
        buf_3_address0,
        buf_3_ce0,
        buf_3_we0,
        buf_3_d0,
        buf_4_address0,
        buf_4_ce0,
        buf_4_we0,
        buf_4_d0,
        buf_5_address0,
        buf_5_ce0,
        buf_5_we0,
        buf_5_d0,
        buf_6_address0,
        buf_6_ce0,
        buf_6_we0,
        buf_6_d0,
        buf_7_address0,
        buf_7_ce0,
        buf_7_we0,
        buf_7_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] input_r_address0;
output   input_r_ce0;
input  [15:0] input_r_q0;
output  [2:0] buf_0_address0;
output   buf_0_ce0;
output   buf_0_we0;
output  [15:0] buf_0_d0;
output  [2:0] buf_1_address0;
output   buf_1_ce0;
output   buf_1_we0;
output  [15:0] buf_1_d0;
output  [2:0] buf_2_address0;
output   buf_2_ce0;
output   buf_2_we0;
output  [15:0] buf_2_d0;
output  [2:0] buf_3_address0;
output   buf_3_ce0;
output   buf_3_we0;
output  [15:0] buf_3_d0;
output  [2:0] buf_4_address0;
output   buf_4_ce0;
output   buf_4_we0;
output  [15:0] buf_4_d0;
output  [2:0] buf_5_address0;
output   buf_5_ce0;
output   buf_5_we0;
output  [15:0] buf_5_d0;
output  [2:0] buf_6_address0;
output   buf_6_ce0;
output   buf_6_we0;
output  [15:0] buf_6_d0;
output  [2:0] buf_7_address0;
output   buf_7_ce0;
output   buf_7_we0;
output  [15:0] buf_7_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg input_r_ce0;
reg buf_0_ce0;
reg buf_0_we0;
reg buf_1_ce0;
reg buf_1_we0;
reg buf_2_ce0;
reg buf_2_we0;
reg buf_3_ce0;
reg buf_3_we0;
reg buf_4_ce0;
reg buf_4_we0;
reg buf_5_ce0;
reg buf_5_we0;
reg buf_6_ce0;
reg buf_6_we0;
reg buf_7_ce0;
reg buf_7_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_188;
reg   [3:0] r_reg_199;
reg   [3:0] c_reg_210;
wire   [0:0] exitcond_flatten_fu_221_p2;
reg   [0:0] exitcond_flatten_reg_306;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_flag00011001;
wire   [6:0] indvar_flatten_next_fu_227_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] c_mid2_fu_245_p3;
reg   [3:0] c_mid2_reg_315;
wire   [3:0] tmp_mid2_v_v_fu_253_p3;
reg   [3:0] tmp_mid2_v_v_reg_321;
reg   [3:0] ap_reg_pp0_iter1_tmp_mid2_v_v_reg_321;
wire   [2:0] tmp_fu_261_p1;
reg   [2:0] tmp_reg_327;
wire   [2:0] tmp_2_fu_265_p1;
reg   [2:0] tmp_2_reg_332;
reg   [2:0] ap_reg_pp0_iter1_tmp_2_reg_332;
wire   [3:0] c_1_fu_290_p2;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg   [3:0] r_phi_fu_203_p4;
wire    ap_block_pp0_stage0_flag00000000;
reg   [3:0] c_phi_fu_214_p4;
wire   [63:0] tmp_s_fu_285_p1;
wire   [63:0] tmp_7_mid2_fu_295_p1;
wire   [0:0] exitcond_fu_239_p2;
wire   [3:0] r_1_fu_233_p2;
wire   [5:0] c_cast2_fu_276_p1;
wire   [5:0] tmp_mid2_fu_269_p3;
wire   [5:0] tmp_9_fu_279_p2;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
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
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_306 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        c_reg_210 <= c_1_fu_290_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        c_reg_210 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_221_p2 == 1'd0))) begin
        indvar_flatten_reg_188 <= indvar_flatten_next_fu_227_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_188 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_306 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        r_reg_199 <= tmp_mid2_v_v_reg_321;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        r_reg_199 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_tmp_2_reg_332 <= tmp_2_reg_332;
        ap_reg_pp0_iter1_tmp_mid2_v_v_reg_321 <= tmp_mid2_v_v_reg_321;
        exitcond_flatten_reg_306 <= exitcond_flatten_fu_221_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_fu_221_p2 == 1'd0))) begin
        c_mid2_reg_315 <= c_mid2_fu_245_p3;
        tmp_2_reg_332 <= tmp_2_fu_265_p1;
        tmp_reg_327 <= tmp_fu_261_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_221_p2 == 1'd0))) begin
        tmp_mid2_v_v_reg_321 <= tmp_mid2_v_v_fu_253_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_221_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | (1'b1 == ap_CS_fsm_state5))) begin
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
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_0_ce0 = 1'b1;
    end else begin
        buf_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd0))) begin
        buf_0_we0 = 1'b1;
    end else begin
        buf_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_1_ce0 = 1'b1;
    end else begin
        buf_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd1))) begin
        buf_1_we0 = 1'b1;
    end else begin
        buf_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_2_ce0 = 1'b1;
    end else begin
        buf_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd2))) begin
        buf_2_we0 = 1'b1;
    end else begin
        buf_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_3_ce0 = 1'b1;
    end else begin
        buf_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd3))) begin
        buf_3_we0 = 1'b1;
    end else begin
        buf_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_4_ce0 = 1'b1;
    end else begin
        buf_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd4))) begin
        buf_4_we0 = 1'b1;
    end else begin
        buf_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_5_ce0 = 1'b1;
    end else begin
        buf_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd5))) begin
        buf_5_we0 = 1'b1;
    end else begin
        buf_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_6_ce0 = 1'b1;
    end else begin
        buf_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd6))) begin
        buf_6_we0 = 1'b1;
    end else begin
        buf_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_7_ce0 = 1'b1;
    end else begin
        buf_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_tmp_2_reg_332 == 3'd7))) begin
        buf_7_we0 = 1'b1;
    end else begin
        buf_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_306 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        c_phi_fu_214_p4 = c_1_fu_290_p2;
    end else begin
        c_phi_fu_214_p4 = c_reg_210;
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_306 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        r_phi_fu_203_p4 = tmp_mid2_v_v_reg_321;
    end else begin
        r_phi_fu_203_p4 = r_reg_199;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_221_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_221_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011011 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buf_0_address0 = tmp_7_mid2_fu_295_p1;

assign buf_0_d0 = input_r_q0;

assign buf_1_address0 = tmp_7_mid2_fu_295_p1;

assign buf_1_d0 = input_r_q0;

assign buf_2_address0 = tmp_7_mid2_fu_295_p1;

assign buf_2_d0 = input_r_q0;

assign buf_3_address0 = tmp_7_mid2_fu_295_p1;

assign buf_3_d0 = input_r_q0;

assign buf_4_address0 = tmp_7_mid2_fu_295_p1;

assign buf_4_d0 = input_r_q0;

assign buf_5_address0 = tmp_7_mid2_fu_295_p1;

assign buf_5_d0 = input_r_q0;

assign buf_6_address0 = tmp_7_mid2_fu_295_p1;

assign buf_6_d0 = input_r_q0;

assign buf_7_address0 = tmp_7_mid2_fu_295_p1;

assign buf_7_d0 = input_r_q0;

assign c_1_fu_290_p2 = (c_mid2_reg_315 + 4'd1);

assign c_cast2_fu_276_p1 = c_mid2_reg_315;

assign c_mid2_fu_245_p3 = ((exitcond_fu_239_p2[0:0] === 1'b1) ? 4'd0 : c_phi_fu_214_p4);

assign exitcond_flatten_fu_221_p2 = ((indvar_flatten_reg_188 == 7'd64) ? 1'b1 : 1'b0);

assign exitcond_fu_239_p2 = ((c_phi_fu_214_p4 == 4'd8) ? 1'b1 : 1'b0);

assign indvar_flatten_next_fu_227_p2 = (indvar_flatten_reg_188 + 7'd1);

assign input_r_address0 = tmp_s_fu_285_p1;

assign r_1_fu_233_p2 = (4'd1 + r_phi_fu_203_p4);

assign tmp_2_fu_265_p1 = c_mid2_fu_245_p3[2:0];

assign tmp_7_mid2_fu_295_p1 = ap_reg_pp0_iter1_tmp_mid2_v_v_reg_321;

assign tmp_9_fu_279_p2 = (c_cast2_fu_276_p1 + tmp_mid2_fu_269_p3);

assign tmp_fu_261_p1 = tmp_mid2_v_v_fu_253_p3[2:0];

assign tmp_mid2_fu_269_p3 = {{tmp_reg_327}, {3'd0}};

assign tmp_mid2_v_v_fu_253_p3 = ((exitcond_fu_239_p2[0:0] === 1'b1) ? r_1_fu_233_p2 : r_phi_fu_203_p4);

assign tmp_s_fu_285_p1 = tmp_9_fu_279_p2;

endmodule //read_data
