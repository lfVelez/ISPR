// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_Xpose_Col_Outer_HH_
#define _Loop_Xpose_Col_Outer_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_Xpose_Col_Outer : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > col_outbuf_i_address0;
    sc_out< sc_logic > col_outbuf_i_ce0;
    sc_in< sc_lv<16> > col_outbuf_i_q0;
    sc_out< sc_lv<6> > buf_2d_out_address0;
    sc_out< sc_logic > buf_2d_out_ce0;
    sc_out< sc_logic > buf_2d_out_we0;
    sc_out< sc_lv<16> > buf_2d_out_d0;


    // Module declarations
    Loop_Xpose_Col_Outer(sc_module_name name);
    SC_HAS_PROCESS(Loop_Xpose_Col_Outer);

    ~Loop_Xpose_Col_Outer();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_71;
    sc_signal< sc_lv<4> > j_1_i_reg_82;
    sc_signal< sc_lv<4> > i_3_i_reg_93;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_104_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_199;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_199;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_110_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > i_3_i_mid2_fu_128_p3;
    sc_signal< sc_lv<4> > i_3_i_mid2_reg_208;
    sc_signal< sc_lv<4> > ap_reg_pp0_iter1_i_3_i_mid2_reg_208;
    sc_signal< sc_lv<4> > tmp_7_mid2_v_fu_136_p3;
    sc_signal< sc_lv<4> > tmp_7_mid2_v_reg_215;
    sc_signal< sc_lv<4> > ap_reg_pp0_iter1_tmp_7_mid2_v_reg_215;
    sc_signal< sc_lv<4> > i_fu_169_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<4> > j_1_i_phi_fu_86_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<4> > i_3_i_phi_fu_97_p4;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_164_p1;
    sc_signal< sc_lv<64> > tmp_14_cast_fu_194_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_122_p2;
    sc_signal< sc_lv<4> > j_fu_116_p2;
    sc_signal< sc_lv<7> > tmp_1_fu_147_p3;
    sc_signal< sc_lv<8> > tmp_7_mid2_cast_fu_144_p1;
    sc_signal< sc_lv<8> > tmp_12_cast_fu_154_p1;
    sc_signal< sc_lv<8> > tmp_2_fu_158_p2;
    sc_signal< sc_lv<7> > tmp_fu_174_p3;
    sc_signal< sc_lv<8> > tmp_5_cast_fu_185_p1;
    sc_signal< sc_lv<8> > tmp_10_cast_fu_181_p1;
    sc_signal< sc_lv<8> > tmp_4_fu_188_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_d0();
    void thread_buf_2d_out_we0();
    void thread_col_outbuf_i_address0();
    void thread_col_outbuf_i_ce0();
    void thread_exitcond_flatten_fu_104_p2();
    void thread_i_3_i_mid2_fu_128_p3();
    void thread_i_3_i_phi_fu_97_p4();
    void thread_i_fu_169_p2();
    void thread_indvar_flatten_next_fu_110_p2();
    void thread_j_1_i_phi_fu_86_p4();
    void thread_j_fu_116_p2();
    void thread_tmp_10_cast_fu_181_p1();
    void thread_tmp_12_cast_fu_154_p1();
    void thread_tmp_13_cast_fu_164_p1();
    void thread_tmp_14_cast_fu_194_p1();
    void thread_tmp_1_fu_147_p3();
    void thread_tmp_2_fu_158_p2();
    void thread_tmp_4_fu_188_p2();
    void thread_tmp_5_cast_fu_185_p1();
    void thread_tmp_7_mid2_cast_fu_144_p1();
    void thread_tmp_7_mid2_v_fu_136_p3();
    void thread_tmp_fu_174_p3();
    void thread_tmp_s_fu_122_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
