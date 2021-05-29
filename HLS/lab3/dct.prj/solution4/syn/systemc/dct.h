// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_2d.h"
#include "read_data.h"
#include "dct_2d_col_inbuf_0.h"
#include "dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_2d_col_inbuf_0* buf_2d_in_0_U;
    dct_2d_col_inbuf_0* buf_2d_in_1_U;
    dct_2d_col_inbuf_0* buf_2d_in_2_U;
    dct_2d_col_inbuf_0* buf_2d_in_3_U;
    dct_2d_col_inbuf_0* buf_2d_in_4_U;
    dct_2d_col_inbuf_0* buf_2d_in_5_U;
    dct_2d_col_inbuf_0* buf_2d_in_6_U;
    dct_2d_col_inbuf_0* buf_2d_in_7_U;
    dct_2d_row_outbuf* buf_2d_out_U;
    dct_2d* grp_dct_2d_fu_169;
    read_data* grp_read_data_fu_198;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_136;
    sc_signal< sc_lv<4> > r_i_reg_147;
    sc_signal< sc_lv<4> > c_i_reg_158;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_220_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_314;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_314;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_226_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > c_i_mid2_fu_244_p3;
    sc_signal< sc_lv<4> > c_i_mid2_reg_323;
    sc_signal< sc_lv<4> > tmp_i_mid2_v_fu_252_p3;
    sc_signal< sc_lv<4> > tmp_i_mid2_v_reg_330;
    sc_signal< sc_lv<3> > tmp_4_fu_260_p1;
    sc_signal< sc_lv<3> > tmp_4_reg_336;
    sc_signal< sc_lv<6> > tmp_4_i_fu_299_p2;
    sc_signal< sc_lv<6> > tmp_4_i_reg_346;
    sc_signal< sc_lv<4> > c_fu_305_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_dct_2d_fu_169_ap_done;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<3> > buf_2d_in_0_address0;
    sc_signal< sc_logic > buf_2d_in_0_ce0;
    sc_signal< sc_logic > buf_2d_in_0_we0;
    sc_signal< sc_lv<16> > buf_2d_in_0_q0;
    sc_signal< sc_lv<3> > buf_2d_in_1_address0;
    sc_signal< sc_logic > buf_2d_in_1_ce0;
    sc_signal< sc_logic > buf_2d_in_1_we0;
    sc_signal< sc_lv<16> > buf_2d_in_1_q0;
    sc_signal< sc_lv<3> > buf_2d_in_2_address0;
    sc_signal< sc_logic > buf_2d_in_2_ce0;
    sc_signal< sc_logic > buf_2d_in_2_we0;
    sc_signal< sc_lv<16> > buf_2d_in_2_q0;
    sc_signal< sc_lv<3> > buf_2d_in_3_address0;
    sc_signal< sc_logic > buf_2d_in_3_ce0;
    sc_signal< sc_logic > buf_2d_in_3_we0;
    sc_signal< sc_lv<16> > buf_2d_in_3_q0;
    sc_signal< sc_lv<3> > buf_2d_in_4_address0;
    sc_signal< sc_logic > buf_2d_in_4_ce0;
    sc_signal< sc_logic > buf_2d_in_4_we0;
    sc_signal< sc_lv<16> > buf_2d_in_4_q0;
    sc_signal< sc_lv<3> > buf_2d_in_5_address0;
    sc_signal< sc_logic > buf_2d_in_5_ce0;
    sc_signal< sc_logic > buf_2d_in_5_we0;
    sc_signal< sc_lv<16> > buf_2d_in_5_q0;
    sc_signal< sc_lv<3> > buf_2d_in_6_address0;
    sc_signal< sc_logic > buf_2d_in_6_ce0;
    sc_signal< sc_logic > buf_2d_in_6_we0;
    sc_signal< sc_lv<16> > buf_2d_in_6_q0;
    sc_signal< sc_lv<3> > buf_2d_in_7_address0;
    sc_signal< sc_logic > buf_2d_in_7_ce0;
    sc_signal< sc_logic > buf_2d_in_7_we0;
    sc_signal< sc_lv<16> > buf_2d_in_7_q0;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_ap_start;
    sc_signal< sc_logic > grp_dct_2d_fu_169_ap_idle;
    sc_signal< sc_logic > grp_dct_2d_fu_169_ap_ready;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_0_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_0_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_1_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_1_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_2_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_2_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_3_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_3_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_4_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_4_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_5_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_5_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_6_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_6_ce0;
    sc_signal< sc_lv<3> > grp_dct_2d_fu_169_in_block_7_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_in_block_7_ce0;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_169_out_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_out_block_ce0;
    sc_signal< sc_logic > grp_dct_2d_fu_169_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_2d_fu_169_out_block_d0;
    sc_signal< sc_logic > grp_read_data_fu_198_ap_start;
    sc_signal< sc_logic > grp_read_data_fu_198_ap_done;
    sc_signal< sc_logic > grp_read_data_fu_198_ap_idle;
    sc_signal< sc_logic > grp_read_data_fu_198_ap_ready;
    sc_signal< sc_lv<6> > grp_read_data_fu_198_input_r_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_input_r_ce0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_0_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_0_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_0_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_0_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_1_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_1_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_1_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_1_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_2_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_2_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_2_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_2_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_3_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_3_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_3_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_3_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_4_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_4_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_4_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_4_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_5_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_5_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_5_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_5_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_6_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_6_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_6_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_6_d0;
    sc_signal< sc_lv<3> > grp_read_data_fu_198_buf_7_address0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_7_ce0;
    sc_signal< sc_logic > grp_read_data_fu_198_buf_7_we0;
    sc_signal< sc_lv<16> > grp_read_data_fu_198_buf_7_d0;
    sc_signal< sc_lv<4> > r_i_phi_fu_151_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<4> > c_i_phi_fu_162_p4;
    sc_signal< sc_logic > ap_reg_grp_dct_2d_fu_169_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_reg_grp_read_data_fu_198_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<64> > tmp_21_cast_fu_294_p1;
    sc_signal< sc_lv<64> > tmp_5_i_fu_310_p1;
    sc_signal< sc_lv<1> > exitcond_i3_fu_238_p2;
    sc_signal< sc_lv<4> > r_fu_232_p2;
    sc_signal< sc_lv<7> > tmp_fu_264_p3;
    sc_signal< sc_lv<8> > tmp_19_cast_fu_271_p1;
    sc_signal< sc_lv<8> > tmp_3_i_cast_fu_285_p1;
    sc_signal< sc_lv<8> > tmp_s_fu_288_p2;
    sc_signal< sc_lv<6> > c_i_cast2_fu_282_p1;
    sc_signal< sc_lv<6> > tmp_1_i_mid2_fu_275_p3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_state5_pp0_stage0_iter0();
    void thread_ap_block_state6_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state5();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_buf_2d_in_0_address0();
    void thread_buf_2d_in_0_ce0();
    void thread_buf_2d_in_0_we0();
    void thread_buf_2d_in_1_address0();
    void thread_buf_2d_in_1_ce0();
    void thread_buf_2d_in_1_we0();
    void thread_buf_2d_in_2_address0();
    void thread_buf_2d_in_2_ce0();
    void thread_buf_2d_in_2_we0();
    void thread_buf_2d_in_3_address0();
    void thread_buf_2d_in_3_ce0();
    void thread_buf_2d_in_3_we0();
    void thread_buf_2d_in_4_address0();
    void thread_buf_2d_in_4_ce0();
    void thread_buf_2d_in_4_we0();
    void thread_buf_2d_in_5_address0();
    void thread_buf_2d_in_5_ce0();
    void thread_buf_2d_in_5_we0();
    void thread_buf_2d_in_6_address0();
    void thread_buf_2d_in_6_ce0();
    void thread_buf_2d_in_6_we0();
    void thread_buf_2d_in_7_address0();
    void thread_buf_2d_in_7_ce0();
    void thread_buf_2d_in_7_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_we0();
    void thread_c_fu_305_p2();
    void thread_c_i_cast2_fu_282_p1();
    void thread_c_i_mid2_fu_244_p3();
    void thread_c_i_phi_fu_162_p4();
    void thread_exitcond_flatten_fu_220_p2();
    void thread_exitcond_i3_fu_238_p2();
    void thread_grp_dct_2d_fu_169_ap_start();
    void thread_grp_read_data_fu_198_ap_start();
    void thread_indvar_flatten_next_fu_226_p2();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_fu_232_p2();
    void thread_r_i_phi_fu_151_p4();
    void thread_tmp_19_cast_fu_271_p1();
    void thread_tmp_1_i_mid2_fu_275_p3();
    void thread_tmp_21_cast_fu_294_p1();
    void thread_tmp_3_i_cast_fu_285_p1();
    void thread_tmp_4_fu_260_p1();
    void thread_tmp_4_i_fu_299_p2();
    void thread_tmp_5_i_fu_310_p1();
    void thread_tmp_fu_264_p3();
    void thread_tmp_i_mid2_v_fu_252_p3();
    void thread_tmp_s_fu_288_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif