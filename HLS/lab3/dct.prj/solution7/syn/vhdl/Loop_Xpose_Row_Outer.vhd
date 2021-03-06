-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_Xpose_Row_Outer is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    row_outbuf_i_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    row_outbuf_i_ce0 : OUT STD_LOGIC;
    row_outbuf_i_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    col_inbuf_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    col_inbuf_ce0 : OUT STD_LOGIC;
    col_inbuf_we0 : OUT STD_LOGIC;
    col_inbuf_d0 : OUT STD_LOGIC_VECTOR (127 downto 0);
    col_inbuf_q0 : IN STD_LOGIC_VECTOR (127 downto 0) );
end;


architecture behav of Loop_Xpose_Row_Outer is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv7_F : STD_LOGIC_VECTOR (6 downto 0) := "0001111";
    constant ap_const_lv8_7F : STD_LOGIC_VECTOR (7 downto 0) := "01111111";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten_reg_81 : STD_LOGIC_VECTOR (6 downto 0);
    signal j_0_i_reg_92 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_1_i_reg_104 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_flatten_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_331 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal ap_reg_pp0_iter1_exitcond_flatten_reg_331 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter2_exitcond_flatten_reg_331 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_122_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten_next_reg_335 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal i_1_i_mid2_fu_140_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_1_i_mid2_reg_340 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state7_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_flag00011001 : BOOLEAN;
    signal tmp_3_mid2_v_fu_148_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_mid2_v_reg_346 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_27_fu_156_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_27_reg_353 : STD_LOGIC_VECTOR (2 downto 0);
    signal col_inbuf_addr_reg_363 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_reg_pp0_iter2_col_inbuf_addr_reg_363 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_fu_189_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_368 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal row_outbuf_i_load_reg_373 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_28_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_28_reg_378 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_29_fu_213_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_29_reg_384 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_demorgan_fu_263_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal p_demorgan_reg_390 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_40_fu_287_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_40_reg_396 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage1_flag00011011 : BOOLEAN;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal indvar_flatten_phi_fu_85_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal j_0_i_phi_fu_96_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage1_flag00000000 : BOOLEAN;
    signal i_1_i_phi_fu_108_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_10_cast_fu_184_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_mid2_fu_160_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_128_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_167_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_9_cast_fu_174_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_3_mid2_cast_fu_164_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_1_fu_178_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_194_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_5_fu_201_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_30_fu_217_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_33_fu_221_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_34_fu_229_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_36_fu_237_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_38_fu_243_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_39_fu_247_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_43_fu_251_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_44_fu_257_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_32_fu_272_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_35_fu_277_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_31_fu_269_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_37_fu_283_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_41_fu_293_p4 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_45_fu_308_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_42_fu_302_p3 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_46_fu_313_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_47_fu_319_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0))) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_1_i_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_331 = ap_const_lv1_0))) then 
                i_1_i_reg_104 <= i_reg_368;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                i_1_i_reg_104 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_81_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_331 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                indvar_flatten_reg_81 <= indvar_flatten_next_reg_335;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                indvar_flatten_reg_81 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    j_0_i_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_331 = ap_const_lv1_0))) then 
                j_0_i_reg_92 <= tmp_3_mid2_v_reg_346;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                j_0_i_reg_92 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_exitcond_flatten_reg_331 <= exitcond_flatten_reg_331;
                ap_reg_pp0_iter2_col_inbuf_addr_reg_363 <= col_inbuf_addr_reg_363;
                ap_reg_pp0_iter2_exitcond_flatten_reg_331 <= ap_reg_pp0_iter1_exitcond_flatten_reg_331;
                exitcond_flatten_reg_331 <= exitcond_flatten_fu_116_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_331 = ap_const_lv1_0))) then
                col_inbuf_addr_reg_363 <= tmp_3_mid2_fu_160_p1(3 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_331 = ap_const_lv1_0))) then
                i_1_i_mid2_reg_340 <= i_1_i_mid2_fu_140_p3;
                tmp_27_reg_353 <= tmp_27_fu_156_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_331 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then
                i_reg_368 <= i_fu_189_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then
                indvar_flatten_next_reg_335 <= indvar_flatten_next_fu_122_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_reg_pp0_iter1_exitcond_flatten_reg_331 = ap_const_lv1_0))) then
                p_demorgan_reg_390 <= p_demorgan_fu_263_p2;
                row_outbuf_i_load_reg_373 <= row_outbuf_i_q0;
                tmp_28_reg_378 <= tmp_28_fu_207_p2;
                    tmp_29_reg_384(6 downto 4) <= tmp_29_fu_213_p1(6 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_331 = ap_const_lv1_0))) then
                tmp_3_mid2_v_reg_346 <= tmp_3_mid2_v_fu_148_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_reg_pp0_iter1_exitcond_flatten_reg_331 = ap_const_lv1_0))) then
                tmp_40_reg_396 <= tmp_40_fu_287_p2;
            end if;
        end if;
    end process;
    tmp_29_reg_384(3 downto 0) <= "0000";
    tmp_29_reg_384(7) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, exitcond_flatten_fu_116_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011011, ap_block_pp0_stage1_flag00011011, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_116_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_116_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if (((ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0) and not(((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state8 <= ap_CS_fsm(3);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_flag00011001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_flag00011011 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_flag00011001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_flag00011011 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage1_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_flatten_fu_116_p2)
    begin
        if ((exitcond_flatten_fu_116_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state8)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    col_inbuf_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_pp0_stage1, col_inbuf_addr_reg_363, ap_reg_pp0_iter2_col_inbuf_addr_reg_363, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_flag00000000, ap_block_pp0_stage1_flag00000000)
    begin
        if ((ap_const_logic_1 = ap_enable_reg_pp0_iter2)) then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
                col_inbuf_address0 <= ap_reg_pp0_iter2_col_inbuf_addr_reg_363;
            elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
                col_inbuf_address0 <= col_inbuf_addr_reg_363;
            else 
                col_inbuf_address0 <= "XXX";
            end if;
        else 
            col_inbuf_address0 <= "XXX";
        end if; 
    end process;


    col_inbuf_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2)))) then 
            col_inbuf_ce0 <= ap_const_logic_1;
        else 
            col_inbuf_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    col_inbuf_d0 <= (tmp_46_fu_313_p2 or tmp_47_fu_319_p2);

    col_inbuf_we0_assign_proc : process(ap_reg_pp0_iter2_exitcond_flatten_reg_331, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter2_exitcond_flatten_reg_331 = ap_const_lv1_0))) then 
            col_inbuf_we0 <= ap_const_logic_1;
        else 
            col_inbuf_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_flatten_fu_116_p2 <= "1" when (indvar_flatten_phi_fu_85_p4 = ap_const_lv7_40) else "0";
    i_1_i_mid2_fu_140_p3 <= 
        ap_const_lv4_0 when (tmp_s_fu_134_p2(0) = '1') else 
        i_1_i_phi_fu_108_p4;

    i_1_i_phi_fu_108_p4_assign_proc : process(i_1_i_reg_104, ap_reg_pp0_iter1_exitcond_flatten_reg_331, ap_CS_fsm_pp0_stage1, i_reg_368, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_331 = ap_const_lv1_0) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
            i_1_i_phi_fu_108_p4 <= i_reg_368;
        else 
            i_1_i_phi_fu_108_p4 <= i_1_i_reg_104;
        end if; 
    end process;

    i_fu_189_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(i_1_i_mid2_reg_340));
    indvar_flatten_next_fu_122_p2 <= std_logic_vector(unsigned(indvar_flatten_phi_fu_85_p4) + unsigned(ap_const_lv7_1));

    indvar_flatten_phi_fu_85_p4_assign_proc : process(indvar_flatten_reg_81, exitcond_flatten_reg_331, ap_CS_fsm_pp0_stage0, indvar_flatten_next_reg_335, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_331 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
            indvar_flatten_phi_fu_85_p4 <= indvar_flatten_next_reg_335;
        else 
            indvar_flatten_phi_fu_85_p4 <= indvar_flatten_reg_81;
        end if; 
    end process;


    j_0_i_phi_fu_96_p4_assign_proc : process(j_0_i_reg_92, ap_reg_pp0_iter1_exitcond_flatten_reg_331, ap_CS_fsm_pp0_stage1, tmp_3_mid2_v_reg_346, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_331 = ap_const_lv1_0) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
            j_0_i_phi_fu_96_p4 <= tmp_3_mid2_v_reg_346;
        else 
            j_0_i_phi_fu_96_p4 <= j_0_i_reg_92;
        end if; 
    end process;

    j_fu_128_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(j_0_i_phi_fu_96_p4));
    p_demorgan_fu_263_p2 <= (tmp_43_fu_251_p2 and tmp_44_fu_257_p2);
    row_outbuf_i_address0 <= tmp_10_cast_fu_184_p1(6 - 1 downto 0);

    row_outbuf_i_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
            row_outbuf_i_ce0 <= ap_const_logic_1;
        else 
            row_outbuf_i_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_10_cast_fu_184_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_1_fu_178_p2),64));
    tmp_1_fu_178_p2 <= std_logic_vector(unsigned(tmp_9_cast_fu_174_p1) + unsigned(tmp_3_mid2_cast_fu_164_p1));
    tmp_27_fu_156_p1 <= i_1_i_mid2_fu_140_p3(3 - 1 downto 0);
    tmp_28_fu_207_p2 <= "1" when (unsigned(tmp_4_fu_194_p3) > unsigned(tmp_5_fu_201_p2)) else "0";
    tmp_29_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_194_p3),8));
    tmp_30_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_201_p2),8));
    tmp_31_fu_269_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(row_outbuf_i_load_reg_373),128));
    tmp_32_fu_272_p2 <= (tmp_29_reg_384 xor ap_const_lv8_7F);
    tmp_33_fu_221_p3 <= 
        tmp_29_fu_213_p1 when (tmp_28_fu_207_p2(0) = '1') else 
        tmp_30_fu_217_p1;
    tmp_34_fu_229_p3 <= 
        tmp_30_fu_217_p1 when (tmp_28_fu_207_p2(0) = '1') else 
        tmp_29_fu_213_p1;
    tmp_35_fu_277_p3 <= 
        tmp_32_fu_272_p2 when (tmp_28_reg_378(0) = '1') else 
        tmp_29_reg_384;
    tmp_36_fu_237_p2 <= (tmp_33_fu_221_p3 xor ap_const_lv8_7F);
    tmp_37_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_35_fu_277_p3),128));
    tmp_38_fu_243_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_34_fu_229_p3),128));
    tmp_39_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_36_fu_237_p2),128));
    tmp_3_mid2_cast_fu_164_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_mid2_v_reg_346),8));
    tmp_3_mid2_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_mid2_v_reg_346),64));
    tmp_3_mid2_v_fu_148_p3 <= 
        j_fu_128_p2 when (tmp_s_fu_134_p2(0) = '1') else 
        j_0_i_phi_fu_96_p4;
    tmp_40_fu_287_p2 <= std_logic_vector(shift_left(unsigned(tmp_31_fu_269_p1),to_integer(unsigned('0' & tmp_37_fu_283_p1(31-1 downto 0)))));
    
    tmp_41_fu_293_p4_proc : process(tmp_40_reg_396)
    variable vlo_cpy : STD_LOGIC_VECTOR(128+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(128+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(128 - 1 downto 0);
    variable tmp_41_fu_293_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(128 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(128 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(128 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(7 - 1 downto 0) := ap_const_lv32_7F(7 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(7 - 1 downto 0) := ap_const_lv32_0(7 - 1 downto 0);
        v0_cpy := tmp_40_reg_396;
        if (vlo_cpy(7 - 1 downto 0) > vhi_cpy(7 - 1 downto 0)) then
            vhi_cpy(7-1 downto 0) := std_logic_vector(128-1-unsigned(ap_const_lv32_0(7-1 downto 0)));
            vlo_cpy(7-1 downto 0) := std_logic_vector(128-1-unsigned(ap_const_lv32_7F(7-1 downto 0)));
            for tmp_41_fu_293_p4_i in 0 to 128-1 loop
                v0_cpy(tmp_41_fu_293_p4_i) := tmp_40_reg_396(128-1-tmp_41_fu_293_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(7-1 downto 0)))));

        section := (others=>'0');
        section(7-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(7-1 downto 0)) - unsigned(vlo_cpy(7-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(128-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_41_fu_293_p4 <= resvalue(128-1 downto 0);
    end process;

    tmp_42_fu_302_p3 <= 
        tmp_41_fu_293_p4 when (tmp_28_reg_378(0) = '1') else 
        tmp_40_reg_396;
    tmp_43_fu_251_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv128_lc_1),to_integer(unsigned('0' & tmp_38_fu_243_p1(31-1 downto 0)))));
    tmp_44_fu_257_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv128_lc_1),to_integer(unsigned('0' & tmp_39_fu_247_p1(31-1 downto 0)))));
    tmp_45_fu_308_p2 <= (p_demorgan_reg_390 xor ap_const_lv128_lc_1);
    tmp_46_fu_313_p2 <= (col_inbuf_q0 and tmp_45_fu_308_p2);
    tmp_47_fu_319_p2 <= (tmp_42_fu_302_p3 and p_demorgan_reg_390);
    tmp_4_fu_194_p3 <= (tmp_27_reg_353 & ap_const_lv4_0);
    tmp_5_fu_201_p2 <= (tmp_4_fu_194_p3 or ap_const_lv7_F);
    tmp_9_cast_fu_174_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_167_p3),8));
    tmp_fu_167_p3 <= (i_1_i_mid2_reg_340 & ap_const_lv3_0);
    tmp_s_fu_134_p2 <= "1" when (i_1_i_phi_fu_108_p4 = ap_const_lv4_8) else "0";
end behav;
