############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dct.prj
set_top dct
add_files dct.c
add_files -tb dct_test.c
add_files -tb in.dat
add_files -tb out.golden.dat
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 8 -name default
source "./dct.prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
