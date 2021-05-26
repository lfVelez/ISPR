// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_2d_HH_
#define _dct_2d_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_1d.h"
#include "dct_2d_row_outbuf.h"
#include "dct_2d_col_inbuf_0.h"

namespace ap_rtl {

struct dct_2d : public sc_module {
    // Port declarations 34
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > in_block_0_address0;
    sc_out< sc_logic > in_block_0_ce0;
    sc_in< sc_lv<16> > in_block_0_q0;
    sc_out< sc_lv<3> > in_block_1_address0;
    sc_out< sc_logic > in_block_1_ce0;
    sc_in< sc_lv<16> > in_block_1_q0;
    sc_out< sc_lv<3> > in_block_2_address0;
    sc_out< sc_logic > in_block_2_ce0;
    sc_in< sc_lv<16> > in_block_2_q0;
    sc_out< sc_lv<3> > in_block_3_address0;
    sc_out< sc_logic > in_block_3_ce0;
    sc_in< sc_lv<16> > in_block_3_q0;
    sc_out< sc_lv<3> > in_block_4_address0;
    sc_out< sc_logic > in_block_4_ce0;
    sc_in< sc_lv<16> > in_block_4_q0;
    sc_out< sc_lv<3> > in_block_5_address0;
    sc_out< sc_logic > in_block_5_ce0;
    sc_in< sc_lv<16> > in_block_5_q0;
    sc_out< sc_lv<3> > in_block_6_address0;
    sc_out< sc_logic > in_block_6_ce0;
    sc_in< sc_lv<16> > in_block_6_q0;
    sc_out< sc_lv<3> > in_block_7_address0;
    sc_out< sc_logic > in_block_7_ce0;
    sc_in< sc_lv<16> > in_block_7_q0;
    sc_out< sc_lv<6> > out_block_address0;
    sc_out< sc_logic > out_block_ce0;
    sc_out< sc_logic > out_block_we0;
    sc_out< sc_lv<16> > out_block_d0;


    // Module declarations
    dct_2d(sc_module_name name);
    SC_HAS_PROCESS(dct_2d);

    ~dct_2d();

    sc_trace_file* mVcdFile;

    dct_2d_row_outbuf* row_outbuf_U;
    dct_2d_row_outbuf* col_outbuf_U;
    dct_2d_col_inbuf_0* col_inbuf_0_U;
    dct_2d_col_inbuf_0* col_inbuf_1_U;
    dct_2d_col_inbuf_0* col_inbuf_2_U;
    dct_2d_col_inbuf_0* col_inbuf_3_U;
    dct_2d_col_inbuf_0* col_inbuf_4_U;
    dct_2d_col_inbuf_0* col_inbuf_5_U;
    dct_2d_col_inbuf_0* col_inbuf_6_U;
    dct_2d_col_inbuf_0* col_inbuf_7_U;
    dct_1d* grp_dct_1d_fu_363;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_285;
    sc_signal< sc_lv<4> > j_reg_296;
    sc_signal< sc_lv<4> > i_1_reg_307;
    sc_signal< sc_lv<7> > indvar_flatten1_reg_330;
    sc_signal< sc_lv<4> > j_1_reg_341;
    sc_signal< sc_lv<4> > i_3_reg_352;
    sc_signal< sc_lv<1> > tmp_fu_406_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > i_4_fu_412_p2;
    sc_signal< sc_lv<4> > i_4_reg_614;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_418_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_619;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_424_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > i_1_mid2_fu_442_p3;
    sc_signal< sc_lv<4> > i_1_mid2_reg_628;
    sc_signal< sc_lv<4> > tmp_3_mid2_v_fu_450_p3;
    sc_signal< sc_lv<4> > tmp_3_mid2_v_reg_634;
    sc_signal< sc_lv<4> > ap_reg_pp0_iter1_tmp_3_mid2_v_reg_634;
    sc_signal< sc_lv<3> > tmp_3_fu_458_p1;
    sc_signal< sc_lv<3> > tmp_3_reg_641;
    sc_signal< sc_lv<3> > ap_reg_pp0_iter1_tmp_3_reg_641;
    sc_signal< sc_lv<4> > i_6_fu_487_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > tmp_4_fu_503_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > i_5_fu_509_p2;
    sc_signal< sc_lv<4> > i_5_reg_659;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_515_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_664;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state12_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp1_iter1_exitcond_flatten1_reg_664;
    sc_signal< sc_lv<7> > indvar_flatten_next1_fu_521_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<4> > i_3_mid2_fu_539_p3;
    sc_signal< sc_lv<4> > i_3_mid2_reg_673;
    sc_signal< sc_lv<4> > ap_reg_pp1_iter1_i_3_mid2_reg_673;
    sc_signal< sc_lv<4> > tmp_9_mid2_v_fu_547_p3;
    sc_signal< sc_lv<4> > tmp_9_mid2_v_reg_680;
    sc_signal< sc_lv<4> > ap_reg_pp1_iter1_tmp_9_mid2_v_reg_680;
    sc_signal< sc_lv<4> > i_7_fu_580_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state10;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<6> > row_outbuf_address0;
    sc_signal< sc_logic > row_outbuf_ce0;
    sc_signal< sc_logic > row_outbuf_we0;
    sc_signal< sc_lv<16> > row_outbuf_q0;
    sc_signal< sc_lv<6> > col_outbuf_address0;
    sc_signal< sc_logic > col_outbuf_ce0;
    sc_signal< sc_logic > col_outbuf_we0;
    sc_signal< sc_lv<16> > col_outbuf_q0;
    sc_signal< sc_lv<3> > col_inbuf_0_address0;
    sc_signal< sc_logic > col_inbuf_0_ce0;
    sc_signal< sc_logic > col_inbuf_0_we0;
    sc_signal< sc_lv<16> > col_inbuf_0_q0;
    sc_signal< sc_lv<3> > col_inbuf_1_address0;
    sc_signal< sc_logic > col_inbuf_1_ce0;
    sc_signal< sc_logic > col_inbuf_1_we0;
    sc_signal< sc_lv<16> > col_inbuf_1_q0;
    sc_signal< sc_lv<3> > col_inbuf_2_address0;
    sc_signal< sc_logic > col_inbuf_2_ce0;
    sc_signal< sc_logic > col_inbuf_2_we0;
    sc_signal< sc_lv<16> > col_inbuf_2_q0;
    sc_signal< sc_lv<3> > col_inbuf_3_address0;
    sc_signal< sc_logic > col_inbuf_3_ce0;
    sc_signal< sc_logic > col_inbuf_3_we0;
    sc_signal< sc_lv<16> > col_inbuf_3_q0;
    sc_signal< sc_lv<3> > col_inbuf_4_address0;
    sc_signal< sc_logic > col_inbuf_4_ce0;
    sc_signal< sc_logic > col_inbuf_4_we0;
    sc_signal< sc_lv<16> > col_inbuf_4_q0;
    sc_signal< sc_lv<3> > col_inbuf_5_address0;
    sc_signal< sc_logic > col_inbuf_5_ce0;
    sc_signal< sc_logic > col_inbuf_5_we0;
    sc_signal< sc_lv<16> > col_inbuf_5_q0;
    sc_signal< sc_lv<3> > col_inbuf_6_address0;
    sc_signal< sc_logic > col_inbuf_6_ce0;
    sc_signal< sc_logic > col_inbuf_6_we0;
    sc_signal< sc_lv<16> > col_inbuf_6_q0;
    sc_signal< sc_lv<3> > col_inbuf_7_address0;
    sc_signal< sc_logic > col_inbuf_7_ce0;
    sc_signal< sc_logic > col_inbuf_7_we0;
    sc_signal< sc_lv<16> > col_inbuf_7_q0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_ap_start;
    sc_signal< sc_logic > grp_dct_1d_fu_363_ap_done;
    sc_signal< sc_logic > grp_dct_1d_fu_363_ap_idle;
    sc_signal< sc_logic > grp_dct_1d_fu_363_ap_ready;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src1_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src1_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src1_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src2_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src2_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src2_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src3_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src3_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src3_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src4_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src4_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src4_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src5_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src5_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src5_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src6_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src6_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src6_q0;
    sc_signal< sc_lv<3> > grp_dct_1d_fu_363_src7_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_src7_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_src7_q0;
    sc_signal< sc_lv<4> > grp_dct_1d_fu_363_tmp_6;
    sc_signal< sc_lv<6> > grp_dct_1d_fu_363_dst_address0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_dst_ce0;
    sc_signal< sc_logic > grp_dct_1d_fu_363_dst_we0;
    sc_signal< sc_lv<16> > grp_dct_1d_fu_363_dst_d0;
    sc_signal< sc_lv<4> > grp_dct_1d_fu_363_tmp_61;
    sc_signal< sc_lv<4> > i_reg_273;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > j_phi_fu_300_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<4> > i_1_phi_fu_311_p4;
    sc_signal< sc_lv<4> > i_2_reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > j_1_phi_fu_345_p4;
    sc_signal< bool > ap_block_pp1_stage0_flag00000000;
    sc_signal< sc_lv<4> > i_3_phi_fu_356_p4;
    sc_signal< sc_logic > ap_reg_grp_dct_1d_fu_363_ap_start;
    sc_signal< sc_lv<64> > tmp_7_cast_fu_482_p1;
    sc_signal< sc_lv<64> > tmp_3_mid2_fu_492_p1;
    sc_signal< sc_lv<64> > tmp_14_cast_fu_575_p1;
    sc_signal< sc_lv<64> > tmp_11_cast_fu_605_p1;
    sc_signal< sc_lv<1> > tmp_1_fu_436_p2;
    sc_signal< sc_lv<4> > j_2_fu_430_p2;
    sc_signal< sc_lv<7> > tmp_2_fu_465_p3;
    sc_signal< sc_lv<8> > tmp_3_cast_fu_472_p1;
    sc_signal< sc_lv<8> > tmp_3_mid2_cast_fu_462_p1;
    sc_signal< sc_lv<8> > tmp_7_fu_476_p2;
    sc_signal< sc_lv<1> > tmp_5_fu_533_p2;
    sc_signal< sc_lv<4> > j_3_fu_527_p2;
    sc_signal< sc_lv<7> > tmp_10_fu_558_p3;
    sc_signal< sc_lv<8> > tmp_9_mid2_cast_fu_555_p1;
    sc_signal< sc_lv<8> > tmp_13_cast_fu_565_p1;
    sc_signal< sc_lv<8> > tmp_11_fu_569_p2;
    sc_signal< sc_lv<7> > tmp_8_fu_585_p3;
    sc_signal< sc_lv<8> > tmp_10_cast_fu_596_p1;
    sc_signal< sc_lv<8> > tmp_9_cast_fu_592_p1;
    sc_signal< sc_lv<8> > tmp_9_fu_599_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_pp0_stage0;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<9> ap_ST_fsm_pp1_stage0;
    static const sc_lv<9> ap_ST_fsm_state13;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<32> ap_const_lv32_8;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_pp1_stage0_flag00000000();
    void thread_ap_block_pp1_stage0_flag00011001();
    void thread_ap_block_pp1_stage0_flag00011011();
    void thread_ap_block_state10_pp1_stage0_iter0();
    void thread_ap_block_state11_pp1_stage0_iter1();
    void thread_ap_block_state12_pp1_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_condition_pp1_exit_iter0_state10();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_ready();
    void thread_col_inbuf_0_address0();
    void thread_col_inbuf_0_ce0();
    void thread_col_inbuf_0_we0();
    void thread_col_inbuf_1_address0();
    void thread_col_inbuf_1_ce0();
    void thread_col_inbuf_1_we0();
    void thread_col_inbuf_2_address0();
    void thread_col_inbuf_2_ce0();
    void thread_col_inbuf_2_we0();
    void thread_col_inbuf_3_address0();
    void thread_col_inbuf_3_ce0();
    void thread_col_inbuf_3_we0();
    void thread_col_inbuf_4_address0();
    void thread_col_inbuf_4_ce0();
    void thread_col_inbuf_4_we0();
    void thread_col_inbuf_5_address0();
    void thread_col_inbuf_5_ce0();
    void thread_col_inbuf_5_we0();
    void thread_col_inbuf_6_address0();
    void thread_col_inbuf_6_ce0();
    void thread_col_inbuf_6_we0();
    void thread_col_inbuf_7_address0();
    void thread_col_inbuf_7_ce0();
    void thread_col_inbuf_7_we0();
    void thread_col_outbuf_address0();
    void thread_col_outbuf_ce0();
    void thread_col_outbuf_we0();
    void thread_exitcond_flatten1_fu_515_p2();
    void thread_exitcond_flatten_fu_418_p2();
    void thread_grp_dct_1d_fu_363_ap_start();
    void thread_grp_dct_1d_fu_363_src1_q0();
    void thread_grp_dct_1d_fu_363_src2_q0();
    void thread_grp_dct_1d_fu_363_src3_q0();
    void thread_grp_dct_1d_fu_363_src4_q0();
    void thread_grp_dct_1d_fu_363_src5_q0();
    void thread_grp_dct_1d_fu_363_src6_q0();
    void thread_grp_dct_1d_fu_363_src7_q0();
    void thread_grp_dct_1d_fu_363_src_q0();
    void thread_grp_dct_1d_fu_363_tmp_6();
    void thread_grp_dct_1d_fu_363_tmp_61();
    void thread_i_1_mid2_fu_442_p3();
    void thread_i_1_phi_fu_311_p4();
    void thread_i_3_mid2_fu_539_p3();
    void thread_i_3_phi_fu_356_p4();
    void thread_i_4_fu_412_p2();
    void thread_i_5_fu_509_p2();
    void thread_i_6_fu_487_p2();
    void thread_i_7_fu_580_p2();
    void thread_in_block_0_address0();
    void thread_in_block_0_ce0();
    void thread_in_block_1_address0();
    void thread_in_block_1_ce0();
    void thread_in_block_2_address0();
    void thread_in_block_2_ce0();
    void thread_in_block_3_address0();
    void thread_in_block_3_ce0();
    void thread_in_block_4_address0();
    void thread_in_block_4_ce0();
    void thread_in_block_5_address0();
    void thread_in_block_5_ce0();
    void thread_in_block_6_address0();
    void thread_in_block_6_ce0();
    void thread_in_block_7_address0();
    void thread_in_block_7_ce0();
    void thread_indvar_flatten_next1_fu_521_p2();
    void thread_indvar_flatten_next_fu_424_p2();
    void thread_j_1_phi_fu_345_p4();
    void thread_j_2_fu_430_p2();
    void thread_j_3_fu_527_p2();
    void thread_j_phi_fu_300_p4();
    void thread_out_block_address0();
    void thread_out_block_ce0();
    void thread_out_block_d0();
    void thread_out_block_we0();
    void thread_row_outbuf_address0();
    void thread_row_outbuf_ce0();
    void thread_row_outbuf_we0();
    void thread_tmp_10_cast_fu_596_p1();
    void thread_tmp_10_fu_558_p3();
    void thread_tmp_11_cast_fu_605_p1();
    void thread_tmp_11_fu_569_p2();
    void thread_tmp_13_cast_fu_565_p1();
    void thread_tmp_14_cast_fu_575_p1();
    void thread_tmp_1_fu_436_p2();
    void thread_tmp_2_fu_465_p3();
    void thread_tmp_3_cast_fu_472_p1();
    void thread_tmp_3_fu_458_p1();
    void thread_tmp_3_mid2_cast_fu_462_p1();
    void thread_tmp_3_mid2_fu_492_p1();
    void thread_tmp_3_mid2_v_fu_450_p3();
    void thread_tmp_4_fu_503_p2();
    void thread_tmp_5_fu_533_p2();
    void thread_tmp_7_cast_fu_482_p1();
    void thread_tmp_7_fu_476_p2();
    void thread_tmp_8_fu_585_p3();
    void thread_tmp_9_cast_fu_592_p1();
    void thread_tmp_9_fu_599_p2();
    void thread_tmp_9_mid2_cast_fu_555_p1();
    void thread_tmp_9_mid2_v_fu_547_p3();
    void thread_tmp_fu_406_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
