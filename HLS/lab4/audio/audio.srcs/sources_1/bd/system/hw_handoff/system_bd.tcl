
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z010clg400-1
   set_property BOARD_PART digilentinc.com:zybo:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set GPIO [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO ]
  set GPIO2 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO2 ]
  set IIC_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 IIC_1 ]

  # Create ports
  set BCLK [ create_bd_port -dir O BCLK ]
  set FCLK_CLK1 [ create_bd_port -dir O -type clk FCLK_CLK1 ]
  set PBDATA [ create_bd_port -dir O PBDATA ]
  set PBLRCLK [ create_bd_port -dir O PBLRCLK ]
  set RECDAT [ create_bd_port -dir I RECDAT ]
  set RECLRCLK [ create_bd_port -dir O RECLRCLK ]

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS_2 {1} \
CONFIG.C_ALL_OUTPUTS {1} \
CONFIG.C_GPIO2_WIDTH {1} \
CONFIG.C_GPIO_WIDTH {1} \
CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: fir_left, and set properties
  set fir_left [ create_bd_cell -type ip -vlnv xilinx.com:hls:fir:1.0 fir_left ]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /fir_left/s_axi_fir_io]

  # Create instance: fir_right, and set properties
  set fir_right [ create_bd_cell -type ip -vlnv xilinx.com:hls:fir:1.0 fir_right ]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /fir_right/s_axi_fir_io]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {650} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ENET0_ENET0_IO {<Select>} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {0} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {12.288} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {0} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_IRQ_F2P_INTR {1} \
CONFIG.PCW_MIO_0_PULLUP {<Select>} \
CONFIG.PCW_MIO_10_PULLUP {<Select>} \
CONFIG.PCW_MIO_11_PULLUP {<Select>} \
CONFIG.PCW_MIO_12_PULLUP {<Select>} \
CONFIG.PCW_MIO_16_IOTYPE {<Select>} \
CONFIG.PCW_MIO_16_PULLUP {<Select>} \
CONFIG.PCW_MIO_16_SLEW {<Select>} \
CONFIG.PCW_MIO_17_IOTYPE {<Select>} \
CONFIG.PCW_MIO_17_PULLUP {<Select>} \
CONFIG.PCW_MIO_17_SLEW {<Select>} \
CONFIG.PCW_MIO_18_IOTYPE {<Select>} \
CONFIG.PCW_MIO_18_PULLUP {<Select>} \
CONFIG.PCW_MIO_18_SLEW {<Select>} \
CONFIG.PCW_MIO_19_IOTYPE {<Select>} \
CONFIG.PCW_MIO_19_PULLUP {<Select>} \
CONFIG.PCW_MIO_19_SLEW {<Select>} \
CONFIG.PCW_MIO_1_PULLUP {disabled} \
CONFIG.PCW_MIO_1_SLEW {fast} \
CONFIG.PCW_MIO_20_IOTYPE {<Select>} \
CONFIG.PCW_MIO_20_PULLUP {<Select>} \
CONFIG.PCW_MIO_20_SLEW {<Select>} \
CONFIG.PCW_MIO_21_IOTYPE {<Select>} \
CONFIG.PCW_MIO_21_PULLUP {<Select>} \
CONFIG.PCW_MIO_21_SLEW {<Select>} \
CONFIG.PCW_MIO_22_IOTYPE {<Select>} \
CONFIG.PCW_MIO_22_PULLUP {<Select>} \
CONFIG.PCW_MIO_22_SLEW {<Select>} \
CONFIG.PCW_MIO_23_IOTYPE {<Select>} \
CONFIG.PCW_MIO_23_PULLUP {<Select>} \
CONFIG.PCW_MIO_23_SLEW {<Select>} \
CONFIG.PCW_MIO_24_IOTYPE {<Select>} \
CONFIG.PCW_MIO_24_PULLUP {<Select>} \
CONFIG.PCW_MIO_24_SLEW {<Select>} \
CONFIG.PCW_MIO_25_IOTYPE {<Select>} \
CONFIG.PCW_MIO_25_PULLUP {<Select>} \
CONFIG.PCW_MIO_25_SLEW {<Select>} \
CONFIG.PCW_MIO_26_IOTYPE {<Select>} \
CONFIG.PCW_MIO_26_PULLUP {<Select>} \
CONFIG.PCW_MIO_26_SLEW {<Select>} \
CONFIG.PCW_MIO_27_IOTYPE {<Select>} \
CONFIG.PCW_MIO_27_PULLUP {<Select>} \
CONFIG.PCW_MIO_27_SLEW {<Select>} \
CONFIG.PCW_MIO_28_PULLUP {<Select>} \
CONFIG.PCW_MIO_28_SLEW {<Select>} \
CONFIG.PCW_MIO_29_PULLUP {<Select>} \
CONFIG.PCW_MIO_29_SLEW {<Select>} \
CONFIG.PCW_MIO_2_SLEW {fast} \
CONFIG.PCW_MIO_30_PULLUP {<Select>} \
CONFIG.PCW_MIO_30_SLEW {<Select>} \
CONFIG.PCW_MIO_31_PULLUP {<Select>} \
CONFIG.PCW_MIO_31_SLEW {<Select>} \
CONFIG.PCW_MIO_32_PULLUP {<Select>} \
CONFIG.PCW_MIO_32_SLEW {<Select>} \
CONFIG.PCW_MIO_33_PULLUP {<Select>} \
CONFIG.PCW_MIO_33_SLEW {<Select>} \
CONFIG.PCW_MIO_34_PULLUP {<Select>} \
CONFIG.PCW_MIO_34_SLEW {<Select>} \
CONFIG.PCW_MIO_35_PULLUP {<Select>} \
CONFIG.PCW_MIO_35_SLEW {<Select>} \
CONFIG.PCW_MIO_36_PULLUP {<Select>} \
CONFIG.PCW_MIO_36_SLEW {<Select>} \
CONFIG.PCW_MIO_37_PULLUP {<Select>} \
CONFIG.PCW_MIO_37_SLEW {<Select>} \
CONFIG.PCW_MIO_38_PULLUP {<Select>} \
CONFIG.PCW_MIO_38_SLEW {<Select>} \
CONFIG.PCW_MIO_39_PULLUP {<Select>} \
CONFIG.PCW_MIO_39_SLEW {<Select>} \
CONFIG.PCW_MIO_3_SLEW {fast} \
CONFIG.PCW_MIO_40_PULLUP {<Select>} \
CONFIG.PCW_MIO_40_SLEW {<Select>} \
CONFIG.PCW_MIO_41_PULLUP {<Select>} \
CONFIG.PCW_MIO_41_SLEW {<Select>} \
CONFIG.PCW_MIO_42_PULLUP {<Select>} \
CONFIG.PCW_MIO_42_SLEW {<Select>} \
CONFIG.PCW_MIO_43_PULLUP {<Select>} \
CONFIG.PCW_MIO_43_SLEW {<Select>} \
CONFIG.PCW_MIO_44_PULLUP {<Select>} \
CONFIG.PCW_MIO_44_SLEW {<Select>} \
CONFIG.PCW_MIO_45_PULLUP {<Select>} \
CONFIG.PCW_MIO_45_SLEW {<Select>} \
CONFIG.PCW_MIO_47_PULLUP {<Select>} \
CONFIG.PCW_MIO_48_PULLUP {disabled} \
CONFIG.PCW_MIO_49_PULLUP {disabled} \
CONFIG.PCW_MIO_4_SLEW {fast} \
CONFIG.PCW_MIO_50_DIRECTION {<Select>} \
CONFIG.PCW_MIO_50_PULLUP {<Select>} \
CONFIG.PCW_MIO_51_DIRECTION {<Select>} \
CONFIG.PCW_MIO_51_PULLUP {<Select>} \
CONFIG.PCW_MIO_52_PULLUP {<Select>} \
CONFIG.PCW_MIO_52_SLEW {<Select>} \
CONFIG.PCW_MIO_53_PULLUP {<Select>} \
CONFIG.PCW_MIO_53_SLEW {<Select>} \
CONFIG.PCW_MIO_5_SLEW {fast} \
CONFIG.PCW_MIO_6_SLEW {fast} \
CONFIG.PCW_MIO_8_SLEW {fast} \
CONFIG.PCW_MIO_9_PULLUP {<Select>} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {0} \
CONFIG.PCW_SD0_GRP_CD_IO {<Select>} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.176} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.159} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.162} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.187} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {-0.073} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {-0.034} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.03} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.082} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {525} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB0_RESET_ENABLE {0} \
CONFIG.PCW_USB0_RESET_IO {<Select>} \
CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
 ] $ps7_0_axi_periph

  # Create instance: rst_ps7_0_100M, and set properties
  set rst_ps7_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_100M ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]

  # Create instance: zybo_audio_ctrl_0, and set properties
  set zybo_audio_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:xilinx:zybo_audio_ctrl:1.0 zybo_audio_ctrl_0 ]

  set_property -dict [ list \
CONFIG.NUM_READ_OUTSTANDING {1} \
CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /zybo_audio_ctrl_0/S_AXI]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports GPIO] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports GPIO2] [get_bd_intf_pins axi_gpio_0/GPIO2]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_IIC_1 [get_bd_intf_ports IIC_1] [get_bd_intf_pins processing_system7_0/IIC_1]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins ps7_0_axi_periph/M01_AXI] [get_bd_intf_pins zybo_audio_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins fir_left/s_axi_fir_io] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins fir_right/s_axi_fir_io] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]

  # Create port connections
  connect_bd_net -net RECDAT_1 [get_bd_ports RECDAT] [get_bd_pins zybo_audio_ctrl_0/RECDAT]
  connect_bd_net -net fir_left_interrupt [get_bd_pins fir_left/interrupt] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net fir_right_interrupt [get_bd_pins fir_right/interrupt] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins fir_left/ap_clk] [get_bd_pins fir_right/ap_clk] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_ps7_0_100M/slowest_sync_clk] [get_bd_pins zybo_audio_ctrl_0/S_AXI_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_ports FCLK_CLK1] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_100M/ext_reset_in]
  connect_bd_net -net rst_ps7_0_100M_interconnect_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_ps7_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ps7_0_100M_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins fir_left/ap_rst_n] [get_bd_pins fir_right/ap_rst_n] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_ps7_0_100M/peripheral_aresetn] [get_bd_pins zybo_audio_ctrl_0/S_AXI_ARESETN]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net zybo_audio_ctrl_0_BCLK [get_bd_ports BCLK] [get_bd_pins zybo_audio_ctrl_0/BCLK]
  connect_bd_net -net zybo_audio_ctrl_0_PBDATA [get_bd_ports PBDATA] [get_bd_pins zybo_audio_ctrl_0/PBDATA]
  connect_bd_net -net zybo_audio_ctrl_0_PBLRCLK [get_bd_ports PBLRCLK] [get_bd_pins zybo_audio_ctrl_0/PBLRCLK]
  connect_bd_net -net zybo_audio_ctrl_0_RECLRCLK [get_bd_ports RECLRCLK] [get_bd_pins zybo_audio_ctrl_0/RECLRCLK]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C00000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs fir_left/s_axi_fir_io/Reg] SEG_fir_left_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x43C10000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs fir_right/s_axi_fir_io/Reg] SEG_fir_right_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x60000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs zybo_audio_ctrl_0/S_AXI/reg0] SEG_zybo_audio_ctrl_0_reg0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


