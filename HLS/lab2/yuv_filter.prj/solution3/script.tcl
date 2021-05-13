############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project yuv_filter.prj
set_top yuv_filter
add_files yuv_filter.c
add_files -tb test_data
add_files -tb yuv_filter_test.c
add_files -tb image_aux.c
open_solution "solution3"
set_part {xc7z010clg400-1}
create_clock -period 8 -name default
config_dataflow -default_channel fifo -fifo_depth 2
source "./yuv_filter.prj/solution3/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl vhdl -format ip_catalog
