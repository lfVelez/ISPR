//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Sat May 29 09:26:14 2021
//Host        : DESKTOP-0VN1C2G running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (BCLK,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK1,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    PBDATA,
    PBLRCLK,
    RECDAT,
    RECLRCLK,
    gpio2_tri_i,
    gpio_tri_o,
    iic_1_scl_io,
    iic_1_sda_io);
  output BCLK;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK1;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output PBDATA;
  output PBLRCLK;
  input RECDAT;
  output RECLRCLK;
  input [0:0]gpio2_tri_i;
  output [0:0]gpio_tri_o;
  inout iic_1_scl_io;
  inout iic_1_sda_io;

  wire BCLK;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCLK_CLK1;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire PBDATA;
  wire PBLRCLK;
  wire RECDAT;
  wire RECLRCLK;
  wire [0:0]gpio2_tri_i;
  wire [0:0]gpio_tri_o;
  wire iic_1_scl_i;
  wire iic_1_scl_io;
  wire iic_1_scl_o;
  wire iic_1_scl_t;
  wire iic_1_sda_i;
  wire iic_1_sda_io;
  wire iic_1_sda_o;
  wire iic_1_sda_t;

  IOBUF iic_1_scl_iobuf
       (.I(iic_1_scl_o),
        .IO(iic_1_scl_io),
        .O(iic_1_scl_i),
        .T(iic_1_scl_t));
  IOBUF iic_1_sda_iobuf
       (.I(iic_1_sda_o),
        .IO(iic_1_sda_io),
        .O(iic_1_sda_i),
        .T(iic_1_sda_t));
  system system_i
       (.BCLK(BCLK),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK1(FCLK_CLK1),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .GPIO2_tri_i(gpio2_tri_i),
        .GPIO_tri_o(gpio_tri_o),
        .IIC_1_scl_i(iic_1_scl_i),
        .IIC_1_scl_o(iic_1_scl_o),
        .IIC_1_scl_t(iic_1_scl_t),
        .IIC_1_sda_i(iic_1_sda_i),
        .IIC_1_sda_o(iic_1_sda_o),
        .IIC_1_sda_t(iic_1_sda_t),
        .PBDATA(PBDATA),
        .PBLRCLK(PBLRCLK),
        .RECDAT(RECDAT),
        .RECLRCLK(RECLRCLK));
endmodule
