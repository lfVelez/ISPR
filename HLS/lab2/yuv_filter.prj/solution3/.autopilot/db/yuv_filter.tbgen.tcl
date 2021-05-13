set C_TypeInfoList {{ 
"yuv_filter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in": [[],{ "pointer": "0"}] }, {"out": [[],{ "pointer": "0"}] }, {"Y_scale": [[],"1"] }, {"U_scale": [[],"1"] }, {"V_scale": [[],"1"] }],[],""], 
"0": [ "image_t", {"typedef": [[[],"2"],""]}], 
"2": [ "", {"struct": [[],[],[{ "channels": [[58982400], "3"]},{ "width": [[16], "4"]},{ "height": [[16], "4"]}],""]}], 
"3": [ "channel_t", {"typedef": [[[],"5"],""]}], 
"5": [ "", {"struct": [[],[],[{ "ch1": [[],  {"array": ["6", [1920,1280]]}]},{ "ch2": [[],  {"array": ["6", [1920,1280]]}]},{ "ch3": [[],  {"array": ["6", [1920,1280]]}]}],""]}], 
"6": [ "image_pix_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"4": [ "image_dim_t", {"typedef": [[[], {"scalar": "unsigned short"}],""]}], 
"1": [ "yuv_scale_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}]
}}
set moduleName yuv_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {yuv_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_channels_ch1 int 8 regular {array 2457600 { 1 3 } 3 1 }  }
	{ in_channels_ch2 int 8 regular {array 2457600 { 1 3 } 3 1 }  }
	{ in_channels_ch3 int 8 regular {array 2457600 { 1 3 } 3 1 }  }
	{ in_width int 16 regular {pointer 0}  }
	{ in_height int 16 regular {pointer 0}  }
	{ out_channels_ch1 int 8 regular {array 2457600 { 0 3 } 1 1 }  }
	{ out_channels_ch2 int 8 regular {array 2457600 { 0 3 } 1 1 }  }
	{ out_channels_ch3 int 8 regular {array 2457600 { 0 3 } 1 1 }  }
	{ out_width int 16 regular {pointer 1}  }
	{ out_height int 16 regular {pointer 1}  }
	{ Y_scale uint 8 regular  }
	{ U_scale uint 8 regular  }
	{ V_scale uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_channels_ch1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in.channels.ch1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1279,"step" : 1}]}]}]} , 
 	{ "Name" : "in_channels_ch2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in.channels.ch2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1279,"step" : 1}]}]}]} , 
 	{ "Name" : "in_channels_ch3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "in.channels.ch3","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1279,"step" : 1}]}]}]} , 
 	{ "Name" : "in_width", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in.width","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in_height", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "in.height","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_channels_ch1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out.channels.ch1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1279,"step" : 1}]}]}]} , 
 	{ "Name" : "out_channels_ch2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out.channels.ch2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1279,"step" : 1}]}]}]} , 
 	{ "Name" : "out_channels_ch3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "out.channels.ch3","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 1919,"step" : 1},{"low" : 0,"up" : 1279,"step" : 1}]}]}]} , 
 	{ "Name" : "out_width", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "out.width","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_height", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "out.height","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "Y_scale", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "Y_scale","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "U_scale", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "U_scale","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "V_scale", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "V_scale","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 75
set portList { 
	{ in_channels_ch1_address0 sc_out sc_lv 22 signal 0 } 
	{ in_channels_ch1_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_channels_ch1_d0 sc_out sc_lv 8 signal 0 } 
	{ in_channels_ch1_q0 sc_in sc_lv 8 signal 0 } 
	{ in_channels_ch1_we0 sc_out sc_logic 1 signal 0 } 
	{ in_channels_ch1_address1 sc_out sc_lv 22 signal 0 } 
	{ in_channels_ch1_ce1 sc_out sc_logic 1 signal 0 } 
	{ in_channels_ch1_d1 sc_out sc_lv 8 signal 0 } 
	{ in_channels_ch1_q1 sc_in sc_lv 8 signal 0 } 
	{ in_channels_ch1_we1 sc_out sc_logic 1 signal 0 } 
	{ in_channels_ch2_address0 sc_out sc_lv 22 signal 1 } 
	{ in_channels_ch2_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_channels_ch2_d0 sc_out sc_lv 8 signal 1 } 
	{ in_channels_ch2_q0 sc_in sc_lv 8 signal 1 } 
	{ in_channels_ch2_we0 sc_out sc_logic 1 signal 1 } 
	{ in_channels_ch2_address1 sc_out sc_lv 22 signal 1 } 
	{ in_channels_ch2_ce1 sc_out sc_logic 1 signal 1 } 
	{ in_channels_ch2_d1 sc_out sc_lv 8 signal 1 } 
	{ in_channels_ch2_q1 sc_in sc_lv 8 signal 1 } 
	{ in_channels_ch2_we1 sc_out sc_logic 1 signal 1 } 
	{ in_channels_ch3_address0 sc_out sc_lv 22 signal 2 } 
	{ in_channels_ch3_ce0 sc_out sc_logic 1 signal 2 } 
	{ in_channels_ch3_d0 sc_out sc_lv 8 signal 2 } 
	{ in_channels_ch3_q0 sc_in sc_lv 8 signal 2 } 
	{ in_channels_ch3_we0 sc_out sc_logic 1 signal 2 } 
	{ in_channels_ch3_address1 sc_out sc_lv 22 signal 2 } 
	{ in_channels_ch3_ce1 sc_out sc_logic 1 signal 2 } 
	{ in_channels_ch3_d1 sc_out sc_lv 8 signal 2 } 
	{ in_channels_ch3_q1 sc_in sc_lv 8 signal 2 } 
	{ in_channels_ch3_we1 sc_out sc_logic 1 signal 2 } 
	{ in_width sc_in sc_lv 16 signal 3 } 
	{ in_height sc_in sc_lv 16 signal 4 } 
	{ out_channels_ch1_address0 sc_out sc_lv 22 signal 5 } 
	{ out_channels_ch1_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_channels_ch1_d0 sc_out sc_lv 8 signal 5 } 
	{ out_channels_ch1_q0 sc_in sc_lv 8 signal 5 } 
	{ out_channels_ch1_we0 sc_out sc_logic 1 signal 5 } 
	{ out_channels_ch1_address1 sc_out sc_lv 22 signal 5 } 
	{ out_channels_ch1_ce1 sc_out sc_logic 1 signal 5 } 
	{ out_channels_ch1_d1 sc_out sc_lv 8 signal 5 } 
	{ out_channels_ch1_q1 sc_in sc_lv 8 signal 5 } 
	{ out_channels_ch1_we1 sc_out sc_logic 1 signal 5 } 
	{ out_channels_ch2_address0 sc_out sc_lv 22 signal 6 } 
	{ out_channels_ch2_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_channels_ch2_d0 sc_out sc_lv 8 signal 6 } 
	{ out_channels_ch2_q0 sc_in sc_lv 8 signal 6 } 
	{ out_channels_ch2_we0 sc_out sc_logic 1 signal 6 } 
	{ out_channels_ch2_address1 sc_out sc_lv 22 signal 6 } 
	{ out_channels_ch2_ce1 sc_out sc_logic 1 signal 6 } 
	{ out_channels_ch2_d1 sc_out sc_lv 8 signal 6 } 
	{ out_channels_ch2_q1 sc_in sc_lv 8 signal 6 } 
	{ out_channels_ch2_we1 sc_out sc_logic 1 signal 6 } 
	{ out_channels_ch3_address0 sc_out sc_lv 22 signal 7 } 
	{ out_channels_ch3_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_channels_ch3_d0 sc_out sc_lv 8 signal 7 } 
	{ out_channels_ch3_q0 sc_in sc_lv 8 signal 7 } 
	{ out_channels_ch3_we0 sc_out sc_logic 1 signal 7 } 
	{ out_channels_ch3_address1 sc_out sc_lv 22 signal 7 } 
	{ out_channels_ch3_ce1 sc_out sc_logic 1 signal 7 } 
	{ out_channels_ch3_d1 sc_out sc_lv 8 signal 7 } 
	{ out_channels_ch3_q1 sc_in sc_lv 8 signal 7 } 
	{ out_channels_ch3_we1 sc_out sc_logic 1 signal 7 } 
	{ out_width sc_out sc_lv 16 signal 8 } 
	{ out_height sc_out sc_lv 16 signal 9 } 
	{ Y_scale sc_in sc_lv 8 signal 10 } 
	{ U_scale sc_in sc_lv 8 signal 11 } 
	{ V_scale sc_in sc_lv 8 signal 12 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ out_width_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ out_height_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "in_channels_ch1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "address0" }} , 
 	{ "name": "in_channels_ch1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "ce0" }} , 
 	{ "name": "in_channels_ch1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "d0" }} , 
 	{ "name": "in_channels_ch1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "q0" }} , 
 	{ "name": "in_channels_ch1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "we0" }} , 
 	{ "name": "in_channels_ch1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "address1" }} , 
 	{ "name": "in_channels_ch1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "ce1" }} , 
 	{ "name": "in_channels_ch1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "d1" }} , 
 	{ "name": "in_channels_ch1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "q1" }} , 
 	{ "name": "in_channels_ch1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch1", "role": "we1" }} , 
 	{ "name": "in_channels_ch2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "address0" }} , 
 	{ "name": "in_channels_ch2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "ce0" }} , 
 	{ "name": "in_channels_ch2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "d0" }} , 
 	{ "name": "in_channels_ch2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "q0" }} , 
 	{ "name": "in_channels_ch2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "we0" }} , 
 	{ "name": "in_channels_ch2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "address1" }} , 
 	{ "name": "in_channels_ch2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "ce1" }} , 
 	{ "name": "in_channels_ch2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "d1" }} , 
 	{ "name": "in_channels_ch2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "q1" }} , 
 	{ "name": "in_channels_ch2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch2", "role": "we1" }} , 
 	{ "name": "in_channels_ch3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "address0" }} , 
 	{ "name": "in_channels_ch3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "ce0" }} , 
 	{ "name": "in_channels_ch3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "d0" }} , 
 	{ "name": "in_channels_ch3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "q0" }} , 
 	{ "name": "in_channels_ch3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "we0" }} , 
 	{ "name": "in_channels_ch3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "address1" }} , 
 	{ "name": "in_channels_ch3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "ce1" }} , 
 	{ "name": "in_channels_ch3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "d1" }} , 
 	{ "name": "in_channels_ch3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "q1" }} , 
 	{ "name": "in_channels_ch3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_channels_ch3", "role": "we1" }} , 
 	{ "name": "in_width", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_width", "role": "default" }} , 
 	{ "name": "in_height", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "in_height", "role": "default" }} , 
 	{ "name": "out_channels_ch1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "address0" }} , 
 	{ "name": "out_channels_ch1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "ce0" }} , 
 	{ "name": "out_channels_ch1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "d0" }} , 
 	{ "name": "out_channels_ch1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "q0" }} , 
 	{ "name": "out_channels_ch1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "we0" }} , 
 	{ "name": "out_channels_ch1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "address1" }} , 
 	{ "name": "out_channels_ch1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "ce1" }} , 
 	{ "name": "out_channels_ch1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "d1" }} , 
 	{ "name": "out_channels_ch1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "q1" }} , 
 	{ "name": "out_channels_ch1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch1", "role": "we1" }} , 
 	{ "name": "out_channels_ch2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "address0" }} , 
 	{ "name": "out_channels_ch2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "ce0" }} , 
 	{ "name": "out_channels_ch2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "d0" }} , 
 	{ "name": "out_channels_ch2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "q0" }} , 
 	{ "name": "out_channels_ch2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "we0" }} , 
 	{ "name": "out_channels_ch2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "address1" }} , 
 	{ "name": "out_channels_ch2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "ce1" }} , 
 	{ "name": "out_channels_ch2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "d1" }} , 
 	{ "name": "out_channels_ch2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "q1" }} , 
 	{ "name": "out_channels_ch2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch2", "role": "we1" }} , 
 	{ "name": "out_channels_ch3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "address0" }} , 
 	{ "name": "out_channels_ch3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "ce0" }} , 
 	{ "name": "out_channels_ch3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "d0" }} , 
 	{ "name": "out_channels_ch3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "q0" }} , 
 	{ "name": "out_channels_ch3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "we0" }} , 
 	{ "name": "out_channels_ch3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "address1" }} , 
 	{ "name": "out_channels_ch3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "ce1" }} , 
 	{ "name": "out_channels_ch3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "d1" }} , 
 	{ "name": "out_channels_ch3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "q1" }} , 
 	{ "name": "out_channels_ch3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_channels_ch3", "role": "we1" }} , 
 	{ "name": "out_width", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_width", "role": "default" }} , 
 	{ "name": "out_height", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_height", "role": "default" }} , 
 	{ "name": "Y_scale", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Y_scale", "role": "default" }} , 
 	{ "name": "U_scale", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "U_scale", "role": "default" }} , 
 	{ "name": "V_scale", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "V_scale", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "out_width_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_width", "role": "ap_vld" }} , 
 	{ "name": "out_height_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_height", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "8", "13", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "yuv_filter",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "rgb2yuv11_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "yuv2rgb_U0"}],
		"Port" : [
			{"Name" : "in_channels_ch1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rgb2yuv11_U0", "Port" : "in_channels_ch1"}]},
			{"Name" : "in_channels_ch2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rgb2yuv11_U0", "Port" : "in_channels_ch2"}]},
			{"Name" : "in_channels_ch3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rgb2yuv11_U0", "Port" : "in_channels_ch3"}]},
			{"Name" : "in_width", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rgb2yuv11_U0", "Port" : "in_width"}]},
			{"Name" : "in_height", "Type" : "None", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "rgb2yuv11_U0", "Port" : "in_height"}]},
			{"Name" : "out_channels_ch1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "yuv2rgb_U0", "Port" : "out_channels_ch1"}]},
			{"Name" : "out_channels_ch2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "yuv2rgb_U0", "Port" : "out_channels_ch2"}]},
			{"Name" : "out_channels_ch3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "yuv2rgb_U0", "Port" : "out_channels_ch3"}]},
			{"Name" : "out_width", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "yuv2rgb_U0", "Port" : "out_width"}]},
			{"Name" : "out_height", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "yuv2rgb_U0", "Port" : "out_height"}]},
			{"Name" : "Y_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "U_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_scale", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7"],
		"CDFG" : "rgb2yuv11",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_channels_ch1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channels_ch2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_channels_ch3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_channels_ch1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "out_channels_ch1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_channels_ch2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "out_channels_ch2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_channels_ch3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "out_channels_ch3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_width", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "out_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_height", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "out_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Y_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "U_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "V_scale", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y_scale_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "Y_scale_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "U_scale_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "U_scale_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_scale_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "V_scale_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0.yuv_filter_mul_mubkb_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0.yuv_filter_mac_mucud_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0.yuv_filter_mac_mudEe_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0.yuv_filter_mac_mueOg_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0.yuv_filter_mac_mufYi_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.rgb2yuv11_U0.yuv_filter_mac_mufYi_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yuv_scale_U0", "Parent" : "0", "Child" : ["9", "10", "11", "12"],
		"CDFG" : "yuv_scale",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_yuv_scalbW_U",
		"Port" : [
			{"Name" : "in_channels_ch1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "in_channels_ch1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channels_ch2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "in_channels_ch2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channels_ch3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "in_channels_ch3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "in_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "in_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_channels_ch1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "out_channels_ch1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_channels_ch2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "out_channels_ch2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_channels_ch3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "out_channels_ch3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_width", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "out_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_height", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "13", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "out_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "Y_scale", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "Y_scale_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "U_scale", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "U_scale_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "V_scale", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "V_scale_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv_scale_U0.yuv_filter_mul_8ng8j_U23", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv_scale_U0.yuv_filter_mul_8ng8j_U24", "Parent" : "8"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv_scale_U0.yuv_filter_mul_8ng8j_U25", "Parent" : "8"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv_scale_U0.yuv_filter_mul_mubkb_x_U26", "Parent" : "8"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yuv2rgb_U0", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18"],
		"CDFG" : "yuv2rgb",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "8",
		"StartFifo" : "start_for_yuv2rgbmb6_U",
		"Port" : [
			{"Name" : "in_channels_ch1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "in_channels_ch1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channels_ch2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "in_channels_ch2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_channels_ch3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "29",
				"BlockSignal" : [
					{"Name" : "in_channels_ch3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "30",
				"BlockSignal" : [
					{"Name" : "in_width_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "8", "DependentChan" : "31",
				"BlockSignal" : [
					{"Name" : "in_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_channels_ch1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_channels_ch2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_channels_ch3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "out_width", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_height", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv2rgb_U0.yuv_filter_mul_9shbi_U40", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv2rgb_U0.yuv_filter_mul_mubkb_x_U41", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv2rgb_U0.yuv_filter_ama_adibs_U42", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv2rgb_U0.yuv_filter_mac_mujbC_U43", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.yuv2rgb_U0.yuv_filter_mac_mukbM_U44", "Parent" : "13"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_yuv_channels_ch1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_yuv_channels_ch2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_yuv_channels_ch3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_yuv_width_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_yuv_height_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Y_scale_channel_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.U_scale_channel_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.V_scale_channel_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_scale_channels_ch1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_scale_channels_ch2_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_scale_channels_ch3_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_scale_width_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_scale_height_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_yuv_scalbW_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_yuv2rgbmb6_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	yuv_filter {
		in_channels_ch1 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch2 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch3 {Type I LastRead 3 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		out_channels_ch1 {Type O LastRead -1 FirstWrite 9}
		out_channels_ch2 {Type O LastRead -1 FirstWrite 9}
		out_channels_ch3 {Type O LastRead -1 FirstWrite 9}
		out_width {Type O LastRead -1 FirstWrite 1}
		out_height {Type O LastRead -1 FirstWrite 1}
		Y_scale {Type I LastRead 0 FirstWrite -1}
		U_scale {Type I LastRead 0 FirstWrite -1}
		V_scale {Type I LastRead 0 FirstWrite -1}}
	rgb2yuv11 {
		in_channels_ch1 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch2 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch3 {Type I LastRead 3 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		out_channels_ch1 {Type O LastRead -1 FirstWrite 9}
		out_channels_ch2 {Type O LastRead -1 FirstWrite 9}
		out_channels_ch3 {Type O LastRead -1 FirstWrite 9}
		out_width {Type O LastRead -1 FirstWrite 0}
		out_height {Type O LastRead -1 FirstWrite 0}
		Y_scale {Type I LastRead 0 FirstWrite -1}
		U_scale {Type I LastRead 0 FirstWrite -1}
		V_scale {Type I LastRead 0 FirstWrite -1}
		Y_scale_out {Type O LastRead -1 FirstWrite 0}
		U_scale_out {Type O LastRead -1 FirstWrite 0}
		V_scale_out {Type O LastRead -1 FirstWrite 0}}
	yuv_scale {
		in_channels_ch1 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch2 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch3 {Type I LastRead 3 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		out_channels_ch1 {Type O LastRead -1 FirstWrite 7}
		out_channels_ch2 {Type O LastRead -1 FirstWrite 7}
		out_channels_ch3 {Type O LastRead -1 FirstWrite 7}
		out_width {Type O LastRead -1 FirstWrite 0}
		out_height {Type O LastRead -1 FirstWrite 0}
		Y_scale {Type I LastRead 0 FirstWrite -1}
		U_scale {Type I LastRead 0 FirstWrite -1}
		V_scale {Type I LastRead 0 FirstWrite -1}}
	yuv2rgb {
		in_channels_ch1 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch2 {Type I LastRead 3 FirstWrite -1}
		in_channels_ch3 {Type I LastRead 3 FirstWrite -1}
		in_width {Type I LastRead 0 FirstWrite -1}
		in_height {Type I LastRead 0 FirstWrite -1}
		out_channels_ch1 {Type O LastRead -1 FirstWrite 9}
		out_channels_ch2 {Type O LastRead -1 FirstWrite 9}
		out_channels_ch3 {Type O LastRead -1 FirstWrite 9}
		out_width {Type O LastRead -1 FirstWrite 1}
		out_height {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "40022", "Max" : "2457622"}
	, {"Name" : "Interval", "Min" : "40011", "Max" : "2457611"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_channels_ch1 { ap_memory {  { in_channels_ch1_address0 mem_address 1 22 }  { in_channels_ch1_ce0 mem_ce 1 1 }  { in_channels_ch1_d0 mem_din 1 8 }  { in_channels_ch1_q0 mem_dout 0 8 }  { in_channels_ch1_we0 mem_we 1 1 }  { in_channels_ch1_address1 mem_address 1 22 }  { in_channels_ch1_ce1 mem_ce 1 1 }  { in_channels_ch1_d1 mem_din 1 8 }  { in_channels_ch1_q1 mem_dout 0 8 }  { in_channels_ch1_we1 mem_we 1 1 } } }
	in_channels_ch2 { ap_memory {  { in_channels_ch2_address0 mem_address 1 22 }  { in_channels_ch2_ce0 mem_ce 1 1 }  { in_channels_ch2_d0 mem_din 1 8 }  { in_channels_ch2_q0 mem_dout 0 8 }  { in_channels_ch2_we0 mem_we 1 1 }  { in_channels_ch2_address1 mem_address 1 22 }  { in_channels_ch2_ce1 mem_ce 1 1 }  { in_channels_ch2_d1 mem_din 1 8 }  { in_channels_ch2_q1 mem_dout 0 8 }  { in_channels_ch2_we1 mem_we 1 1 } } }
	in_channels_ch3 { ap_memory {  { in_channels_ch3_address0 mem_address 1 22 }  { in_channels_ch3_ce0 mem_ce 1 1 }  { in_channels_ch3_d0 mem_din 1 8 }  { in_channels_ch3_q0 mem_dout 0 8 }  { in_channels_ch3_we0 mem_we 1 1 }  { in_channels_ch3_address1 mem_address 1 22 }  { in_channels_ch3_ce1 mem_ce 1 1 }  { in_channels_ch3_d1 mem_din 1 8 }  { in_channels_ch3_q1 mem_dout 0 8 }  { in_channels_ch3_we1 mem_we 1 1 } } }
	in_width { ap_none {  { in_width in_data 0 16 } } }
	in_height { ap_none {  { in_height in_data 0 16 } } }
	out_channels_ch1 { ap_memory {  { out_channels_ch1_address0 mem_address 1 22 }  { out_channels_ch1_ce0 mem_ce 1 1 }  { out_channels_ch1_d0 mem_din 1 8 }  { out_channels_ch1_q0 mem_dout 0 8 }  { out_channels_ch1_we0 mem_we 1 1 }  { out_channels_ch1_address1 mem_address 1 22 }  { out_channels_ch1_ce1 mem_ce 1 1 }  { out_channels_ch1_d1 mem_din 1 8 }  { out_channels_ch1_q1 mem_dout 0 8 }  { out_channels_ch1_we1 mem_we 1 1 } } }
	out_channels_ch2 { ap_memory {  { out_channels_ch2_address0 mem_address 1 22 }  { out_channels_ch2_ce0 mem_ce 1 1 }  { out_channels_ch2_d0 mem_din 1 8 }  { out_channels_ch2_q0 mem_dout 0 8 }  { out_channels_ch2_we0 mem_we 1 1 }  { out_channels_ch2_address1 mem_address 1 22 }  { out_channels_ch2_ce1 mem_ce 1 1 }  { out_channels_ch2_d1 mem_din 1 8 }  { out_channels_ch2_q1 mem_dout 0 8 }  { out_channels_ch2_we1 mem_we 1 1 } } }
	out_channels_ch3 { ap_memory {  { out_channels_ch3_address0 mem_address 1 22 }  { out_channels_ch3_ce0 mem_ce 1 1 }  { out_channels_ch3_d0 mem_din 1 8 }  { out_channels_ch3_q0 mem_dout 0 8 }  { out_channels_ch3_we0 mem_we 1 1 }  { out_channels_ch3_address1 mem_address 1 22 }  { out_channels_ch3_ce1 mem_ce 1 1 }  { out_channels_ch3_d1 mem_din 1 8 }  { out_channels_ch3_q1 mem_dout 0 8 }  { out_channels_ch3_we1 mem_we 1 1 } } }
	out_width { ap_vld {  { out_width out_data 1 16 }  { out_width_ap_vld out_vld 1 1 } } }
	out_height { ap_vld {  { out_height out_data 1 16 }  { out_height_ap_vld out_vld 1 1 } } }
	Y_scale { ap_none {  { Y_scale in_data 0 8 } } }
	U_scale { ap_none {  { U_scale in_data 0 8 } } }
	V_scale { ap_none {  { V_scale in_data 0 8 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
	{ in_channels_ch1 3 }
	{ in_channels_ch2 3 }
	{ in_channels_ch3 3 }
}
