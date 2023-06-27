-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "06/27/2023 13:59:45"

-- 
-- Device: Altera 5CGXFC7C6F23I7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA_usertop IS
    PORT (
	enRegA : IN std_logic;
	enRegB : IN std_logic;
	enRegC : IN std_logic;
	reset : IN std_logic;
	clock : IN std_logic;
	ULAOp : IN std_logic_vector(1 DOWNTO 0);
	funct : IN std_logic_vector(5 DOWNTO 0);
	DataA : IN std_logic_vector(31 DOWNTO 0);
	DataB : IN std_logic_vector(31 DOWNTO 0);
	DataC : BUFFER std_logic_vector(31 DOWNTO 0);
	pronto : BUFFER std_logic
	);
END ULA_usertop;

-- Design Ports Information
-- ULAOp[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ULAOp[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[4]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[5]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[6]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[8]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[10]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[11]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[14]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[15]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[16]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[17]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[18]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[19]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[21]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[22]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[23]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[24]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[25]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[26]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[27]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[28]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[29]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[30]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataC[31]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pronto	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[5]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- funct[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enRegC	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[0]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enRegB	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enRegA	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[1]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[2]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[3]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[4]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[7]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[7]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[8]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[9]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[10]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[11]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[12]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[14]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[14]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[15]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[16]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[16]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[17]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[18]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[18]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[19]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[20]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[20]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[21]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[21]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[22]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[22]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[23]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[23]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[24]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[24]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[25]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[25]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[26]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[26]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[27]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[27]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[28]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[28]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[29]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[29]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[30]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[30]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataB[31]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DataA[31]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULA_usertop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enRegA : std_logic;
SIGNAL ww_enRegB : std_logic;
SIGNAL ww_enRegC : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_ULAOp : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_funct : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_DataA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DataB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DataC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_pronto : std_logic;
SIGNAL \ULAOp[0]~input_o\ : std_logic;
SIGNAL \ULAOp[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \funct[4]~input_o\ : std_logic;
SIGNAL \funct[0]~input_o\ : std_logic;
SIGNAL \funct[1]~input_o\ : std_logic;
SIGNAL \funct[2]~input_o\ : std_logic;
SIGNAL \Controle_Ula|Mux2~0_combout\ : std_logic;
SIGNAL \funct[3]~input_o\ : std_logic;
SIGNAL \Controle_Ula|Mux0~0_combout\ : std_logic;
SIGNAL \funct[5]~input_o\ : std_logic;
SIGNAL \Controle_Ula|Mux1~0_combout\ : std_logic;
SIGNAL \ULA_PADRAO|andsel~0_combout\ : std_logic;
SIGNAL \DataB[0]~input_o\ : std_logic;
SIGNAL \RegB|Q[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enRegB~input_o\ : std_logic;
SIGNAL \DataA[0]~input_o\ : std_logic;
SIGNAL \enRegA~input_o\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~130_cout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~5_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[0]~0_combout\ : std_logic;
SIGNAL \ULA_GERAL|D[0]~1_combout\ : std_logic;
SIGNAL \DataA[31]~input_o\ : std_logic;
SIGNAL \RegA|Q[31]~feeder_combout\ : std_logic;
SIGNAL \DataB[31]~input_o\ : std_logic;
SIGNAL \RegB|Q[31]~feeder_combout\ : std_logic;
SIGNAL \DataA[30]~input_o\ : std_logic;
SIGNAL \RegA|Q[30]~feeder_combout\ : std_logic;
SIGNAL \DataB[30]~input_o\ : std_logic;
SIGNAL \DataB[29]~input_o\ : std_logic;
SIGNAL \RegB|Q[29]~feeder_combout\ : std_logic;
SIGNAL \DataA[29]~input_o\ : std_logic;
SIGNAL \DataB[28]~input_o\ : std_logic;
SIGNAL \RegB|Q[28]~feeder_combout\ : std_logic;
SIGNAL \DataA[28]~input_o\ : std_logic;
SIGNAL \RegA|Q[28]~feeder_combout\ : std_logic;
SIGNAL \DataA[27]~input_o\ : std_logic;
SIGNAL \DataB[27]~input_o\ : std_logic;
SIGNAL \DataB[26]~input_o\ : std_logic;
SIGNAL \DataA[26]~input_o\ : std_logic;
SIGNAL \DataB[25]~input_o\ : std_logic;
SIGNAL \DataA[25]~input_o\ : std_logic;
SIGNAL \DataB[24]~input_o\ : std_logic;
SIGNAL \DataA[24]~input_o\ : std_logic;
SIGNAL \RegA|Q[24]~feeder_combout\ : std_logic;
SIGNAL \DataA[23]~input_o\ : std_logic;
SIGNAL \DataB[23]~input_o\ : std_logic;
SIGNAL \RegB|Q[23]~feeder_combout\ : std_logic;
SIGNAL \DataA[22]~input_o\ : std_logic;
SIGNAL \DataB[22]~input_o\ : std_logic;
SIGNAL \RegB|Q[22]~feeder_combout\ : std_logic;
SIGNAL \DataB[21]~input_o\ : std_logic;
SIGNAL \DataA[21]~input_o\ : std_logic;
SIGNAL \DataB[20]~input_o\ : std_logic;
SIGNAL \DataA[20]~input_o\ : std_logic;
SIGNAL \DataB[19]~input_o\ : std_logic;
SIGNAL \DataA[19]~input_o\ : std_logic;
SIGNAL \DataA[18]~input_o\ : std_logic;
SIGNAL \DataB[18]~input_o\ : std_logic;
SIGNAL \DataB[17]~input_o\ : std_logic;
SIGNAL \DataA[17]~input_o\ : std_logic;
SIGNAL \DataA[16]~input_o\ : std_logic;
SIGNAL \DataB[16]~input_o\ : std_logic;
SIGNAL \RegB|Q[16]~feeder_combout\ : std_logic;
SIGNAL \DataB[15]~input_o\ : std_logic;
SIGNAL \DataA[15]~input_o\ : std_logic;
SIGNAL \DataB[14]~input_o\ : std_logic;
SIGNAL \DataA[14]~input_o\ : std_logic;
SIGNAL \DataB[13]~input_o\ : std_logic;
SIGNAL \DataA[13]~input_o\ : std_logic;
SIGNAL \DataB[12]~input_o\ : std_logic;
SIGNAL \RegB|Q[12]~feeder_combout\ : std_logic;
SIGNAL \DataA[12]~input_o\ : std_logic;
SIGNAL \DataA[11]~input_o\ : std_logic;
SIGNAL \DataB[11]~input_o\ : std_logic;
SIGNAL \RegB|Q[11]~feeder_combout\ : std_logic;
SIGNAL \DataA[10]~input_o\ : std_logic;
SIGNAL \DataB[10]~input_o\ : std_logic;
SIGNAL \RegB|Q[10]~feeder_combout\ : std_logic;
SIGNAL \DataB[9]~input_o\ : std_logic;
SIGNAL \DataA[9]~input_o\ : std_logic;
SIGNAL \DataA[8]~input_o\ : std_logic;
SIGNAL \RegA|Q[8]~feeder_combout\ : std_logic;
SIGNAL \DataB[8]~input_o\ : std_logic;
SIGNAL \RegB|Q[8]~feeder_combout\ : std_logic;
SIGNAL \DataB[7]~input_o\ : std_logic;
SIGNAL \RegB|Q[7]~feeder_combout\ : std_logic;
SIGNAL \DataA[7]~input_o\ : std_logic;
SIGNAL \RegA|Q[7]~feeder_combout\ : std_logic;
SIGNAL \DataB[6]~input_o\ : std_logic;
SIGNAL \RegB|Q[6]~feeder_combout\ : std_logic;
SIGNAL \DataA[6]~input_o\ : std_logic;
SIGNAL \RegA|Q[6]~feeder_combout\ : std_logic;
SIGNAL \DataA[5]~input_o\ : std_logic;
SIGNAL \DataB[5]~input_o\ : std_logic;
SIGNAL \DataB[4]~input_o\ : std_logic;
SIGNAL \DataA[4]~input_o\ : std_logic;
SIGNAL \DataA[3]~input_o\ : std_logic;
SIGNAL \RegA|Q[3]~feeder_combout\ : std_logic;
SIGNAL \DataB[3]~input_o\ : std_logic;
SIGNAL \DataB[2]~input_o\ : std_logic;
SIGNAL \DataA[2]~input_o\ : std_logic;
SIGNAL \RegA|Q[2]~feeder_combout\ : std_logic;
SIGNAL \DataB[1]~input_o\ : std_logic;
SIGNAL \RegB|Q[1]~feeder_combout\ : std_logic;
SIGNAL \DataA[1]~input_o\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~6\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~10\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~14\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~18\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~22\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~26\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~30\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~34\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~38\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~42\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~46\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~50\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~54\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~58\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~62\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~66\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~70\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~74\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~78\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~82\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~86\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~90\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~94\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~98\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~102\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~106\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~110\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~114\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~118\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~122\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~126\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~1_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~1_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~28_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~29_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~6_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~7_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[28]~5_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~19_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~15_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~17_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~20_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~18_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~16_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~21_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[18]~8_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[0]~22_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~86\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~89_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[1]~23_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~90\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~93_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[2]~24_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~94\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[3]~25_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~98\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~73_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[4]~19_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~74\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~37_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[5]~10_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~38\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~41_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[6]~11_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~42\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~45_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[7]~12_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~46\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~49_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[8]~13_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~50\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~33_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[9]~0_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~34\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~117_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[10]~1_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~118\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[11]~30_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~122\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[12]~31_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~126\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~77_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[13]~20_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~78\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[14]~21_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~82\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~69_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[15]~18_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~70\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~113_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[16]~29_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~114\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~29_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[17]~9_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~30\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~25_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[19]~7_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~26\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~21_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~24_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[20]~28_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~22\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~109_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[21]~27_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~110\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~105_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[22]~26_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~106\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~3_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~4_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~1_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~2_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[29]~4_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~102\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[23]~17_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~66\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[24]~16_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~62\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[25]~15_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~58\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[26]~14_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~54\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[27]~6_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~18\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~14\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~26_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[31]~2_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~10\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|MUX2|D[30]~3_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~6\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~23_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~27_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~5_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ProximoEstado.S0~0_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~13_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~11_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~8_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~12_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~10_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~9_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~14_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ProximoEstado.S0~2_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|EstadoAtual.S0~q\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~0_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~25_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|Equal0~22_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|Selector0~0_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ : std_logic;
SIGNAL \ULA_GERAL|D[0]~2_combout\ : std_logic;
SIGNAL \enRegC~input_o\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~2\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~5_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~9_sumout\ : std_logic;
SIGNAL \RegC|Q[30]~0_combout\ : std_logic;
SIGNAL \RegC|Q[30]~1_combout\ : std_logic;
SIGNAL \ULA_GERAL|D[1]~3_combout\ : std_logic;
SIGNAL \RegC|Q[30]~2_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~6\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~9_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~13_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[2]~4_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~10\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~13_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~17_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[3]~5_combout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~21_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~14\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~17_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[4]~6_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~18\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~21_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~25_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[5]~7_combout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~29_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~22\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~25_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[6]~8_combout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~33_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~26\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~29_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[7]~9_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~30\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~33_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~37_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[8]~10_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~34\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~37_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~41_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[9]~11_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~38\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~41_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~45_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[10]~12_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~42\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~45_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~49_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[11]~13_combout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~53_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~46\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~49_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[12]~14_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~50\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~53_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~57_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[13]~15_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~54\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~57_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~61_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[14]~16_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~58\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~61_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~65_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[15]~17_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~62\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~65_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~69_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[16]~18_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~66\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~69_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~73_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[17]~19_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~70\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~73_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~77_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[18]~20_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~74\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~77_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~81_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[19]~21_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~78\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~81_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~85_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[20]~22_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~82\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~85_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~89_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[21]~23_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~86\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~89_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~93_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[22]~24_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~90\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~93_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~97_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[23]~25_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~94\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~97_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~101_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[24]~26_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~98\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~101_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~105_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[25]~27_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~102\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~105_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~109_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[26]~28_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~106\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~109_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~113_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[27]~29_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~110\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~113_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~117_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[28]~30_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~114\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~117_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~121_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[29]~31_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~118\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~121_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|Add1~125_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[30]~32_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~122\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SOMA|Add1~125_sumout\ : std_logic;
SIGNAL \ULA_GERAL|D[31]~33_combout\ : std_logic;
SIGNAL \RegC|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA_Mult|OPERACIONAL|REGCONT|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA_Mult|OPERACIONAL|REGSOMA|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegA|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegB|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~85_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~81_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~77_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~73_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~65_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~125_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~121_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~117_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~113_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~109_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~105_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~101_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~97_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \ULA_PADRAO|SomaSub|ALT_INV_Add1~89_sumout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegA|ALT_INV_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegB|ALT_INV_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RegC|ALT_INV_Q[30]~1_combout\ : std_logic;
SIGNAL \RegC|ALT_INV_Q[30]~0_combout\ : std_logic;
SIGNAL \ULA_GERAL|ALT_INV_D[0]~1_combout\ : std_logic;
SIGNAL \ULA_GERAL|ALT_INV_D[0]~0_combout\ : std_logic;
SIGNAL \ULA_PADRAO|ALT_INV_andsel~0_combout\ : std_logic;
SIGNAL \Controle_Ula|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Controle_Ula|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Controle_Ula|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S0~q\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~22_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ALT_INV_ProximoEstado.S0~1_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ALT_INV_ProximoEstado.S0~0_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~21_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~20_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~19_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~18_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~17_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~16_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~15_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~14_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~13_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~12_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~11_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~10_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\ : std_logic;
SIGNAL \ALT_INV_DataA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DataB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct[4]~input_o\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~29_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~28_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~27_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~26_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~25_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~24_combout\ : std_logic;
SIGNAL \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~23_combout\ : std_logic;

BEGIN

ww_enRegA <= enRegA;
ww_enRegB <= enRegB;
ww_enRegC <= enRegC;
ww_reset <= reset;
ww_clock <= clock;
ww_ULAOp <= ULAOp;
ww_funct <= funct;
ww_DataA <= DataA;
ww_DataB <= DataB;
DataC <= ww_DataC;
pronto <= ww_pronto;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~85_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~85_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~81_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~81_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~77_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~77_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~73_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~73_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~69_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~69_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~65_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~65_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~61_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~61_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~57_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~57_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~53_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~53_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~49_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~49_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~45_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~45_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~41_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~41_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~37_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~37_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~33_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~33_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~29_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~29_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~25_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~25_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~21_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~21_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~17_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~17_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~13_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~13_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~9_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~9_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~5_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~5_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~1_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~125_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~121_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~117_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~117_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~113_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~113_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~109_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~109_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~105_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~105_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~101_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~97_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~93_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~93_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~89_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~89_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~85_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~81_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~77_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~77_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~73_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~73_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~69_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~69_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~65_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~61_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~57_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~53_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~49_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~49_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~45_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~45_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~41_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~41_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~37_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~37_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~33_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~33_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~29_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~29_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~25_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~25_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~21_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~21_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~17_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~13_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~9_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~5_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\;
\ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~1_sumout\ <= NOT \ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~125_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~125_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~121_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~121_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~117_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~117_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~113_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~113_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~109_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~109_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~105_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~105_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~101_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~101_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~97_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~97_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~93_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~93_sumout\;
\ULA_PADRAO|SomaSub|ALT_INV_Add1~89_sumout\ <= NOT \ULA_PADRAO|SomaSub|Add1~89_sumout\;
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(14) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(14);
\RegA|ALT_INV_Q\(14) <= NOT \RegA|Q\(14);
\RegB|ALT_INV_Q\(14) <= NOT \RegB|Q\(14);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(13) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(13);
\RegA|ALT_INV_Q\(13) <= NOT \RegA|Q\(13);
\RegB|ALT_INV_Q\(13) <= NOT \RegB|Q\(13);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(12) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(12);
\RegA|ALT_INV_Q\(12) <= NOT \RegA|Q\(12);
\RegB|ALT_INV_Q\(12) <= NOT \RegB|Q\(12);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(11) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(11);
\RegA|ALT_INV_Q\(11) <= NOT \RegA|Q\(11);
\RegB|ALT_INV_Q\(11) <= NOT \RegB|Q\(11);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(10) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(10);
\RegA|ALT_INV_Q\(10) <= NOT \RegA|Q\(10);
\RegB|ALT_INV_Q\(10) <= NOT \RegB|Q\(10);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(9) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(9);
\RegA|ALT_INV_Q\(9) <= NOT \RegA|Q\(9);
\RegB|ALT_INV_Q\(9) <= NOT \RegB|Q\(9);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(8) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(8);
\RegA|ALT_INV_Q\(8) <= NOT \RegA|Q\(8);
\RegB|ALT_INV_Q\(8) <= NOT \RegB|Q\(8);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(7) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(7);
\RegA|ALT_INV_Q\(7) <= NOT \RegA|Q\(7);
\RegB|ALT_INV_Q\(7) <= NOT \RegB|Q\(7);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(6) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(6);
\RegA|ALT_INV_Q\(6) <= NOT \RegA|Q\(6);
\RegB|ALT_INV_Q\(6) <= NOT \RegB|Q\(6);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(5) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(5);
\RegA|ALT_INV_Q\(5) <= NOT \RegA|Q\(5);
\RegB|ALT_INV_Q\(5) <= NOT \RegB|Q\(5);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(4) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(4);
\RegA|ALT_INV_Q\(4) <= NOT \RegA|Q\(4);
\RegB|ALT_INV_Q\(4) <= NOT \RegB|Q\(4);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(3) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(3);
\RegA|ALT_INV_Q\(3) <= NOT \RegA|Q\(3);
\RegB|ALT_INV_Q\(3) <= NOT \RegB|Q\(3);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(2) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(2);
\RegA|ALT_INV_Q\(2) <= NOT \RegA|Q\(2);
\RegB|ALT_INV_Q\(2) <= NOT \RegB|Q\(2);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(1) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(1);
\RegC|ALT_INV_Q[30]~1_combout\ <= NOT \RegC|Q[30]~1_combout\;
\RegC|ALT_INV_Q[30]~0_combout\ <= NOT \RegC|Q[30]~0_combout\;
\RegA|ALT_INV_Q\(1) <= NOT \RegA|Q\(1);
\RegB|ALT_INV_Q\(1) <= NOT \RegB|Q\(1);
\ULA_GERAL|ALT_INV_D[0]~1_combout\ <= NOT \ULA_GERAL|D[0]~1_combout\;
\ULA_GERAL|ALT_INV_D[0]~0_combout\ <= NOT \ULA_GERAL|D[0]~0_combout\;
\RegA|ALT_INV_Q\(0) <= NOT \RegA|Q\(0);
\RegB|ALT_INV_Q\(0) <= NOT \RegB|Q\(0);
\ULA_PADRAO|ALT_INV_andsel~0_combout\ <= NOT \ULA_PADRAO|andsel~0_combout\;
\Controle_Ula|ALT_INV_Mux1~0_combout\ <= NOT \Controle_Ula|Mux1~0_combout\;
\Controle_Ula|ALT_INV_Mux2~0_combout\ <= NOT \Controle_Ula|Mux2~0_combout\;
\Controle_Ula|ALT_INV_Mux0~0_combout\ <= NOT \Controle_Ula|Mux0~0_combout\;
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(0) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(0);
\ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S0~q\ <= NOT \ULA_Mult|CONTROLE|EstadoAtual.S0~q\;
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(12) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(12);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(11) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(11);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(10) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(10);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(16) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(16);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(20) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(20);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(21) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(21);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(22) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(22);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(3) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(3);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(2) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(2);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(1) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(1);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(0) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(0);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(14) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(14);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(13) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(13);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(4) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(4);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(15) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(15);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(23) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(23);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(24) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(24);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(25) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(25);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(26) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(26);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(8) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(8);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(7) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(7);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(6) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(6);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(5) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(5);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(9) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(9);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(17) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(17);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(18) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(18);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(19) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(19);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(27) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(27);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(28) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(28);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(29) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(29);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(30) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(30);
\ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(31) <= NOT \ULA_Mult|OPERACIONAL|REGCONT|Q\(31);
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~22_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~22_combout\;
\ULA_Mult|CONTROLE|ALT_INV_ProximoEstado.S0~1_combout\ <= NOT \ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\;
\ULA_Mult|CONTROLE|ALT_INV_ProximoEstado.S0~0_combout\ <= NOT \ULA_Mult|CONTROLE|ProximoEstado.S0~0_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~21_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~21_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~20_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~20_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~19_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~19_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~18_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~18_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~17_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~17_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~16_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~16_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~15_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~15_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~14_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~14_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~13_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~13_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~12_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~12_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~11_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~11_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~10_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~10_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~9_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~9_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~8_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~8_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~7_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~7_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~6_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~6_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~5_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~5_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~4_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~4_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~3_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~3_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~2_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~2_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~1_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~1_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~0_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~0_combout\;
\ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\ <= NOT \ULA_Mult|CONTROLE|EstadoAtual.S2~q\;
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(31) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(31);
\RegA|ALT_INV_Q\(31) <= NOT \RegA|Q\(31);
\RegB|ALT_INV_Q\(31) <= NOT \RegB|Q\(31);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(30) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(30);
\RegA|ALT_INV_Q\(30) <= NOT \RegA|Q\(30);
\RegB|ALT_INV_Q\(30) <= NOT \RegB|Q\(30);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(29) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(29);
\RegA|ALT_INV_Q\(29) <= NOT \RegA|Q\(29);
\RegB|ALT_INV_Q\(29) <= NOT \RegB|Q\(29);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(28) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(28);
\RegA|ALT_INV_Q\(28) <= NOT \RegA|Q\(28);
\RegB|ALT_INV_Q\(28) <= NOT \RegB|Q\(28);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(27) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(27);
\RegA|ALT_INV_Q\(27) <= NOT \RegA|Q\(27);
\RegB|ALT_INV_Q\(27) <= NOT \RegB|Q\(27);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(26) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(26);
\RegA|ALT_INV_Q\(26) <= NOT \RegA|Q\(26);
\RegB|ALT_INV_Q\(26) <= NOT \RegB|Q\(26);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(25) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(25);
\RegA|ALT_INV_Q\(25) <= NOT \RegA|Q\(25);
\RegB|ALT_INV_Q\(25) <= NOT \RegB|Q\(25);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(24) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(24);
\RegA|ALT_INV_Q\(24) <= NOT \RegA|Q\(24);
\RegB|ALT_INV_Q\(24) <= NOT \RegB|Q\(24);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(23) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(23);
\RegA|ALT_INV_Q\(23) <= NOT \RegA|Q\(23);
\RegB|ALT_INV_Q\(23) <= NOT \RegB|Q\(23);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(22) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(22);
\RegA|ALT_INV_Q\(22) <= NOT \RegA|Q\(22);
\RegB|ALT_INV_Q\(22) <= NOT \RegB|Q\(22);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(21) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(21);
\RegA|ALT_INV_Q\(21) <= NOT \RegA|Q\(21);
\RegB|ALT_INV_Q\(21) <= NOT \RegB|Q\(21);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(20) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(20);
\RegA|ALT_INV_Q\(20) <= NOT \RegA|Q\(20);
\RegB|ALT_INV_Q\(20) <= NOT \RegB|Q\(20);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(19) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(19);
\RegA|ALT_INV_Q\(19) <= NOT \RegA|Q\(19);
\RegB|ALT_INV_Q\(19) <= NOT \RegB|Q\(19);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(18) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(18);
\RegA|ALT_INV_Q\(18) <= NOT \RegA|Q\(18);
\RegB|ALT_INV_Q\(18) <= NOT \RegB|Q\(18);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(17) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(17);
\RegA|ALT_INV_Q\(17) <= NOT \RegA|Q\(17);
\RegB|ALT_INV_Q\(17) <= NOT \RegB|Q\(17);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(16) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(16);
\RegA|ALT_INV_Q\(16) <= NOT \RegA|Q\(16);
\RegB|ALT_INV_Q\(16) <= NOT \RegB|Q\(16);
\ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(15) <= NOT \ULA_Mult|OPERACIONAL|REGSOMA|Q\(15);
\RegA|ALT_INV_Q\(15) <= NOT \RegA|Q\(15);
\RegB|ALT_INV_Q\(15) <= NOT \RegB|Q\(15);
\ALT_INV_DataA[31]~input_o\ <= NOT \DataA[31]~input_o\;
\ALT_INV_DataB[31]~input_o\ <= NOT \DataB[31]~input_o\;
\ALT_INV_DataA[30]~input_o\ <= NOT \DataA[30]~input_o\;
\ALT_INV_DataB[29]~input_o\ <= NOT \DataB[29]~input_o\;
\ALT_INV_DataA[28]~input_o\ <= NOT \DataA[28]~input_o\;
\ALT_INV_DataB[28]~input_o\ <= NOT \DataB[28]~input_o\;
\ALT_INV_DataA[24]~input_o\ <= NOT \DataA[24]~input_o\;
\ALT_INV_DataB[23]~input_o\ <= NOT \DataB[23]~input_o\;
\ALT_INV_DataB[22]~input_o\ <= NOT \DataB[22]~input_o\;
\ALT_INV_DataB[16]~input_o\ <= NOT \DataB[16]~input_o\;
\ALT_INV_DataB[12]~input_o\ <= NOT \DataB[12]~input_o\;
\ALT_INV_DataB[11]~input_o\ <= NOT \DataB[11]~input_o\;
\ALT_INV_DataB[10]~input_o\ <= NOT \DataB[10]~input_o\;
\ALT_INV_DataA[8]~input_o\ <= NOT \DataA[8]~input_o\;
\ALT_INV_DataB[8]~input_o\ <= NOT \DataB[8]~input_o\;
\ALT_INV_DataA[7]~input_o\ <= NOT \DataA[7]~input_o\;
\ALT_INV_DataB[7]~input_o\ <= NOT \DataB[7]~input_o\;
\ALT_INV_DataA[6]~input_o\ <= NOT \DataA[6]~input_o\;
\ALT_INV_DataB[6]~input_o\ <= NOT \DataB[6]~input_o\;
\ALT_INV_DataA[3]~input_o\ <= NOT \DataA[3]~input_o\;
\ALT_INV_DataA[2]~input_o\ <= NOT \DataA[2]~input_o\;
\ALT_INV_DataB[1]~input_o\ <= NOT \DataB[1]~input_o\;
\ALT_INV_DataB[0]~input_o\ <= NOT \DataB[0]~input_o\;
\ALT_INV_funct[1]~input_o\ <= NOT \funct[1]~input_o\;
\ALT_INV_funct[0]~input_o\ <= NOT \funct[0]~input_o\;
\ALT_INV_funct[3]~input_o\ <= NOT \funct[3]~input_o\;
\ALT_INV_funct[2]~input_o\ <= NOT \funct[2]~input_o\;
\ALT_INV_funct[5]~input_o\ <= NOT \funct[5]~input_o\;
\ALT_INV_funct[4]~input_o\ <= NOT \funct[4]~input_o\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~29_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~29_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~28_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~28_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~27_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~27_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~26_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~26_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~25_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~25_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~24_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~24_combout\;
\ULA_Mult|OPERACIONAL|ALT_INV_Equal0~23_combout\ <= NOT \ULA_Mult|OPERACIONAL|Equal0~23_combout\;

-- Location: IOOBUF_X32_Y0_N36
\DataC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(0),
	devoe => ww_devoe,
	o => ww_DataC(0));

-- Location: IOOBUF_X2_Y0_N93
\DataC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(1),
	devoe => ww_devoe,
	o => ww_DataC(1));

-- Location: IOOBUF_X58_Y0_N76
\DataC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(2),
	devoe => ww_devoe,
	o => ww_DataC(2));

-- Location: IOOBUF_X62_Y0_N19
\DataC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(3),
	devoe => ww_devoe,
	o => ww_DataC(3));

-- Location: IOOBUF_X70_Y0_N53
\DataC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(4),
	devoe => ww_devoe,
	o => ww_DataC(4));

-- Location: IOOBUF_X4_Y0_N36
\DataC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(5),
	devoe => ww_devoe,
	o => ww_DataC(5));

-- Location: IOOBUF_X72_Y0_N19
\DataC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(6),
	devoe => ww_devoe,
	o => ww_DataC(6));

-- Location: IOOBUF_X89_Y6_N22
\DataC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(7),
	devoe => ww_devoe,
	o => ww_DataC(7));

-- Location: IOOBUF_X36_Y0_N19
\DataC[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(8),
	devoe => ww_devoe,
	o => ww_DataC(8));

-- Location: IOOBUF_X40_Y0_N2
\DataC[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(9),
	devoe => ww_devoe,
	o => ww_DataC(9));

-- Location: IOOBUF_X4_Y0_N19
\DataC[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(10),
	devoe => ww_devoe,
	o => ww_DataC(10));

-- Location: IOOBUF_X2_Y0_N76
\DataC[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(11),
	devoe => ww_devoe,
	o => ww_DataC(11));

-- Location: IOOBUF_X66_Y0_N42
\DataC[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(12),
	devoe => ww_devoe,
	o => ww_DataC(12));

-- Location: IOOBUF_X56_Y0_N2
\DataC[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(13),
	devoe => ww_devoe,
	o => ww_DataC(13));

-- Location: IOOBUF_X2_Y0_N59
\DataC[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(14),
	devoe => ww_devoe,
	o => ww_DataC(14));

-- Location: IOOBUF_X70_Y0_N36
\DataC[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(15),
	devoe => ww_devoe,
	o => ww_DataC(15));

-- Location: IOOBUF_X60_Y0_N19
\DataC[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(16),
	devoe => ww_devoe,
	o => ww_DataC(16));

-- Location: IOOBUF_X68_Y0_N36
\DataC[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(17),
	devoe => ww_devoe,
	o => ww_DataC(17));

-- Location: IOOBUF_X66_Y0_N59
\DataC[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(18),
	devoe => ww_devoe,
	o => ww_DataC(18));

-- Location: IOOBUF_X62_Y0_N53
\DataC[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(19),
	devoe => ww_devoe,
	o => ww_DataC(19));

-- Location: IOOBUF_X60_Y0_N53
\DataC[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(20),
	devoe => ww_devoe,
	o => ww_DataC(20));

-- Location: IOOBUF_X8_Y0_N53
\DataC[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(21),
	devoe => ww_devoe,
	o => ww_DataC(21));

-- Location: IOOBUF_X62_Y0_N2
\DataC[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(22),
	devoe => ww_devoe,
	o => ww_DataC(22));

-- Location: IOOBUF_X32_Y0_N19
\DataC[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(23),
	devoe => ww_devoe,
	o => ww_DataC(23));

-- Location: IOOBUF_X54_Y0_N36
\DataC[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(24),
	devoe => ww_devoe,
	o => ww_DataC(24));

-- Location: IOOBUF_X68_Y0_N19
\DataC[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(25),
	devoe => ww_devoe,
	o => ww_DataC(25));

-- Location: IOOBUF_X54_Y0_N53
\DataC[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(26),
	devoe => ww_devoe,
	o => ww_DataC(26));

-- Location: IOOBUF_X60_Y0_N2
\DataC[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(27),
	devoe => ww_devoe,
	o => ww_DataC(27));

-- Location: IOOBUF_X72_Y0_N53
\DataC[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(28),
	devoe => ww_devoe,
	o => ww_DataC(28));

-- Location: IOOBUF_X8_Y0_N2
\DataC[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(29),
	devoe => ww_devoe,
	o => ww_DataC(29));

-- Location: IOOBUF_X50_Y0_N93
\DataC[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(30),
	devoe => ww_devoe,
	o => ww_DataC(30));

-- Location: IOOBUF_X40_Y0_N36
\DataC[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegC|Q\(31),
	devoe => ww_devoe,
	o => ww_DataC(31));

-- Location: IOOBUF_X32_Y0_N2
\pronto~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S0~q\,
	devoe => ww_devoe,
	o => ww_pronto);

-- Location: IOIBUF_X89_Y35_N61
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N35
\funct[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(4),
	o => \funct[4]~input_o\);

-- Location: IOIBUF_X28_Y0_N35
\funct[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(0),
	o => \funct[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\funct[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(1),
	o => \funct[1]~input_o\);

-- Location: IOIBUF_X28_Y0_N52
\funct[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(2),
	o => \funct[2]~input_o\);

-- Location: LABCELL_X24_Y1_N27
\Controle_Ula|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle_Ula|Mux2~0_combout\ = ( !\funct[1]~input_o\ & ( \funct[2]~input_o\ & ( (!\funct[4]~input_o\ & !\funct[0]~input_o\) ) ) ) # ( \funct[1]~input_o\ & ( !\funct[2]~input_o\ & ( (!\funct[4]~input_o\ & !\funct[0]~input_o\) ) ) ) # ( !\funct[1]~input_o\ 
-- & ( !\funct[2]~input_o\ & ( !\funct[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101000001010000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[4]~input_o\,
	datac => \ALT_INV_funct[0]~input_o\,
	datae => \ALT_INV_funct[1]~input_o\,
	dataf => \ALT_INV_funct[2]~input_o\,
	combout => \Controle_Ula|Mux2~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\funct[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(3),
	o => \funct[3]~input_o\);

-- Location: LABCELL_X24_Y1_N42
\Controle_Ula|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle_Ula|Mux0~0_combout\ = ( \funct[4]~input_o\ & ( (!\funct[1]~input_o\ & (!\funct[0]~input_o\ & !\funct[3]~input_o\)) ) ) # ( !\funct[4]~input_o\ & ( (\funct[1]~input_o\ & !\funct[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100000001000000001000100010001001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[1]~input_o\,
	datab => \ALT_INV_funct[0]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datae => \ALT_INV_funct[4]~input_o\,
	combout => \Controle_Ula|Mux0~0_combout\);

-- Location: IOIBUF_X26_Y0_N41
\funct[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct(5),
	o => \funct[5]~input_o\);

-- Location: LABCELL_X24_Y1_N54
\Controle_Ula|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Controle_Ula|Mux1~0_combout\ = ( \funct[4]~input_o\ & ( (!\funct[1]~input_o\ & (!\funct[0]~input_o\ & !\funct[2]~input_o\)) ) ) # ( !\funct[4]~input_o\ & ( (!\funct[1]~input_o\ & \funct[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010100000001000000000001010000010101000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[1]~input_o\,
	datab => \ALT_INV_funct[0]~input_o\,
	datac => \ALT_INV_funct[2]~input_o\,
	datae => \ALT_INV_funct[4]~input_o\,
	combout => \Controle_Ula|Mux1~0_combout\);

-- Location: LABCELL_X24_Y1_N12
\ULA_PADRAO|andsel~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|andsel~0_combout\ = ( \Controle_Ula|Mux1~0_combout\ & ( !\funct[2]~input_o\ & ( (\Controle_Ula|Mux0~0_combout\ & (\funct[3]~input_o\ & \funct[5]~input_o\)) ) ) ) # ( !\Controle_Ula|Mux1~0_combout\ & ( !\funct[2]~input_o\ & ( 
-- (\Controle_Ula|Mux0~0_combout\ & (\funct[5]~input_o\ & ((!\Controle_Ula|Mux2~0_combout\) # (\funct[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_Ula|ALT_INV_Mux2~0_combout\,
	datab => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \ALT_INV_funct[5]~input_o\,
	datae => \Controle_Ula|ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_funct[2]~input_o\,
	combout => \ULA_PADRAO|andsel~0_combout\);

-- Location: IOIBUF_X89_Y8_N4
\DataB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(0),
	o => \DataB[0]~input_o\);

-- Location: LABCELL_X23_Y6_N18
\RegB|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[0]~feeder_combout\ = ( \DataB[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[0]~input_o\,
	combout => \RegB|Q[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y35_N44
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G8
\reset~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \reset~input_o\,
	outclk => \reset~inputCLKENA0_outclk\);

-- Location: IOIBUF_X26_Y0_N75
\enRegB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enRegB,
	o => \enRegB~input_o\);

-- Location: FF_X23_Y6_N20
\RegB|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[0]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(0));

-- Location: IOIBUF_X50_Y0_N75
\DataA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(0),
	o => \DataA[0]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\enRegA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enRegA,
	o => \enRegA~input_o\);

-- Location: FF_X23_Y6_N17
\RegA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[0]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(0));

-- Location: LABCELL_X23_Y6_N30
\ULA_PADRAO|SomaSub|Add1~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~130_cout\ = CARRY(( (\funct[5]~input_o\ & (!\funct[2]~input_o\ & \Controle_Ula|Mux0~0_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	cin => GND,
	cout => \ULA_PADRAO|SomaSub|Add1~130_cout\);

-- Location: LABCELL_X23_Y6_N33
\ULA_PADRAO|SomaSub|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~5_sumout\ = SUM(( !\RegB|Q\(0) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(0) ) + ( \ULA_PADRAO|SomaSub|Add1~130_cout\ ))
-- \ULA_PADRAO|SomaSub|Add1~6\ = CARRY(( !\RegB|Q\(0) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(0) ) + ( \ULA_PADRAO|SomaSub|Add1~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \RegB|ALT_INV_Q\(0),
	datad => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	dataf => \RegA|ALT_INV_Q\(0),
	cin => \ULA_PADRAO|SomaSub|Add1~130_cout\,
	sumout => \ULA_PADRAO|SomaSub|Add1~5_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~6\);

-- Location: LABCELL_X24_Y1_N33
\ULA_GERAL|D[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[0]~0_combout\ = ( \RegA|Q\(0) & ( (!\funct[3]~input_o\ & (\funct[5]~input_o\ & (!\RegB|Q\(0) & \Controle_Ula|Mux2~0_combout\))) ) ) # ( !\RegA|Q\(0) & ( (!\RegB|Q\(0)) # ((!\funct[3]~input_o\ & (\funct[5]~input_o\ & 
-- \Controle_Ula|Mux2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110010111100001111001000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[3]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \RegB|ALT_INV_Q\(0),
	datad => \Controle_Ula|ALT_INV_Mux2~0_combout\,
	dataf => \RegA|ALT_INV_Q\(0),
	combout => \ULA_GERAL|D[0]~0_combout\);

-- Location: LABCELL_X24_Y1_N30
\ULA_GERAL|D[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[0]~1_combout\ = ( \ULA_GERAL|D[0]~0_combout\ & ( (\ULA_PADRAO|SomaSub|Add1~5_sumout\ & (((!\funct[5]~input_o\) # (!\Controle_Ula|Mux1~0_combout\)) # (\funct[3]~input_o\))) ) ) # ( !\ULA_GERAL|D[0]~0_combout\ & ( ((!\funct[3]~input_o\ & 
-- (\funct[5]~input_o\ & \Controle_Ula|Mux1~0_combout\))) # (\ULA_PADRAO|SomaSub|Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000101111111100000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[3]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux1~0_combout\,
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~5_sumout\,
	dataf => \ULA_GERAL|ALT_INV_D[0]~0_combout\,
	combout => \ULA_GERAL|D[0]~1_combout\);

-- Location: IOIBUF_X36_Y0_N1
\DataA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(31),
	o => \DataA[31]~input_o\);

-- Location: MLABCELL_X25_Y4_N57
\RegA|Q[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[31]~feeder_combout\ = ( \DataA[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[31]~input_o\,
	combout => \RegA|Q[31]~feeder_combout\);

-- Location: FF_X25_Y4_N58
\RegA|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[31]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(31));

-- Location: IOIBUF_X36_Y0_N52
\DataB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(31),
	o => \DataB[31]~input_o\);

-- Location: LABCELL_X24_Y2_N51
\RegB|Q[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[31]~feeder_combout\ = ( \DataB[31]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[31]~input_o\,
	combout => \RegB|Q[31]~feeder_combout\);

-- Location: FF_X24_Y2_N53
\RegB|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[31]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(31));

-- Location: IOIBUF_X28_Y0_N18
\DataA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(30),
	o => \DataA[30]~input_o\);

-- Location: LABCELL_X22_Y4_N21
\RegA|Q[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[30]~feeder_combout\ = ( \DataA[30]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[30]~input_o\,
	combout => \RegA|Q[30]~feeder_combout\);

-- Location: FF_X22_Y4_N23
\RegA|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[30]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(30));

-- Location: IOIBUF_X38_Y0_N18
\DataB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(30),
	o => \DataB[30]~input_o\);

-- Location: FF_X22_Y4_N5
\RegB|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[30]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(30));

-- Location: IOIBUF_X56_Y0_N18
\DataB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(29),
	o => \DataB[29]~input_o\);

-- Location: LABCELL_X24_Y4_N3
\RegB|Q[29]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[29]~feeder_combout\ = ( \DataB[29]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[29]~input_o\,
	combout => \RegB|Q[29]~feeder_combout\);

-- Location: FF_X24_Y4_N5
\RegB|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[29]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(29));

-- Location: IOIBUF_X89_Y4_N95
\DataA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(29),
	o => \DataA[29]~input_o\);

-- Location: FF_X22_Y4_N56
\RegA|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[29]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(29));

-- Location: IOIBUF_X70_Y0_N1
\DataB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(28),
	o => \DataB[28]~input_o\);

-- Location: LABCELL_X24_Y4_N6
\RegB|Q[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[28]~feeder_combout\ = ( \DataB[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[28]~input_o\,
	combout => \RegB|Q[28]~feeder_combout\);

-- Location: FF_X24_Y4_N8
\RegB|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[28]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(28));

-- Location: IOIBUF_X50_Y0_N41
\DataA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(28),
	o => \DataA[28]~input_o\);

-- Location: LABCELL_X22_Y4_N57
\RegA|Q[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[28]~feeder_combout\ = ( \DataA[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[28]~input_o\,
	combout => \RegA|Q[28]~feeder_combout\);

-- Location: FF_X22_Y4_N59
\RegA|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[28]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(28));

-- Location: IOIBUF_X68_Y0_N1
\DataA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(27),
	o => \DataA[27]~input_o\);

-- Location: FF_X25_Y4_N41
\RegA|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[27]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(27));

-- Location: IOIBUF_X30_Y0_N1
\DataB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(27),
	o => \DataB[27]~input_o\);

-- Location: FF_X24_Y4_N14
\RegB|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[27]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(27));

-- Location: IOIBUF_X58_Y0_N41
\DataB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(26),
	o => \DataB[26]~input_o\);

-- Location: FF_X22_Y4_N44
\RegB|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[26]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(26));

-- Location: IOIBUF_X38_Y0_N1
\DataA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(26),
	o => \DataA[26]~input_o\);

-- Location: FF_X23_Y4_N41
\RegA|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[26]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(26));

-- Location: IOIBUF_X50_Y0_N58
\DataB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(25),
	o => \DataB[25]~input_o\);

-- Location: FF_X22_Y4_N2
\RegB|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[25]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(25));

-- Location: IOIBUF_X58_Y0_N58
\DataA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(25),
	o => \DataA[25]~input_o\);

-- Location: FF_X23_Y4_N50
\RegA|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[25]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(25));

-- Location: IOIBUF_X8_Y0_N35
\DataB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(24),
	o => \DataB[24]~input_o\);

-- Location: FF_X22_Y4_N14
\RegB|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[24]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(24));

-- Location: IOIBUF_X34_Y0_N58
\DataA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(24),
	o => \DataA[24]~input_o\);

-- Location: LABCELL_X22_Y4_N18
\RegA|Q[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[24]~feeder_combout\ = ( \DataA[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[24]~input_o\,
	combout => \RegA|Q[24]~feeder_combout\);

-- Location: FF_X22_Y4_N20
\RegA|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[24]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(24));

-- Location: IOIBUF_X40_Y0_N52
\DataA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(23),
	o => \DataA[23]~input_o\);

-- Location: FF_X23_Y4_N59
\RegA|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[23]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(23));

-- Location: IOIBUF_X58_Y0_N92
\DataB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(23),
	o => \DataB[23]~input_o\);

-- Location: LABCELL_X22_Y4_N45
\RegB|Q[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[23]~feeder_combout\ = ( \DataB[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[23]~input_o\,
	combout => \RegB|Q[23]~feeder_combout\);

-- Location: FF_X22_Y4_N47
\RegB|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[23]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(23));

-- Location: IOIBUF_X34_Y0_N75
\DataA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(22),
	o => \DataA[22]~input_o\);

-- Location: FF_X23_Y4_N47
\RegA|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[22]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(22));

-- Location: IOIBUF_X34_Y0_N92
\DataB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(22),
	o => \DataB[22]~input_o\);

-- Location: LABCELL_X24_Y4_N9
\RegB|Q[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[22]~feeder_combout\ = ( \DataB[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[22]~input_o\,
	combout => \RegB|Q[22]~feeder_combout\);

-- Location: FF_X24_Y4_N11
\RegB|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[22]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(22));

-- Location: IOIBUF_X30_Y0_N18
\DataB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(21),
	o => \DataB[21]~input_o\);

-- Location: FF_X24_Y4_N2
\RegB|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[21]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(21));

-- Location: IOIBUF_X38_Y0_N52
\DataA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(21),
	o => \DataA[21]~input_o\);

-- Location: FF_X23_Y4_N44
\RegA|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[21]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(21));

-- Location: IOIBUF_X6_Y0_N35
\DataB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(20),
	o => \DataB[20]~input_o\);

-- Location: FF_X24_Y4_N23
\RegB|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[20]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(20));

-- Location: IOIBUF_X38_Y0_N35
\DataA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(20),
	o => \DataA[20]~input_o\);

-- Location: FF_X23_Y4_N53
\RegA|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[20]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(20));

-- Location: IOIBUF_X30_Y0_N52
\DataB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(19),
	o => \DataB[19]~input_o\);

-- Location: FF_X24_Y4_N29
\RegB|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[19]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(19));

-- Location: IOIBUF_X32_Y0_N52
\DataA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(19),
	o => \DataA[19]~input_o\);

-- Location: FF_X23_Y4_N56
\RegA|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[19]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(19));

-- Location: IOIBUF_X6_Y0_N18
\DataA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(18),
	o => \DataA[18]~input_o\);

-- Location: FF_X23_Y5_N5
\RegA|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[18]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(18));

-- Location: IOIBUF_X4_Y0_N1
\DataB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(18),
	o => \DataB[18]~input_o\);

-- Location: FF_X22_Y5_N14
\RegB|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[18]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(18));

-- Location: IOIBUF_X62_Y0_N35
\DataB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(17),
	o => \DataB[17]~input_o\);

-- Location: FF_X22_Y5_N11
\RegB|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[17]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(17));

-- Location: IOIBUF_X52_Y0_N52
\DataA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(17),
	o => \DataA[17]~input_o\);

-- Location: FF_X23_Y5_N11
\RegA|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[17]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(17));

-- Location: IOIBUF_X54_Y0_N18
\DataA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(16),
	o => \DataA[16]~input_o\);

-- Location: FF_X23_Y5_N29
\RegA|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[16]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(16));

-- Location: IOIBUF_X64_Y0_N35
\DataB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(16),
	o => \DataB[16]~input_o\);

-- Location: LABCELL_X22_Y5_N21
\RegB|Q[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[16]~feeder_combout\ = ( \DataB[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[16]~input_o\,
	combout => \RegB|Q[16]~feeder_combout\);

-- Location: FF_X22_Y5_N23
\RegB|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[16]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(16));

-- Location: IOIBUF_X6_Y0_N52
\DataB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(15),
	o => \DataB[15]~input_o\);

-- Location: FF_X24_Y5_N32
\RegB|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[15]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(15));

-- Location: IOIBUF_X64_Y0_N18
\DataA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(15),
	o => \DataA[15]~input_o\);

-- Location: FF_X23_Y5_N20
\RegA|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[15]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(15));

-- Location: IOIBUF_X4_Y0_N52
\DataB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(14),
	o => \DataB[14]~input_o\);

-- Location: FF_X22_Y5_N41
\RegB|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[14]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(14));

-- Location: IOIBUF_X66_Y0_N75
\DataA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(14),
	o => \DataA[14]~input_o\);

-- Location: FF_X23_Y5_N14
\RegA|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[14]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(14));

-- Location: IOIBUF_X34_Y0_N41
\DataB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(13),
	o => \DataB[13]~input_o\);

-- Location: FF_X24_Y5_N17
\RegB|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[13]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(13));

-- Location: IOIBUF_X52_Y0_N35
\DataA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(13),
	o => \DataA[13]~input_o\);

-- Location: FF_X23_Y5_N17
\RegA|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[13]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(13));

-- Location: IOIBUF_X89_Y4_N44
\DataB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(12),
	o => \DataB[12]~input_o\);

-- Location: LABCELL_X22_Y5_N45
\RegB|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[12]~feeder_combout\ = ( \DataB[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[12]~input_o\,
	combout => \RegB|Q[12]~feeder_combout\);

-- Location: FF_X22_Y5_N47
\RegB|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[12]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(12));

-- Location: IOIBUF_X54_Y0_N1
\DataA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(12),
	o => \DataA[12]~input_o\);

-- Location: FF_X23_Y5_N8
\RegA|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[12]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(12));

-- Location: IOIBUF_X40_Y0_N18
\DataA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(11),
	o => \DataA[11]~input_o\);

-- Location: FF_X23_Y5_N2
\RegA|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[11]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(11));

-- Location: IOIBUF_X68_Y0_N52
\DataB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(11),
	o => \DataB[11]~input_o\);

-- Location: LABCELL_X22_Y5_N42
\RegB|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[11]~feeder_combout\ = ( \DataB[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[11]~input_o\,
	combout => \RegB|Q[11]~feeder_combout\);

-- Location: FF_X22_Y5_N44
\RegB|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[11]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(11));

-- Location: IOIBUF_X52_Y0_N1
\DataA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(10),
	o => \DataA[10]~input_o\);

-- Location: FF_X23_Y5_N23
\RegA|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[10]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(10));

-- Location: IOIBUF_X8_Y0_N18
\DataB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(10),
	o => \DataB[10]~input_o\);

-- Location: LABCELL_X22_Y5_N18
\RegB|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[10]~feeder_combout\ = ( \DataB[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[10]~input_o\,
	combout => \RegB|Q[10]~feeder_combout\);

-- Location: FF_X22_Y5_N20
\RegB|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[10]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(10));

-- Location: IOIBUF_X52_Y0_N18
\DataB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(9),
	o => \DataB[9]~input_o\);

-- Location: FF_X24_Y5_N23
\RegB|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[9]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(9));

-- Location: IOIBUF_X66_Y0_N92
\DataA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(9),
	o => \DataA[9]~input_o\);

-- Location: FF_X23_Y5_N26
\RegA|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[9]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(9));

-- Location: IOIBUF_X56_Y0_N52
\DataA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(8),
	o => \DataA[8]~input_o\);

-- Location: LABCELL_X23_Y6_N0
\RegA|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[8]~feeder_combout\ = ( \DataA[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[8]~input_o\,
	combout => \RegA|Q[8]~feeder_combout\);

-- Location: FF_X23_Y6_N2
\RegA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(8));

-- Location: IOIBUF_X2_Y0_N41
\DataB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(8),
	o => \DataB[8]~input_o\);

-- Location: LABCELL_X24_Y6_N9
\RegB|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[8]~feeder_combout\ = ( \DataB[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[8]~input_o\,
	combout => \RegB|Q[8]~feeder_combout\);

-- Location: FF_X24_Y6_N11
\RegB|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[8]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(8));

-- Location: IOIBUF_X56_Y0_N35
\DataB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(7),
	o => \DataB[7]~input_o\);

-- Location: LABCELL_X24_Y6_N54
\RegB|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[7]~feeder_combout\ = ( \DataB[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[7]~input_o\,
	combout => \RegB|Q[7]~feeder_combout\);

-- Location: FF_X24_Y6_N56
\RegB|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(7));

-- Location: IOIBUF_X89_Y8_N38
\DataA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(7),
	o => \DataA[7]~input_o\);

-- Location: LABCELL_X23_Y6_N27
\RegA|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[7]~feeder_combout\ = ( \DataA[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[7]~input_o\,
	combout => \RegA|Q[7]~feeder_combout\);

-- Location: FF_X23_Y6_N29
\RegA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[7]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(7));

-- Location: IOIBUF_X72_Y0_N35
\DataB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(6),
	o => \DataB[6]~input_o\);

-- Location: LABCELL_X24_Y6_N15
\RegB|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[6]~feeder_combout\ = ( \DataB[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[6]~input_o\,
	combout => \RegB|Q[6]~feeder_combout\);

-- Location: FF_X24_Y6_N17
\RegB|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(6));

-- Location: IOIBUF_X89_Y8_N55
\DataA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(6),
	o => \DataA[6]~input_o\);

-- Location: LABCELL_X23_Y6_N9
\RegA|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[6]~feeder_combout\ = ( \DataA[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[6]~input_o\,
	combout => \RegA|Q[6]~feeder_combout\);

-- Location: FF_X23_Y6_N11
\RegA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[6]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(6));

-- Location: IOIBUF_X89_Y6_N4
\DataA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(5),
	o => \DataA[5]~input_o\);

-- Location: FF_X24_Y6_N38
\RegA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[5]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(5));

-- Location: IOIBUF_X64_Y0_N1
\DataB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(5),
	o => \DataB[5]~input_o\);

-- Location: FF_X23_Y6_N32
\RegB|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[5]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(5));

-- Location: IOIBUF_X70_Y0_N18
\DataB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(4),
	o => \DataB[4]~input_o\);

-- Location: FF_X24_Y6_N23
\RegB|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[4]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(4));

-- Location: IOIBUF_X6_Y0_N1
\DataA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(4),
	o => \DataA[4]~input_o\);

-- Location: FF_X23_Y6_N14
\RegA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[4]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(4));

-- Location: IOIBUF_X64_Y0_N52
\DataA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(3),
	o => \DataA[3]~input_o\);

-- Location: LABCELL_X23_Y6_N3
\RegA|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[3]~feeder_combout\ = ( \DataA[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[3]~input_o\,
	combout => \RegA|Q[3]~feeder_combout\);

-- Location: FF_X23_Y6_N5
\RegA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[3]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(3));

-- Location: IOIBUF_X72_Y0_N1
\DataB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(3),
	o => \DataB[3]~input_o\);

-- Location: FF_X24_Y6_N8
\RegB|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[3]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(3));

-- Location: IOIBUF_X89_Y6_N38
\DataB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(2),
	o => \DataB[2]~input_o\);

-- Location: FF_X23_Y6_N35
\RegB|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataB[2]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(2));

-- Location: IOIBUF_X89_Y8_N21
\DataA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(2),
	o => \DataA[2]~input_o\);

-- Location: LABCELL_X23_Y6_N6
\RegA|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegA|Q[2]~feeder_combout\ = ( \DataA[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataA[2]~input_o\,
	combout => \RegA|Q[2]~feeder_combout\);

-- Location: FF_X23_Y6_N8
\RegA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegA|Q[2]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(2));

-- Location: IOIBUF_X60_Y0_N35
\DataB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataB(1),
	o => \DataB[1]~input_o\);

-- Location: LABCELL_X23_Y6_N21
\RegB|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegB|Q[1]~feeder_combout\ = ( \DataB[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DataB[1]~input_o\,
	combout => \RegB|Q[1]~feeder_combout\);

-- Location: FF_X23_Y6_N23
\RegB|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \RegB|Q[1]~feeder_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegB~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegB|Q\(1));

-- Location: IOIBUF_X89_Y6_N55
\DataA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DataA(1),
	o => \DataA[1]~input_o\);

-- Location: FF_X23_Y6_N26
\RegA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \DataA[1]~input_o\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => VCC,
	ena => \enRegA~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegA|Q\(1));

-- Location: LABCELL_X23_Y6_N36
\ULA_PADRAO|SomaSub|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~9_sumout\ = SUM(( !\RegB|Q\(1) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(1) ) + ( \ULA_PADRAO|SomaSub|Add1~6\ ))
-- \ULA_PADRAO|SomaSub|Add1~10\ = CARRY(( !\RegB|Q\(1) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(1) ) + ( \ULA_PADRAO|SomaSub|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(1),
	dataf => \RegA|ALT_INV_Q\(1),
	cin => \ULA_PADRAO|SomaSub|Add1~6\,
	sumout => \ULA_PADRAO|SomaSub|Add1~9_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~10\);

-- Location: LABCELL_X23_Y6_N39
\ULA_PADRAO|SomaSub|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~13_sumout\ = SUM(( !\RegB|Q\(2) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(2) ) + ( \ULA_PADRAO|SomaSub|Add1~10\ ))
-- \ULA_PADRAO|SomaSub|Add1~14\ = CARRY(( !\RegB|Q\(2) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(2) ) + ( \ULA_PADRAO|SomaSub|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(2),
	dataf => \RegA|ALT_INV_Q\(2),
	cin => \ULA_PADRAO|SomaSub|Add1~10\,
	sumout => \ULA_PADRAO|SomaSub|Add1~13_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~14\);

-- Location: LABCELL_X23_Y6_N42
\ULA_PADRAO|SomaSub|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~17_sumout\ = SUM(( \RegA|Q\(3) ) + ( !\RegB|Q\(3) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~14\ ))
-- \ULA_PADRAO|SomaSub|Add1~18\ = CARRY(( \RegA|Q\(3) ) + ( !\RegB|Q\(3) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(3),
	dataf => \RegB|ALT_INV_Q\(3),
	cin => \ULA_PADRAO|SomaSub|Add1~14\,
	sumout => \ULA_PADRAO|SomaSub|Add1~17_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~18\);

-- Location: LABCELL_X23_Y6_N45
\ULA_PADRAO|SomaSub|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~21_sumout\ = SUM(( !\RegB|Q\(4) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(4) ) + ( \ULA_PADRAO|SomaSub|Add1~18\ ))
-- \ULA_PADRAO|SomaSub|Add1~22\ = CARRY(( !\RegB|Q\(4) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(4) ) + ( \ULA_PADRAO|SomaSub|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(4),
	dataf => \RegA|ALT_INV_Q\(4),
	cin => \ULA_PADRAO|SomaSub|Add1~18\,
	sumout => \ULA_PADRAO|SomaSub|Add1~21_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~22\);

-- Location: LABCELL_X23_Y6_N48
\ULA_PADRAO|SomaSub|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~25_sumout\ = SUM(( \RegA|Q\(5) ) + ( !\RegB|Q\(5) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~22\ ))
-- \ULA_PADRAO|SomaSub|Add1~26\ = CARRY(( \RegA|Q\(5) ) + ( !\RegB|Q\(5) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(5),
	dataf => \RegB|ALT_INV_Q\(5),
	cin => \ULA_PADRAO|SomaSub|Add1~22\,
	sumout => \ULA_PADRAO|SomaSub|Add1~25_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~26\);

-- Location: LABCELL_X23_Y6_N51
\ULA_PADRAO|SomaSub|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~29_sumout\ = SUM(( !\RegB|Q\(6) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(6) ) + ( \ULA_PADRAO|SomaSub|Add1~26\ ))
-- \ULA_PADRAO|SomaSub|Add1~30\ = CARRY(( !\RegB|Q\(6) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(6) ) + ( \ULA_PADRAO|SomaSub|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(6),
	dataf => \RegA|ALT_INV_Q\(6),
	cin => \ULA_PADRAO|SomaSub|Add1~26\,
	sumout => \ULA_PADRAO|SomaSub|Add1~29_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~30\);

-- Location: LABCELL_X23_Y6_N54
\ULA_PADRAO|SomaSub|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~33_sumout\ = SUM(( !\RegB|Q\(7) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(7) ) + ( \ULA_PADRAO|SomaSub|Add1~30\ ))
-- \ULA_PADRAO|SomaSub|Add1~34\ = CARRY(( !\RegB|Q\(7) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(7) ) + ( \ULA_PADRAO|SomaSub|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(7),
	dataf => \RegA|ALT_INV_Q\(7),
	cin => \ULA_PADRAO|SomaSub|Add1~30\,
	sumout => \ULA_PADRAO|SomaSub|Add1~33_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~34\);

-- Location: LABCELL_X23_Y6_N57
\ULA_PADRAO|SomaSub|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~37_sumout\ = SUM(( \RegA|Q\(8) ) + ( !\RegB|Q\(8) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~34\ ))
-- \ULA_PADRAO|SomaSub|Add1~38\ = CARRY(( \RegA|Q\(8) ) + ( !\RegB|Q\(8) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(8),
	dataf => \RegB|ALT_INV_Q\(8),
	cin => \ULA_PADRAO|SomaSub|Add1~34\,
	sumout => \ULA_PADRAO|SomaSub|Add1~37_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~38\);

-- Location: LABCELL_X23_Y5_N30
\ULA_PADRAO|SomaSub|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~41_sumout\ = SUM(( !\RegB|Q\(9) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(9) ) + ( \ULA_PADRAO|SomaSub|Add1~38\ ))
-- \ULA_PADRAO|SomaSub|Add1~42\ = CARRY(( !\RegB|Q\(9) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(9) ) + ( \ULA_PADRAO|SomaSub|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(9),
	dataf => \RegA|ALT_INV_Q\(9),
	cin => \ULA_PADRAO|SomaSub|Add1~38\,
	sumout => \ULA_PADRAO|SomaSub|Add1~41_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~42\);

-- Location: LABCELL_X23_Y5_N33
\ULA_PADRAO|SomaSub|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~45_sumout\ = SUM(( \RegA|Q\(10) ) + ( !\RegB|Q\(10) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~42\ ))
-- \ULA_PADRAO|SomaSub|Add1~46\ = CARRY(( \RegA|Q\(10) ) + ( !\RegB|Q\(10) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(10),
	dataf => \RegB|ALT_INV_Q\(10),
	cin => \ULA_PADRAO|SomaSub|Add1~42\,
	sumout => \ULA_PADRAO|SomaSub|Add1~45_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~46\);

-- Location: LABCELL_X23_Y5_N36
\ULA_PADRAO|SomaSub|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~49_sumout\ = SUM(( \RegA|Q\(11) ) + ( !\RegB|Q\(11) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~46\ ))
-- \ULA_PADRAO|SomaSub|Add1~50\ = CARRY(( \RegA|Q\(11) ) + ( !\RegB|Q\(11) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(11),
	dataf => \RegB|ALT_INV_Q\(11),
	cin => \ULA_PADRAO|SomaSub|Add1~46\,
	sumout => \ULA_PADRAO|SomaSub|Add1~49_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~50\);

-- Location: LABCELL_X23_Y5_N39
\ULA_PADRAO|SomaSub|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~53_sumout\ = SUM(( !\RegB|Q\(12) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(12) ) + ( \ULA_PADRAO|SomaSub|Add1~50\ ))
-- \ULA_PADRAO|SomaSub|Add1~54\ = CARRY(( !\RegB|Q\(12) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(12) ) + ( \ULA_PADRAO|SomaSub|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(12),
	dataf => \RegA|ALT_INV_Q\(12),
	cin => \ULA_PADRAO|SomaSub|Add1~50\,
	sumout => \ULA_PADRAO|SomaSub|Add1~53_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~54\);

-- Location: LABCELL_X23_Y5_N42
\ULA_PADRAO|SomaSub|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~57_sumout\ = SUM(( !\RegB|Q\(13) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(13) ) + ( \ULA_PADRAO|SomaSub|Add1~54\ ))
-- \ULA_PADRAO|SomaSub|Add1~58\ = CARRY(( !\RegB|Q\(13) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(13) ) + ( \ULA_PADRAO|SomaSub|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(13),
	dataf => \RegA|ALT_INV_Q\(13),
	cin => \ULA_PADRAO|SomaSub|Add1~54\,
	sumout => \ULA_PADRAO|SomaSub|Add1~57_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~58\);

-- Location: LABCELL_X23_Y5_N45
\ULA_PADRAO|SomaSub|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~61_sumout\ = SUM(( !\RegB|Q\(14) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(14) ) + ( \ULA_PADRAO|SomaSub|Add1~58\ ))
-- \ULA_PADRAO|SomaSub|Add1~62\ = CARRY(( !\RegB|Q\(14) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(14) ) + ( \ULA_PADRAO|SomaSub|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(14),
	dataf => \RegA|ALT_INV_Q\(14),
	cin => \ULA_PADRAO|SomaSub|Add1~58\,
	sumout => \ULA_PADRAO|SomaSub|Add1~61_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~62\);

-- Location: LABCELL_X23_Y5_N48
\ULA_PADRAO|SomaSub|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~65_sumout\ = SUM(( !\RegB|Q\(15) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(15) ) + ( \ULA_PADRAO|SomaSub|Add1~62\ ))
-- \ULA_PADRAO|SomaSub|Add1~66\ = CARRY(( !\RegB|Q\(15) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(15) ) + ( \ULA_PADRAO|SomaSub|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(15),
	dataf => \RegA|ALT_INV_Q\(15),
	cin => \ULA_PADRAO|SomaSub|Add1~62\,
	sumout => \ULA_PADRAO|SomaSub|Add1~65_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~66\);

-- Location: LABCELL_X23_Y5_N51
\ULA_PADRAO|SomaSub|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~69_sumout\ = SUM(( \RegA|Q\(16) ) + ( !\RegB|Q\(16) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~66\ ))
-- \ULA_PADRAO|SomaSub|Add1~70\ = CARRY(( \RegA|Q\(16) ) + ( !\RegB|Q\(16) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(16),
	dataf => \RegB|ALT_INV_Q\(16),
	cin => \ULA_PADRAO|SomaSub|Add1~66\,
	sumout => \ULA_PADRAO|SomaSub|Add1~69_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~70\);

-- Location: LABCELL_X23_Y5_N54
\ULA_PADRAO|SomaSub|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~73_sumout\ = SUM(( !\RegB|Q\(17) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(17) ) + ( \ULA_PADRAO|SomaSub|Add1~70\ ))
-- \ULA_PADRAO|SomaSub|Add1~74\ = CARRY(( !\RegB|Q\(17) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \RegA|Q\(17) ) + ( \ULA_PADRAO|SomaSub|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(17),
	dataf => \RegA|ALT_INV_Q\(17),
	cin => \ULA_PADRAO|SomaSub|Add1~70\,
	sumout => \ULA_PADRAO|SomaSub|Add1~73_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~74\);

-- Location: LABCELL_X23_Y5_N57
\ULA_PADRAO|SomaSub|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~77_sumout\ = SUM(( \RegA|Q\(18) ) + ( !\RegB|Q\(18) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~74\ ))
-- \ULA_PADRAO|SomaSub|Add1~78\ = CARRY(( \RegA|Q\(18) ) + ( !\RegB|Q\(18) $ ((((!\funct[5]~input_o\) # (!\Controle_Ula|Mux0~0_combout\)) # (\funct[2]~input_o\))) ) + ( \ULA_PADRAO|SomaSub|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010000001000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[2]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(18),
	dataf => \RegB|ALT_INV_Q\(18),
	cin => \ULA_PADRAO|SomaSub|Add1~74\,
	sumout => \ULA_PADRAO|SomaSub|Add1~77_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~78\);

-- Location: LABCELL_X23_Y4_N0
\ULA_PADRAO|SomaSub|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~81_sumout\ = SUM(( !\RegB|Q\(19) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(19) ) + ( \ULA_PADRAO|SomaSub|Add1~78\ ))
-- \ULA_PADRAO|SomaSub|Add1~82\ = CARRY(( !\RegB|Q\(19) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(19) ) + ( \ULA_PADRAO|SomaSub|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(19),
	dataf => \RegA|ALT_INV_Q\(19),
	cin => \ULA_PADRAO|SomaSub|Add1~78\,
	sumout => \ULA_PADRAO|SomaSub|Add1~81_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~82\);

-- Location: LABCELL_X23_Y4_N3
\ULA_PADRAO|SomaSub|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~85_sumout\ = SUM(( !\RegB|Q\(20) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(20) ) + ( \ULA_PADRAO|SomaSub|Add1~82\ ))
-- \ULA_PADRAO|SomaSub|Add1~86\ = CARRY(( !\RegB|Q\(20) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(20) ) + ( \ULA_PADRAO|SomaSub|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(20),
	dataf => \RegA|ALT_INV_Q\(20),
	cin => \ULA_PADRAO|SomaSub|Add1~82\,
	sumout => \ULA_PADRAO|SomaSub|Add1~85_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~86\);

-- Location: LABCELL_X23_Y4_N6
\ULA_PADRAO|SomaSub|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~89_sumout\ = SUM(( !\RegB|Q\(21) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(21) ) + ( \ULA_PADRAO|SomaSub|Add1~86\ ))
-- \ULA_PADRAO|SomaSub|Add1~90\ = CARRY(( !\RegB|Q\(21) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(21) ) + ( \ULA_PADRAO|SomaSub|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(21),
	dataf => \RegA|ALT_INV_Q\(21),
	cin => \ULA_PADRAO|SomaSub|Add1~86\,
	sumout => \ULA_PADRAO|SomaSub|Add1~89_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~90\);

-- Location: LABCELL_X23_Y4_N9
\ULA_PADRAO|SomaSub|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~93_sumout\ = SUM(( \RegA|Q\(22) ) + ( !\RegB|Q\(22) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~90\ ))
-- \ULA_PADRAO|SomaSub|Add1~94\ = CARRY(( \RegA|Q\(22) ) + ( !\RegB|Q\(22) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(22),
	dataf => \RegB|ALT_INV_Q\(22),
	cin => \ULA_PADRAO|SomaSub|Add1~90\,
	sumout => \ULA_PADRAO|SomaSub|Add1~93_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~94\);

-- Location: LABCELL_X23_Y4_N12
\ULA_PADRAO|SomaSub|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~97_sumout\ = SUM(( \RegA|Q\(23) ) + ( !\RegB|Q\(23) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~94\ ))
-- \ULA_PADRAO|SomaSub|Add1~98\ = CARRY(( \RegA|Q\(23) ) + ( !\RegB|Q\(23) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(23),
	dataf => \RegB|ALT_INV_Q\(23),
	cin => \ULA_PADRAO|SomaSub|Add1~94\,
	sumout => \ULA_PADRAO|SomaSub|Add1~97_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~98\);

-- Location: LABCELL_X23_Y4_N15
\ULA_PADRAO|SomaSub|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~101_sumout\ = SUM(( !\RegB|Q\(24) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(24) ) + ( \ULA_PADRAO|SomaSub|Add1~98\ ))
-- \ULA_PADRAO|SomaSub|Add1~102\ = CARRY(( !\RegB|Q\(24) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(24) ) + ( \ULA_PADRAO|SomaSub|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(24),
	dataf => \RegA|ALT_INV_Q\(24),
	cin => \ULA_PADRAO|SomaSub|Add1~98\,
	sumout => \ULA_PADRAO|SomaSub|Add1~101_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~102\);

-- Location: LABCELL_X23_Y4_N18
\ULA_PADRAO|SomaSub|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~105_sumout\ = SUM(( !\RegB|Q\(25) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(25) ) + ( \ULA_PADRAO|SomaSub|Add1~102\ ))
-- \ULA_PADRAO|SomaSub|Add1~106\ = CARRY(( !\RegB|Q\(25) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(25) ) + ( \ULA_PADRAO|SomaSub|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(25),
	dataf => \RegA|ALT_INV_Q\(25),
	cin => \ULA_PADRAO|SomaSub|Add1~102\,
	sumout => \ULA_PADRAO|SomaSub|Add1~105_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~106\);

-- Location: LABCELL_X23_Y4_N21
\ULA_PADRAO|SomaSub|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~109_sumout\ = SUM(( !\RegB|Q\(26) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(26) ) + ( \ULA_PADRAO|SomaSub|Add1~106\ ))
-- \ULA_PADRAO|SomaSub|Add1~110\ = CARRY(( !\RegB|Q\(26) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(26) ) + ( \ULA_PADRAO|SomaSub|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(26),
	dataf => \RegA|ALT_INV_Q\(26),
	cin => \ULA_PADRAO|SomaSub|Add1~106\,
	sumout => \ULA_PADRAO|SomaSub|Add1~109_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~110\);

-- Location: LABCELL_X23_Y4_N24
\ULA_PADRAO|SomaSub|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~113_sumout\ = SUM(( \RegA|Q\(27) ) + ( !\RegB|Q\(27) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~110\ ))
-- \ULA_PADRAO|SomaSub|Add1~114\ = CARRY(( \RegA|Q\(27) ) + ( !\RegB|Q\(27) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(27),
	dataf => \RegB|ALT_INV_Q\(27),
	cin => \ULA_PADRAO|SomaSub|Add1~110\,
	sumout => \ULA_PADRAO|SomaSub|Add1~113_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~114\);

-- Location: LABCELL_X23_Y4_N27
\ULA_PADRAO|SomaSub|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~117_sumout\ = SUM(( !\RegB|Q\(28) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(28) ) + ( \ULA_PADRAO|SomaSub|Add1~114\ ))
-- \ULA_PADRAO|SomaSub|Add1~118\ = CARRY(( !\RegB|Q\(28) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(28) ) + ( \ULA_PADRAO|SomaSub|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(28),
	dataf => \RegA|ALT_INV_Q\(28),
	cin => \ULA_PADRAO|SomaSub|Add1~114\,
	sumout => \ULA_PADRAO|SomaSub|Add1~117_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~118\);

-- Location: LABCELL_X23_Y4_N30
\ULA_PADRAO|SomaSub|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~121_sumout\ = SUM(( !\RegB|Q\(29) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(29) ) + ( \ULA_PADRAO|SomaSub|Add1~118\ ))
-- \ULA_PADRAO|SomaSub|Add1~122\ = CARRY(( !\RegB|Q\(29) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \RegA|Q\(29) ) + ( \ULA_PADRAO|SomaSub|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegB|ALT_INV_Q\(29),
	dataf => \RegA|ALT_INV_Q\(29),
	cin => \ULA_PADRAO|SomaSub|Add1~118\,
	sumout => \ULA_PADRAO|SomaSub|Add1~121_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~122\);

-- Location: LABCELL_X23_Y4_N33
\ULA_PADRAO|SomaSub|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~125_sumout\ = SUM(( \RegA|Q\(30) ) + ( !\RegB|Q\(30) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~122\ ))
-- \ULA_PADRAO|SomaSub|Add1~126\ = CARRY(( \RegA|Q\(30) ) + ( !\RegB|Q\(30) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(30),
	dataf => \RegB|ALT_INV_Q\(30),
	cin => \ULA_PADRAO|SomaSub|Add1~122\,
	sumout => \ULA_PADRAO|SomaSub|Add1~125_sumout\,
	cout => \ULA_PADRAO|SomaSub|Add1~126\);

-- Location: LABCELL_X23_Y4_N36
\ULA_PADRAO|SomaSub|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_PADRAO|SomaSub|Add1~1_sumout\ = SUM(( \RegA|Q\(31) ) + ( !\RegB|Q\(31) $ (((!\funct[5]~input_o\) # ((!\Controle_Ula|Mux0~0_combout\) # (\funct[2]~input_o\)))) ) + ( \ULA_PADRAO|SomaSub|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110000010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[5]~input_o\,
	datab => \ALT_INV_funct[2]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \RegA|ALT_INV_Q\(31),
	dataf => \RegB|ALT_INV_Q\(31),
	cin => \ULA_PADRAO|SomaSub|Add1~126\,
	sumout => \ULA_PADRAO|SomaSub|Add1~1_sumout\);

-- Location: LABCELL_X24_Y4_N30
\ULA_Mult|OPERACIONAL|SOMA|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~1_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(0) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(0)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(0))) ) + ( !VCC ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~2\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(0) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(0)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(0))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(0),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(0),
	dataf => \RegA|ALT_INV_Q\(0),
	cin => GND,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~1_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~2\);

-- Location: LABCELL_X23_Y5_N24
\ULA_Mult|OPERACIONAL|Equal0~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~28_combout\ = ( !\RegA|Q\(9) & ( !\RegA|Q\(12) & ( (!\RegA|Q\(11) & (!\RegA|Q\(13) & (!\RegA|Q\(10) & !\RegA|Q\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(11),
	datab => \RegA|ALT_INV_Q\(13),
	datac => \RegA|ALT_INV_Q\(10),
	datad => \RegA|ALT_INV_Q\(14),
	datae => \RegA|ALT_INV_Q\(9),
	dataf => \RegA|ALT_INV_Q\(12),
	combout => \ULA_Mult|OPERACIONAL|Equal0~28_combout\);

-- Location: LABCELL_X22_Y5_N15
\ULA_Mult|OPERACIONAL|Equal0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~29_combout\ = ( !\RegB|Q\(13) & ( !\RegB|Q\(11) & ( (!\RegB|Q\(10) & (!\RegB|Q\(12) & !\RegB|Q\(14))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(10),
	datab => \RegB|ALT_INV_Q\(12),
	datac => \RegB|ALT_INV_Q\(14),
	datae => \RegB|ALT_INV_Q\(13),
	dataf => \RegB|ALT_INV_Q\(11),
	combout => \ULA_Mult|OPERACIONAL|Equal0~29_combout\);

-- Location: MLABCELL_X25_Y5_N12
\ULA_Mult|OPERACIONAL|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~6_combout\ = ( \RegB|Q\(7) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(7)) # (\RegA|Q\(8)))) ) ) ) # ( !\RegB|Q\(7) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(7)) # (\RegA|Q\(8)))) ) ) ) # ( \RegB|Q\(7) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegB|Q\(7) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(8) & !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000111111110000000001110111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(8),
	datab => \RegA|ALT_INV_Q\(7),
	datac => \RegB|ALT_INV_Q\(8),
	datad => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datae => \RegB|ALT_INV_Q\(7),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~6_combout\);

-- Location: LABCELL_X24_Y5_N33
\ULA_Mult|OPERACIONAL|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~7_combout\ = ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( !\ULA_Mult|OPERACIONAL|Equal0~6_combout\ ) ) # ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( !\ULA_Mult|OPERACIONAL|Equal0~6_combout\ & ( 
-- (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (!\RegB|Q\(9) & ((\ULA_Mult|OPERACIONAL|Equal0~29_combout\)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (((\ULA_Mult|OPERACIONAL|Equal0~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000110011111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(9),
	datab => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~28_combout\,
	datac => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~29_combout\,
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datae => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~6_combout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~7_combout\);

-- Location: LABCELL_X23_Y2_N45
\ULA_Mult|OPERACIONAL|MUX2|D[28]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[28]~5_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(28) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegA|ALT_INV_Q\(28),
	datad => \RegB|ALT_INV_Q\(28),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[28]~5_combout\);

-- Location: LABCELL_X23_Y5_N12
\ULA_Mult|OPERACIONAL|Equal0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~19_combout\ = ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (\RegA|Q\(17)) # (\RegA|Q\(18)) ) ) ) # ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(18)) # (\RegB|Q\(17)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000000000000001110111011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(18),
	datab => \RegA|ALT_INV_Q\(17),
	datac => \RegB|ALT_INV_Q\(17),
	datad => \RegB|ALT_INV_Q\(18),
	datae => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~19_combout\);

-- Location: LABCELL_X24_Y5_N12
\ULA_Mult|OPERACIONAL|Equal0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~15_combout\ = ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (\RegA|Q\(5)) # (\RegA|Q\(6)) ) ) ) # ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(5)) # (\RegB|Q\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111000000000000000000001111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(6),
	datab => \RegB|ALT_INV_Q\(5),
	datac => \RegA|ALT_INV_Q\(6),
	datad => \RegA|ALT_INV_Q\(5),
	datae => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~15_combout\);

-- Location: MLABCELL_X25_Y5_N0
\ULA_Mult|OPERACIONAL|Equal0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~17_combout\ = ( \RegB|Q\(2) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(19)) # (\RegA|Q\(2)))) ) ) ) # ( !\RegB|Q\(2) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(19)) # (\RegA|Q\(2)))) ) ) ) # ( \RegB|Q\(2) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegB|Q\(2) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(19) & !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111110000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(19),
	datab => \RegA|ALT_INV_Q\(2),
	datac => \RegA|ALT_INV_Q\(19),
	datad => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datae => \RegB|ALT_INV_Q\(2),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~17_combout\);

-- Location: LABCELL_X23_Y5_N18
\ULA_Mult|OPERACIONAL|Equal0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~20_combout\ = ( \RegA|Q\(15) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegA|Q\(15) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (\RegA|Q\(16) & 
-- !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) ) # ( \RegA|Q\(15) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegB|Q\(16)) # (\RegB|Q\(15)))) ) ) ) # ( !\RegA|Q\(15) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegB|Q\(16)) # (\RegB|Q\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110000010100001111000000110000001100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(15),
	datab => \RegA|ALT_INV_Q\(16),
	datac => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datad => \RegB|ALT_INV_Q\(16),
	datae => \RegA|ALT_INV_Q\(15),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~20_combout\);

-- Location: LABCELL_X24_Y5_N36
\ULA_Mult|OPERACIONAL|Equal0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~18_combout\ = ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (\RegA|Q\(1)) # (\RegA|Q\(0)) ) ) ) # ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(0)) # (\RegB|Q\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000000000000001110111011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(0),
	datab => \RegA|ALT_INV_Q\(1),
	datac => \RegB|ALT_INV_Q\(1),
	datad => \RegB|ALT_INV_Q\(0),
	datae => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~18_combout\);

-- Location: MLABCELL_X25_Y5_N30
\ULA_Mult|OPERACIONAL|Equal0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~16_combout\ = ( \RegB|Q\(4) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(3)) # (\RegA|Q\(4)))) ) ) ) # ( !\RegB|Q\(4) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(3)) # (\RegA|Q\(4)))) ) ) ) # ( \RegB|Q\(4) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegB|Q\(4) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(3) & !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100110011001100110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(3),
	datab => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datac => \RegA|ALT_INV_Q\(4),
	datad => \RegA|ALT_INV_Q\(3),
	datae => \RegB|ALT_INV_Q\(4),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~16_combout\);

-- Location: LABCELL_X24_Y5_N6
\ULA_Mult|OPERACIONAL|Equal0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~21_combout\ = ( !\ULA_Mult|OPERACIONAL|Equal0~18_combout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~16_combout\ & ( (!\ULA_Mult|OPERACIONAL|Equal0~19_combout\ & (!\ULA_Mult|OPERACIONAL|Equal0~15_combout\ & 
-- (!\ULA_Mult|OPERACIONAL|Equal0~17_combout\ & !\ULA_Mult|OPERACIONAL|Equal0~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~19_combout\,
	datab => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~15_combout\,
	datac => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~17_combout\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~20_combout\,
	datae => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~18_combout\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~16_combout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~21_combout\);

-- Location: LABCELL_X24_Y3_N6
\ULA_Mult|OPERACIONAL|MUX2|D[18]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[18]~8_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(18) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegA|ALT_INV_Q\(18),
	datac => \RegB|ALT_INV_Q\(18),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[18]~8_combout\);

-- Location: FF_X23_Y3_N56
\ULA_Mult|OPERACIONAL|REGCONT|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~25_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[18]~8_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(18));

-- Location: LABCELL_X23_Y3_N0
\ULA_Mult|OPERACIONAL|SUB|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(0) ) + ( VCC ) + ( !VCC ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~86\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(0),
	cin => GND,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~86\);

-- Location: LABCELL_X24_Y2_N39
\ULA_Mult|OPERACIONAL|MUX2|D[0]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[0]~22_combout\ = ( \RegB|Q\(0) & ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\) # (\RegA|Q\(0)) ) ) # ( !\RegB|Q\(0) & ( (\RegA|Q\(0) & \ULA_PADRAO|SomaSub|Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegA|ALT_INV_Q\(0),
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegB|ALT_INV_Q\(0),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[0]~22_combout\);

-- Location: FF_X23_Y3_N2
\ULA_Mult|OPERACIONAL|REGCONT|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[0]~22_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(0));

-- Location: LABCELL_X23_Y3_N3
\ULA_Mult|OPERACIONAL|SUB|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~89_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(1) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~86\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~90\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(1) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(1),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~86\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~89_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~90\);

-- Location: LABCELL_X23_Y5_N3
\ULA_Mult|OPERACIONAL|MUX2|D[1]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[1]~23_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(1) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(1),
	datac => \RegA|ALT_INV_Q\(1),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[1]~23_combout\);

-- Location: FF_X23_Y3_N5
\ULA_Mult|OPERACIONAL|REGCONT|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~89_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[1]~23_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(1));

-- Location: LABCELL_X23_Y3_N6
\ULA_Mult|OPERACIONAL|SUB|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~93_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(2) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~90\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~94\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(2) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(2),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~90\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~93_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~94\);

-- Location: LABCELL_X24_Y4_N15
\ULA_Mult|OPERACIONAL|MUX2|D[2]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[2]~24_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(2) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(2),
	datac => \RegA|ALT_INV_Q\(2),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[2]~24_combout\);

-- Location: FF_X23_Y3_N8
\ULA_Mult|OPERACIONAL|REGCONT|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~93_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[2]~24_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(2));

-- Location: LABCELL_X23_Y3_N9
\ULA_Mult|OPERACIONAL|SUB|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(3) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~94\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~98\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(3) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(3),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~94\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~98\);

-- Location: LABCELL_X24_Y4_N18
\ULA_Mult|OPERACIONAL|MUX2|D[3]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[3]~25_combout\ = ( \RegA|Q\(3) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ ) ) # ( \RegA|Q\(3) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(3) ) ) ) # ( !\RegA|Q\(3) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(3) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(3),
	datae => \RegA|ALT_INV_Q\(3),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[3]~25_combout\);

-- Location: FF_X23_Y3_N11
\ULA_Mult|OPERACIONAL|REGCONT|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[3]~25_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(3));

-- Location: LABCELL_X23_Y3_N12
\ULA_Mult|OPERACIONAL|SUB|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~73_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(4) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~98\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~74\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(4) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(4),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~98\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~73_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~74\);

-- Location: LABCELL_X24_Y5_N18
\ULA_Mult|OPERACIONAL|MUX2|D[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[4]~19_combout\ = ( \RegB|Q\(4) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(4) ) ) ) # ( !\RegB|Q\(4) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(4) ) ) ) # ( \RegB|Q\(4) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegA|ALT_INV_Q\(4),
	datae => \RegB|ALT_INV_Q\(4),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[4]~19_combout\);

-- Location: FF_X23_Y3_N14
\ULA_Mult|OPERACIONAL|REGCONT|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~73_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[4]~19_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(4));

-- Location: LABCELL_X23_Y3_N15
\ULA_Mult|OPERACIONAL|SUB|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~37_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(5) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~74\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~38\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(5) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(5),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~74\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~37_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~38\);

-- Location: LABCELL_X23_Y5_N6
\ULA_Mult|OPERACIONAL|MUX2|D[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[5]~10_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(5) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(5),
	datac => \RegA|ALT_INV_Q\(5),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[5]~10_combout\);

-- Location: FF_X23_Y3_N17
\ULA_Mult|OPERACIONAL|REGCONT|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~37_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[5]~10_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(5));

-- Location: LABCELL_X23_Y3_N18
\ULA_Mult|OPERACIONAL|SUB|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~41_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(6) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~38\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~42\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(6) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(6),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~38\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~41_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~42\);

-- Location: LABCELL_X22_Y4_N0
\ULA_Mult|OPERACIONAL|MUX2|D[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[6]~11_combout\ = ( \RegA|Q\(6) & ( (\ULA_PADRAO|SomaSub|Add1~1_sumout\) # (\RegB|Q\(6)) ) ) # ( !\RegA|Q\(6) & ( (\RegB|Q\(6) & !\ULA_PADRAO|SomaSub|Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegB|ALT_INV_Q\(6),
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegA|ALT_INV_Q\(6),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[6]~11_combout\);

-- Location: FF_X23_Y3_N20
\ULA_Mult|OPERACIONAL|REGCONT|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~41_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[6]~11_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(6));

-- Location: LABCELL_X23_Y3_N21
\ULA_Mult|OPERACIONAL|SUB|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~45_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(7) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~42\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~46\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(7) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(7),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~42\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~45_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~46\);

-- Location: LABCELL_X22_Y3_N45
\ULA_Mult|OPERACIONAL|MUX2|D[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[7]~12_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(7) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(7) & ( \RegB|Q\(7) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegA|Q\(7) & ( \RegB|Q\(7) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(7),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegA|ALT_INV_Q\(7),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[7]~12_combout\);

-- Location: FF_X23_Y3_N23
\ULA_Mult|OPERACIONAL|REGCONT|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~45_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[7]~12_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(7));

-- Location: LABCELL_X23_Y3_N24
\ULA_Mult|OPERACIONAL|SUB|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~49_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(8) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~46\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~50\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(8) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(8),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~46\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~49_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~50\);

-- Location: MLABCELL_X25_Y5_N6
\ULA_Mult|OPERACIONAL|MUX2|D[8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[8]~13_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(8) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(8),
	datac => \RegA|ALT_INV_Q\(8),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[8]~13_combout\);

-- Location: FF_X23_Y3_N26
\ULA_Mult|OPERACIONAL|REGCONT|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~49_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[8]~13_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(8));

-- Location: LABCELL_X23_Y3_N27
\ULA_Mult|OPERACIONAL|SUB|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~33_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(9) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~50\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~34\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(9) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(9),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~50\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~33_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~34\);

-- Location: LABCELL_X22_Y3_N54
\ULA_Mult|OPERACIONAL|MUX2|D[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[9]~0_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(9) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(9) & ( \RegB|Q\(9) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegA|Q\(9) & ( \RegB|Q\(9) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegB|ALT_INV_Q\(9),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegA|ALT_INV_Q\(9),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[9]~0_combout\);

-- Location: FF_X23_Y3_N29
\ULA_Mult|OPERACIONAL|REGCONT|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~33_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[9]~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(9));

-- Location: LABCELL_X23_Y3_N30
\ULA_Mult|OPERACIONAL|SUB|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~117_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(10) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~34\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~118\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(10) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(10),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~34\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~117_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~118\);

-- Location: LABCELL_X24_Y3_N12
\ULA_Mult|OPERACIONAL|MUX2|D[10]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[10]~1_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(10) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegA|ALT_INV_Q\(10),
	datad => \RegB|ALT_INV_Q\(10),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[10]~1_combout\);

-- Location: FF_X23_Y3_N31
\ULA_Mult|OPERACIONAL|REGCONT|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~117_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[10]~1_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(10));

-- Location: LABCELL_X23_Y3_N33
\ULA_Mult|OPERACIONAL|SUB|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(11) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~118\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~122\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(11) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(11),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~118\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~122\);

-- Location: LABCELL_X24_Y3_N15
\ULA_Mult|OPERACIONAL|MUX2|D[11]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[11]~30_combout\ = ( \RegB|Q\(11) & ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\) # (\RegA|Q\(11)) ) ) # ( !\RegB|Q\(11) & ( (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & \RegA|Q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegA|ALT_INV_Q\(11),
	dataf => \RegB|ALT_INV_Q\(11),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[11]~30_combout\);

-- Location: FF_X23_Y3_N35
\ULA_Mult|OPERACIONAL|REGCONT|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[11]~30_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(11));

-- Location: LABCELL_X23_Y3_N36
\ULA_Mult|OPERACIONAL|SUB|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(12) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~122\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~126\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(12) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(12),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~122\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~126\);

-- Location: LABCELL_X24_Y3_N9
\ULA_Mult|OPERACIONAL|MUX2|D[12]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[12]~31_combout\ = (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(12))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(12),
	datac => \RegA|ALT_INV_Q\(12),
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[12]~31_combout\);

-- Location: FF_X23_Y3_N38
\ULA_Mult|OPERACIONAL|REGCONT|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[12]~31_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(12));

-- Location: LABCELL_X23_Y3_N39
\ULA_Mult|OPERACIONAL|SUB|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~77_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(13) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~126\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~78\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(13) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(13),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~126\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~77_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~78\);

-- Location: LABCELL_X24_Y3_N18
\ULA_Mult|OPERACIONAL|MUX2|D[13]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[13]~20_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(13) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(13) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(13),
	datad => \RegA|ALT_INV_Q\(13),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[13]~20_combout\);

-- Location: FF_X23_Y3_N41
\ULA_Mult|OPERACIONAL|REGCONT|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~77_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[13]~20_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(13));

-- Location: LABCELL_X23_Y3_N42
\ULA_Mult|OPERACIONAL|SUB|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(14) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~78\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~82\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(14) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(14),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~78\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~82\);

-- Location: LABCELL_X24_Y3_N24
\ULA_Mult|OPERACIONAL|MUX2|D[14]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[14]~21_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(14) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(14),
	datac => \RegA|ALT_INV_Q\(14),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[14]~21_combout\);

-- Location: FF_X23_Y3_N44
\ULA_Mult|OPERACIONAL|REGCONT|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[14]~21_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(14));

-- Location: LABCELL_X23_Y3_N45
\ULA_Mult|OPERACIONAL|SUB|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~69_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(15) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~82\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~70\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(15) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(15),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~82\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~69_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~70\);

-- Location: LABCELL_X22_Y3_N24
\ULA_Mult|OPERACIONAL|MUX2|D[15]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[15]~18_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(15) & ( \RegA|Q\(15) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(15) ) ) # ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegB|Q\(15) & ( 
-- \RegA|Q\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegA|ALT_INV_Q\(15),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegB|ALT_INV_Q\(15),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[15]~18_combout\);

-- Location: FF_X23_Y3_N47
\ULA_Mult|OPERACIONAL|REGCONT|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~69_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[15]~18_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(15));

-- Location: LABCELL_X23_Y3_N48
\ULA_Mult|OPERACIONAL|SUB|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~113_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(16) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~70\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~114\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(16) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(16),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~70\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~113_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~114\);

-- Location: LABCELL_X24_Y3_N27
\ULA_Mult|OPERACIONAL|MUX2|D[16]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[16]~29_combout\ = ( \RegB|Q\(16) & ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\) # (\RegA|Q\(16)) ) ) # ( !\RegB|Q\(16) & ( (\RegA|Q\(16) & \ULA_PADRAO|SomaSub|Add1~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(16),
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegB|ALT_INV_Q\(16),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[16]~29_combout\);

-- Location: FF_X23_Y3_N50
\ULA_Mult|OPERACIONAL|REGCONT|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~113_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[16]~29_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(16));

-- Location: LABCELL_X23_Y3_N51
\ULA_Mult|OPERACIONAL|SUB|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~29_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(17) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~114\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~30\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(17) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(17),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~114\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~29_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~30\);

-- Location: LABCELL_X24_Y3_N3
\ULA_Mult|OPERACIONAL|MUX2|D[17]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[17]~9_combout\ = ( \RegA|Q\(17) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ ) ) # ( \RegA|Q\(17) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(17) ) ) ) # ( !\RegA|Q\(17) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- \RegB|Q\(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegB|ALT_INV_Q\(17),
	datae => \RegA|ALT_INV_Q\(17),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[17]~9_combout\);

-- Location: FF_X23_Y3_N53
\ULA_Mult|OPERACIONAL|REGCONT|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~29_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[17]~9_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(17));

-- Location: LABCELL_X23_Y3_N54
\ULA_Mult|OPERACIONAL|SUB|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~25_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(18) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~30\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~26\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(18) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(18),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~30\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~25_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~26\);

-- Location: LABCELL_X22_Y3_N0
\ULA_Mult|OPERACIONAL|MUX2|D[19]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[19]~7_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(19) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(19) & ( \RegB|Q\(19) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegA|Q\(19) & ( 
-- \RegB|Q\(19) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(19),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegA|ALT_INV_Q\(19),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[19]~7_combout\);

-- Location: FF_X23_Y3_N59
\ULA_Mult|OPERACIONAL|REGCONT|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~21_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[19]~7_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(19));

-- Location: LABCELL_X23_Y3_N57
\ULA_Mult|OPERACIONAL|SUB|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~21_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(19) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~26\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~22\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(19) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(19),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~26\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~21_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~22\);

-- Location: LABCELL_X24_Y3_N21
\ULA_Mult|OPERACIONAL|Equal0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~24_combout\ = ( !\ULA_Mult|OPERACIONAL|SUB|Add0~29_sumout\ & ( (!\ULA_Mult|OPERACIONAL|SUB|Add0~25_sumout\ & !\ULA_Mult|OPERACIONAL|SUB|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~25_sumout\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~21_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~29_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~24_combout\);

-- Location: LABCELL_X23_Y2_N54
\ULA_Mult|OPERACIONAL|MUX2|D[20]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[20]~28_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(20) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegA|ALT_INV_Q\(20),
	datad => \RegB|ALT_INV_Q\(20),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[20]~28_combout\);

-- Location: FF_X23_Y2_N2
\ULA_Mult|OPERACIONAL|REGCONT|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~109_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[20]~28_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(20));

-- Location: LABCELL_X23_Y2_N0
\ULA_Mult|OPERACIONAL|SUB|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~109_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(20) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~22\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~110\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(20) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(20),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~22\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~109_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~110\);

-- Location: LABCELL_X24_Y2_N42
\ULA_Mult|OPERACIONAL|MUX2|D[21]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[21]~27_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(21) & ( \RegA|Q\(21) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(21) ) ) # ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegB|Q\(21) & ( 
-- \RegA|Q\(21) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111111111111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegA|ALT_INV_Q\(21),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegB|ALT_INV_Q\(21),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[21]~27_combout\);

-- Location: FF_X23_Y2_N5
\ULA_Mult|OPERACIONAL|REGCONT|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~105_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[21]~27_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(21));

-- Location: LABCELL_X23_Y2_N3
\ULA_Mult|OPERACIONAL|SUB|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~105_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(21) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~110\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~106\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(21) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(21),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~110\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~105_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~106\);

-- Location: LABCELL_X23_Y4_N54
\ULA_Mult|OPERACIONAL|MUX2|D[22]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[22]~26_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(22) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegA|ALT_INV_Q\(22),
	datad => \RegB|ALT_INV_Q\(22),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[22]~26_combout\);

-- Location: FF_X23_Y2_N8
\ULA_Mult|OPERACIONAL|REGCONT|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[22]~26_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(22));

-- Location: LABCELL_X23_Y2_N6
\ULA_Mult|OPERACIONAL|SUB|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(22) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~106\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~102\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(22) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(22),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~106\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~102\);

-- Location: LABCELL_X22_Y3_N48
\ULA_Mult|OPERACIONAL|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~3_combout\ = ( \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\ & ( \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\ & ( 
-- \ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( \ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( 
-- !\ULA_Mult|OPERACIONAL|SUB|Add0~125_sumout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~121_sumout\ & ( (\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & \ULA_Mult|OPERACIONAL|SUB|Add0~117_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~117_sumout\,
	datae => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~125_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~121_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~3_combout\);

-- Location: LABCELL_X22_Y2_N30
\ULA_Mult|OPERACIONAL|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~4_combout\ = ( \ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~3_combout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|SUB|Add0~101_sumout\ & ( 
-- !\ULA_Mult|OPERACIONAL|Equal0~3_combout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) # ((!\ULA_Mult|OPERACIONAL|SUB|Add0~113_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~109_sumout\ & !\ULA_Mult|OPERACIONAL|SUB|Add0~105_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datab => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~113_sumout\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~109_sumout\,
	datad => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~105_sumout\,
	datae => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~101_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~3_combout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~4_combout\);

-- Location: LABCELL_X22_Y3_N39
\ULA_Mult|OPERACIONAL|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~1_combout\ = ( \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\ & ( \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\ & ( 
-- \ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( \ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( 
-- !\ULA_Mult|OPERACIONAL|SUB|Add0~97_sumout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~85_sumout\ & ( (\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\ULA_Mult|OPERACIONAL|SUB|Add0~89_sumout\) # (\ULA_Mult|OPERACIONAL|SUB|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~93_sumout\,
	datac => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datad => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~89_sumout\,
	datae => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~97_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~85_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~1_combout\);

-- Location: LABCELL_X22_Y3_N18
\ULA_Mult|OPERACIONAL|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~2_combout\ = ( \ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~1_combout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|SUB|Add0~81_sumout\ & ( 
-- !\ULA_Mult|OPERACIONAL|Equal0~1_combout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) # ((!\ULA_Mult|OPERACIONAL|SUB|Add0~77_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~69_sumout\ & !\ULA_Mult|OPERACIONAL|SUB|Add0~73_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~77_sumout\,
	datab => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~69_sumout\,
	datad => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~73_sumout\,
	datae => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~81_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~1_combout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~2_combout\);

-- Location: LABCELL_X22_Y2_N45
\ULA_Mult|OPERACIONAL|MUX2|D[29]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[29]~4_combout\ = ( \RegA|Q\(29) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ ) ) # ( \RegA|Q\(29) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(29) ) ) ) # ( !\RegA|Q\(29) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- \RegB|Q\(29) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegB|ALT_INV_Q\(29),
	datae => \RegA|ALT_INV_Q\(29),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[29]~4_combout\);

-- Location: FF_X23_Y2_N28
\ULA_Mult|OPERACIONAL|REGCONT|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[29]~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(29));

-- Location: LABCELL_X23_Y2_N9
\ULA_Mult|OPERACIONAL|SUB|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(23) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~102\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~66\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(23) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(23),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~102\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~66\);

-- Location: LABCELL_X22_Y2_N6
\ULA_Mult|OPERACIONAL|MUX2|D[23]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[23]~17_combout\ = ( \RegB|Q\(23) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(23) ) ) ) # ( !\RegB|Q\(23) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(23) ) ) ) # ( \RegB|Q\(23) & ( 
-- !\ULA_PADRAO|SomaSub|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegA|ALT_INV_Q\(23),
	datae => \RegB|ALT_INV_Q\(23),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[23]~17_combout\);

-- Location: FF_X23_Y2_N10
\ULA_Mult|OPERACIONAL|REGCONT|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[23]~17_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(23));

-- Location: LABCELL_X23_Y2_N12
\ULA_Mult|OPERACIONAL|SUB|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(24) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~66\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~62\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(24) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(24),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~66\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~62\);

-- Location: LABCELL_X22_Y4_N15
\ULA_Mult|OPERACIONAL|MUX2|D[24]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[24]~16_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(24) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(24),
	datac => \RegB|ALT_INV_Q\(24),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[24]~16_combout\);

-- Location: FF_X23_Y2_N13
\ULA_Mult|OPERACIONAL|REGCONT|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[24]~16_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(24));

-- Location: LABCELL_X23_Y2_N15
\ULA_Mult|OPERACIONAL|SUB|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(25) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~62\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~58\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(25) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(25),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~62\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~58\);

-- Location: LABCELL_X24_Y2_N57
\ULA_Mult|OPERACIONAL|MUX2|D[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[25]~15_combout\ = ( \RegB|Q\(25) & ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\) # (\RegA|Q\(25)) ) ) # ( !\RegB|Q\(25) & ( (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & \RegA|Q\(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegA|ALT_INV_Q\(25),
	dataf => \RegB|ALT_INV_Q\(25),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[25]~15_combout\);

-- Location: FF_X23_Y2_N16
\ULA_Mult|OPERACIONAL|REGCONT|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[25]~15_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(25));

-- Location: LABCELL_X23_Y2_N18
\ULA_Mult|OPERACIONAL|SUB|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(26) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~58\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~54\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(26) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(26),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~58\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~54\);

-- Location: LABCELL_X22_Y2_N48
\ULA_Mult|OPERACIONAL|MUX2|D[26]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[26]~14_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(26) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(26),
	datac => \RegB|ALT_INV_Q\(26),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[26]~14_combout\);

-- Location: FF_X23_Y2_N19
\ULA_Mult|OPERACIONAL|REGCONT|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[26]~14_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(26));

-- Location: LABCELL_X23_Y2_N21
\ULA_Mult|OPERACIONAL|SUB|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(27) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~54\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~18\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(27) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(27),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~54\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~18\);

-- Location: LABCELL_X23_Y2_N39
\ULA_Mult|OPERACIONAL|MUX2|D[27]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[27]~6_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegA|Q\(27) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(27) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RegB|ALT_INV_Q\(27),
	datad => \RegA|ALT_INV_Q\(27),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[27]~6_combout\);

-- Location: FF_X23_Y2_N22
\ULA_Mult|OPERACIONAL|REGCONT|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[27]~6_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(27));

-- Location: LABCELL_X23_Y2_N24
\ULA_Mult|OPERACIONAL|SUB|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(28) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~18\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~14\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(28) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(28),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~18\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~14\);

-- Location: LABCELL_X23_Y2_N27
\ULA_Mult|OPERACIONAL|SUB|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(29) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~14\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~10\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(29) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(29),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~14\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~10\);

-- Location: LABCELL_X23_Y2_N36
\ULA_Mult|OPERACIONAL|Equal0~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~26_combout\ = ( !\ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\ & ( (!\ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\ & 
-- !\ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~9_sumout\,
	datab => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~61_sumout\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~13_sumout\,
	datad => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~17_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~65_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~26_combout\);

-- Location: LABCELL_X24_Y2_N54
\ULA_Mult|OPERACIONAL|MUX2|D[31]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[31]~2_combout\ = ( \RegA|Q\(31) & ( (\RegB|Q\(31)) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\) ) ) # ( !\RegA|Q\(31) & ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & \RegB|Q\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(31),
	dataf => \RegA|ALT_INV_Q\(31),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[31]~2_combout\);

-- Location: FF_X23_Y2_N34
\ULA_Mult|OPERACIONAL|REGCONT|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[31]~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(31));

-- Location: LABCELL_X23_Y2_N30
\ULA_Mult|OPERACIONAL|SUB|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(30) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~10\ ))
-- \ULA_Mult|OPERACIONAL|SUB|Add0~6\ = CARRY(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(30) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(30),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~10\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SUB|Add0~6\);

-- Location: LABCELL_X24_Y2_N36
\ULA_Mult|OPERACIONAL|MUX2|D[30]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|MUX2|D[30]~3_combout\ = (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(30))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(30))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(30),
	datad => \RegA|ALT_INV_Q\(30),
	combout => \ULA_Mult|OPERACIONAL|MUX2|D[30]~3_combout\);

-- Location: FF_X23_Y2_N31
\ULA_Mult|OPERACIONAL|REGCONT|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[30]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(30));

-- Location: LABCELL_X23_Y2_N33
\ULA_Mult|OPERACIONAL|SUB|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGCONT|Q\(31) ) + ( VCC ) + ( \ULA_Mult|OPERACIONAL|SUB|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGCONT|ALT_INV_Q\(31),
	cin => \ULA_Mult|OPERACIONAL|SUB|Add0~6\,
	sumout => \ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\);

-- Location: LABCELL_X22_Y3_N6
\ULA_Mult|OPERACIONAL|Equal0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~23_combout\ = ( !\ULA_Mult|OPERACIONAL|SUB|Add0~45_sumout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~41_sumout\ & ( (!\ULA_Mult|OPERACIONAL|SUB|Add0~33_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~49_sumout\ & 
-- !\ULA_Mult|OPERACIONAL|SUB|Add0~37_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~33_sumout\,
	datab => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~49_sumout\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~37_sumout\,
	datae => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~45_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~41_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~23_combout\);

-- Location: LABCELL_X23_Y2_N42
\ULA_Mult|OPERACIONAL|Equal0~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~27_combout\ = ( !\ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ & ( (!\ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\ & 
-- \ULA_Mult|OPERACIONAL|Equal0~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~53_sumout\,
	datab => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~57_sumout\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~23_combout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~5_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~27_combout\);

-- Location: LABCELL_X24_Y5_N54
\ULA_Mult|OPERACIONAL|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~5_combout\ = ( \ULA_Mult|OPERACIONAL|Equal0~27_combout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( (\ULA_Mult|OPERACIONAL|Equal0~24_combout\ & (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & 
-- (\ULA_Mult|OPERACIONAL|Equal0~2_combout\ & \ULA_Mult|OPERACIONAL|Equal0~26_combout\))) ) ) ) # ( \ULA_Mult|OPERACIONAL|Equal0~27_combout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & 
-- \ULA_Mult|OPERACIONAL|Equal0~2_combout\) ) ) ) # ( !\ULA_Mult|OPERACIONAL|Equal0~27_combout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & \ULA_Mult|OPERACIONAL|Equal0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~24_combout\,
	datab => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~4_combout\,
	datac => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~2_combout\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~26_combout\,
	datae => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~27_combout\,
	dataf => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~5_combout\);

-- Location: LABCELL_X24_Y1_N36
\ULA_Mult|CONTROLE|ProximoEstado.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|CONTROLE|ProximoEstado.S0~0_combout\ = ( !\ULA_Mult|CONTROLE|EstadoAtual.S0~q\ & ( (\Controle_Ula|Mux2~0_combout\ & (\funct[5]~input_o\ & (!\funct[3]~input_o\ & \Controle_Ula|Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_Ula|ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \ALT_INV_funct[3]~input_o\,
	datad => \Controle_Ula|ALT_INV_Mux1~0_combout\,
	dataf => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S0~q\,
	combout => \ULA_Mult|CONTROLE|ProximoEstado.S0~0_combout\);

-- Location: LABCELL_X24_Y1_N39
\ULA_Mult|CONTROLE|ProximoEstado.S0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\ = ( !\funct[2]~input_o\ & ( (\funct[5]~input_o\ & (\Controle_Ula|Mux0~0_combout\ & \ULA_Mult|CONTROLE|ProximoEstado.S0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux0~0_combout\,
	datad => \ULA_Mult|CONTROLE|ALT_INV_ProximoEstado.S0~0_combout\,
	dataf => \ALT_INV_funct[2]~input_o\,
	combout => \ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\);

-- Location: LABCELL_X24_Y5_N48
\ULA_Mult|OPERACIONAL|Equal0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~13_combout\ = ( \RegA|Q\(29) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegA|Q\(29) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (\RegA|Q\(28) & 
-- !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) ) # ( \RegA|Q\(29) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegB|Q\(28)) # (\RegB|Q\(29)))) ) ) ) # ( !\RegA|Q\(29) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegB|Q\(28)) # (\RegB|Q\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(28),
	datab => \RegB|ALT_INV_Q\(29),
	datac => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datad => \RegB|ALT_INV_Q\(28),
	datae => \RegA|ALT_INV_Q\(29),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~13_combout\);

-- Location: MLABCELL_X25_Y5_N36
\ULA_Mult|OPERACIONAL|Equal0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~11_combout\ = ( \RegB|Q\(26) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(26)) # (\RegA|Q\(27)))) ) ) ) # ( !\RegB|Q\(26) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(26)) # (\RegA|Q\(27)))) ) ) ) # ( \RegB|Q\(26) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegB|Q\(26) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & \RegB|Q\(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011001100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(27),
	datab => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datac => \RegA|ALT_INV_Q\(26),
	datad => \RegB|ALT_INV_Q\(27),
	datae => \RegB|ALT_INV_Q\(26),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~11_combout\);

-- Location: LABCELL_X24_Y4_N24
\ULA_Mult|OPERACIONAL|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~8_combout\ = ( \RegB|Q\(20) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(21)) # (\RegA|Q\(20)))) ) ) ) # ( !\RegB|Q\(20) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(21)) # (\RegA|Q\(20)))) ) ) ) # ( \RegB|Q\(20) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegB|Q\(20) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (\RegB|Q\(21) & !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(21),
	datab => \RegA|ALT_INV_Q\(20),
	datac => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datad => \RegA|ALT_INV_Q\(21),
	datae => \RegB|ALT_INV_Q\(20),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~8_combout\);

-- Location: LABCELL_X23_Y4_N42
\ULA_Mult|OPERACIONAL|Equal0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~12_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(31) & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(30)) # (\RegA|Q\(31)))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( \RegB|Q\(31) & ( 
-- !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegB|Q\(31) & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegA|Q\(30)) # (\RegA|Q\(31)))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\RegB|Q\(31) & ( 
-- (\RegB|Q\(30) & !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100001111000011110000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(31),
	datab => \RegB|ALT_INV_Q\(30),
	datac => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datad => \RegA|ALT_INV_Q\(30),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	dataf => \RegB|ALT_INV_Q\(31),
	combout => \ULA_Mult|OPERACIONAL|Equal0~12_combout\);

-- Location: LABCELL_X23_Y4_N48
\ULA_Mult|OPERACIONAL|Equal0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~10_combout\ = ( \RegA|Q\(25) & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( ((\ULA_PADRAO|SomaSub|Add1~1_sumout\) # (\RegB|Q\(24))) # (\RegB|Q\(25)) ) ) ) # ( !\RegA|Q\(25) & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ( 
-- (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (((\RegB|Q\(24))) # (\RegB|Q\(25)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (((\RegA|Q\(24))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001111111011111110111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(25),
	datab => \RegB|ALT_INV_Q\(24),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \RegA|ALT_INV_Q\(24),
	datae => \RegA|ALT_INV_Q\(25),
	dataf => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~10_combout\);

-- Location: MLABCELL_X25_Y5_N18
\ULA_Mult|OPERACIONAL|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~9_combout\ = ( \RegA|Q\(22) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( !\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\RegA|Q\(22) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & 
-- \RegA|Q\(23)) ) ) ) # ( \RegA|Q\(22) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegB|Q\(22)) # (\RegB|Q\(23)))) ) ) ) # ( !\RegA|Q\(22) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( 
-- (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & ((\RegB|Q\(22)) # (\RegB|Q\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011001100010001001100110000001100000011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(23),
	datab => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datac => \RegA|ALT_INV_Q\(23),
	datad => \RegB|ALT_INV_Q\(22),
	datae => \RegA|ALT_INV_Q\(22),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~9_combout\);

-- Location: LABCELL_X24_Y5_N42
\ULA_Mult|OPERACIONAL|Equal0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~14_combout\ = ( !\ULA_Mult|OPERACIONAL|Equal0~10_combout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~9_combout\ & ( (!\ULA_Mult|OPERACIONAL|Equal0~13_combout\ & (!\ULA_Mult|OPERACIONAL|Equal0~11_combout\ & 
-- (!\ULA_Mult|OPERACIONAL|Equal0~8_combout\ & !\ULA_Mult|OPERACIONAL|Equal0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~13_combout\,
	datab => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~11_combout\,
	datac => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~8_combout\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~12_combout\,
	datae => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~10_combout\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~9_combout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~14_combout\);

-- Location: LABCELL_X24_Y5_N24
\ULA_Mult|CONTROLE|ProximoEstado.S0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|CONTROLE|ProximoEstado.S0~2_combout\ = ( \ULA_Mult|CONTROLE|EstadoAtual.S0~q\ & ( \ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( (!\ULA_Mult|OPERACIONAL|Equal0~7_combout\) # ((!\ULA_Mult|OPERACIONAL|Equal0~21_combout\) # 
-- ((!\ULA_Mult|OPERACIONAL|Equal0~5_combout\) # (\ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\))) ) ) ) # ( !\ULA_Mult|CONTROLE|EstadoAtual.S0~q\ & ( \ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( \ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\ ) ) ) # ( 
-- \ULA_Mult|CONTROLE|EstadoAtual.S0~q\ & ( !\ULA_Mult|OPERACIONAL|Equal0~14_combout\ ) ) # ( !\ULA_Mult|CONTROLE|EstadoAtual.S0~q\ & ( !\ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( \ULA_Mult|CONTROLE|ProximoEstado.S0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111111111111100000000111111111111111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~7_combout\,
	datab => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~21_combout\,
	datac => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~5_combout\,
	datad => \ULA_Mult|CONTROLE|ALT_INV_ProximoEstado.S0~1_combout\,
	datae => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S0~q\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~14_combout\,
	combout => \ULA_Mult|CONTROLE|ProximoEstado.S0~2_combout\);

-- Location: FF_X24_Y5_N26
\ULA_Mult|CONTROLE|EstadoAtual.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|CONTROLE|ProximoEstado.S0~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\);

-- Location: FF_X23_Y2_N25
\ULA_Mult|OPERACIONAL|REGCONT|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\,
	asdata => \ULA_Mult|OPERACIONAL|MUX2|D[28]~5_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sload => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGCONT|Q\(28));

-- Location: LABCELL_X23_Y2_N48
\ULA_Mult|OPERACIONAL|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~0_combout\ = ( \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\ & ( \ULA_Mult|OPERACIONAL|Equal0~24_combout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\ & ( 
-- \ULA_Mult|OPERACIONAL|Equal0~24_combout\ & ( (\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & (((!\ULA_Mult|OPERACIONAL|Equal0~23_combout\) # (\ULA_Mult|OPERACIONAL|SUB|Add0~9_sumout\)) # (\ULA_Mult|OPERACIONAL|SUB|Add0~13_sumout\))) ) ) ) # ( 
-- \ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~24_combout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|SUB|Add0~17_sumout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~24_combout\ & ( 
-- \ULA_Mult|CONTROLE|EstadoAtual.S2~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~13_sumout\,
	datab => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~9_sumout\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~23_combout\,
	datae => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~17_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~24_combout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~0_combout\);

-- Location: LABCELL_X23_Y2_N57
\ULA_Mult|OPERACIONAL|Equal0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~25_combout\ = ( !\ULA_Mult|OPERACIONAL|SUB|Add0~57_sumout\ & ( (!\ULA_Mult|OPERACIONAL|SUB|Add0~53_sumout\ & (!\ULA_Mult|OPERACIONAL|SUB|Add0~65_sumout\ & !\ULA_Mult|OPERACIONAL|SUB|Add0~61_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~53_sumout\,
	datab => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~65_sumout\,
	datac => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~61_sumout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~57_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~25_combout\);

-- Location: LABCELL_X22_Y2_N39
\ULA_Mult|OPERACIONAL|Equal0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|Equal0~22_combout\ = ( \ULA_Mult|OPERACIONAL|Equal0~25_combout\ & ( \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & 
-- \ULA_Mult|OPERACIONAL|Equal0~2_combout\)) ) ) ) # ( !\ULA_Mult|OPERACIONAL|Equal0~25_combout\ & ( \ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & 
-- \ULA_Mult|OPERACIONAL|Equal0~2_combout\)) ) ) ) # ( \ULA_Mult|OPERACIONAL|Equal0~25_combout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ & ( (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & (\ULA_Mult|OPERACIONAL|Equal0~2_combout\ & 
-- ((!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\) # (!\ULA_Mult|OPERACIONAL|SUB|Add0~1_sumout\)))) ) ) ) # ( !\ULA_Mult|OPERACIONAL|Equal0~25_combout\ & ( !\ULA_Mult|OPERACIONAL|SUB|Add0~5_sumout\ & ( (!\ULA_Mult|CONTROLE|EstadoAtual.S2~q\ & 
-- (\ULA_Mult|OPERACIONAL|Equal0~4_combout\ & \ULA_Mult|OPERACIONAL|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000111000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S2~q\,
	datab => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~1_sumout\,
	datac => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~4_combout\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~2_combout\,
	datae => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~25_combout\,
	dataf => \ULA_Mult|OPERACIONAL|SUB|ALT_INV_Add0~5_sumout\,
	combout => \ULA_Mult|OPERACIONAL|Equal0~22_combout\);

-- Location: LABCELL_X24_Y5_N0
\ULA_Mult|CONTROLE|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|CONTROLE|Selector0~0_combout\ = ( \ULA_Mult|OPERACIONAL|Equal0~22_combout\ & ( \ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( (\ULA_Mult|CONTROLE|EstadoAtual.S0~q\ & ((!\ULA_Mult|OPERACIONAL|Equal0~7_combout\) # 
-- ((!\ULA_Mult|OPERACIONAL|Equal0~21_combout\) # (\ULA_Mult|OPERACIONAL|Equal0~0_combout\)))) ) ) ) # ( !\ULA_Mult|OPERACIONAL|Equal0~22_combout\ & ( \ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S0~q\ ) ) ) # ( 
-- \ULA_Mult|OPERACIONAL|Equal0~22_combout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( \ULA_Mult|CONTROLE|EstadoAtual.S0~q\ ) ) ) # ( !\ULA_Mult|OPERACIONAL|Equal0~22_combout\ & ( !\ULA_Mult|OPERACIONAL|Equal0~14_combout\ & ( 
-- \ULA_Mult|CONTROLE|EstadoAtual.S0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~7_combout\,
	datab => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~0_combout\,
	datac => \ULA_Mult|CONTROLE|ALT_INV_EstadoAtual.S0~q\,
	datad => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~21_combout\,
	datae => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~22_combout\,
	dataf => \ULA_Mult|OPERACIONAL|ALT_INV_Equal0~14_combout\,
	combout => \ULA_Mult|CONTROLE|Selector0~0_combout\);

-- Location: FF_X24_Y5_N2
\ULA_Mult|CONTROLE|EstadoAtual.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|CONTROLE|Selector0~0_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\);

-- Location: FF_X24_Y4_N32
\ULA_Mult|OPERACIONAL|REGSOMA|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~1_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(0));

-- Location: LABCELL_X24_Y1_N51
\ULA_GERAL|D[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[0]~2_combout\ = ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\funct[4]~input_o\ & (((\ULA_GERAL|D[0]~1_combout\)) # (\ULA_PADRAO|andsel~0_combout\))) # (\funct[4]~input_o\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(0))))) ) ) # ( 
-- !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\funct[4]~input_o\ & (!\ULA_PADRAO|andsel~0_combout\ & (\ULA_GERAL|D[0]~1_combout\))) # (\funct[4]~input_o\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[4]~input_o\,
	datab => \ULA_PADRAO|ALT_INV_andsel~0_combout\,
	datac => \ULA_GERAL|ALT_INV_D[0]~1_combout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(0),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_GERAL|D[0]~2_combout\);

-- Location: IOIBUF_X26_Y0_N58
\enRegC~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enRegC,
	o => \enRegC~input_o\);

-- Location: FF_X24_Y1_N52
\RegC|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[0]~2_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(0));

-- Location: LABCELL_X24_Y4_N33
\ULA_Mult|OPERACIONAL|SOMA|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~5_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(1)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(1))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(1) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~2\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~6\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(1)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(1))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(1) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(1),
	datad => \RegA|ALT_INV_Q\(1),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(1),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~2\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~5_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~6\);

-- Location: FF_X24_Y4_N35
\ULA_Mult|OPERACIONAL|REGSOMA|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~5_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(1));

-- Location: LABCELL_X24_Y1_N0
\RegC|Q[30]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegC|Q[30]~0_combout\ = ( !\funct[4]~input_o\ & ( (!\funct[3]~input_o\ & (\funct[5]~input_o\ & \Controle_Ula|Mux1~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000000000000000000010000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[3]~input_o\,
	datab => \ALT_INV_funct[5]~input_o\,
	datac => \Controle_Ula|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_funct[4]~input_o\,
	combout => \RegC|Q[30]~0_combout\);

-- Location: LABCELL_X24_Y1_N9
\RegC|Q[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegC|Q[30]~1_combout\ = ( !\funct[4]~input_o\ & ( \funct[3]~input_o\ ) ) # ( !\funct[4]~input_o\ & ( !\funct[3]~input_o\ & ( ((!\funct[5]~input_o\) # (!\Controle_Ula|Mux1~0_combout\)) # (\Controle_Ula|Mux2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Controle_Ula|ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_funct[5]~input_o\,
	datad => \Controle_Ula|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_funct[4]~input_o\,
	dataf => \ALT_INV_funct[3]~input_o\,
	combout => \RegC|Q[30]~1_combout\);

-- Location: LABCELL_X24_Y6_N24
\ULA_GERAL|D[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[1]~3_combout\ = ( \RegC|Q[30]~0_combout\ & ( \RegC|Q[30]~1_combout\ & ( (\RegB|Q\(1) & \RegA|Q\(1)) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~9_sumout\ ) ) ) # ( \RegC|Q[30]~0_combout\ & ( 
-- !\RegC|Q[30]~1_combout\ & ( (\RegA|Q\(1)) # (\RegB|Q\(1)) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\RegC|Q[30]~1_combout\ & ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101011111111100001111000011110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(1),
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(1),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~9_sumout\,
	datad => \RegA|ALT_INV_Q\(1),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \RegC|ALT_INV_Q[30]~1_combout\,
	combout => \ULA_GERAL|D[1]~3_combout\);

-- Location: LABCELL_X24_Y1_N48
\RegC|Q[30]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegC|Q[30]~2_combout\ = (!\funct[4]~input_o\ & \ULA_PADRAO|andsel~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct[4]~input_o\,
	datab => \ULA_PADRAO|ALT_INV_andsel~0_combout\,
	combout => \RegC|Q[30]~2_combout\);

-- Location: FF_X24_Y6_N25
\RegC|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[1]~3_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(1));

-- Location: LABCELL_X24_Y4_N36
\ULA_Mult|OPERACIONAL|SOMA|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~9_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(2) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(2)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(2))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~6\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~10\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(2) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(2)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(2))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(2),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(2),
	dataf => \RegA|ALT_INV_Q\(2),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~6\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~9_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~10\);

-- Location: FF_X24_Y4_N38
\ULA_Mult|OPERACIONAL|REGSOMA|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~9_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(2));

-- Location: LABCELL_X23_Y6_N12
\ULA_GERAL|D[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[2]~4_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~13_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegA|Q\(2) & \RegB|Q\(2))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~13_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(2))))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(2))) # (\RegA|Q\(2)))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~13_sumout\ & ( (\RegA|Q\(2) & (\RegC|Q[30]~0_combout\ & 
-- \RegB|Q\(2))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~13_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(2))))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(2))) # (\RegA|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111011111000000010000000100010011110111111100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(2),
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \RegB|ALT_INV_Q\(2),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(2),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~13_sumout\,
	combout => \ULA_GERAL|D[2]~4_combout\);

-- Location: FF_X24_Y6_N52
\RegC|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ULA_GERAL|D[2]~4_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	sload => VCC,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(2));

-- Location: LABCELL_X24_Y4_N39
\ULA_Mult|OPERACIONAL|SOMA|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~13_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(3)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(3))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(3) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~10\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~14\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(3)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(3))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(3) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(3),
	datad => \RegA|ALT_INV_Q\(3),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(3),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~10\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~13_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~14\);

-- Location: FF_X24_Y4_N41
\ULA_Mult|OPERACIONAL|REGSOMA|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~13_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(3));

-- Location: LABCELL_X24_Y6_N0
\ULA_GERAL|D[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[3]~5_combout\ = ( \ULA_PADRAO|SomaSub|Add1~17_sumout\ & ( \RegA|Q\(3) & ( (!\RegC|Q[30]~1_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(3))) # (\RegC|Q[30]~0_combout\))) # (\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\) # 
-- ((\RegB|Q\(3))))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~17_sumout\ & ( \RegA|Q\(3) & ( (!\RegC|Q[30]~1_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(3))) # (\RegC|Q[30]~0_combout\))) # (\RegC|Q[30]~1_combout\ & (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(3))))) ) 
-- ) ) # ( \ULA_PADRAO|SomaSub|Add1~17_sumout\ & ( !\RegA|Q\(3) & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(3))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(3)))))) # (\RegC|Q[30]~1_combout\ & 
-- (!\RegC|Q[30]~0_combout\)) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~17_sumout\ & ( !\RegA|Q\(3) & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(3))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(3),
	datad => \RegB|ALT_INV_Q\(3),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~17_sumout\,
	dataf => \RegA|ALT_INV_Q\(3),
	combout => \ULA_GERAL|D[3]~5_combout\);

-- Location: FF_X24_Y6_N1
\RegC|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[3]~5_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(3));

-- Location: LABCELL_X24_Y4_N42
\ULA_Mult|OPERACIONAL|SOMA|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~17_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(4)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(4))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(4) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~14\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~18\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(4)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(4))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(4) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datab => \RegB|ALT_INV_Q\(4),
	datac => \RegA|ALT_INV_Q\(4),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(4),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~14\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~17_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~18\);

-- Location: FF_X24_Y4_N44
\ULA_Mult|OPERACIONAL|REGSOMA|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~17_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(4));

-- Location: LABCELL_X24_Y6_N48
\ULA_GERAL|D[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[4]~6_combout\ = ( \RegC|Q[30]~0_combout\ & ( \RegC|Q[30]~1_combout\ & ( (\RegB|Q\(4) & \RegA|Q\(4)) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~21_sumout\ ) ) ) # ( \RegC|Q[30]~0_combout\ & ( 
-- !\RegC|Q[30]~1_combout\ & ( (\RegA|Q\(4)) # (\RegB|Q\(4)) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\RegC|Q[30]~1_combout\ & ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011111111111101010101010101010000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~21_sumout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(4),
	datac => \RegB|ALT_INV_Q\(4),
	datad => \RegA|ALT_INV_Q\(4),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \RegC|ALT_INV_Q[30]~1_combout\,
	combout => \ULA_GERAL|D[4]~6_combout\);

-- Location: FF_X24_Y6_N49
\RegC|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[4]~6_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(4));

-- Location: LABCELL_X24_Y4_N45
\ULA_Mult|OPERACIONAL|SOMA|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~21_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(5) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(5)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(5))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~18\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~22\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(5) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(5)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(5))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(5),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(5),
	dataf => \RegA|ALT_INV_Q\(5),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~18\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~21_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~22\);

-- Location: FF_X24_Y4_N47
\ULA_Mult|OPERACIONAL|REGSOMA|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~21_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(5));

-- Location: LABCELL_X22_Y4_N24
\ULA_GERAL|D[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[5]~7_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~25_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegA|Q\(5) & \RegB|Q\(5))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~25_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(5))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(5)) # (\RegA|Q\(5))))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~25_sumout\ & ( (\RegA|Q\(5) & (\RegC|Q[30]~0_combout\ & 
-- \RegB|Q\(5))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~25_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(5))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(5)) # (\RegA|Q\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101011111000000000000001101010011010111111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(5),
	datab => \RegA|ALT_INV_Q\(5),
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \RegB|ALT_INV_Q\(5),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~25_sumout\,
	combout => \ULA_GERAL|D[5]~7_combout\);

-- Location: FF_X22_Y4_N25
\RegC|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[5]~7_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(5));

-- Location: LABCELL_X24_Y4_N48
\ULA_Mult|OPERACIONAL|SOMA|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~25_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(6)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(6))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(6) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~22\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~26\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(6)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(6))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(6) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datab => \RegB|ALT_INV_Q\(6),
	datac => \RegA|ALT_INV_Q\(6),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(6),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~22\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~25_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~26\);

-- Location: FF_X24_Y4_N50
\ULA_Mult|OPERACIONAL|REGSOMA|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~25_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(6));

-- Location: LABCELL_X24_Y6_N30
\ULA_GERAL|D[6]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[6]~8_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(6) & ( (!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(6)) # (\RegA|Q\(6)))) # (\RegC|Q[30]~1_combout\ & (\RegA|Q\(6) & \RegB|Q\(6))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( 
-- \ULA_Mult|OPERACIONAL|REGSOMA|Q\(6) & ( (!\RegC|Q[30]~1_combout\) # (\ULA_PADRAO|SomaSub|Add1~29_sumout\) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(6) & ( (!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(6)) # (\RegA|Q\(6)))) # 
-- (\RegC|Q[30]~1_combout\ & (\RegA|Q\(6) & \RegB|Q\(6))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(6) & ( (\RegC|Q[30]~1_combout\ & \ULA_PADRAO|SomaSub|Add1~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000101011101110101111101011110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \RegA|ALT_INV_Q\(6),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~29_sumout\,
	datad => \RegB|ALT_INV_Q\(6),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(6),
	combout => \ULA_GERAL|D[6]~8_combout\);

-- Location: FF_X24_Y6_N31
\RegC|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[6]~8_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(6));

-- Location: LABCELL_X24_Y4_N51
\ULA_Mult|OPERACIONAL|SOMA|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~29_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(7)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(7))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(7) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~26\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~30\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(7)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(7))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(7) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(7),
	datad => \RegA|ALT_INV_Q\(7),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(7),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~26\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~29_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~30\);

-- Location: FF_X24_Y4_N53
\ULA_Mult|OPERACIONAL|REGSOMA|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~29_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(7));

-- Location: LABCELL_X24_Y6_N42
\ULA_GERAL|D[7]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[7]~9_combout\ = ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(7) & ( \RegC|Q[30]~1_combout\ & ( (!\RegC|Q[30]~0_combout\ & (\ULA_PADRAO|SomaSub|Add1~33_sumout\)) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(7) & \RegA|Q\(7))))) ) ) ) # ( 
-- !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(7) & ( \RegC|Q[30]~1_combout\ & ( (!\RegC|Q[30]~0_combout\ & (\ULA_PADRAO|SomaSub|Add1~33_sumout\)) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(7) & \RegA|Q\(7))))) ) ) ) # ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(7) & ( 
-- !\RegC|Q[30]~1_combout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegA|Q\(7)) # (\RegB|Q\(7))) ) ) ) # ( !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(7) & ( !\RegC|Q[30]~1_combout\ & ( (\RegC|Q[30]~0_combout\ & ((\RegA|Q\(7)) # (\RegB|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011110011111111111101000100010001110100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~33_sumout\,
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \RegB|ALT_INV_Q\(7),
	datad => \RegA|ALT_INV_Q\(7),
	datae => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(7),
	dataf => \RegC|ALT_INV_Q[30]~1_combout\,
	combout => \ULA_GERAL|D[7]~9_combout\);

-- Location: FF_X24_Y6_N43
\RegC|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[7]~9_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(7));

-- Location: LABCELL_X24_Y4_N54
\ULA_Mult|OPERACIONAL|SOMA|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~33_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(8) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(8)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(8))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~30\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~34\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(8) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(8)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(8))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(8),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(8),
	dataf => \RegA|ALT_INV_Q\(8),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~30\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~33_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~34\);

-- Location: FF_X24_Y4_N56
\ULA_Mult|OPERACIONAL|REGSOMA|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~33_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(8));

-- Location: MLABCELL_X25_Y4_N51
\ULA_GERAL|D[8]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[8]~10_combout\ = ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(8) & ( \ULA_PADRAO|SomaSub|Add1~37_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(8)) # (\RegA|Q\(8)))) # (\RegC|Q[30]~1_combout\ & (\RegA|Q\(8) & 
-- \RegB|Q\(8)))) ) ) ) # ( !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(8) & ( \ULA_PADRAO|SomaSub|Add1~37_sumout\ & ( (!\RegC|Q[30]~1_combout\ & (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(8)) # (\RegA|Q\(8))))) # (\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\) # 
-- ((\RegA|Q\(8) & \RegB|Q\(8))))) ) ) ) # ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(8) & ( !\ULA_PADRAO|SomaSub|Add1~37_sumout\ & ( (!\RegC|Q[30]~1_combout\ & (((!\RegC|Q[30]~0_combout\) # (\RegB|Q\(8))) # (\RegA|Q\(8)))) # (\RegC|Q[30]~1_combout\ & (\RegA|Q\(8) & 
-- (\RegC|Q[30]~0_combout\ & \RegB|Q\(8)))) ) ) ) # ( !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(8) & ( !\ULA_PADRAO|SomaSub|Add1~37_sumout\ & ( (\RegC|Q[30]~0_combout\ & ((!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(8)) # (\RegA|Q\(8)))) # (\RegC|Q[30]~1_combout\ & 
-- (\RegA|Q\(8) & \RegB|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001011101000101010101101010010010110111111001011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \RegA|ALT_INV_Q\(8),
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \RegB|ALT_INV_Q\(8),
	datae => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(8),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~37_sumout\,
	combout => \ULA_GERAL|D[8]~10_combout\);

-- Location: FF_X25_Y4_N52
\RegC|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[8]~10_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(8));

-- Location: LABCELL_X24_Y4_N57
\ULA_Mult|OPERACIONAL|SOMA|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~37_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(9)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(9))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(9) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~34\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~38\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(9)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(9))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(9) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datab => \RegB|ALT_INV_Q\(9),
	datac => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(9),
	datad => \RegA|ALT_INV_Q\(9),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~34\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~37_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~38\);

-- Location: FF_X24_Y4_N59
\ULA_Mult|OPERACIONAL|REGSOMA|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~37_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(9));

-- Location: MLABCELL_X25_Y4_N6
\ULA_GERAL|D[9]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[9]~11_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~41_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegA|Q\(9) & \RegB|Q\(9))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~41_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(9))))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(9))) # (\RegA|Q\(9)))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~41_sumout\ & ( (\RegA|Q\(9) & (\RegC|Q[30]~0_combout\ & 
-- \RegB|Q\(9))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~41_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(9))))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(9))) # (\RegA|Q\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100111111000000000001000100011101001111111100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(9),
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(9),
	datad => \RegB|ALT_INV_Q\(9),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~41_sumout\,
	combout => \ULA_GERAL|D[9]~11_combout\);

-- Location: FF_X25_Y4_N7
\RegC|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[9]~11_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(9));

-- Location: LABCELL_X24_Y3_N30
\ULA_Mult|OPERACIONAL|SOMA|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~41_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(10)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(10))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(10) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~38\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~42\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(10)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(10))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(10) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(10),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \RegA|ALT_INV_Q\(10),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(10),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~38\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~41_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~42\);

-- Location: FF_X24_Y3_N32
\ULA_Mult|OPERACIONAL|REGSOMA|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~41_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(10));

-- Location: LABCELL_X22_Y5_N48
\ULA_GERAL|D[10]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[10]~12_combout\ = ( \RegA|Q\(10) & ( \ULA_PADRAO|SomaSub|Add1~45_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\RegC|Q[30]~1_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(10)))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # 
-- (\RegB|Q\(10))))) ) ) ) # ( !\RegA|Q\(10) & ( \ULA_PADRAO|SomaSub|Add1~45_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\RegC|Q[30]~1_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(10)))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(10) & 
-- !\RegC|Q[30]~1_combout\)))) ) ) ) # ( \RegA|Q\(10) & ( !\ULA_PADRAO|SomaSub|Add1~45_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(10) & ((!\RegC|Q[30]~1_combout\)))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # 
-- (\RegB|Q\(10))))) ) ) ) # ( !\RegA|Q\(10) & ( !\ULA_PADRAO|SomaSub|Add1~45_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(10))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(10)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000011101110000010100100111101010100111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~0_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(10),
	datac => \RegB|ALT_INV_Q\(10),
	datad => \RegC|ALT_INV_Q[30]~1_combout\,
	datae => \RegA|ALT_INV_Q\(10),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~45_sumout\,
	combout => \ULA_GERAL|D[10]~12_combout\);

-- Location: FF_X22_Y5_N49
\RegC|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[10]~12_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(10));

-- Location: LABCELL_X24_Y3_N33
\ULA_Mult|OPERACIONAL|SOMA|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~45_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(11) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(11)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(11))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~42\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~46\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(11) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(11)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(11))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(11),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(11),
	dataf => \RegA|ALT_INV_Q\(11),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~42\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~45_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~46\);

-- Location: FF_X24_Y3_N35
\ULA_Mult|OPERACIONAL|REGSOMA|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~45_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(11));

-- Location: LABCELL_X22_Y5_N36
\ULA_GERAL|D[11]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[11]~13_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~49_sumout\ & ( (!\RegA|Q\(11) & (\RegB|Q\(11) & !\RegC|Q[30]~1_combout\)) # (\RegA|Q\(11) & ((!\RegC|Q[30]~1_combout\) # (\RegB|Q\(11)))) ) ) ) # ( 
-- !\RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~49_sumout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(11)) # (\RegC|Q[30]~1_combout\) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~49_sumout\ & ( (!\RegA|Q\(11) & (\RegB|Q\(11) & 
-- !\RegC|Q[30]~1_combout\)) # (\RegA|Q\(11) & ((!\RegC|Q[30]~1_combout\) # (\RegB|Q\(11)))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~49_sumout\ & ( (!\RegC|Q[30]~1_combout\ & \ULA_Mult|OPERACIONAL|REGSOMA|Q\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000011100010111000100001111111111110111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(11),
	datab => \RegB|ALT_INV_Q\(11),
	datac => \RegC|ALT_INV_Q[30]~1_combout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(11),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~49_sumout\,
	combout => \ULA_GERAL|D[11]~13_combout\);

-- Location: FF_X22_Y5_N5
\RegC|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ULA_GERAL|D[11]~13_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	sload => VCC,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(11));

-- Location: LABCELL_X24_Y3_N36
\ULA_Mult|OPERACIONAL|SOMA|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~49_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(12) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(12)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(12))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~46\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~50\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(12) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(12)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(12))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(12),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(12),
	dataf => \RegA|ALT_INV_Q\(12),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~46\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~49_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~50\);

-- Location: FF_X24_Y3_N38
\ULA_Mult|OPERACIONAL|REGSOMA|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~49_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(12));

-- Location: LABCELL_X22_Y5_N30
\ULA_GERAL|D[12]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[12]~14_combout\ = ( \RegA|Q\(12) & ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(12) & ( (!\RegC|Q[30]~1_combout\) # ((!\RegC|Q[30]~0_combout\ & (\ULA_PADRAO|SomaSub|Add1~53_sumout\)) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(12))))) ) ) ) # ( 
-- !\RegA|Q\(12) & ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(12) & ( (!\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\)) # (\ULA_PADRAO|SomaSub|Add1~53_sumout\))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\ & \RegB|Q\(12))))) ) ) ) # ( \RegA|Q\(12) & 
-- ( !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(12) & ( (!\RegC|Q[30]~0_combout\ & (\ULA_PADRAO|SomaSub|Add1~53_sumout\ & (\RegC|Q[30]~1_combout\))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # (\RegB|Q\(12))))) ) ) ) # ( !\RegA|Q\(12) & ( 
-- !\ULA_Mult|OPERACIONAL|REGSOMA|Q\(12) & ( (!\RegC|Q[30]~0_combout\ & (\ULA_PADRAO|SomaSub|Add1~53_sumout\ & (\RegC|Q[30]~1_combout\))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\ & \RegB|Q\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010010100100101011110100010111100101111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~0_combout\,
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~53_sumout\,
	datac => \RegC|ALT_INV_Q[30]~1_combout\,
	datad => \RegB|ALT_INV_Q\(12),
	datae => \RegA|ALT_INV_Q\(12),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(12),
	combout => \ULA_GERAL|D[12]~14_combout\);

-- Location: FF_X22_Y5_N32
\RegC|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[12]~14_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(12));

-- Location: LABCELL_X24_Y3_N39
\ULA_Mult|OPERACIONAL|SOMA|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~53_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(13)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(13))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(13) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~50\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~54\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(13)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(13))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(13) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(13),
	datad => \RegA|ALT_INV_Q\(13),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(13),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~50\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~53_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~54\);

-- Location: FF_X24_Y3_N41
\ULA_Mult|OPERACIONAL|REGSOMA|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~53_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(13));

-- Location: MLABCELL_X25_Y4_N24
\ULA_GERAL|D[13]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[13]~15_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~57_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegA|Q\(13) & \RegB|Q\(13))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~57_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(13))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(13)) # (\RegA|Q\(13))))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~57_sumout\ & ( (\RegC|Q[30]~0_combout\ & (\RegA|Q\(13) & 
-- \RegB|Q\(13))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~57_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(13))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(13)) # (\RegA|Q\(13))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101110111000000000000001101000111011101111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(13),
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \RegA|ALT_INV_Q\(13),
	datad => \RegB|ALT_INV_Q\(13),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~57_sumout\,
	combout => \ULA_GERAL|D[13]~15_combout\);

-- Location: FF_X25_Y4_N25
\RegC|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[13]~15_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(13));

-- Location: LABCELL_X24_Y3_N42
\ULA_Mult|OPERACIONAL|SOMA|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~57_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(14)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(14))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(14) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~54\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~58\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(14)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(14))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(14) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(14),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \RegA|ALT_INV_Q\(14),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(14),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~54\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~57_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~58\);

-- Location: FF_X24_Y3_N44
\ULA_Mult|OPERACIONAL|REGSOMA|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~57_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(14));

-- Location: LABCELL_X22_Y5_N24
\ULA_GERAL|D[14]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[14]~16_combout\ = ( \ULA_PADRAO|SomaSub|Add1~61_sumout\ & ( \RegA|Q\(14) & ( (!\RegC|Q[30]~0_combout\ & (((\RegC|Q[30]~1_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(14)))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # 
-- (\RegB|Q\(14))))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~61_sumout\ & ( \RegA|Q\(14) & ( (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(14) & (!\RegC|Q[30]~1_combout\))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # 
-- (\RegB|Q\(14))))) ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~61_sumout\ & ( !\RegA|Q\(14) & ( (!\RegC|Q[30]~0_combout\ & (((\RegC|Q[30]~1_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(14)))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\ & 
-- \RegB|Q\(14))))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~61_sumout\ & ( !\RegA|Q\(14) & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(14))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101001110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~0_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(14),
	datac => \RegC|ALT_INV_Q[30]~1_combout\,
	datad => \RegB|ALT_INV_Q\(14),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~61_sumout\,
	dataf => \RegA|ALT_INV_Q\(14),
	combout => \ULA_GERAL|D[14]~16_combout\);

-- Location: FF_X22_Y5_N25
\RegC|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[14]~16_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(14));

-- Location: LABCELL_X24_Y3_N45
\ULA_Mult|OPERACIONAL|SOMA|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~61_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(15) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(15)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(15))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~58\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~62\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(15) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(15)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(15))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(15),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(15),
	dataf => \RegA|ALT_INV_Q\(15),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~58\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~61_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~62\);

-- Location: FF_X24_Y3_N47
\ULA_Mult|OPERACIONAL|REGSOMA|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~61_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(15));

-- Location: LABCELL_X22_Y5_N54
\ULA_GERAL|D[15]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[15]~17_combout\ = ( \ULA_PADRAO|SomaSub|Add1~65_sumout\ & ( \RegA|Q\(15) & ( (!\RegC|Q[30]~1_combout\ & (((\RegC|Q[30]~0_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(15)))) # (\RegC|Q[30]~1_combout\ & (((!\RegC|Q[30]~0_combout\) # 
-- (\RegB|Q\(15))))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~65_sumout\ & ( \RegA|Q\(15) & ( (!\RegC|Q[30]~1_combout\ & (((\RegC|Q[30]~0_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(15)))) # (\RegC|Q[30]~1_combout\ & (((\RegC|Q[30]~0_combout\ & 
-- \RegB|Q\(15))))) ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~65_sumout\ & ( !\RegA|Q\(15) & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(15))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(15)))))) # (\RegC|Q[30]~1_combout\ & 
-- (((!\RegC|Q[30]~0_combout\)))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~65_sumout\ & ( !\RegA|Q\(15) & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(15))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(15)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(15),
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \RegB|ALT_INV_Q\(15),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~65_sumout\,
	dataf => \RegA|ALT_INV_Q\(15),
	combout => \ULA_GERAL|D[15]~17_combout\);

-- Location: FF_X22_Y5_N55
\RegC|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[15]~17_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(15));

-- Location: LABCELL_X24_Y3_N48
\ULA_Mult|OPERACIONAL|SOMA|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~65_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(16)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(16))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(16) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~62\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~66\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(16)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(16))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(16) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(16),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \RegA|ALT_INV_Q\(16),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(16),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~62\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~65_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~66\);

-- Location: FF_X24_Y3_N50
\ULA_Mult|OPERACIONAL|REGSOMA|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~65_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(16));

-- Location: LABCELL_X22_Y5_N6
\ULA_GERAL|D[16]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[16]~18_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~69_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegB|Q\(16) & \RegA|Q\(16))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~69_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(16))))) # (\RegC|Q[30]~0_combout\ & (((\RegA|Q\(16))) # (\RegB|Q\(16)))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~69_sumout\ & ( (\RegB|Q\(16) & (\RegA|Q\(16) & 
-- \RegC|Q[30]~0_combout\)) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~69_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(16))))) # (\RegC|Q[30]~0_combout\ & (((\RegA|Q\(16))) # (\RegB|Q\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000000010000000100000111111101111111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(16),
	datab => \RegA|ALT_INV_Q\(16),
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(16),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~69_sumout\,
	combout => \ULA_GERAL|D[16]~18_combout\);

-- Location: FF_X25_Y4_N46
\RegC|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \ULA_GERAL|D[16]~18_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	sload => VCC,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(16));

-- Location: LABCELL_X24_Y3_N51
\ULA_Mult|OPERACIONAL|SOMA|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~69_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(17)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(17))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(17) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~66\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~70\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(17)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(17))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(17) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(17),
	datad => \RegA|ALT_INV_Q\(17),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(17),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~66\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~69_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~70\);

-- Location: FF_X24_Y3_N53
\ULA_Mult|OPERACIONAL|REGSOMA|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~69_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(17));

-- Location: LABCELL_X22_Y5_N0
\ULA_GERAL|D[17]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[17]~19_combout\ = ( \ULA_PADRAO|SomaSub|Add1~73_sumout\ & ( \RegA|Q\(17) & ( (!\RegC|Q[30]~0_combout\ & (((\RegC|Q[30]~1_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(17)))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # 
-- (\RegB|Q\(17))))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~73_sumout\ & ( \RegA|Q\(17) & ( (!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(17) & (!\RegC|Q[30]~1_combout\))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\) # 
-- (\RegB|Q\(17))))) ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~73_sumout\ & ( !\RegA|Q\(17) & ( (!\RegC|Q[30]~0_combout\ & (((\RegC|Q[30]~1_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(17)))) # (\RegC|Q[30]~0_combout\ & (((!\RegC|Q[30]~1_combout\ & 
-- \RegB|Q\(17))))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~73_sumout\ & ( !\RegA|Q\(17) & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(17))) # (\RegC|Q[30]~0_combout\ & ((\RegB|Q\(17)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101001110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~0_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(17),
	datac => \RegC|ALT_INV_Q[30]~1_combout\,
	datad => \RegB|ALT_INV_Q\(17),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~73_sumout\,
	dataf => \RegA|ALT_INV_Q\(17),
	combout => \ULA_GERAL|D[17]~19_combout\);

-- Location: FF_X22_Y5_N1
\RegC|Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[17]~19_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(17));

-- Location: LABCELL_X24_Y3_N54
\ULA_Mult|OPERACIONAL|SOMA|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~73_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(18) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(18)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(18))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~70\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~74\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(18) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(18)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(18))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(18),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(18),
	dataf => \RegA|ALT_INV_Q\(18),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~70\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~73_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~74\);

-- Location: FF_X24_Y3_N56
\ULA_Mult|OPERACIONAL|REGSOMA|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~73_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(18));

-- Location: LABCELL_X22_Y4_N6
\ULA_GERAL|D[18]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[18]~20_combout\ = ( \RegA|Q\(18) & ( \ULA_PADRAO|SomaSub|Add1~77_sumout\ & ( (!\RegC|Q[30]~1_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(18)) # (\RegC|Q[30]~0_combout\)))) # (\RegC|Q[30]~1_combout\ & (((!\RegC|Q[30]~0_combout\)) # 
-- (\RegB|Q\(18)))) ) ) ) # ( !\RegA|Q\(18) & ( \ULA_PADRAO|SomaSub|Add1~77_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & ((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(18)))) # (\RegC|Q[30]~0_combout\ & (\RegB|Q\(18))))) # (\RegC|Q[30]~1_combout\ & 
-- (((!\RegC|Q[30]~0_combout\)))) ) ) ) # ( \RegA|Q\(18) & ( !\ULA_PADRAO|SomaSub|Add1~77_sumout\ & ( (!\RegC|Q[30]~1_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(18)) # (\RegC|Q[30]~0_combout\)))) # (\RegC|Q[30]~1_combout\ & (\RegB|Q\(18) & 
-- (\RegC|Q[30]~0_combout\))) ) ) ) # ( !\RegA|Q\(18) & ( !\ULA_PADRAO|SomaSub|Add1~77_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & ((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(18)))) # (\RegC|Q[30]~0_combout\ & (\RegB|Q\(18))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000011011100110100110100111101000011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(18),
	datab => \RegC|ALT_INV_Q[30]~1_combout\,
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(18),
	datae => \RegA|ALT_INV_Q\(18),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~77_sumout\,
	combout => \ULA_GERAL|D[18]~20_combout\);

-- Location: FF_X22_Y4_N8
\RegC|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[18]~20_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(18));

-- Location: LABCELL_X24_Y3_N57
\ULA_Mult|OPERACIONAL|SOMA|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~77_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(19) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(19)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(19))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~74\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~78\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(19) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(19)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(19))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegB|ALT_INV_Q\(19),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(19),
	dataf => \RegA|ALT_INV_Q\(19),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~74\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~77_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~78\);

-- Location: FF_X24_Y3_N59
\ULA_Mult|OPERACIONAL|REGSOMA|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~77_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(19));

-- Location: MLABCELL_X25_Y4_N12
\ULA_GERAL|D[19]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[19]~21_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~81_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegA|Q\(19) & \RegB|Q\(19))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~81_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(19))))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(19))) # (\RegA|Q\(19)))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~81_sumout\ & ( (\RegA|Q\(19) & (\RegC|Q[30]~0_combout\ & 
-- \RegB|Q\(19))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~81_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(19))))) # (\RegC|Q[30]~0_combout\ & (((\RegB|Q\(19))) # (\RegA|Q\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100111111000000000001000100011101001111111100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(19),
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(19),
	datad => \RegB|ALT_INV_Q\(19),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~81_sumout\,
	combout => \ULA_GERAL|D[19]~21_combout\);

-- Location: FF_X25_Y4_N13
\RegC|Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[19]~21_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(19));

-- Location: LABCELL_X24_Y2_N0
\ULA_Mult|OPERACIONAL|SOMA|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~81_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(20) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(20)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(20))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~78\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~82\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(20) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(20)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(20))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(20),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(20),
	dataf => \RegA|ALT_INV_Q\(20),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~78\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~81_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~82\);

-- Location: FF_X24_Y2_N2
\ULA_Mult|OPERACIONAL|REGSOMA|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~81_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(20));

-- Location: MLABCELL_X25_Y4_N21
\ULA_GERAL|D[20]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[20]~22_combout\ = ( \RegC|Q[30]~1_combout\ & ( \RegA|Q\(20) & ( (!\RegC|Q[30]~0_combout\ & ((\ULA_PADRAO|SomaSub|Add1~85_sumout\))) # (\RegC|Q[30]~0_combout\ & (\RegB|Q\(20))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \RegA|Q\(20) & ( 
-- (\RegC|Q[30]~0_combout\) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(20)) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\RegA|Q\(20) & ( (!\RegC|Q[30]~0_combout\ & \ULA_PADRAO|SomaSub|Add1~85_sumout\) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\RegA|Q\(20) & ( 
-- (!\RegC|Q[30]~0_combout\ & ((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(20)))) # (\RegC|Q[30]~0_combout\ & (\RegB|Q\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000111111001111110000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(20),
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(20),
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \ULA_PADRAO|SomaSub|ALT_INV_Add1~85_sumout\,
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \RegA|ALT_INV_Q\(20),
	combout => \ULA_GERAL|D[20]~22_combout\);

-- Location: FF_X25_Y4_N22
\RegC|Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[20]~22_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(20));

-- Location: LABCELL_X24_Y2_N3
\ULA_Mult|OPERACIONAL|SOMA|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~85_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(21) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(21)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(21))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~82\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~86\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(21) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(21)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(21))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(21),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(21),
	dataf => \RegA|ALT_INV_Q\(21),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~82\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~85_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~86\);

-- Location: FF_X24_Y2_N5
\ULA_Mult|OPERACIONAL|REGSOMA|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~85_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(21));

-- Location: LABCELL_X22_Y2_N12
\ULA_GERAL|D[21]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[21]~23_combout\ = ( \ULA_PADRAO|SomaSub|Add1~89_sumout\ & ( \RegC|Q[30]~1_combout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegB|Q\(21) & \RegA|Q\(21))) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~89_sumout\ & ( \RegC|Q[30]~1_combout\ & ( (\RegB|Q\(21) & 
-- (\RegA|Q\(21) & \RegC|Q[30]~0_combout\)) ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~89_sumout\ & ( !\RegC|Q[30]~1_combout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(21))))) # (\RegC|Q[30]~0_combout\ & (((\RegA|Q\(21))) # (\RegB|Q\(21)))) 
-- ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~89_sumout\ & ( !\RegC|Q[30]~1_combout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(21))))) # (\RegC|Q[30]~0_combout\ & (((\RegA|Q\(21))) # (\RegB|Q\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011100000001000000011111000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(21),
	datab => \RegA|ALT_INV_Q\(21),
	datac => \RegC|ALT_INV_Q[30]~0_combout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(21),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~89_sumout\,
	dataf => \RegC|ALT_INV_Q[30]~1_combout\,
	combout => \ULA_GERAL|D[21]~23_combout\);

-- Location: FF_X22_Y2_N13
\RegC|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[21]~23_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(21));

-- Location: LABCELL_X24_Y2_N6
\ULA_Mult|OPERACIONAL|SOMA|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~89_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(22)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(22))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(22) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~86\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~90\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(22)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(22))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(22) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(22),
	datad => \RegA|ALT_INV_Q\(22),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(22),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~86\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~89_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~90\);

-- Location: FF_X24_Y2_N8
\ULA_Mult|OPERACIONAL|REGSOMA|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~89_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(22));

-- Location: MLABCELL_X25_Y4_N0
\ULA_GERAL|D[22]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[22]~24_combout\ = ( \RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~93_sumout\ & ( (!\RegC|Q[30]~0_combout\) # ((\RegB|Q\(22) & \RegA|Q\(22))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( \ULA_PADRAO|SomaSub|Add1~93_sumout\ & ( 
-- (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(22))))) # (\RegC|Q[30]~0_combout\ & (((\RegA|Q\(22))) # (\RegB|Q\(22)))) ) ) ) # ( \RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~93_sumout\ & ( (\RegB|Q\(22) & (\RegC|Q[30]~0_combout\ & 
-- \RegA|Q\(22))) ) ) ) # ( !\RegC|Q[30]~1_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~93_sumout\ & ( (!\RegC|Q[30]~0_combout\ & (((\ULA_Mult|OPERACIONAL|REGSOMA|Q\(22))))) # (\RegC|Q[30]~0_combout\ & (((\RegA|Q\(22))) # (\RegB|Q\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001111011111000000010000000100010011110111111100110111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(22),
	datab => \RegC|ALT_INV_Q[30]~0_combout\,
	datac => \RegA|ALT_INV_Q\(22),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(22),
	datae => \RegC|ALT_INV_Q[30]~1_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~93_sumout\,
	combout => \ULA_GERAL|D[22]~24_combout\);

-- Location: FF_X25_Y4_N1
\RegC|Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[22]~24_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(22));

-- Location: LABCELL_X24_Y2_N9
\ULA_Mult|OPERACIONAL|SOMA|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~93_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegA|Q\(23))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegB|Q\(23)))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(23) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~90\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~94\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegA|Q\(23))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegB|Q\(23)))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(23) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegA|ALT_INV_Q\(23),
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(23),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(23),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~90\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~93_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~94\);

-- Location: FF_X24_Y2_N11
\ULA_Mult|OPERACIONAL|REGSOMA|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~93_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(23));

-- Location: LABCELL_X22_Y2_N57
\ULA_GERAL|D[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[23]~25_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~97_sumout\ & ( (!\RegB|Q\(23) & (\RegA|Q\(23) & !\RegC|Q[30]~1_combout\)) # (\RegB|Q\(23) & ((!\RegC|Q[30]~1_combout\) # (\RegA|Q\(23)))) ) ) ) # ( 
-- !\RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~97_sumout\ & ( (\RegC|Q[30]~1_combout\) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(23)) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~97_sumout\ & ( (!\RegB|Q\(23) & (\RegA|Q\(23) & 
-- !\RegC|Q[30]~1_combout\)) # (\RegB|Q\(23) & ((!\RegC|Q[30]~1_combout\) # (\RegA|Q\(23)))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~97_sumout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(23) & !\RegC|Q[30]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001111110000001101010101111111110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(23),
	datab => \RegB|ALT_INV_Q\(23),
	datac => \RegA|ALT_INV_Q\(23),
	datad => \RegC|ALT_INV_Q[30]~1_combout\,
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~97_sumout\,
	combout => \ULA_GERAL|D[23]~25_combout\);

-- Location: FF_X22_Y2_N58
\RegC|Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[23]~25_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(23));

-- Location: LABCELL_X24_Y2_N12
\ULA_Mult|OPERACIONAL|SOMA|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~97_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(24)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(24))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(24) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~94\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~98\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(24)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(24))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(24) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(24),
	datad => \RegA|ALT_INV_Q\(24),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(24),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~94\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~97_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~98\);

-- Location: FF_X24_Y2_N14
\ULA_Mult|OPERACIONAL|REGSOMA|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~97_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(24));

-- Location: LABCELL_X22_Y4_N48
\ULA_GERAL|D[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[24]~26_combout\ = ( \ULA_PADRAO|SomaSub|Add1~101_sumout\ & ( \RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(24)) # (\RegA|Q\(24)))) # (\RegC|Q[30]~1_combout\ & (\RegA|Q\(24) & \RegB|Q\(24))) ) ) ) # ( 
-- !\ULA_PADRAO|SomaSub|Add1~101_sumout\ & ( \RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(24)) # (\RegA|Q\(24)))) # (\RegC|Q[30]~1_combout\ & (\RegA|Q\(24) & \RegB|Q\(24))) ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~101_sumout\ & ( 
-- !\RegC|Q[30]~0_combout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(24)) # (\RegC|Q[30]~1_combout\) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~101_sumout\ & ( !\RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\ & \ULA_Mult|OPERACIONAL|REGSOMA|Q\(24)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(24),
	datac => \RegA|ALT_INV_Q\(24),
	datad => \RegB|ALT_INV_Q\(24),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~101_sumout\,
	dataf => \RegC|ALT_INV_Q[30]~0_combout\,
	combout => \ULA_GERAL|D[24]~26_combout\);

-- Location: FF_X22_Y4_N49
\RegC|Q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[24]~26_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(24));

-- Location: LABCELL_X24_Y2_N15
\ULA_Mult|OPERACIONAL|SOMA|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~101_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(25)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(25))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(25) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~98\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~102\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(25)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(25))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(25) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(25),
	datad => \RegA|ALT_INV_Q\(25),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(25),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~98\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~101_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~102\);

-- Location: FF_X24_Y2_N17
\ULA_Mult|OPERACIONAL|REGSOMA|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~101_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(25));

-- Location: LABCELL_X22_Y4_N30
\ULA_GERAL|D[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[25]~27_combout\ = ( \RegA|Q\(25) & ( \RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\) # (\RegB|Q\(25)) ) ) ) # ( !\RegA|Q\(25) & ( \RegC|Q[30]~0_combout\ & ( (\RegB|Q\(25) & !\RegC|Q[30]~1_combout\) ) ) ) # ( \RegA|Q\(25) & ( 
-- !\RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(25))) # (\RegC|Q[30]~1_combout\ & ((\ULA_PADRAO|SomaSub|Add1~105_sumout\))) ) ) ) # ( !\RegA|Q\(25) & ( !\RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\ & 
-- (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(25))) # (\RegC|Q[30]~1_combout\ & ((\ULA_PADRAO|SomaSub|Add1~105_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(25),
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~105_sumout\,
	datac => \RegB|ALT_INV_Q\(25),
	datad => \RegC|ALT_INV_Q[30]~1_combout\,
	datae => \RegA|ALT_INV_Q\(25),
	dataf => \RegC|ALT_INV_Q[30]~0_combout\,
	combout => \ULA_GERAL|D[25]~27_combout\);

-- Location: FF_X22_Y4_N31
\RegC|Q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[25]~27_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(25));

-- Location: LABCELL_X24_Y2_N18
\ULA_Mult|OPERACIONAL|SOMA|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~105_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(26)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(26))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(26) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~102\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~106\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(26)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(26))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(26) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(26),
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegA|ALT_INV_Q\(26),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(26),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~102\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~105_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~106\);

-- Location: FF_X24_Y2_N20
\ULA_Mult|OPERACIONAL|REGSOMA|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~105_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(26));

-- Location: LABCELL_X22_Y2_N0
\ULA_GERAL|D[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[26]~28_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~109_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(26)) # (\RegA|Q\(26)))) # (\RegC|Q[30]~1_combout\ & (\RegA|Q\(26) & \RegB|Q\(26))) ) ) ) # ( !\RegC|Q[30]~0_combout\ 
-- & ( \ULA_PADRAO|SomaSub|Add1~109_sumout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(26)) # (\RegC|Q[30]~1_combout\) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~109_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((\RegB|Q\(26)) # (\RegA|Q\(26)))) # 
-- (\RegC|Q[30]~1_combout\ & (\RegA|Q\(26) & \RegB|Q\(26))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~109_sumout\ & ( (!\RegC|Q[30]~1_combout\ & \ULA_Mult|OPERACIONAL|REGSOMA|Q\(26)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000010101010111101110111011101110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(26),
	datac => \RegA|ALT_INV_Q\(26),
	datad => \RegB|ALT_INV_Q\(26),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~109_sumout\,
	combout => \ULA_GERAL|D[26]~28_combout\);

-- Location: FF_X22_Y2_N1
\RegC|Q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[26]~28_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(26));

-- Location: LABCELL_X24_Y2_N21
\ULA_Mult|OPERACIONAL|SOMA|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~109_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(27) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(27)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(27))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~106\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~110\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(27) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(27)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(27))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(27),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(27),
	dataf => \RegA|ALT_INV_Q\(27),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~106\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~109_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~110\);

-- Location: FF_X24_Y2_N23
\ULA_Mult|OPERACIONAL|REGSOMA|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~109_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(27));

-- Location: MLABCELL_X25_Y4_N42
\ULA_GERAL|D[27]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[27]~29_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~113_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((\RegA|Q\(27)) # (\RegB|Q\(27)))) # (\RegC|Q[30]~1_combout\ & (\RegB|Q\(27) & \RegA|Q\(27))) ) ) ) # ( !\RegC|Q[30]~0_combout\ 
-- & ( \ULA_PADRAO|SomaSub|Add1~113_sumout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(27)) # (\RegC|Q[30]~1_combout\) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~113_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((\RegA|Q\(27)) # (\RegB|Q\(27)))) # 
-- (\RegC|Q[30]~1_combout\ & (\RegB|Q\(27) & \RegA|Q\(27))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~113_sumout\ & ( (!\RegC|Q[30]~1_combout\ & \ULA_Mult|OPERACIONAL|REGSOMA|Q\(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000101011101101011111010111110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \RegB|ALT_INV_Q\(27),
	datac => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(27),
	datad => \RegA|ALT_INV_Q\(27),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~113_sumout\,
	combout => \ULA_GERAL|D[27]~29_combout\);

-- Location: FF_X25_Y4_N43
\RegC|Q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[27]~29_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(27));

-- Location: LABCELL_X24_Y2_N24
\ULA_Mult|OPERACIONAL|SOMA|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~113_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(28)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(28))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(28) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~110\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~114\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(28)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(28))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(28) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(28),
	datad => \RegA|ALT_INV_Q\(28),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(28),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~110\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~113_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~114\);

-- Location: FF_X24_Y2_N26
\ULA_Mult|OPERACIONAL|REGSOMA|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~113_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(28));

-- Location: MLABCELL_X25_Y4_N30
\ULA_GERAL|D[28]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[28]~30_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~117_sumout\ & ( (!\RegA|Q\(28) & (!\RegC|Q[30]~1_combout\ & \RegB|Q\(28))) # (\RegA|Q\(28) & ((!\RegC|Q[30]~1_combout\) # (\RegB|Q\(28)))) ) ) ) # ( 
-- !\RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~117_sumout\ & ( (\RegC|Q[30]~1_combout\) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(28)) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~117_sumout\ & ( (!\RegA|Q\(28) & (!\RegC|Q[30]~1_combout\ 
-- & \RegB|Q\(28))) # (\RegA|Q\(28) & ((!\RegC|Q[30]~1_combout\) # (\RegB|Q\(28)))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~117_sumout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(28) & !\RegC|Q[30]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100001111001101011111010111110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(28),
	datab => \RegA|ALT_INV_Q\(28),
	datac => \RegC|ALT_INV_Q[30]~1_combout\,
	datad => \RegB|ALT_INV_Q\(28),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~117_sumout\,
	combout => \ULA_GERAL|D[28]~30_combout\);

-- Location: FF_X25_Y4_N31
\RegC|Q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[28]~30_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(28));

-- Location: LABCELL_X24_Y2_N27
\ULA_Mult|OPERACIONAL|SOMA|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~117_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(29) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(29)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(29))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~114\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~118\ = CARRY(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(29) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(29)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(29))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(29),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(29),
	dataf => \RegA|ALT_INV_Q\(29),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~114\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~117_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~118\);

-- Location: FF_X24_Y2_N29
\ULA_Mult|OPERACIONAL|REGSOMA|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~117_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(29));

-- Location: LABCELL_X22_Y2_N18
\ULA_GERAL|D[29]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[29]~31_combout\ = ( \RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~121_sumout\ & ( (!\RegB|Q\(29) & (!\RegC|Q[30]~1_combout\ & \RegA|Q\(29))) # (\RegB|Q\(29) & ((!\RegC|Q[30]~1_combout\) # (\RegA|Q\(29)))) ) ) ) # ( 
-- !\RegC|Q[30]~0_combout\ & ( \ULA_PADRAO|SomaSub|Add1~121_sumout\ & ( (\RegC|Q[30]~1_combout\) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(29)) ) ) ) # ( \RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~121_sumout\ & ( (!\RegB|Q\(29) & (!\RegC|Q[30]~1_combout\ 
-- & \RegA|Q\(29))) # (\RegB|Q\(29) & ((!\RegC|Q[30]~1_combout\) # (\RegA|Q\(29)))) ) ) ) # ( !\RegC|Q[30]~0_combout\ & ( !\ULA_PADRAO|SomaSub|Add1~121_sumout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(29) & !\RegC|Q[30]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100001111001101011111010111110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(29),
	datab => \RegB|ALT_INV_Q\(29),
	datac => \RegC|ALT_INV_Q[30]~1_combout\,
	datad => \RegA|ALT_INV_Q\(29),
	datae => \RegC|ALT_INV_Q[30]~0_combout\,
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~121_sumout\,
	combout => \ULA_GERAL|D[29]~31_combout\);

-- Location: FF_X22_Y2_N20
\RegC|Q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[29]~31_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(29));

-- Location: LABCELL_X24_Y2_N30
\ULA_Mult|OPERACIONAL|SOMA|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~121_sumout\ = SUM(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(30)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(30))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(30) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~118\ ))
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~122\ = CARRY(( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(30)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(30))) ) + ( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(30) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datac => \RegB|ALT_INV_Q\(30),
	datad => \RegA|ALT_INV_Q\(30),
	dataf => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(30),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~118\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~121_sumout\,
	cout => \ULA_Mult|OPERACIONAL|SOMA|Add1~122\);

-- Location: FF_X24_Y2_N32
\ULA_Mult|OPERACIONAL|REGSOMA|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~121_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(30));

-- Location: LABCELL_X22_Y4_N36
\ULA_GERAL|D[30]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[30]~32_combout\ = ( \ULA_PADRAO|SomaSub|Add1~125_sumout\ & ( \RegC|Q[30]~0_combout\ & ( (!\RegB|Q\(30) & (!\RegC|Q[30]~1_combout\ & \RegA|Q\(30))) # (\RegB|Q\(30) & ((!\RegC|Q[30]~1_combout\) # (\RegA|Q\(30)))) ) ) ) # ( 
-- !\ULA_PADRAO|SomaSub|Add1~125_sumout\ & ( \RegC|Q[30]~0_combout\ & ( (!\RegB|Q\(30) & (!\RegC|Q[30]~1_combout\ & \RegA|Q\(30))) # (\RegB|Q\(30) & ((!\RegC|Q[30]~1_combout\) # (\RegA|Q\(30)))) ) ) ) # ( \ULA_PADRAO|SomaSub|Add1~125_sumout\ & ( 
-- !\RegC|Q[30]~0_combout\ & ( (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(30)) # (\RegC|Q[30]~1_combout\) ) ) ) # ( !\ULA_PADRAO|SomaSub|Add1~125_sumout\ & ( !\RegC|Q[30]~0_combout\ & ( (!\RegC|Q[30]~1_combout\ & \ULA_Mult|OPERACIONAL|REGSOMA|Q\(30)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100001100111111111101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(30),
	datab => \RegC|ALT_INV_Q[30]~1_combout\,
	datac => \RegA|ALT_INV_Q\(30),
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(30),
	datae => \ULA_PADRAO|SomaSub|ALT_INV_Add1~125_sumout\,
	dataf => \RegC|ALT_INV_Q[30]~0_combout\,
	combout => \ULA_GERAL|D[30]~32_combout\);

-- Location: FF_X22_Y4_N38
\RegC|Q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[30]~32_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(30));

-- Location: LABCELL_X24_Y2_N33
\ULA_Mult|OPERACIONAL|SOMA|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_Mult|OPERACIONAL|SOMA|Add1~125_sumout\ = SUM(( \ULA_Mult|OPERACIONAL|REGSOMA|Q\(31) ) + ( (!\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ((\RegA|Q\(31)))) # (\ULA_PADRAO|SomaSub|Add1~1_sumout\ & (\RegB|Q\(31))) ) + ( \ULA_Mult|OPERACIONAL|SOMA|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100000101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegB|ALT_INV_Q\(31),
	datac => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	datad => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(31),
	dataf => \RegA|ALT_INV_Q\(31),
	cin => \ULA_Mult|OPERACIONAL|SOMA|Add1~122\,
	sumout => \ULA_Mult|OPERACIONAL|SOMA|Add1~125_sumout\);

-- Location: FF_X24_Y2_N35
\ULA_Mult|OPERACIONAL|REGSOMA|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_Mult|OPERACIONAL|SOMA|Add1~125_sumout\,
	clrn => \reset~inputCLKENA0_outclk\,
	ena => \ULA_Mult|CONTROLE|EstadoAtual.S2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ULA_Mult|OPERACIONAL|REGSOMA|Q\(31));

-- Location: LABCELL_X22_Y2_N27
\ULA_GERAL|D[31]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA_GERAL|D[31]~33_combout\ = ( \RegB|Q\(31) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\RegC|Q[30]~1_combout\ & (((\RegC|Q[30]~0_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(31)))) # (\RegC|Q[30]~1_combout\ & (((!\RegC|Q[30]~0_combout\) # 
-- (\RegA|Q\(31))))) ) ) ) # ( !\RegB|Q\(31) & ( \ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(31))) # (\RegC|Q[30]~0_combout\ & ((\RegA|Q\(31)))))) # (\RegC|Q[30]~1_combout\ & 
-- (((!\RegC|Q[30]~0_combout\)))) ) ) ) # ( \RegB|Q\(31) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\RegC|Q[30]~1_combout\ & (((\RegC|Q[30]~0_combout\)) # (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(31)))) # (\RegC|Q[30]~1_combout\ & (((\RegA|Q\(31) & 
-- \RegC|Q[30]~0_combout\)))) ) ) ) # ( !\RegB|Q\(31) & ( !\ULA_PADRAO|SomaSub|Add1~1_sumout\ & ( (!\RegC|Q[30]~1_combout\ & ((!\RegC|Q[30]~0_combout\ & (\ULA_Mult|OPERACIONAL|REGSOMA|Q\(31))) # (\RegC|Q[30]~0_combout\ & ((\RegA|Q\(31)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010001000101010111101110111000010100111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegC|ALT_INV_Q[30]~1_combout\,
	datab => \ULA_Mult|OPERACIONAL|REGSOMA|ALT_INV_Q\(31),
	datac => \RegA|ALT_INV_Q\(31),
	datad => \RegC|ALT_INV_Q[30]~0_combout\,
	datae => \RegB|ALT_INV_Q\(31),
	dataf => \ULA_PADRAO|SomaSub|ALT_INV_Add1~1_sumout\,
	combout => \ULA_GERAL|D[31]~33_combout\);

-- Location: FF_X22_Y2_N28
\RegC|Q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \ULA_GERAL|D[31]~33_combout\,
	clrn => \reset~inputCLKENA0_outclk\,
	sclr => \RegC|Q[30]~2_combout\,
	ena => \enRegC~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegC|Q\(31));

-- Location: IOIBUF_X78_Y81_N35
\ULAOp[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOp(0),
	o => \ULAOp[0]~input_o\);

-- Location: IOIBUF_X56_Y81_N52
\ULAOp[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ULAOp(1),
	o => \ULAOp[1]~input_o\);

-- Location: LABCELL_X27_Y55_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


