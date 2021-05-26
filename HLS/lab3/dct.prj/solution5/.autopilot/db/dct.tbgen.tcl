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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "39"],
		"CDFG" : "dct",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "10", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "39", "Name" : "write_data_U0"}],
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "read_data_U0", "Port" : "input_r"}]},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "write_data_U0", "Port" : "output_r"}]},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_0"}]},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_1"}]},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_2"}]},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_3"}]},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_4"}]},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_5"}]},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_6"}]},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "dct_2d_U0", "Port" : "dct_coeff_table_7"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_in_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_2d_out_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0",
		"CDFG" : "read_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "1"},
			{"Name" : "buf_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "2"},
			{"Name" : "buf_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "3"},
			{"Name" : "buf_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "4"},
			{"Name" : "buf_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "5"},
			{"Name" : "buf_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "6"},
			{"Name" : "buf_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "7"},
			{"Name" : "buf_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "8"}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "dct_2d",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dct_1d_fu_363"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dct_1d_fu_363"}],
		"Port" : [
			{"Name" : "in_block_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "1",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src"}]},
			{"Name" : "in_block_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "2",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src1"}]},
			{"Name" : "in_block_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "3",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src2"}]},
			{"Name" : "in_block_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "4",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src3"}]},
			{"Name" : "in_block_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "5",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src4"}]},
			{"Name" : "in_block_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "6",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src5"}]},
			{"Name" : "in_block_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "7",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src6"}]},
			{"Name" : "in_block_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "8",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "src7"}]},
			{"Name" : "out_block", "Type" : "Memory", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "9"},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_0"}]},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_1"}]},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_2"}]},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_3"}]},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_4"}]},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_5"}]},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_6"}]},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_dct_1d_fu_363", "Port" : "dct_coeff_table_7"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.row_outbuf_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_outbuf_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_0_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_1_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_2_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_3_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_4_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_5_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_6_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.col_inbuf_7_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363", "Parent" : "11", "Child" : ["23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38"],
		"CDFG" : "dct_1d",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "src", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "src7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tmp_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "dst", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "dct_coeff_table_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dct_coeff_table_7", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_0_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_1_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_2_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_3_U", "Parent" : "22"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_4_U", "Parent" : "22"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_5_U", "Parent" : "22"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_6_U", "Parent" : "22"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_coeff_table_7_U", "Parent" : "22"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mul_mul_15s_1jbC_U10", "Parent" : "22"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mul_mul_15s_1jbC_U11", "Parent" : "22"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mul_mul_15s_1jbC_U12", "Parent" : "22"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mac_muladd_14kbM_U13", "Parent" : "22"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mac_muladd_15lbW_U14", "Parent" : "22"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mac_muladd_15lbW_U15", "Parent" : "22"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mac_muladd_15lbW_U16", "Parent" : "22"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dct_2d_U0.grp_dct_1d_fu_363.dct_mac_muladd_15mb6_U17", "Parent" : "22"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data_U0", "Parent" : "0",
		"CDFG" : "write_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "9"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	dct {
		input_r {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}
		dct_coeff_table_0 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	read_data {
		input_r {Type I LastRead 2 FirstWrite -1}
		buf_0 {Type O LastRead -1 FirstWrite 3}
		buf_1 {Type O LastRead -1 FirstWrite 3}
		buf_2 {Type O LastRead -1 FirstWrite 3}
		buf_3 {Type O LastRead -1 FirstWrite 3}
		buf_4 {Type O LastRead -1 FirstWrite 3}
		buf_5 {Type O LastRead -1 FirstWrite 3}
		buf_6 {Type O LastRead -1 FirstWrite 3}
		buf_7 {Type O LastRead -1 FirstWrite 3}}
	dct_2d {
		in_block_0 {Type I LastRead 2 FirstWrite -1}
		in_block_1 {Type I LastRead 1 FirstWrite -1}
		in_block_2 {Type I LastRead 2 FirstWrite -1}
		in_block_3 {Type I LastRead 1 FirstWrite -1}
		in_block_4 {Type I LastRead 2 FirstWrite -1}
		in_block_5 {Type I LastRead 1 FirstWrite -1}
		in_block_6 {Type I LastRead 2 FirstWrite -1}
		in_block_7 {Type I LastRead 2 FirstWrite -1}
		out_block {Type O LastRead -1 FirstWrite 7}
		dct_coeff_table_0 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	dct_1d {
		src {Type I LastRead 2 FirstWrite -1}
		src1 {Type I LastRead 1 FirstWrite -1}
		src2 {Type I LastRead 2 FirstWrite -1}
		src3 {Type I LastRead 1 FirstWrite -1}
		src4 {Type I LastRead 2 FirstWrite -1}
		src5 {Type I LastRead 1 FirstWrite -1}
		src6 {Type I LastRead 2 FirstWrite -1}
		src7 {Type I LastRead 2 FirstWrite -1}
		tmp_6 {Type I LastRead 0 FirstWrite -1}
		dst {Type O LastRead -1 FirstWrite 6}
		tmp_61 {Type I LastRead 0 FirstWrite -1}
		dct_coeff_table_0 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_1 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_2 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_3 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_4 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_5 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_6 {Type I LastRead -1 FirstWrite -1}
		dct_coeff_table_7 {Type I LastRead -1 FirstWrite -1}}
	write_data {
		buf_r {Type I LastRead 2 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "528", "Max" : "528"}
	, {"Name" : "Interval", "Min" : "393", "Max" : "393"}
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
