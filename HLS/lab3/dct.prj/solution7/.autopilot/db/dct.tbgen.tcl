set C_TypeInfoList {{ 
"dct" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input": [[], {"array": [ {"scalar": "short"}, [64]]}] }, {"output": [[], {"array": [ {"scalar": "short"}, [64]]}] }],[],""]
}}
set moduleName dct
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {dct}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_r int 16 regular {array 64 { 1 3 } 1 1 }  }
	{ output_r int 16 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "input","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "output_r", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "output","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 63,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_r_address0 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_d0 sc_out sc_lv 16 signal 0 } 
	{ input_r_q0 sc_in sc_lv 16 signal 0 } 
	{ input_r_we0 sc_out sc_logic 1 signal 0 } 
	{ input_r_address1 sc_out sc_lv 6 signal 0 } 
	{ input_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ input_r_d1 sc_out sc_lv 16 signal 0 } 
	{ input_r_q1 sc_in sc_lv 16 signal 0 } 
	{ input_r_we1 sc_out sc_logic 1 signal 0 } 
	{ output_r_address0 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_r_d0 sc_out sc_lv 16 signal 1 } 
	{ output_r_q0 sc_in sc_lv 16 signal 1 } 
	{ output_r_we0 sc_out sc_logic 1 signal 1 } 
	{ output_r_address1 sc_out sc_lv 6 signal 1 } 
	{ output_r_ce1 sc_out sc_logic 1 signal 1 } 
	{ output_r_d1 sc_out sc_lv 16 signal 1 } 
	{ output_r_q1 sc_in sc_lv 16 signal 1 } 
	{ output_r_we1 sc_out sc_logic 1 signal 1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "input_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we0" }} , 
 	{ "name": "input_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "input_r", "role": "address1" }} , 
 	{ "name": "input_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce1" }} , 
 	{ "name": "input_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "d1" }} , 
 	{ "name": "input_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "input_r", "role": "q1" }} , 
 	{ "name": "input_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "we1" }} , 
 	{ "name": "output_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address0" }} , 
 	{ "name": "output_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce0" }} , 
 	{ "name": "output_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d0" }} , 
 	{ "name": "output_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q0" }} , 
 	{ "name": "output_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we0" }} , 
 	{ "name": "output_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "output_r", "role": "address1" }} , 
 	{ "name": "output_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "ce1" }} , 
 	{ "name": "output_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "d1" }} , 
 	{ "name": "output_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_r", "role": "q1" }} , 
 	{ "name": "output_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_r", "role": "we1" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "17", "18", "28", "29"],
		"CDFG" : "dct",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "6", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "29", "Name" : "write_data_U0"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "read_data_U0", "Port" : "input_r"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "write_data_U0", "Port" : "output_r"}]},
			{"Name" : "dct_coeff_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "Loop_Row_DCT_Loop_pr_U0", "Port" : "dct_coeff_table"},
					{"ID" : "18", "SubInstance" : "Loop_Col_DCT_Loop_pr_U0", "Port" : "dct_coeff_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.row_outbuf_i_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_outbuf_i_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.col_inbuf_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0",
		"CDFG" : "read_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "7", "DependentChan" : "4"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "Loop_Row_DCT_Loop_pr",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_2d_in", "Type" : "Memory", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "4"},
			{"Name" : "row_outbuf_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "1"},
			{"Name" : "dct_coeff_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_coeff_table_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mul_mul_16s_1cud_U3", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mul_mul_16s_1cud_U4", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mul_mul_16s_1cud_U5", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_U6", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mac_muladd_16eOg_U7", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_U8", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_U9", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Row_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_U10", "Parent" : "7"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Xpose_Row_Outer_U0", "Parent" : "0",
		"CDFG" : "Loop_Xpose_Row_Outer",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "row_outbuf_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "1"},
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "18", "DependentChan" : "3"}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "Loop_Col_DCT_Loop_pr",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "col_inbuf", "Type" : "Memory", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "3"},
			{"Name" : "col_outbuf_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "28", "DependentChan" : "2"},
			{"Name" : "dct_coeff_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_coeff_table_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mul_mul_16s_1cud_x_U16", "Parent" : "18"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mul_mul_16s_1cud_x_U17", "Parent" : "18"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mul_mul_16s_1cud_x_U18", "Parent" : "18"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_x_U19", "Parent" : "18"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mac_muladd_16eOg_x_U20", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_x_U21", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_x_U22", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_Col_DCT_Loop_pr_U0.dct_mac_muladd_16dEe_x_U23", "Parent" : "18"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_Xpose_Col_Outer_U0", "Parent" : "0",
		"CDFG" : "Loop_Xpose_Col_Outer",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "col_outbuf_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "18", "DependentChan" : "2"},
			{"Name" : "buf_2d_out", "Type" : "Memory", "Direction" : "O", "DependentProc" : "29", "DependentChan" : "5"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data_U0", "Parent" : "0",
		"CDFG" : "write_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "28", "DependentChan" : "5"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dct {
		input_r {Type I LastRead 3 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		dct_coeff_table {Type I LastRead -1 FirstWrite -1}}
	read_data {
		input_r {Type I LastRead 3 FirstWrite -1}
		buf_r {Type IO LastRead 5 FirstWrite 6}}
	Loop_Row_DCT_Loop_pr {
		buf_2d_in {Type I LastRead 2 FirstWrite -1}
		row_outbuf_i {Type O LastRead -1 FirstWrite 7}
		dct_coeff_table {Type I LastRead -1 FirstWrite -1}}
	Loop_Xpose_Row_Outer {
		row_outbuf_i {Type I LastRead 3 FirstWrite -1}
		col_inbuf {Type IO LastRead 5 FirstWrite 6}}
	Loop_Col_DCT_Loop_pr {
		col_inbuf {Type I LastRead 2 FirstWrite -1}
		col_outbuf_i {Type O LastRead -1 FirstWrite 7}
		dct_coeff_table {Type I LastRead -1 FirstWrite -1}}
	Loop_Xpose_Col_Outer {
		col_outbuf_i {Type I LastRead 2 FirstWrite -1}
		buf_2d_out {Type O LastRead -1 FirstWrite 3}}
	write_data {
		buf_r {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "647", "Max" : "647"}
	, {"Name" : "Interval", "Min" : "134", "Max" : "134"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 6 }  { input_r_ce0 mem_ce 1 1 }  { input_r_d0 mem_din 1 16 }  { input_r_q0 mem_dout 0 16 }  { input_r_we0 mem_we 1 1 }  { input_r_address1 mem_address 1 6 }  { input_r_ce1 mem_ce 1 1 }  { input_r_d1 mem_din 1 16 }  { input_r_q1 mem_dout 0 16 }  { input_r_we1 mem_we 1 1 } } }
	output_r { ap_memory {  { output_r_address0 mem_address 1 6 }  { output_r_ce0 mem_ce 1 1 }  { output_r_d0 mem_din 1 16 }  { output_r_q0 mem_dout 0 16 }  { output_r_we0 mem_we 1 1 }  { output_r_address1 mem_address 1 6 }  { output_r_ce1 mem_ce 1 1 }  { output_r_d1 mem_din 1 16 }  { output_r_q1 mem_dout 0 16 }  { output_r_we1 mem_we 1 1 } } }
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
}
