-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_data is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    buf_r_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_r_ce0 : OUT STD_LOGIC;
    buf_r_we0 : OUT STD_LOGIC;
    buf_r_d0 : OUT STD_LOGIC_VECTOR (127 downto 0);
    buf_r_q0 : IN STD_LOGIC_VECTOR (127 downto 0) );
end;


architecture behav of read_data is 
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
    signal r_reg_92 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_reg_104 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_flatten_fu_116_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_332 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal ap_reg_pp0_iter1_exitcond_flatten_reg_332 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_pp0_iter2_exitcond_flatten_reg_332 : STD_LOGIC_VECTOR (0 downto 0);
    signal indvar_flatten_next_fu_122_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal indvar_flatten_next_reg_336 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal c_mid2_fu_140_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_mid2_reg_341 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state5_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_state7_pp0_stage1_iter2 : BOOLEAN;
    signal ap_block_pp0_stage1_flag00011001 : BOOLEAN;
    signal tmp_mid2_v_v_fu_148_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_mid2_v_v_reg_347 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_156_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_reg_352 : STD_LOGIC_VECTOR (2 downto 0);
    signal buf_addr_reg_357 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_reg_pp0_iter1_buf_addr_reg_357 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_4_fu_165_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_4_reg_362 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_2_fu_190_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_2_reg_372 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal input_load_reg_377 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_reg_382 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_214_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_6_reg_388 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_demorgan_fu_264_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal p_demorgan_reg_394 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_18_fu_288_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_18_reg_400 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_block_pp0_stage1_flag00011011 : BOOLEAN;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal indvar_flatten_phi_fu_85_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal r_phi_fu_96_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage1_flag00000000 : BOOLEAN;
    signal c_phi_fu_108_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_7_mid2_fu_160_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond5_fu_134_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_2_fu_128_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_cast2_fu_176_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_mid2_fu_169_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_9_fu_179_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_fu_195_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_3_fu_202_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_7_fu_218_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_11_fu_222_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_12_fu_230_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_14_fu_238_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_16_fu_244_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_17_fu_248_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_21_fu_252_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_22_fu_258_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_10_fu_273_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_13_fu_278_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_8_fu_270_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_15_fu_284_p1 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_19_fu_294_p4 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_23_fu_309_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_20_fu_303_p3 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_24_fu_314_p2 : STD_LOGIC_VECTOR (127 downto 0);
    signal tmp_25_fu_320_p2 : STD_LOGIC_VECTOR (127 downto 0);
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


    c_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_332 = ap_const_lv1_0))) then 
                c_reg_104 <= c_2_reg_372;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                c_reg_104 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_81_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_332 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                indvar_flatten_reg_81 <= indvar_flatten_next_reg_336;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                indvar_flatten_reg_81 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    r_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_332 = ap_const_lv1_0))) then 
                r_reg_92 <= tmp_mid2_v_v_reg_347;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                r_reg_92 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_buf_addr_reg_357 <= buf_addr_reg_357;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_exitcond_flatten_reg_332 <= exitcond_flatten_reg_332;
                ap_reg_pp0_iter2_exitcond_flatten_reg_332 <= ap_reg_pp0_iter1_exitcond_flatten_reg_332;
                exitcond_flatten_reg_332 <= exitcond_flatten_fu_116_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_332 = ap_const_lv1_0))) then
                buf_addr_reg_357 <= tmp_7_mid2_fu_160_p1(3 - 1 downto 0);
                c_mid2_reg_341 <= c_mid2_fu_140_p3;
                tmp_4_reg_362 <= tmp_4_fu_165_p1;
                tmp_reg_352 <= tmp_fu_156_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_332 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then
                c_2_reg_372 <= c_2_fu_190_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then
                indvar_flatten_next_reg_336 <= indvar_flatten_next_fu_122_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_reg_pp0_iter1_exitcond_flatten_reg_332 = ap_const_lv1_0))) then
                input_load_reg_377 <= input_r_q0;
                p_demorgan_reg_394 <= p_demorgan_fu_264_p2;
                tmp_5_reg_382 <= tmp_5_fu_208_p2;
                    tmp_6_reg_388(6 downto 4) <= tmp_6_fu_214_p1(6 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_reg_pp0_iter1_exitcond_flatten_reg_332 = ap_const_lv1_0))) then
                tmp_18_reg_400 <= tmp_18_fu_288_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_332 = ap_const_lv1_0))) then
                tmp_mid2_v_v_reg_347 <= tmp_mid2_v_v_fu_148_p3;
            end if;
        end if;
    end process;
    tmp_6_reg_388(3 downto 0) <= "0000";
    tmp_6_reg_388(7) <= '0';

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

    buf_r_address0 <= ap_reg_pp0_iter1_buf_addr_reg_357;

    buf_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2)) or ((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2)))) then 
            buf_r_ce0 <= ap_const_logic_1;
        else 
            buf_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_r_d0 <= (tmp_24_fu_314_p2 or tmp_25_fu_320_p2);

    buf_r_we0_assign_proc : process(ap_reg_pp0_iter2_exitcond_flatten_reg_332, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_block_pp0_stage1_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter2_exitcond_flatten_reg_332 = ap_const_lv1_0))) then 
            buf_r_we0 <= ap_const_logic_1;
        else 
            buf_r_we0 <= ap_const_logic_0;
        end if; 
    end process;

    c_2_fu_190_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(c_mid2_reg_341));
    c_cast2_fu_176_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_mid2_reg_341),6));
    c_mid2_fu_140_p3 <= 
        ap_const_lv4_0 when (exitcond5_fu_134_p2(0) = '1') else 
        c_phi_fu_108_p4;

    c_phi_fu_108_p4_assign_proc : process(c_reg_104, ap_reg_pp0_iter1_exitcond_flatten_reg_332, ap_CS_fsm_pp0_stage1, c_2_reg_372, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_332 = ap_const_lv1_0) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
            c_phi_fu_108_p4 <= c_2_reg_372;
        else 
            c_phi_fu_108_p4 <= c_reg_104;
        end if; 
    end process;

    exitcond5_fu_134_p2 <= "1" when (c_phi_fu_108_p4 = ap_const_lv4_8) else "0";
    exitcond_flatten_fu_116_p2 <= "1" when (indvar_flatten_phi_fu_85_p4 = ap_const_lv7_40) else "0";
    indvar_flatten_next_fu_122_p2 <= std_logic_vector(unsigned(indvar_flatten_phi_fu_85_p4) + unsigned(ap_const_lv7_1));

    indvar_flatten_phi_fu_85_p4_assign_proc : process(indvar_flatten_reg_81, exitcond_flatten_reg_332, ap_CS_fsm_pp0_stage0, indvar_flatten_next_reg_336, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_332 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
            indvar_flatten_phi_fu_85_p4 <= indvar_flatten_next_reg_336;
        else 
            indvar_flatten_phi_fu_85_p4 <= indvar_flatten_reg_81;
        end if; 
    end process;

    input_r_address0 <= tmp_s_fu_185_p1(6 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    p_demorgan_fu_264_p2 <= (tmp_21_fu_252_p2 and tmp_22_fu_258_p2);
    r_2_fu_128_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(r_phi_fu_96_p4));

    r_phi_fu_96_p4_assign_proc : process(r_reg_92, ap_reg_pp0_iter1_exitcond_flatten_reg_332, ap_CS_fsm_pp0_stage1, tmp_mid2_v_v_reg_347, ap_enable_reg_pp0_iter1, ap_block_pp0_stage1_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage1) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_reg_pp0_iter1_exitcond_flatten_reg_332 = ap_const_lv1_0) and (ap_block_pp0_stage1_flag00000000 = ap_const_boolean_0))) then 
            r_phi_fu_96_p4 <= tmp_mid2_v_v_reg_347;
        else 
            r_phi_fu_96_p4 <= r_reg_92;
        end if; 
    end process;

    tmp_10_fu_273_p2 <= (tmp_6_reg_388 xor ap_const_lv8_7F);
    tmp_11_fu_222_p3 <= 
        tmp_6_fu_214_p1 when (tmp_5_fu_208_p2(0) = '1') else 
        tmp_7_fu_218_p1;
    tmp_12_fu_230_p3 <= 
        tmp_7_fu_218_p1 when (tmp_5_fu_208_p2(0) = '1') else 
        tmp_6_fu_214_p1;
    tmp_13_fu_278_p3 <= 
        tmp_10_fu_273_p2 when (tmp_5_reg_382(0) = '1') else 
        tmp_6_reg_388;
    tmp_14_fu_238_p2 <= (tmp_11_fu_222_p3 xor ap_const_lv8_7F);
    tmp_15_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_13_fu_278_p3),128));
    tmp_16_fu_244_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_12_fu_230_p3),128));
    tmp_17_fu_248_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_14_fu_238_p2),128));
    tmp_18_fu_288_p2 <= std_logic_vector(shift_left(unsigned(tmp_8_fu_270_p1),to_integer(unsigned('0' & tmp_15_fu_284_p1(31-1 downto 0)))));
    
    tmp_19_fu_294_p4_proc : process(tmp_18_reg_400)
    variable vlo_cpy : STD_LOGIC_VECTOR(128+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(128+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(128 - 1 downto 0);
    variable tmp_19_fu_294_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(128 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(128 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(128 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(7 - 1 downto 0) := ap_const_lv32_7F(7 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(7 - 1 downto 0) := ap_const_lv32_0(7 - 1 downto 0);
        v0_cpy := tmp_18_reg_400;
        if (vlo_cpy(7 - 1 downto 0) > vhi_cpy(7 - 1 downto 0)) then
            vhi_cpy(7-1 downto 0) := std_logic_vector(128-1-unsigned(ap_const_lv32_0(7-1 downto 0)));
            vlo_cpy(7-1 downto 0) := std_logic_vector(128-1-unsigned(ap_const_lv32_7F(7-1 downto 0)));
            for tmp_19_fu_294_p4_i in 0 to 128-1 loop
                v0_cpy(tmp_19_fu_294_p4_i) := tmp_18_reg_400(128-1-tmp_19_fu_294_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(7-1 downto 0)))));

        section := (others=>'0');
        section(7-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(7-1 downto 0)) - unsigned(vlo_cpy(7-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(31-1 downto 0)))));
        res_mask := res_mask(128-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_19_fu_294_p4 <= resvalue(128-1 downto 0);
    end process;

    tmp_20_fu_303_p3 <= 
        tmp_19_fu_294_p4 when (tmp_5_reg_382(0) = '1') else 
        tmp_18_reg_400;
    tmp_21_fu_252_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv128_lc_1),to_integer(unsigned('0' & tmp_16_fu_244_p1(31-1 downto 0)))));
    tmp_22_fu_258_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv128_lc_1),to_integer(unsigned('0' & tmp_17_fu_248_p1(31-1 downto 0)))));
    tmp_23_fu_309_p2 <= (p_demorgan_reg_394 xor ap_const_lv128_lc_1);
    tmp_24_fu_314_p2 <= (buf_r_q0 and tmp_23_fu_309_p2);
    tmp_25_fu_320_p2 <= (tmp_20_fu_303_p3 and p_demorgan_reg_394);
    tmp_2_fu_195_p3 <= (tmp_4_reg_362 & ap_const_lv4_0);
    tmp_3_fu_202_p2 <= (tmp_2_fu_195_p3 or ap_const_lv7_F);
    tmp_4_fu_165_p1 <= c_mid2_fu_140_p3(3 - 1 downto 0);
    tmp_5_fu_208_p2 <= "1" when (unsigned(tmp_2_fu_195_p3) > unsigned(tmp_3_fu_202_p2)) else "0";
    tmp_6_fu_214_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_2_fu_195_p3),8));
    tmp_7_fu_218_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_202_p2),8));
    tmp_7_mid2_fu_160_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_mid2_v_v_fu_148_p3),64));
    tmp_8_fu_270_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(input_load_reg_377),128));
    tmp_9_fu_179_p2 <= std_logic_vector(unsigned(c_cast2_fu_176_p1) + unsigned(tmp_mid2_fu_169_p3));
    tmp_fu_156_p1 <= tmp_mid2_v_v_fu_148_p3(3 - 1 downto 0);
    tmp_mid2_fu_169_p3 <= (tmp_reg_352 & ap_const_lv3_0);
    tmp_mid2_v_v_fu_148_p3 <= 
        r_2_fu_128_p2 when (exitcond5_fu_134_p2(0) = '1') else 
        r_phi_fu_96_p4;
    tmp_s_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_9_fu_179_p2),64));
end behav;
