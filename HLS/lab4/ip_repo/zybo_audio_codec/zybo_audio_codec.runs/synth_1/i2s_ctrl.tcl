# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1
set_property target_language VHDL [current_project]
set_param project.compositeFile.enableAutoGeneration 0
read_vhdl {
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/family_support.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/common_types.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/pselect_f.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/address_decoder.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/slave_attachment.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/iis_ser.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/iis_deser.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/user_logic.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/axi_lite_ipif.vhd
  C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.srcs/sources_1/imports/i2s_audio/i2s_ctrl.vhd
}
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/xup/hls/labs/lab4/zybo_audio_codec/zybo_audio_codec.data/wt [current_project]
set_property parent.project_dir C:/xup/hls/labs/lab4/zybo_audio_codec [current_project]
synth_design -top i2s_ctrl -part xc7z010clg400-1
write_checkpoint i2s_ctrl.dcp
report_utilization -file i2s_ctrl_utilization_synth.rpt -pb i2s_ctrl_utilization_synth.pb
