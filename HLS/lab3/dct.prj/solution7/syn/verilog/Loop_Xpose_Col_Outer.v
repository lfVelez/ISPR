// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_Xpose_Col_Outer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        col_outbuf_i_address0,
        col_outbuf_i_ce0,
        col_outbuf_i_q0,
        buf_2d_out_address0,
        buf_2d_out_ce0,
        buf_2d_out_we0,
        buf_2d_out_d0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [5:0] col_outbuf_i_address0;
output   col_outbuf_i_ce0;
input  [15:0] col_outbuf_i_q0;
output  [5:0] buf_2d_out_address0;
output   buf_2d_out_ce0;
output   buf_2d_out_we0;
output  [15:0] buf_2d_out_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg col_outbuf_i_ce0;
reg buf_2d_out_ce0;
reg buf_2d_out_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [6:0] indvar_flatten_reg_71;
reg   [3:0] j_1_i_reg_82;
reg   [3:0] i_3_i_reg_93;
wire   [0:0] exitcond_flatten_fu_104_p2;
reg   [0:0] exitcond_flatten_reg_199;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_flatten_reg_199;
wire   [6:0] indvar_flatten_next_fu_110_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] i_3_i_mid2_fu_128_p3;
reg   [3:0] i_3_i_mid2_reg_208;
reg   [3:0] ap_reg_pp0_iter1_i_3_i_mid2_reg_208;
wire   [3:0] tmp_7_mid2_v_fu_136_p3;
reg   [3:0] tmp_7_mid2_v_reg_215;
reg   [3:0] ap_reg_pp0_iter1_tmp_7_mid2_v_reg_215;
wire   [3:0] i_fu_169_p2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state1;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg   [3:0] j_1_i_phi_fu_86_p4;
wire    ap_block_pp0_stage0_flag00000000;
reg   [3:0] i_3_i_phi_fu_97_p4;
wire   [63:0] tmp_15_cast_fu_164_p1;
wire   [63:0] tmp_16_cast_fu_194_p1;
wire   [0:0] tmp_s_fu_122_p2;
wire   [3:0] j_fu_116_p2;
wire   [6:0] tmp_2_fu_147_p3;
wire   [7:0] tmp_7_mid2_cast_fu_144_p1;
wire   [7:0] tmp_14_cast_fu_154_p1;
wire   [7:0] tmp_3_fu_158_p2;
wire   [6:0] tmp_fu_174_p3;
wire   [7:0] tmp_cast_fu_185_p1;
wire   [7:0] tmp_12_cast_fu_181_p1;
wire   [7:0] tmp_4_fu_188_p2;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
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
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_199 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        i_3_i_reg_93 <= i_fu_169_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        i_3_i_reg_93 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_104_p2 == 1'd0))) begin
        indvar_flatten_reg_71 <= indvar_flatten_next_fu_110_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        indvar_flatten_reg_71 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_199 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        j_1_i_reg_82 <= tmp_7_mid2_v_reg_215;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        j_1_i_reg_82 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond_flatten_reg_199 <= exitcond_flatten_reg_199;
        ap_reg_pp0_iter1_i_3_i_mid2_reg_208 <= i_3_i_mid2_reg_208;
        ap_reg_pp0_iter1_tmp_7_mid2_v_reg_215 <= tmp_7_mid2_v_reg_215;
        exitcond_flatten_reg_199 <= exitcond_flatten_fu_104_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_fu_104_p2 == 1'd0))) begin
        i_3_i_mid2_reg_208 <= i_3_i_mid2_fu_128_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_104_p2 == 1'd0))) begin
        tmp_7_mid2_v_reg_215 <= tmp_7_mid2_v_fu_136_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_104_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
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
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        buf_2d_out_ce0 = 1'b1;
    end else begin
        buf_2d_out_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_reg_pp0_iter1_exitcond_flatten_reg_199 == 1'd0))) begin
        buf_2d_out_we0 = 1'b1;
    end else begin
        buf_2d_out_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        col_outbuf_i_ce0 = 1'b1;
    end else begin
        col_outbuf_i_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_199 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        i_3_i_phi_fu_97_p4 = i_fu_169_p2;
    end else begin
        i_3_i_phi_fu_97_p4 = i_3_i_reg_93;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_199 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        j_1_i_phi_fu_86_p4 = tmp_7_mid2_v_reg_215;
    end else begin
        j_1_i_phi_fu_86_p4 = j_1_i_reg_82;
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
            if ((~((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_104_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_104_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
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

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign buf_2d_out_address0 = tmp_16_cast_fu_194_p1;

assign buf_2d_out_d0 = col_outbuf_i_q0;

assign col_outbuf_i_address0 = tmp_15_cast_fu_164_p1;

assign exitcond_flatten_fu_104_p2 = ((indvar_flatten_reg_71 == 7'd64) ? 1'b1 : 1'b0);

assign i_3_i_mid2_fu_128_p3 = ((tmp_s_fu_122_p2[0:0] === 1'b1) ? 4'd0 : i_3_i_phi_fu_97_p4);

assign i_fu_169_p2 = (i_3_i_mid2_reg_208 + 4'd1);

assign indvar_flatten_next_fu_110_p2 = (indvar_flatten_reg_71 + 7'd1);

assign j_fu_116_p2 = (j_1_i_phi_fu_86_p4 + 4'd1);

assign tmp_12_cast_fu_181_p1 = tmp_fu_174_p3;

assign tmp_14_cast_fu_154_p1 = tmp_2_fu_147_p3;

assign tmp_15_cast_fu_164_p1 = tmp_3_fu_158_p2;

assign tmp_16_cast_fu_194_p1 = tmp_4_fu_188_p2;

assign tmp_2_fu_147_p3 = {{i_3_i_mid2_reg_208}, {3'd0}};

assign tmp_3_fu_158_p2 = (tmp_7_mid2_cast_fu_144_p1 + tmp_14_cast_fu_154_p1);

assign tmp_4_fu_188_p2 = (tmp_cast_fu_185_p1 + tmp_12_cast_fu_181_p1);

assign tmp_7_mid2_cast_fu_144_p1 = tmp_7_mid2_v_reg_215;

assign tmp_7_mid2_v_fu_136_p3 = ((tmp_s_fu_122_p2[0:0] === 1'b1) ? j_fu_116_p2 : j_1_i_phi_fu_86_p4);

assign tmp_cast_fu_185_p1 = ap_reg_pp0_iter1_i_3_i_mid2_reg_208;

assign tmp_fu_174_p3 = {{ap_reg_pp0_iter1_tmp_7_mid2_v_reg_215}, {3'd0}};

assign tmp_s_fu_122_p2 = ((i_3_i_phi_fu_97_p4 == 4'd8) ? 1'b1 : 1'b0);

endmodule //Loop_Xpose_Col_Outer
