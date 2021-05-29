// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_Col_DCT_Loop_pr (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        col_inbuf_address0,
        col_inbuf_ce0,
        col_inbuf_q0,
        col_outbuf_i_address0,
        col_outbuf_i_ce0,
        col_outbuf_i_we0,
        col_outbuf_i_d0
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state9 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [2:0] col_inbuf_address0;
output   col_inbuf_ce0;
input  [127:0] col_inbuf_q0;
output  [5:0] col_outbuf_i_address0;
output   col_outbuf_i_ce0;
output   col_outbuf_i_we0;
output  [15:0] col_outbuf_i_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg col_inbuf_ce0;
reg col_outbuf_i_ce0;
reg col_outbuf_i_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] dct_coeff_table_address0;
reg    dct_coeff_table_ce0;
wire   [126:0] dct_coeff_table_q0;
reg   [3:0] k_i_reg_158;
wire   [0:0] tmp_2_fu_169_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] i_fu_175_p2;
reg   [3:0] i_reg_507;
wire   [7:0] tmp_21_cast_fu_194_p1;
reg   [7:0] tmp_21_cast_reg_512;
reg   [2:0] col_inbuf_addr_reg_517;
wire   [0:0] tmp_i_fu_198_p2;
reg   [0:0] tmp_i_reg_522;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_state6_pp0_stage0_iter3;
wire    ap_block_state7_pp0_stage0_iter4;
wire    ap_block_state8_pp0_stage0_iter5;
wire    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_tmp_i_reg_522;
reg   [0:0] ap_reg_pp0_iter2_tmp_i_reg_522;
reg   [0:0] ap_reg_pp0_iter3_tmp_i_reg_522;
reg   [0:0] ap_reg_pp0_iter4_tmp_i_reg_522;
wire   [3:0] k_fu_204_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [7:0] tmp_6_fu_219_p2;
reg   [7:0] tmp_6_reg_531;
reg   [7:0] ap_reg_pp0_iter1_tmp_6_reg_531;
reg   [7:0] ap_reg_pp0_iter2_tmp_6_reg_531;
reg   [7:0] ap_reg_pp0_iter3_tmp_6_reg_531;
reg   [7:0] ap_reg_pp0_iter4_tmp_6_reg_531;
wire   [15:0] tmp_51_fu_224_p1;
reg  signed [15:0] tmp_51_reg_541;
wire   [15:0] tmp_52_fu_228_p1;
reg  signed [15:0] tmp_52_reg_546;
reg   [15:0] tmp_10_i_reg_551;
reg  signed [15:0] ap_reg_pp0_iter2_tmp_10_i_reg_551;
reg   [15:0] tmp_11_i_reg_556;
reg  signed [15:0] ap_reg_pp0_iter2_tmp_11_i_reg_556;
reg  signed [15:0] tmp_12_i_reg_561;
reg  signed [15:0] tmp_13_i_reg_566;
reg   [15:0] tmp_15_i_reg_571;
reg  signed [15:0] ap_reg_pp0_iter2_tmp_15_i_reg_571;
reg   [15:0] tmp_16_i_reg_576;
reg  signed [15:0] ap_reg_pp0_iter2_tmp_16_i_reg_576;
reg  signed [15:0] tmp_17_i_reg_581;
reg  signed [15:0] tmp_18_i_reg_586;
reg   [15:0] tmp_19_i_reg_591;
reg  signed [15:0] ap_reg_pp0_iter2_tmp_19_i_reg_591;
reg   [15:0] tmp_20_i_reg_596;
reg  signed [15:0] ap_reg_pp0_iter2_tmp_20_i_reg_596;
reg  signed [15:0] tmp_21_i_reg_601;
reg  signed [15:0] tmp_22_i_reg_606;
reg  signed [14:0] tmp_3_reg_611;
reg  signed [15:0] tmp_24_i_reg_616;
wire  signed [28:0] tmp_8_i_fu_447_p2;
reg  signed [28:0] tmp_8_i_reg_621;
wire  signed [28:0] tmp_8_2_i_fu_453_p2;
reg  signed [28:0] tmp_8_2_i_reg_626;
wire  signed [28:0] tmp_8_4_i_fu_459_p2;
reg  signed [28:0] tmp_8_4_i_reg_631;
wire  signed [28:0] grp_fu_465_p3;
reg  signed [28:0] tmp5_reg_636;
reg    ap_enable_reg_pp0_iter2;
wire  signed [28:0] grp_fu_481_p3;
reg  signed [28:0] tmp1_reg_641;
reg    ap_enable_reg_pp0_iter3;
wire  signed [28:0] grp_fu_488_p3;
reg  signed [28:0] tmp2_reg_646;
(* use_dsp48 = "no" *) wire   [28:0] tmp3_fu_420_p2;
reg   [28:0] tmp3_reg_651;
reg   [15:0] tmp_5_i_reg_656;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg   [3:0] i_2_i_reg_147;
reg    ap_block_state1;
wire    ap_CS_fsm_state9;
wire   [63:0] tmp_141_cast_i_fu_181_p1;
wire   [63:0] tmp_i_32_fu_210_p1;
wire    ap_block_pp0_stage0_flag00000000;
wire   [63:0] tmp_22_cast_fu_443_p1;
wire   [6:0] tmp_s_fu_186_p3;
wire   [7:0] tmp_i_cast_fu_215_p1;
wire  signed [28:0] grp_fu_495_p3;
(* use_dsp48 = "no" *) wire   [28:0] tmp_fu_424_p2;
wire   [28:0] tmp_3_i_fu_428_p2;
wire  signed [28:0] grp_fu_472_p3;
wire   [13:0] grp_fu_472_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
end

Loop_Row_DCT_Loopbkb #(
    .DataWidth( 127 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
dct_coeff_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_address0),
    .ce0(dct_coeff_table_ce0),
    .q0(dct_coeff_table_q0)
);

dct_mul_mul_16s_1cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1cud_x_U16(
    .din0(tmp_51_reg_541),
    .din1(tmp_52_reg_546),
    .dout(tmp_8_i_fu_447_p2)
);

dct_mul_mul_16s_1cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1cud_x_U17(
    .din0(tmp_12_i_reg_561),
    .din1(tmp_13_i_reg_566),
    .dout(tmp_8_2_i_fu_453_p2)
);

dct_mul_mul_16s_1cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 29 ))
dct_mul_mul_16s_1cud_x_U18(
    .din0(tmp_17_i_reg_581),
    .din1(tmp_18_i_reg_586),
    .dout(tmp_8_4_i_fu_459_p2)
);

dct_mac_muladd_16dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16dEe_x_U19(
    .din0(tmp_21_i_reg_601),
    .din1(tmp_22_i_reg_606),
    .din2(grp_fu_472_p3),
    .dout(grp_fu_465_p3)
);

dct_mac_muladd_16eOg #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 15 ),
    .din2_WIDTH( 14 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16eOg_x_U20(
    .din0(tmp_24_i_reg_616),
    .din1(tmp_3_reg_611),
    .din2(grp_fu_472_p2),
    .dout(grp_fu_472_p3)
);

dct_mac_muladd_16dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16dEe_x_U21(
    .din0(ap_reg_pp0_iter2_tmp_10_i_reg_551),
    .din1(ap_reg_pp0_iter2_tmp_11_i_reg_556),
    .din2(tmp_8_i_reg_621),
    .dout(grp_fu_481_p3)
);

dct_mac_muladd_16dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16dEe_x_U22(
    .din0(ap_reg_pp0_iter2_tmp_15_i_reg_571),
    .din1(ap_reg_pp0_iter2_tmp_16_i_reg_576),
    .din2(tmp_8_2_i_reg_626),
    .dout(grp_fu_488_p3)
);

dct_mac_muladd_16dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 29 ),
    .dout_WIDTH( 29 ))
dct_mac_muladd_16dEe_x_U23(
    .din0(ap_reg_pp0_iter2_tmp_19_i_reg_591),
    .din1(ap_reg_pp0_iter2_tmp_20_i_reg_596),
    .din2(tmp_8_4_i_reg_631),
    .dout(grp_fu_495_p3)
);

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
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state3 ^ 1'b1);
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
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_2_i_reg_147 <= i_reg_507;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        i_2_i_reg_147 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == tmp_i_fu_198_p2))) begin
        k_i_reg_158 <= k_fu_204_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd0))) begin
        k_i_reg_158 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_tmp_6_reg_531 <= tmp_6_reg_531;
        ap_reg_pp0_iter1_tmp_i_reg_522 <= tmp_i_reg_522;
        tmp_i_reg_522 <= tmp_i_fu_198_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
        ap_reg_pp0_iter2_tmp_10_i_reg_551 <= tmp_10_i_reg_551;
        ap_reg_pp0_iter2_tmp_11_i_reg_556 <= tmp_11_i_reg_556;
        ap_reg_pp0_iter2_tmp_15_i_reg_571 <= tmp_15_i_reg_571;
        ap_reg_pp0_iter2_tmp_16_i_reg_576 <= tmp_16_i_reg_576;
        ap_reg_pp0_iter2_tmp_19_i_reg_591 <= tmp_19_i_reg_591;
        ap_reg_pp0_iter2_tmp_20_i_reg_596 <= tmp_20_i_reg_596;
        ap_reg_pp0_iter2_tmp_6_reg_531 <= ap_reg_pp0_iter1_tmp_6_reg_531;
        ap_reg_pp0_iter2_tmp_i_reg_522 <= ap_reg_pp0_iter1_tmp_i_reg_522;
        ap_reg_pp0_iter3_tmp_6_reg_531 <= ap_reg_pp0_iter2_tmp_6_reg_531;
        ap_reg_pp0_iter3_tmp_i_reg_522 <= ap_reg_pp0_iter2_tmp_i_reg_522;
        ap_reg_pp0_iter4_tmp_6_reg_531 <= ap_reg_pp0_iter3_tmp_6_reg_531;
        ap_reg_pp0_iter4_tmp_i_reg_522 <= ap_reg_pp0_iter3_tmp_i_reg_522;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd0))) begin
        col_inbuf_addr_reg_517 <= tmp_141_cast_i_fu_181_p1;
        tmp_21_cast_reg_512[6 : 3] <= tmp_21_cast_fu_194_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_507 <= i_fu_175_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter3) & (1'd0 == ap_reg_pp0_iter2_tmp_i_reg_522))) begin
        tmp1_reg_641 <= grp_fu_481_p3;
        tmp2_reg_646 <= grp_fu_488_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter2_tmp_i_reg_522))) begin
        tmp3_reg_651 <= tmp3_fu_420_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_tmp_i_reg_522) & (1'b1 == ap_enable_reg_pp0_iter2))) begin
        tmp5_reg_636 <= grp_fu_465_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == tmp_i_reg_522))) begin
        tmp_10_i_reg_551 <= {{dct_coeff_table_q0[31:16]}};
        tmp_11_i_reg_556 <= {{col_inbuf_q0[31:16]}};
        tmp_12_i_reg_561 <= {{dct_coeff_table_q0[47:32]}};
        tmp_13_i_reg_566 <= {{col_inbuf_q0[47:32]}};
        tmp_15_i_reg_571 <= {{dct_coeff_table_q0[63:48]}};
        tmp_16_i_reg_576 <= {{col_inbuf_q0[63:48]}};
        tmp_17_i_reg_581 <= {{dct_coeff_table_q0[79:64]}};
        tmp_18_i_reg_586 <= {{col_inbuf_q0[79:64]}};
        tmp_19_i_reg_591 <= {{dct_coeff_table_q0[95:80]}};
        tmp_20_i_reg_596 <= {{col_inbuf_q0[95:80]}};
        tmp_21_i_reg_601 <= {{dct_coeff_table_q0[111:96]}};
        tmp_22_i_reg_606 <= {{col_inbuf_q0[111:96]}};
        tmp_24_i_reg_616 <= {{col_inbuf_q0[127:112]}};
        tmp_3_reg_611 <= {{dct_coeff_table_q0[126:112]}};
        tmp_51_reg_541 <= tmp_51_fu_224_p1;
        tmp_52_reg_546 <= tmp_52_fu_228_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter3_tmp_i_reg_522))) begin
        tmp_5_i_reg_656 <= {{tmp_3_i_fu_428_p2[28:13]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == tmp_i_fu_198_p2))) begin
        tmp_6_reg_531 <= tmp_6_fu_219_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == ap_reg_pp0_iter1_tmp_i_reg_522))) begin
        tmp_8_2_i_reg_626 <= tmp_8_2_i_fu_453_p2;
        tmp_8_4_i_reg_631 <= tmp_8_4_i_fu_459_p2;
        tmp_8_i_reg_621 <= tmp_8_i_fu_447_p2;
    end
end

always @ (*) begin
    if ((tmp_i_fu_198_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd1))) begin
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
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2) & (1'b0 == ap_enable_reg_pp0_iter3) & (1'b0 == ap_enable_reg_pp0_iter4) & (1'b0 == ap_enable_reg_pp0_iter5))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        col_inbuf_ce0 = 1'b1;
    end else begin
        col_inbuf_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5))) begin
        col_outbuf_i_ce0 = 1'b1;
    end else begin
        col_outbuf_i_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5) & (1'd0 == ap_reg_pp0_iter4_tmp_i_reg_522))) begin
        col_outbuf_i_we0 = 1'b1;
    end else begin
        col_outbuf_i_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        dct_coeff_table_ce0 = 1'b1;
    end else begin
        dct_coeff_table_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_2_fu_169_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5) & (ap_enable_reg_pp0_iter4 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (tmp_i_fu_198_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5) & (ap_enable_reg_pp0_iter4 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (tmp_i_fu_198_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011011 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign col_inbuf_address0 = col_inbuf_addr_reg_517;

assign col_outbuf_i_address0 = tmp_22_cast_fu_443_p1;

assign col_outbuf_i_d0 = tmp_5_i_reg_656;

assign dct_coeff_table_address0 = tmp_i_32_fu_210_p1;

assign grp_fu_472_p2 = 29'd4096;

assign i_fu_175_p2 = (i_2_i_reg_147 + 4'd1);

assign k_fu_204_p2 = (k_i_reg_158 + 4'd1);

assign tmp3_fu_420_p2 = ($signed(tmp5_reg_636) + $signed(grp_fu_495_p3));

assign tmp_141_cast_i_fu_181_p1 = i_2_i_reg_147;

assign tmp_21_cast_fu_194_p1 = tmp_s_fu_186_p3;

assign tmp_22_cast_fu_443_p1 = ap_reg_pp0_iter4_tmp_6_reg_531;

assign tmp_2_fu_169_p2 = ((i_2_i_reg_147 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_3_i_fu_428_p2 = (tmp3_reg_651 + tmp_fu_424_p2);

assign tmp_51_fu_224_p1 = dct_coeff_table_q0[15:0];

assign tmp_52_fu_228_p1 = col_inbuf_q0[15:0];

assign tmp_6_fu_219_p2 = (tmp_i_cast_fu_215_p1 + tmp_21_cast_reg_512);

assign tmp_fu_424_p2 = ($signed(tmp2_reg_646) + $signed(tmp1_reg_641));

assign tmp_i_32_fu_210_p1 = k_i_reg_158;

assign tmp_i_cast_fu_215_p1 = k_i_reg_158;

assign tmp_i_fu_198_p2 = ((k_i_reg_158 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_s_fu_186_p3 = {{i_2_i_reg_147}, {3'd0}};

always @ (posedge ap_clk) begin
    tmp_21_cast_reg_512[2:0] <= 3'b000;
    tmp_21_cast_reg_512[7] <= 1'b0;
end

endmodule //Loop_Col_DCT_Loop_pr