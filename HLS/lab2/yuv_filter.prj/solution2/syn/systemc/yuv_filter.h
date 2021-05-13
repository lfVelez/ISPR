// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _yuv_filter_HH_
#define _yuv_filter_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "rgb2yuv.h"
#include "yuv_scale.h"
#include "yuv2rgb.h"
#include "yuv_filter_p_yuv_mb6.h"

namespace ap_rtl {

struct yuv_filter : public sc_module {
    // Port declarations 36
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<22> > in_channels_ch1_address0;
    sc_out< sc_logic > in_channels_ch1_ce0;
    sc_in< sc_lv<8> > in_channels_ch1_q0;
    sc_out< sc_lv<22> > in_channels_ch2_address0;
    sc_out< sc_logic > in_channels_ch2_ce0;
    sc_in< sc_lv<8> > in_channels_ch2_q0;
    sc_out< sc_lv<22> > in_channels_ch3_address0;
    sc_out< sc_logic > in_channels_ch3_ce0;
    sc_in< sc_lv<8> > in_channels_ch3_q0;
    sc_in< sc_lv<16> > in_width;
    sc_in< sc_lv<16> > in_height;
    sc_out< sc_lv<22> > out_channels_ch1_address0;
    sc_out< sc_logic > out_channels_ch1_ce0;
    sc_out< sc_logic > out_channels_ch1_we0;
    sc_out< sc_lv<8> > out_channels_ch1_d0;
    sc_out< sc_lv<22> > out_channels_ch2_address0;
    sc_out< sc_logic > out_channels_ch2_ce0;
    sc_out< sc_logic > out_channels_ch2_we0;
    sc_out< sc_lv<8> > out_channels_ch2_d0;
    sc_out< sc_lv<22> > out_channels_ch3_address0;
    sc_out< sc_logic > out_channels_ch3_ce0;
    sc_out< sc_logic > out_channels_ch3_we0;
    sc_out< sc_lv<8> > out_channels_ch3_d0;
    sc_out< sc_lv<16> > out_width;
    sc_out< sc_logic > out_width_ap_vld;
    sc_out< sc_lv<16> > out_height;
    sc_out< sc_logic > out_height_ap_vld;
    sc_in< sc_lv<8> > Y_scale;
    sc_in< sc_lv<8> > U_scale;
    sc_in< sc_lv<8> > V_scale;


    // Module declarations
    yuv_filter(sc_module_name name);
    SC_HAS_PROCESS(yuv_filter);

    ~yuv_filter();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    yuv_filter_p_yuv_mb6* p_yuv_channels_ch1_U;
    yuv_filter_p_yuv_mb6* p_yuv_channels_ch2_U;
    yuv_filter_p_yuv_mb6* p_yuv_channels_ch3_U;
    yuv_filter_p_yuv_mb6* p_scale_channels_ch1_U;
    yuv_filter_p_yuv_mb6* p_scale_channels_ch2_U;
    yuv_filter_p_yuv_mb6* p_scale_channels_ch3_U;
    rgb2yuv* grp_rgb2yuv_fu_114;
    yuv_scale* grp_yuv_scale_fu_134;
    yuv2rgb* grp_yuv2rgb_fu_152;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > p_yuv_width_reg_203;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_ap_done;
    sc_signal< sc_lv<16> > p_yuv_height_reg_208;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<16> > p_scale_width_reg_228;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_ap_done;
    sc_signal< sc_lv<16> > p_scale_height_reg_233;
    sc_signal< sc_lv<22> > p_yuv_channels_ch1_address0;
    sc_signal< sc_logic > p_yuv_channels_ch1_ce0;
    sc_signal< sc_logic > p_yuv_channels_ch1_we0;
    sc_signal< sc_lv<8> > p_yuv_channels_ch1_q0;
    sc_signal< sc_lv<22> > p_yuv_channels_ch2_address0;
    sc_signal< sc_logic > p_yuv_channels_ch2_ce0;
    sc_signal< sc_logic > p_yuv_channels_ch2_we0;
    sc_signal< sc_lv<8> > p_yuv_channels_ch2_q0;
    sc_signal< sc_lv<22> > p_yuv_channels_ch3_address0;
    sc_signal< sc_logic > p_yuv_channels_ch3_ce0;
    sc_signal< sc_logic > p_yuv_channels_ch3_we0;
    sc_signal< sc_lv<8> > p_yuv_channels_ch3_q0;
    sc_signal< sc_lv<22> > p_scale_channels_ch1_address0;
    sc_signal< sc_logic > p_scale_channels_ch1_ce0;
    sc_signal< sc_logic > p_scale_channels_ch1_we0;
    sc_signal< sc_lv<8> > p_scale_channels_ch1_q0;
    sc_signal< sc_lv<22> > p_scale_channels_ch2_address0;
    sc_signal< sc_logic > p_scale_channels_ch2_ce0;
    sc_signal< sc_logic > p_scale_channels_ch2_we0;
    sc_signal< sc_lv<8> > p_scale_channels_ch2_q0;
    sc_signal< sc_lv<22> > p_scale_channels_ch3_address0;
    sc_signal< sc_logic > p_scale_channels_ch3_ce0;
    sc_signal< sc_logic > p_scale_channels_ch3_we0;
    sc_signal< sc_lv<8> > p_scale_channels_ch3_q0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_ap_start;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_ap_idle;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_ap_ready;
    sc_signal< sc_lv<22> > grp_rgb2yuv_fu_114_in_channels_ch1_address0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_in_channels_ch1_ce0;
    sc_signal< sc_lv<22> > grp_rgb2yuv_fu_114_in_channels_ch2_address0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_in_channels_ch2_ce0;
    sc_signal< sc_lv<22> > grp_rgb2yuv_fu_114_in_channels_ch3_address0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_in_channels_ch3_ce0;
    sc_signal< sc_lv<22> > grp_rgb2yuv_fu_114_out_channels_ch1_address0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_out_channels_ch1_ce0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_out_channels_ch1_we0;
    sc_signal< sc_lv<8> > grp_rgb2yuv_fu_114_out_channels_ch1_d0;
    sc_signal< sc_lv<22> > grp_rgb2yuv_fu_114_out_channels_ch2_address0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_out_channels_ch2_ce0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_out_channels_ch2_we0;
    sc_signal< sc_lv<8> > grp_rgb2yuv_fu_114_out_channels_ch2_d0;
    sc_signal< sc_lv<22> > grp_rgb2yuv_fu_114_out_channels_ch3_address0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_out_channels_ch3_ce0;
    sc_signal< sc_logic > grp_rgb2yuv_fu_114_out_channels_ch3_we0;
    sc_signal< sc_lv<8> > grp_rgb2yuv_fu_114_out_channels_ch3_d0;
    sc_signal< sc_lv<16> > grp_rgb2yuv_fu_114_ap_return_0;
    sc_signal< sc_lv<16> > grp_rgb2yuv_fu_114_ap_return_1;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_ap_start;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_ap_idle;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_ap_ready;
    sc_signal< sc_lv<22> > grp_yuv_scale_fu_134_in_channels_ch1_address0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_in_channels_ch1_ce0;
    sc_signal< sc_lv<22> > grp_yuv_scale_fu_134_in_channels_ch2_address0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_in_channels_ch2_ce0;
    sc_signal< sc_lv<22> > grp_yuv_scale_fu_134_in_channels_ch3_address0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_in_channels_ch3_ce0;
    sc_signal< sc_lv<22> > grp_yuv_scale_fu_134_out_channels_ch1_address0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_out_channels_ch1_ce0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_out_channels_ch1_we0;
    sc_signal< sc_lv<8> > grp_yuv_scale_fu_134_out_channels_ch1_d0;
    sc_signal< sc_lv<22> > grp_yuv_scale_fu_134_out_channels_ch2_address0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_out_channels_ch2_ce0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_out_channels_ch2_we0;
    sc_signal< sc_lv<8> > grp_yuv_scale_fu_134_out_channels_ch2_d0;
    sc_signal< sc_lv<22> > grp_yuv_scale_fu_134_out_channels_ch3_address0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_out_channels_ch3_ce0;
    sc_signal< sc_logic > grp_yuv_scale_fu_134_out_channels_ch3_we0;
    sc_signal< sc_lv<8> > grp_yuv_scale_fu_134_out_channels_ch3_d0;
    sc_signal< sc_lv<16> > grp_yuv_scale_fu_134_ap_return_0;
    sc_signal< sc_lv<16> > grp_yuv_scale_fu_134_ap_return_1;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_ap_start;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_ap_done;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_ap_idle;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_ap_ready;
    sc_signal< sc_lv<22> > grp_yuv2rgb_fu_152_in_channels_ch1_address0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_in_channels_ch1_ce0;
    sc_signal< sc_lv<22> > grp_yuv2rgb_fu_152_in_channels_ch2_address0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_in_channels_ch2_ce0;
    sc_signal< sc_lv<22> > grp_yuv2rgb_fu_152_in_channels_ch3_address0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_in_channels_ch3_ce0;
    sc_signal< sc_lv<22> > grp_yuv2rgb_fu_152_out_channels_ch1_address0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_out_channels_ch1_ce0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_out_channels_ch1_we0;
    sc_signal< sc_lv<8> > grp_yuv2rgb_fu_152_out_channels_ch1_d0;
    sc_signal< sc_lv<22> > grp_yuv2rgb_fu_152_out_channels_ch2_address0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_out_channels_ch2_ce0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_out_channels_ch2_we0;
    sc_signal< sc_lv<8> > grp_yuv2rgb_fu_152_out_channels_ch2_d0;
    sc_signal< sc_lv<22> > grp_yuv2rgb_fu_152_out_channels_ch3_address0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_out_channels_ch3_ce0;
    sc_signal< sc_logic > grp_yuv2rgb_fu_152_out_channels_ch3_we0;
    sc_signal< sc_lv<8> > grp_yuv2rgb_fu_152_out_channels_ch3_d0;
    sc_signal< sc_lv<16> > grp_yuv2rgb_fu_152_ap_return_0;
    sc_signal< sc_lv<16> > grp_yuv2rgb_fu_152_ap_return_1;
    sc_signal< sc_logic > ap_reg_grp_rgb2yuv_fu_114_ap_start;
    sc_signal< sc_logic > ap_reg_grp_yuv_scale_fu_134_ap_start;
    sc_signal< sc_logic > ap_reg_grp_yuv2rgb_fu_152_ap_start;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_rgb2yuv_fu_114_ap_start();
    void thread_grp_yuv2rgb_fu_152_ap_start();
    void thread_grp_yuv_scale_fu_134_ap_start();
    void thread_in_channels_ch1_address0();
    void thread_in_channels_ch1_ce0();
    void thread_in_channels_ch2_address0();
    void thread_in_channels_ch2_ce0();
    void thread_in_channels_ch3_address0();
    void thread_in_channels_ch3_ce0();
    void thread_out_channels_ch1_address0();
    void thread_out_channels_ch1_ce0();
    void thread_out_channels_ch1_d0();
    void thread_out_channels_ch1_we0();
    void thread_out_channels_ch2_address0();
    void thread_out_channels_ch2_ce0();
    void thread_out_channels_ch2_d0();
    void thread_out_channels_ch2_we0();
    void thread_out_channels_ch3_address0();
    void thread_out_channels_ch3_ce0();
    void thread_out_channels_ch3_d0();
    void thread_out_channels_ch3_we0();
    void thread_out_height();
    void thread_out_height_ap_vld();
    void thread_out_width();
    void thread_out_width_ap_vld();
    void thread_p_scale_channels_ch1_address0();
    void thread_p_scale_channels_ch1_ce0();
    void thread_p_scale_channels_ch1_we0();
    void thread_p_scale_channels_ch2_address0();
    void thread_p_scale_channels_ch2_ce0();
    void thread_p_scale_channels_ch2_we0();
    void thread_p_scale_channels_ch3_address0();
    void thread_p_scale_channels_ch3_ce0();
    void thread_p_scale_channels_ch3_we0();
    void thread_p_yuv_channels_ch1_address0();
    void thread_p_yuv_channels_ch1_ce0();
    void thread_p_yuv_channels_ch1_we0();
    void thread_p_yuv_channels_ch2_address0();
    void thread_p_yuv_channels_ch2_ce0();
    void thread_p_yuv_channels_ch2_we0();
    void thread_p_yuv_channels_ch3_address0();
    void thread_p_yuv_channels_ch3_ce0();
    void thread_p_yuv_channels_ch3_we0();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
