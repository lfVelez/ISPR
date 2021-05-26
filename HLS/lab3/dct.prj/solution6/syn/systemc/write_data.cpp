// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "write_data.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic write_data::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic write_data::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> write_data::ap_ST_fsm_state1 = "1";
const sc_lv<3> write_data::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> write_data::ap_ST_fsm_state5 = "100";
const sc_lv<32> write_data::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool write_data::ap_const_boolean_1 = true;
const sc_lv<32> write_data::ap_const_lv32_1 = "1";
const bool write_data::ap_const_boolean_0 = false;
const sc_lv<1> write_data::ap_const_lv1_0 = "0";
const sc_lv<1> write_data::ap_const_lv1_1 = "1";
const sc_lv<7> write_data::ap_const_lv7_0 = "0000000";
const sc_lv<4> write_data::ap_const_lv4_0 = "0000";
const sc_lv<7> write_data::ap_const_lv7_40 = "1000000";
const sc_lv<7> write_data::ap_const_lv7_1 = "1";
const sc_lv<4> write_data::ap_const_lv4_1 = "1";
const sc_lv<4> write_data::ap_const_lv4_8 = "1000";
const sc_lv<3> write_data::ap_const_lv3_0 = "000";
const sc_lv<32> write_data::ap_const_lv32_2 = "10";

write_data::write_data(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00000000);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011001);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011011);

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( exitcond_flatten_fu_106_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_buf_r_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( tmp_7_cast_fu_180_p1 );

    SC_METHOD(thread_buf_r_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_c_1_fu_191_p2);
    sensitive << ( c_mid2_reg_209 );

    SC_METHOD(thread_c_cast6_fu_168_p1);
    sensitive << ( c_mid2_reg_209 );

    SC_METHOD(thread_c_mid2_fu_130_p3);
    sensitive << ( c_phi_fu_99_p4 );
    sensitive << ( exitcond2_fu_124_p2 );

    SC_METHOD(thread_c_phi_fu_99_p4);
    sensitive << ( c_reg_95 );
    sensitive << ( exitcond_flatten_reg_200 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( c_1_fu_191_p2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_exitcond2_fu_124_p2);
    sensitive << ( exitcond_flatten_fu_106_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( c_phi_fu_99_p4 );

    SC_METHOD(thread_exitcond_flatten_fu_106_p2);
    sensitive << ( indvar_flatten_reg_73 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_indvar_flatten_next_fu_112_p2);
    sensitive << ( indvar_flatten_reg_73 );

    SC_METHOD(thread_output_r_address0);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( tmp_5_fu_196_p1 );

    SC_METHOD(thread_output_r_ce0);
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_output_r_d0);
    sensitive << ( buf_r_q0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_output_r_we0);
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_flatten_reg_200 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_r_1_fu_118_p2);
    sensitive << ( r_phi_fu_88_p4 );

    SC_METHOD(thread_r_phi_fu_88_p4);
    sensitive << ( r_reg_84 );
    sensitive << ( exitcond_flatten_reg_200 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( tmp_mid2_v_reg_216 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_tmp_1_cast_fu_157_p1);
    sensitive << ( tmp_fu_150_p3 );

    SC_METHOD(thread_tmp_1_fu_146_p1);
    sensitive << ( tmp_mid2_v_fu_138_p3 );

    SC_METHOD(thread_tmp_1_mid2_fu_161_p3);
    sensitive << ( tmp_1_reg_222 );

    SC_METHOD(thread_tmp_3_cast_fu_171_p1);
    sensitive << ( c_mid2_reg_209 );

    SC_METHOD(thread_tmp_4_fu_185_p2);
    sensitive << ( c_cast6_fu_168_p1 );
    sensitive << ( tmp_1_mid2_fu_161_p3 );

    SC_METHOD(thread_tmp_5_fu_196_p1);
    sensitive << ( tmp_4_reg_232 );

    SC_METHOD(thread_tmp_7_cast_fu_180_p1);
    sensitive << ( tmp_7_fu_174_p2 );

    SC_METHOD(thread_tmp_7_fu_174_p2);
    sensitive << ( tmp_1_cast_fu_157_p1 );
    sensitive << ( tmp_3_cast_fu_171_p1 );

    SC_METHOD(thread_tmp_fu_150_p3);
    sensitive << ( tmp_mid2_v_reg_216 );

    SC_METHOD(thread_tmp_mid2_v_fu_138_p3);
    sensitive << ( r_phi_fu_88_p4 );
    sensitive << ( exitcond2_fu_124_p2 );
    sensitive << ( r_1_fu_118_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( exitcond_flatten_fu_106_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00011011 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "write_data_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, buf_r_address0, "(port)buf_r_address0");
    sc_trace(mVcdFile, buf_r_ce0, "(port)buf_r_ce0");
    sc_trace(mVcdFile, buf_r_q0, "(port)buf_r_q0");
    sc_trace(mVcdFile, output_r_address0, "(port)output_r_address0");
    sc_trace(mVcdFile, output_r_ce0, "(port)output_r_ce0");
    sc_trace(mVcdFile, output_r_we0, "(port)output_r_we0");
    sc_trace(mVcdFile, output_r_d0, "(port)output_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, indvar_flatten_reg_73, "indvar_flatten_reg_73");
    sc_trace(mVcdFile, r_reg_84, "r_reg_84");
    sc_trace(mVcdFile, c_reg_95, "c_reg_95");
    sc_trace(mVcdFile, exitcond_flatten_fu_106_p2, "exitcond_flatten_fu_106_p2");
    sc_trace(mVcdFile, exitcond_flatten_reg_200, "exitcond_flatten_reg_200");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011001, "ap_block_pp0_stage0_flag00011001");
    sc_trace(mVcdFile, ap_reg_pp0_iter1_exitcond_flatten_reg_200, "ap_reg_pp0_iter1_exitcond_flatten_reg_200");
    sc_trace(mVcdFile, indvar_flatten_next_fu_112_p2, "indvar_flatten_next_fu_112_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, c_mid2_fu_130_p3, "c_mid2_fu_130_p3");
    sc_trace(mVcdFile, c_mid2_reg_209, "c_mid2_reg_209");
    sc_trace(mVcdFile, tmp_mid2_v_fu_138_p3, "tmp_mid2_v_fu_138_p3");
    sc_trace(mVcdFile, tmp_mid2_v_reg_216, "tmp_mid2_v_reg_216");
    sc_trace(mVcdFile, tmp_1_fu_146_p1, "tmp_1_fu_146_p1");
    sc_trace(mVcdFile, tmp_1_reg_222, "tmp_1_reg_222");
    sc_trace(mVcdFile, tmp_4_fu_185_p2, "tmp_4_fu_185_p2");
    sc_trace(mVcdFile, tmp_4_reg_232, "tmp_4_reg_232");
    sc_trace(mVcdFile, c_1_fu_191_p2, "c_1_fu_191_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011011, "ap_block_pp0_stage0_flag00011011");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, r_phi_fu_88_p4, "r_phi_fu_88_p4");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00000000, "ap_block_pp0_stage0_flag00000000");
    sc_trace(mVcdFile, c_phi_fu_99_p4, "c_phi_fu_99_p4");
    sc_trace(mVcdFile, tmp_7_cast_fu_180_p1, "tmp_7_cast_fu_180_p1");
    sc_trace(mVcdFile, tmp_5_fu_196_p1, "tmp_5_fu_196_p1");
    sc_trace(mVcdFile, exitcond2_fu_124_p2, "exitcond2_fu_124_p2");
    sc_trace(mVcdFile, r_1_fu_118_p2, "r_1_fu_118_p2");
    sc_trace(mVcdFile, tmp_fu_150_p3, "tmp_fu_150_p3");
    sc_trace(mVcdFile, tmp_1_cast_fu_157_p1, "tmp_1_cast_fu_157_p1");
    sc_trace(mVcdFile, tmp_3_cast_fu_171_p1, "tmp_3_cast_fu_171_p1");
    sc_trace(mVcdFile, tmp_7_fu_174_p2, "tmp_7_fu_174_p2");
    sc_trace(mVcdFile, c_cast6_fu_168_p1, "c_cast6_fu_168_p1");
    sc_trace(mVcdFile, tmp_1_mid2_fu_161_p3, "tmp_1_mid2_fu_161_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

write_data::~write_data() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void write_data::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_200.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        c_reg_95 = c_1_fu_191_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        c_reg_95 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_106_p2.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_73 = indvar_flatten_next_fu_112_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        indvar_flatten_reg_73 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_200.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        r_reg_84 = tmp_mid2_v_reg_216.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        r_reg_84 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        ap_reg_pp0_iter1_exitcond_flatten_reg_200 = exitcond_flatten_reg_200.read();
        exitcond_flatten_reg_200 = exitcond_flatten_fu_106_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_flatten_fu_106_p2.read(), ap_const_lv1_0))) {
        c_mid2_reg_209 = c_mid2_fu_130_p3.read();
        tmp_1_reg_222 = tmp_1_fu_146_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_flatten_reg_200.read(), ap_const_lv1_0))) {
        tmp_4_reg_232 = tmp_4_fu_185_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_106_p2.read(), ap_const_lv1_0))) {
        tmp_mid2_v_reg_216 = tmp_mid2_v_fu_138_p3.read();
    }
}

void write_data::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void write_data::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void write_data::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void write_data::thread_ap_block_pp0_stage0_flag00000000() {
    ap_block_pp0_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void write_data::thread_ap_block_pp0_stage0_flag00011001() {
    ap_block_pp0_stage0_flag00011001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void write_data::thread_ap_block_pp0_stage0_flag00011011() {
    ap_block_pp0_stage0_flag00011011 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void write_data::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void write_data::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void write_data::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void write_data::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void write_data::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(exitcond_flatten_fu_106_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void write_data::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void write_data::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void write_data::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void write_data::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void write_data::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void write_data::thread_buf_r_address0() {
    buf_r_address0 =  (sc_lv<6>) (tmp_7_cast_fu_180_p1.read());
}

void write_data::thread_buf_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        buf_r_ce0 = ap_const_logic_1;
    } else {
        buf_r_ce0 = ap_const_logic_0;
    }
}

void write_data::thread_c_1_fu_191_p2() {
    c_1_fu_191_p2 = (!ap_const_lv4_1.is_01() || !c_mid2_reg_209.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(c_mid2_reg_209.read()));
}

void write_data::thread_c_cast6_fu_168_p1() {
    c_cast6_fu_168_p1 = esl_zext<6,4>(c_mid2_reg_209.read());
}

void write_data::thread_c_mid2_fu_130_p3() {
    c_mid2_fu_130_p3 = (!exitcond2_fu_124_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond2_fu_124_p2.read()[0].to_bool())? ap_const_lv4_0: c_phi_fu_99_p4.read());
}

void write_data::thread_c_phi_fu_99_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_200.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        c_phi_fu_99_p4 = c_1_fu_191_p2.read();
    } else {
        c_phi_fu_99_p4 = c_reg_95.read();
    }
}

void write_data::thread_exitcond2_fu_124_p2() {
    exitcond2_fu_124_p2 = (!c_phi_fu_99_p4.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(c_phi_fu_99_p4.read() == ap_const_lv4_8);
}

void write_data::thread_exitcond_flatten_fu_106_p2() {
    exitcond_flatten_fu_106_p2 = (!indvar_flatten_reg_73.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_73.read() == ap_const_lv7_40);
}

void write_data::thread_indvar_flatten_next_fu_112_p2() {
    indvar_flatten_next_fu_112_p2 = (!indvar_flatten_reg_73.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(indvar_flatten_reg_73.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void write_data::thread_output_r_address0() {
    output_r_address0 =  (sc_lv<6>) (tmp_5_fu_196_p1.read());
}

void write_data::thread_output_r_ce0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        output_r_ce0 = ap_const_logic_1;
    } else {
        output_r_ce0 = ap_const_logic_0;
    }
}

void write_data::thread_output_r_d0() {
    output_r_d0 = buf_r_q0.read();
}

void write_data::thread_output_r_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_reg_pp0_iter1_exitcond_flatten_reg_200.read(), ap_const_lv1_0))) {
        output_r_we0 = ap_const_logic_1;
    } else {
        output_r_we0 = ap_const_logic_0;
    }
}

void write_data::thread_r_1_fu_118_p2() {
    r_1_fu_118_p2 = (!ap_const_lv4_1.is_01() || !r_phi_fu_88_p4.read().is_01())? sc_lv<4>(): (sc_biguint<4>(ap_const_lv4_1) + sc_biguint<4>(r_phi_fu_88_p4.read()));
}

void write_data::thread_r_phi_fu_88_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_200.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        r_phi_fu_88_p4 = tmp_mid2_v_reg_216.read();
    } else {
        r_phi_fu_88_p4 = r_reg_84.read();
    }
}

void write_data::thread_tmp_1_cast_fu_157_p1() {
    tmp_1_cast_fu_157_p1 = esl_zext<8,7>(tmp_fu_150_p3.read());
}

void write_data::thread_tmp_1_fu_146_p1() {
    tmp_1_fu_146_p1 = tmp_mid2_v_fu_138_p3.read().range(3-1, 0);
}

void write_data::thread_tmp_1_mid2_fu_161_p3() {
    tmp_1_mid2_fu_161_p3 = esl_concat<3,3>(tmp_1_reg_222.read(), ap_const_lv3_0);
}

void write_data::thread_tmp_3_cast_fu_171_p1() {
    tmp_3_cast_fu_171_p1 = esl_zext<8,4>(c_mid2_reg_209.read());
}

void write_data::thread_tmp_4_fu_185_p2() {
    tmp_4_fu_185_p2 = (!c_cast6_fu_168_p1.read().is_01() || !tmp_1_mid2_fu_161_p3.read().is_01())? sc_lv<6>(): (sc_biguint<6>(c_cast6_fu_168_p1.read()) + sc_biguint<6>(tmp_1_mid2_fu_161_p3.read()));
}

void write_data::thread_tmp_5_fu_196_p1() {
    tmp_5_fu_196_p1 = esl_zext<64,6>(tmp_4_reg_232.read());
}

void write_data::thread_tmp_7_cast_fu_180_p1() {
    tmp_7_cast_fu_180_p1 = esl_zext<64,8>(tmp_7_fu_174_p2.read());
}

void write_data::thread_tmp_7_fu_174_p2() {
    tmp_7_fu_174_p2 = (!tmp_1_cast_fu_157_p1.read().is_01() || !tmp_3_cast_fu_171_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_1_cast_fu_157_p1.read()) + sc_biguint<8>(tmp_3_cast_fu_171_p1.read()));
}

void write_data::thread_tmp_fu_150_p3() {
    tmp_fu_150_p3 = esl_concat<4,3>(tmp_mid2_v_reg_216.read(), ap_const_lv3_0);
}

void write_data::thread_tmp_mid2_v_fu_138_p3() {
    tmp_mid2_v_fu_138_p3 = (!exitcond2_fu_124_p2.read()[0].is_01())? sc_lv<4>(): ((exitcond2_fu_124_p2.read()[0].to_bool())? r_1_fu_118_p2.read(): r_phi_fu_88_p4.read());
}

void write_data::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_flatten_fu_106_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(exitcond_flatten_fu_106_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

