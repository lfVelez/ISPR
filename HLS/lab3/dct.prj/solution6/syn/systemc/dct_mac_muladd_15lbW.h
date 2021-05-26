// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __dct_mac_muladd_15lbW__HH__
#define __dct_mac_muladd_15lbW__HH__
#include "simcore_mac_1.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(dct_mac_muladd_15lbW) {
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    simcore_mac_1<ID, 1, din0_WIDTH, din1_WIDTH, din2_WIDTH, dout_WIDTH> simcore_mac_1_U;

    SC_CTOR(dct_mac_muladd_15lbW):  simcore_mac_1_U ("simcore_mac_1_U") {
        simcore_mac_1_U.din0(din0);
        simcore_mac_1_U.din1(din1);
        simcore_mac_1_U.din2(din2);
        simcore_mac_1_U.dout(dout);

    }

};

#endif //
