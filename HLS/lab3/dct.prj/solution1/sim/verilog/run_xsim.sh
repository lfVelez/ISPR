
/opt/Xilinx/Vivado/2017.1/bin/xelab xil_defaultlib.apatb_dct_top -prj dct.prj -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 --initfile "/opt/Xilinx/Vivado/2017.1/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s dct 
/opt/Xilinx/Vivado/2017.1/bin/xsim --noieeewarnings dct -tclbatch dct.tcl
