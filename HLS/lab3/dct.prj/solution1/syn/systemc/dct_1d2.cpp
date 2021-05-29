// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dct_1d2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dct_1d2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dct_1d2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> dct_1d2::ap_ST_fsm_state1 = "1";
const sc_lv<5> dct_1d2::ap_ST_fsm_state2 = "10";
const sc_lv<5> dct_1d2::ap_ST_fsm_state3 = "100";
const sc_lv<5> dct_1d2::ap_ST_fsm_state4 = "1000";
const sc_lv<5> dct_1d2::ap_ST_fsm_state5 = "10000";
const sc_lv<32> dct_1d2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> dct_1d2::ap_const_lv32_1 = "1";
const sc_lv<1> dct_1d2::ap_const_lv1_0 = "0";
const sc_lv<32> dct_1d2::ap_const_lv32_2 = "10";
const sc_lv<32> dct_1d2::ap_const_lv32_3 = "11";
const sc_lv<32> dct_1d2::ap_const_lv32_4 = "100";
const sc_lv<4> dct_1d2::ap_const_lv4_0 = "0000";
const sc_lv<1> dct_1d2::ap_const_lv1_1 = "1";
const sc_lv<3> dct_1d2::ap_const_lv3_0 = "000";
const sc_lv<4> dct_1d2::ap_const_lv4_8 = "1000";
const sc_lv<4> dct_1d2::ap_const_lv4_1 = "1";
const sc_lv<29> dct_1d2::ap_const_lv29_1000 = "1000000000000";
const sc_lv<32> dct_1d2::ap_const_lv32_D = "1101";
const sc_lv<32> dct_1d2::ap_const_lv32_1C = "11100";
const bool dct_1d2::ap_const_boolean_1 = true;

dct_1d2::dct_1d2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    dct_coeff_table_U = new dct_1d2_dct_coeffbkb("dct_coeff_table_U");
    dct_coeff_table_U->clk(ap_clk);
    dct_coeff_table_U->reset(ap_rst);
    dct_coeff_table_U->address0(dct_coeff_table_address0);
    dct_coeff_table_U->ce0(dct_coeff_table_ce0);
    dct_coeff_table_U->q0(dct_coeff_table_q0);
    dct_mac_muladd_15cud_U1 = new dct_mac_muladd_15cud<1,1,15,16,32,32>("dct_mac_muladd_15cud_U1");
    dct_mac_muladd_15cud_U1->din0(dct_coeff_table_load_reg_308);
    dct_mac_muladd_15cud_U1->din1(src_load_reg_313);
    dct_mac_muladd_15cud_U1->din2(tmp1_reg_117);
    dct_mac_muladd_15cud_U1->dout(grp_fu_254_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_153_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_153_p2 );

    SC_METHOD(thread_dct_coeff_table_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_31_cast_fu_222_p1 );

    SC_METHOD(thread_dct_coeff_table_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_dst_address0);
    sensitive << ( dst_addr_reg_280 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_dst_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_dst_d0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_12_fu_231_p2 );

    SC_METHOD(thread_dst_we0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_11_fu_191_p2 );

    SC_METHOD(thread_k_1_fu_159_p2);
    sensitive << ( k_reg_95 );

    SC_METHOD(thread_n_1_fu_197_p2);
    sensitive << ( n_reg_106 );

    SC_METHOD(thread_src_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_30_cast_fu_212_p1 );

    SC_METHOD(thread_src_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_11_fu_191_p2);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( n_reg_106 );

    SC_METHOD(thread_tmp_12_fu_231_p2);
    sensitive << ( tmp_2_fu_227_p1 );

    SC_METHOD(thread_tmp_15_cast_fu_203_p1);
    sensitive << ( n_reg_106 );

    SC_METHOD(thread_tmp_15_fu_141_p3);
    sensitive << ( tmp_6 );

    SC_METHOD(thread_tmp_16_fu_169_p2);
    sensitive << ( tmp_24_cast_reg_262 );
    sensitive << ( tmp_cast_fu_165_p1 );

    SC_METHOD(thread_tmp_18_fu_179_p3);
    sensitive << ( k_reg_95 );

    SC_METHOD(thread_tmp_19_fu_207_p2);
    sensitive << ( tmp_26_cast_reg_267 );
    sensitive << ( tmp_15_cast_fu_203_p1 );

    SC_METHOD(thread_tmp_20_fu_217_p2);
    sensitive << ( tmp_29_cast_reg_285 );
    sensitive << ( tmp_15_cast_fu_203_p1 );

    SC_METHOD(thread_tmp_24_cast_fu_137_p1);
    sensitive << ( tmp_s_fu_129_p3 );

    SC_METHOD(thread_tmp_26_cast_fu_149_p1);
    sensitive << ( tmp_15_fu_141_p3 );

    SC_METHOD(thread_tmp_27_cast_fu_174_p1);
    sensitive << ( tmp_16_fu_169_p2 );

    SC_METHOD(thread_tmp_29_cast_fu_187_p1);
    sensitive << ( tmp_18_fu_179_p3 );

    SC_METHOD(thread_tmp_2_fu_227_p1);
    sensitive << ( tmp1_reg_117 );

    SC_METHOD(thread_tmp_30_cast_fu_212_p1);
    sensitive << ( tmp_19_fu_207_p2 );

    SC_METHOD(thread_tmp_31_cast_fu_222_p1);
    sensitive << ( tmp_20_fu_217_p2 );

    SC_METHOD(thread_tmp_cast_fu_165_p1);
    sensitive << ( k_reg_95 );

    SC_METHOD(thread_tmp_fu_153_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( k_reg_95 );

    SC_METHOD(thread_tmp_s_fu_129_p3);
    sensitive << ( tmp_61 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( tmp_fu_153_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_11_fu_191_p2 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dct_1d2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, src_address0, "(port)src_address0");
    sc_trace(mVcdFile, src_ce0, "(port)src_ce0");
    sc_trace(mVcdFile, src_q0, "(port)src_q0");
    sc_trace(mVcdFile, tmp_6, "(port)tmp_6");
    sc_trace(mVcdFile, dst_address0, "(port)dst_address0");
    sc_trace(mVcdFile, dst_ce0, "(port)dst_ce0");
    sc_trace(mVcdFile, dst_we0, "(port)dst_we0");
    sc_trace(mVcdFile, dst_d0, "(port)dst_d0");
    sc_trace(mVcdFile, tmp_61, "(port)tmp_61");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, dct_coeff_table_address0, "dct_coeff_table_address0");
    sc_trace(mVcdFile, dct_coeff_table_ce0, "dct_coeff_table_ce0");
    sc_trace(mVcdFile, dct_coeff_table_q0, "dct_coeff_table_q0");
    sc_trace(mVcdFile, tmp_24_cast_fu_137_p1, "tmp_24_cast_fu_137_p1");
    sc_trace(mVcdFile, tmp_24_cast_reg_262, "tmp_24_cast_reg_262");
    sc_trace(mVcdFile, tmp_26_cast_fu_149_p1, "tmp_26_cast_fu_149_p1");
    sc_trace(mVcdFile, tmp_26_cast_reg_267, "tmp_26_cast_reg_267");
    sc_trace(mVcdFile, k_1_fu_159_p2, "k_1_fu_159_p2");
    sc_trace(mVcdFile, k_1_reg_275, "k_1_reg_275");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, dst_addr_reg_280, "dst_addr_reg_280");
    sc_trace(mVcdFile, tmp_fu_153_p2, "tmp_fu_153_p2");
    sc_trace(mVcdFile, tmp_29_cast_fu_187_p1, "tmp_29_cast_fu_187_p1");
    sc_trace(mVcdFile, tmp_29_cast_reg_285, "tmp_29_cast_reg_285");
    sc_trace(mVcdFile, n_1_fu_197_p2, "n_1_fu_197_p2");
    sc_trace(mVcdFile, n_1_reg_293, "n_1_reg_293");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, tmp_11_fu_191_p2, "tmp_11_fu_191_p2");
    sc_trace(mVcdFile, dct_coeff_table_load_reg_308, "dct_coeff_table_load_reg_308");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, src_load_reg_313, "src_load_reg_313");
    sc_trace(mVcdFile, grp_fu_254_p3, "grp_fu_254_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, k_reg_95, "k_reg_95");
    sc_trace(mVcdFile, n_reg_106, "n_reg_106");
    sc_trace(mVcdFile, tmp1_reg_117, "tmp1_reg_117");
    sc_trace(mVcdFile, tmp_27_cast_fu_174_p1, "tmp_27_cast_fu_174_p1");
    sc_trace(mVcdFile, tmp_30_cast_fu_212_p1, "tmp_30_cast_fu_212_p1");
    sc_trace(mVcdFile, tmp_31_cast_fu_222_p1, "tmp_31_cast_fu_222_p1");
    sc_trace(mVcdFile, tmp_s_fu_129_p3, "tmp_s_fu_129_p3");
    sc_trace(mVcdFile, tmp_15_fu_141_p3, "tmp_15_fu_141_p3");
    sc_trace(mVcdFile, tmp_cast_fu_165_p1, "tmp_cast_fu_165_p1");
    sc_trace(mVcdFile, tmp_16_fu_169_p2, "tmp_16_fu_169_p2");
    sc_trace(mVcdFile, tmp_18_fu_179_p3, "tmp_18_fu_179_p3");
    sc_trace(mVcdFile, tmp_15_cast_fu_203_p1, "tmp_15_cast_fu_203_p1");
    sc_trace(mVcdFile, tmp_19_fu_207_p2, "tmp_19_fu_207_p2");
    sc_trace(mVcdFile, tmp_20_fu_217_p2, "tmp_20_fu_217_p2");
    sc_trace(mVcdFile, tmp_2_fu_227_p1, "tmp_2_fu_227_p1");
    sc_trace(mVcdFile, tmp_12_fu_231_p2, "tmp_12_fu_231_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dct_1d2::~dct_1d2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete dct_coeff_table_U;
    delete dct_mac_muladd_15cud_U1;
}

void dct_1d2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_11_fu_191_p2.read(), ap_const_lv1_1))) {
        k_reg_95 = k_1_reg_275.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_reg_95 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        n_reg_106 = n_1_reg_293.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_153_p2.read(), ap_const_lv1_0))) {
        n_reg_106 = ap_const_lv4_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tmp1_reg_117 = grp_fu_254_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(tmp_fu_153_p2.read(), ap_const_lv1_0))) {
        tmp1_reg_117 = ap_const_lv32_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        dct_coeff_table_load_reg_308 = dct_coeff_table_q0.read();
        src_load_reg_313 = src_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_153_p2.read(), ap_const_lv1_0))) {
        dst_addr_reg_280 =  (sc_lv<6>) (tmp_27_cast_fu_174_p1.read());
        tmp_29_cast_reg_285 = tmp_29_cast_fu_187_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        k_1_reg_275 = k_1_fu_159_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        n_1_reg_293 = n_1_fu_197_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        tmp_24_cast_reg_262 = tmp_24_cast_fu_137_p1.read();
        tmp_26_cast_reg_267 = tmp_26_cast_fu_149_p1.read();
    }
}

void dct_1d2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void dct_1d2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void dct_1d2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void dct_1d2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void dct_1d2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void dct_1d2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(tmp_fu_153_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dct_1d2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dct_1d2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(tmp_fu_153_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dct_1d2::thread_dct_coeff_table_address0() {
    dct_coeff_table_address0 =  (sc_lv<6>) (tmp_31_cast_fu_222_p1.read());
}

void dct_1d2::thread_dct_coeff_table_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dct_coeff_table_ce0 = ap_const_logic_1;
    } else {
        dct_coeff_table_ce0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_dst_address0() {
    dst_address0 = dst_addr_reg_280.read();
}

void dct_1d2::thread_dst_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        dst_ce0 = ap_const_logic_1;
    } else {
        dst_ce0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_dst_d0() {
    dst_d0 = tmp_12_fu_231_p2.read().range(28, 13);
}

void dct_1d2::thread_dst_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(tmp_11_fu_191_p2.read(), ap_const_lv1_1))) {
        dst_we0 = ap_const_logic_1;
    } else {
        dst_we0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_k_1_fu_159_p2() {
    k_1_fu_159_p2 = (!k_reg_95.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(k_reg_95.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_1d2::thread_n_1_fu_197_p2() {
    n_1_fu_197_p2 = (!n_reg_106.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(n_reg_106.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_1d2::thread_src_address0() {
    src_address0 =  (sc_lv<6>) (tmp_30_cast_fu_212_p1.read());
}

void dct_1d2::thread_src_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        src_ce0 = ap_const_logic_1;
    } else {
        src_ce0 = ap_const_logic_0;
    }
}

void dct_1d2::thread_tmp_11_fu_191_p2() {
    tmp_11_fu_191_p2 = (!n_reg_106.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(n_reg_106.read() == ap_const_lv4_8);
}

void dct_1d2::thread_tmp_12_fu_231_p2() {
    tmp_12_fu_231_p2 = (!ap_const_lv29_1000.is_01() || !tmp_2_fu_227_p1.read().is_01())? sc_lv<29>(): (sc_biguint<29>(ap_const_lv29_1000) + sc_biguint<29>(tmp_2_fu_227_p1.read()));
}

void dct_1d2::thread_tmp_15_cast_fu_203_p1() {
    tmp_15_cast_fu_203_p1 = esl_zext<8,4>(n_reg_106.read());
}

void dct_1d2::thread_tmp_15_fu_141_p3() {
    tmp_15_fu_141_p3 = esl_concat<4,3>(tmp_6.read(), ap_const_lv3_0);
}

void dct_1d2::thread_tmp_16_fu_169_p2() {
    tmp_16_fu_169_p2 = (!tmp_cast_fu_165_p1.read().is_01() || !tmp_24_cast_reg_262.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_cast_fu_165_p1.read()) + sc_biguint<8>(tmp_24_cast_reg_262.read()));
}

void dct_1d2::thread_tmp_18_fu_179_p3() {
    tmp_18_fu_179_p3 = esl_concat<4,3>(k_reg_95.read(), ap_const_lv3_0);
}

void dct_1d2::thread_tmp_19_fu_207_p2() {
    tmp_19_fu_207_p2 = (!tmp_26_cast_reg_267.read().is_01() || !tmp_15_cast_fu_203_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_26_cast_reg_267.read()) + sc_biguint<8>(tmp_15_cast_fu_203_p1.read()));
}

void dct_1d2::thread_tmp_20_fu_217_p2() {
    tmp_20_fu_217_p2 = (!tmp_29_cast_reg_285.read().is_01() || !tmp_15_cast_fu_203_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(tmp_29_cast_reg_285.read()) + sc_biguint<8>(tmp_15_cast_fu_203_p1.read()));
}

void dct_1d2::thread_tmp_24_cast_fu_137_p1() {
    tmp_24_cast_fu_137_p1 = esl_zext<8,7>(tmp_s_fu_129_p3.read());
}

void dct_1d2::thread_tmp_26_cast_fu_149_p1() {
    tmp_26_cast_fu_149_p1 = esl_zext<8,7>(tmp_15_fu_141_p3.read());
}

void dct_1d2::thread_tmp_27_cast_fu_174_p1() {
    tmp_27_cast_fu_174_p1 = esl_zext<64,8>(tmp_16_fu_169_p2.read());
}

void dct_1d2::thread_tmp_29_cast_fu_187_p1() {
    tmp_29_cast_fu_187_p1 = esl_zext<8,7>(tmp_18_fu_179_p3.read());
}

void dct_1d2::thread_tmp_2_fu_227_p1() {
    tmp_2_fu_227_p1 = tmp1_reg_117.read().range(29-1, 0);
}

void dct_1d2::thread_tmp_30_cast_fu_212_p1() {
    tmp_30_cast_fu_212_p1 = esl_zext<64,8>(tmp_19_fu_207_p2.read());
}

void dct_1d2::thread_tmp_31_cast_fu_222_p1() {
    tmp_31_cast_fu_222_p1 = esl_zext<64,8>(tmp_20_fu_217_p2.read());
}

void dct_1d2::thread_tmp_cast_fu_165_p1() {
    tmp_cast_fu_165_p1 = esl_zext<8,4>(k_reg_95.read());
}

void dct_1d2::thread_tmp_fu_153_p2() {
    tmp_fu_153_p2 = (!k_reg_95.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_95.read() == ap_const_lv4_8);
}

void dct_1d2::thread_tmp_s_fu_129_p3() {
    tmp_s_fu_129_p3 = esl_concat<4,3>(tmp_61.read(), ap_const_lv3_0);
}

void dct_1d2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(tmp_fu_153_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(tmp_11_fu_191_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}
