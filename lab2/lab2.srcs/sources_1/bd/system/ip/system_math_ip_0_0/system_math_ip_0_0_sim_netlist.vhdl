-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Tue Mar  2 17:57:58 2021
-- Host        : lfsecuritas running 64-bit Ubuntu 20.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/lf-securitas/Documentos/ISPR/lab2/lab2.srcs/sources_1/bd/system/ip/system_math_ip_0_0/system_math_ip_0_0_sim_netlist.vhdl
-- Design      : system_math_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_math_ip_0_0_lab2_user_logic is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    result : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    \slv_reg0_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ain_vio : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    bin_vio : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_math_ip_0_0_lab2_user_logic : entity is "lab2_user_logic";
end system_math_ip_0_0_lab2_user_logic;

architecture STRUCTURE of system_math_ip_0_0_lab2_user_logic is
  signal L : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^result\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \result[3]_i_6_n_0\ : STD_LOGIC;
  signal \result[3]_i_7_n_0\ : STD_LOGIC;
  signal \result[3]_i_8_n_0\ : STD_LOGIC;
  signal \result[3]_i_9_n_0\ : STD_LOGIC;
  signal \result[7]_i_6_n_0\ : STD_LOGIC;
  signal \result[7]_i_7_n_0\ : STD_LOGIC;
  signal \result[7]_i_8_n_0\ : STD_LOGIC;
  signal \result[7]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \result_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_result_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_result_reg[8]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  SR(0) <= \^sr\(0);
  result(8 downto 0) <= \^result\(8 downto 0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(0),
      I1 => axi_araddr(0),
      I2 => Q(0),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(0)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(1),
      I1 => axi_araddr(0),
      I2 => Q(1),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(1)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(2),
      I1 => axi_araddr(0),
      I2 => Q(2),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(3),
      I1 => axi_araddr(0),
      I2 => Q(3),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(4),
      I1 => axi_araddr(0),
      I2 => Q(4),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(5),
      I1 => axi_araddr(0),
      I2 => Q(5),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(6),
      I1 => axi_araddr(0),
      I2 => Q(6),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(7),
      I1 => axi_araddr(0),
      I2 => Q(7),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^result\(8),
      I1 => axi_araddr(0),
      I2 => Q(8),
      I3 => axi_araddr(2),
      I4 => axi_araddr(1),
      O => D(8)
    );
\result[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(3),
      I1 => \slv_reg0_reg[7]\(3),
      I2 => sel,
      O => L(3)
    );
\result[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(2),
      I1 => \slv_reg0_reg[7]\(2),
      I2 => sel,
      O => L(2)
    );
\result[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(1),
      I1 => \slv_reg0_reg[7]\(1),
      I2 => sel,
      O => L(1)
    );
\result[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(0),
      I1 => \slv_reg0_reg[7]\(0),
      I2 => sel,
      O => L(0)
    );
\result[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(3),
      I1 => ain_vio(3),
      I2 => sel,
      I3 => Q(3),
      I4 => bin_vio(3),
      O => \result[3]_i_6_n_0\
    );
\result[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(2),
      I1 => ain_vio(2),
      I2 => sel,
      I3 => Q(2),
      I4 => bin_vio(2),
      O => \result[3]_i_7_n_0\
    );
\result[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(1),
      I1 => ain_vio(1),
      I2 => sel,
      I3 => Q(1),
      I4 => bin_vio(1),
      O => \result[3]_i_8_n_0\
    );
\result[3]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(0),
      I1 => ain_vio(0),
      I2 => sel,
      I3 => Q(0),
      I4 => bin_vio(0),
      O => \result[3]_i_9_n_0\
    );
\result[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(7),
      I1 => \slv_reg0_reg[7]\(7),
      I2 => sel,
      O => L(7)
    );
\result[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(6),
      I1 => \slv_reg0_reg[7]\(6),
      I2 => sel,
      O => L(6)
    );
\result[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(5),
      I1 => \slv_reg0_reg[7]\(5),
      I2 => sel,
      O => L(5)
    );
\result[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => ain_vio(4),
      I1 => \slv_reg0_reg[7]\(4),
      I2 => sel,
      O => L(4)
    );
\result[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(7),
      I1 => ain_vio(7),
      I2 => sel,
      I3 => Q(7),
      I4 => bin_vio(7),
      O => \result[7]_i_6_n_0\
    );
\result[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(6),
      I1 => ain_vio(6),
      I2 => sel,
      I3 => Q(6),
      I4 => bin_vio(6),
      O => \result[7]_i_7_n_0\
    );
\result[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(5),
      I1 => ain_vio(5),
      I2 => sel,
      I3 => Q(5),
      I4 => bin_vio(5),
      O => \result[7]_i_8_n_0\
    );
\result[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"353AC5CA"
    )
        port map (
      I0 => \slv_reg0_reg[7]\(4),
      I1 => ain_vio(4),
      I2 => sel,
      I3 => Q(4),
      I4 => bin_vio(4),
      O => \result[7]_i_9_n_0\
    );
\result_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \^result\(0),
      R => \^sr\(0)
    );
\result_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \^result\(1),
      R => \^sr\(0)
    );
\result_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(2),
      Q => \^result\(2),
      R => \^sr\(0)
    );
\result_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(3),
      Q => \^result\(3),
      R => \^sr\(0)
    );
\result_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg[3]_i_1_n_0\,
      CO(2) => \result_reg[3]_i_1_n_1\,
      CO(1) => \result_reg[3]_i_1_n_2\,
      CO(0) => \result_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(3 downto 0),
      O(3 downto 0) => plusOp(3 downto 0),
      S(3) => \result[3]_i_6_n_0\,
      S(2) => \result[3]_i_7_n_0\,
      S(1) => \result[3]_i_8_n_0\,
      S(0) => \result[3]_i_9_n_0\
    );
\result_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(4),
      Q => \^result\(4),
      R => \^sr\(0)
    );
\result_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(5),
      Q => \^result\(5),
      R => \^sr\(0)
    );
\result_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(6),
      Q => \^result\(6),
      R => \^sr\(0)
    );
\result_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(7),
      Q => \^result\(7),
      R => \^sr\(0)
    );
\result_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[3]_i_1_n_0\,
      CO(3) => \result_reg[7]_i_1_n_0\,
      CO(2) => \result_reg[7]_i_1_n_1\,
      CO(1) => \result_reg[7]_i_1_n_2\,
      CO(0) => \result_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => L(7 downto 4),
      O(3 downto 0) => plusOp(7 downto 4),
      S(3) => \result[7]_i_6_n_0\,
      S(2) => \result[7]_i_7_n_0\,
      S(1) => \result[7]_i_8_n_0\,
      S(0) => \result[7]_i_9_n_0\
    );
\result_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(8),
      Q => \^result\(8),
      R => \^sr\(0)
    );
\result_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg[7]_i_1_n_0\,
      CO(3 downto 1) => \NLW_result_reg[8]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => plusOp(8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_result_reg[8]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_math_ip_0_0_math_ip is
  port (
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 8 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ain_vio : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    bin_vio : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_math_ip_0_0_math_ip : entity is "math_ip";
end system_math_ip_0_0_math_ip;

architecture STRUCTURE of system_math_ip_0_0_math_ip is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal U1_n_0 : STD_LOGIC;
  signal U1_n_1 : STD_LOGIC;
  signal U1_n_18 : STD_LOGIC;
  signal U1_n_2 : STD_LOGIC;
  signal U1_n_3 : STD_LOGIC;
  signal U1_n_4 : STD_LOGIC;
  signal U1_n_5 : STD_LOGIC;
  signal U1_n_6 : STD_LOGIC;
  signal U1_n_7 : STD_LOGIC;
  signal U1_n_8 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rvalid00_out__0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_rdata[29]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[30]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair13";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
U1: entity work.system_math_ip_0_0_lab2_user_logic
     port map (
      D(8) => U1_n_0,
      D(7) => U1_n_1,
      D(6) => U1_n_2,
      D(5) => U1_n_3,
      D(4) => U1_n_4,
      D(3) => U1_n_5,
      D(2) => U1_n_6,
      D(1) => U1_n_7,
      D(0) => U1_n_8,
      Q(8 downto 0) => slv_reg1(8 downto 0),
      SR(0) => U1_n_18,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      ain_vio(7 downto 0) => ain_vio(7 downto 0),
      axi_araddr(2 downto 0) => axi_araddr(4 downto 2),
      bin_vio(7 downto 0) => bin_vio(7 downto 0),
      result(8 downto 0) => result(8 downto 0),
      sel => sel,
      \slv_reg0_reg[7]\(7 downto 0) => slv_reg0(7 downto 0)
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(0),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(1),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => S_AXI_ARADDR(2),
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(4),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => U1_n_18
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => U1_n_18
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => axi_araddr(4),
      R => U1_n_18
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => U1_n_18
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      I3 => \^s_axi_awready\,
      I4 => p_0_in,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      I3 => \^s_axi_awready\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      I3 => \^s_axi_awready\,
      I4 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in,
      R => U1_n_18
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => U1_n_18
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => U1_n_18
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_awready\,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^s_axi_awready\,
      R => U1_n_18
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => U1_n_18
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(4),
      I3 => axi_araddr(3),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_8,
      Q => S_AXI_RDATA(0),
      R => U1_n_18
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => S_AXI_RDATA(10),
      R => U1_n_18
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => S_AXI_RDATA(11),
      R => U1_n_18
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => S_AXI_RDATA(12),
      R => U1_n_18
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => S_AXI_RDATA(13),
      R => U1_n_18
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => S_AXI_RDATA(14),
      R => U1_n_18
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => S_AXI_RDATA(15),
      R => U1_n_18
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => S_AXI_RDATA(16),
      R => U1_n_18
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => S_AXI_RDATA(17),
      R => U1_n_18
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => S_AXI_RDATA(18),
      R => U1_n_18
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => S_AXI_RDATA(19),
      R => U1_n_18
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_7,
      Q => S_AXI_RDATA(1),
      R => U1_n_18
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => S_AXI_RDATA(20),
      R => U1_n_18
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => S_AXI_RDATA(21),
      R => U1_n_18
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => S_AXI_RDATA(22),
      R => U1_n_18
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => S_AXI_RDATA(23),
      R => U1_n_18
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => S_AXI_RDATA(24),
      R => U1_n_18
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => S_AXI_RDATA(25),
      R => U1_n_18
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => S_AXI_RDATA(26),
      R => U1_n_18
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => S_AXI_RDATA(27),
      R => U1_n_18
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => S_AXI_RDATA(28),
      R => U1_n_18
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => S_AXI_RDATA(29),
      R => U1_n_18
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_6,
      Q => S_AXI_RDATA(2),
      R => U1_n_18
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => S_AXI_RDATA(30),
      R => U1_n_18
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[31]_i_1_n_0\,
      Q => S_AXI_RDATA(31),
      R => U1_n_18
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_5,
      Q => S_AXI_RDATA(3),
      R => U1_n_18
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_4,
      Q => S_AXI_RDATA(4),
      R => U1_n_18
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_3,
      Q => S_AXI_RDATA(5),
      R => U1_n_18
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_2,
      Q => S_AXI_RDATA(6),
      R => U1_n_18
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_1,
      Q => S_AXI_RDATA(7),
      R => U1_n_18
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => U1_n_0,
      Q => S_AXI_RDATA(8),
      R => U1_n_18
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rvalid00_out__0\,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => S_AXI_RDATA(9),
      R => U1_n_18
    );
axi_rvalid00_out: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_arready\,
      O => \axi_rvalid00_out__0\
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => U1_n_18
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => U1_n_18
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => S_AXI_WSTRB(0),
      I3 => p_0_in,
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg0(0),
      R => U1_n_18
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg0(1),
      R => U1_n_18
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg0(2),
      R => U1_n_18
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg0(3),
      R => U1_n_18
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg0(4),
      R => U1_n_18
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg0(5),
      R => U1_n_18
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg0(6),
      R => U1_n_18
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg0(7),
      R => U1_n_18
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => p_0_in,
      I3 => S_AXI_WSTRB(1),
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => p_0_in,
      I3 => S_AXI_WSTRB(2),
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => p_0_in,
      I3 => S_AXI_WSTRB(3),
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => S_AXI_AWVALID,
      I1 => S_AXI_WVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      O => \slv_reg1[31]_i_2_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[4]\,
      I2 => p_0_in,
      I3 => S_AXI_WSTRB(0),
      I4 => \slv_reg1[31]_i_2_n_0\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(0),
      Q => slv_reg1(0),
      R => U1_n_18
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(10),
      Q => slv_reg1(10),
      R => U1_n_18
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(11),
      Q => slv_reg1(11),
      R => U1_n_18
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(12),
      Q => slv_reg1(12),
      R => U1_n_18
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(13),
      Q => slv_reg1(13),
      R => U1_n_18
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(14),
      Q => slv_reg1(14),
      R => U1_n_18
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(15),
      Q => slv_reg1(15),
      R => U1_n_18
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(16),
      Q => slv_reg1(16),
      R => U1_n_18
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(17),
      Q => slv_reg1(17),
      R => U1_n_18
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(18),
      Q => slv_reg1(18),
      R => U1_n_18
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(19),
      Q => slv_reg1(19),
      R => U1_n_18
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(1),
      Q => slv_reg1(1),
      R => U1_n_18
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(20),
      Q => slv_reg1(20),
      R => U1_n_18
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(21),
      Q => slv_reg1(21),
      R => U1_n_18
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(22),
      Q => slv_reg1(22),
      R => U1_n_18
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => S_AXI_WDATA(23),
      Q => slv_reg1(23),
      R => U1_n_18
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(24),
      Q => slv_reg1(24),
      R => U1_n_18
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(25),
      Q => slv_reg1(25),
      R => U1_n_18
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(26),
      Q => slv_reg1(26),
      R => U1_n_18
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(27),
      Q => slv_reg1(27),
      R => U1_n_18
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(28),
      Q => slv_reg1(28),
      R => U1_n_18
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(29),
      Q => slv_reg1(29),
      R => U1_n_18
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(2),
      Q => slv_reg1(2),
      R => U1_n_18
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(30),
      Q => slv_reg1(30),
      R => U1_n_18
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => S_AXI_WDATA(31),
      Q => slv_reg1(31),
      R => U1_n_18
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(3),
      Q => slv_reg1(3),
      R => U1_n_18
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(4),
      Q => slv_reg1(4),
      R => U1_n_18
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(5),
      Q => slv_reg1(5),
      R => U1_n_18
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(6),
      Q => slv_reg1(6),
      R => U1_n_18
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => S_AXI_WDATA(7),
      Q => slv_reg1(7),
      R => U1_n_18
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(8),
      Q => slv_reg1(8),
      R => U1_n_18
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => S_AXI_WDATA(9),
      Q => slv_reg1(9),
      R => U1_n_18
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_math_ip_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    ain_vio : in STD_LOGIC_VECTOR ( 7 downto 0 );
    bin_vio : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sel : in STD_LOGIC;
    result : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_math_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_math_ip_0_0 : entity is "system_math_ip_0_0,math_ip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_math_ip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_math_ip_0_0 : entity is "math_ip,Vivado 2017.2";
end system_math_ip_0_0;

architecture STRUCTURE of system_math_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_math_ip_0_0_math_ip
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(2 downto 0) => S_AXI_ARADDR(4 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(2 downto 0) => S_AXI_AWADDR(4 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      ain_vio(7 downto 0) => ain_vio(7 downto 0),
      bin_vio(7 downto 0) => bin_vio(7 downto 0),
      result(8 downto 0) => result(8 downto 0),
      sel => sel
    );
end STRUCTURE;
