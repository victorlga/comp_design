-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/17/2023 01:44:18"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projeto1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	FPGA_RESET_N : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	ROM_AddressOUT : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	Bloco_Reg_Out : OUT std_logic_vector(7 DOWNTO 0)
	);
END projeto1;

ARCHITECTURE structure OF projeto1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ROM_AddressOUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Bloco_Reg_Out : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[0]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[1]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[2]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[3]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[4]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[5]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[6]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[7]~output_o\ : std_logic;
SIGNAL \ROM_AddressOUT[8]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[0]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[1]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[2]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[3]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[4]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[5]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[6]~output_o\ : std_logic;
SIGNAL \Bloco_Reg_Out[7]~output_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~43_combout\ : std_logic;
SIGNAL \ROM1|memROM~44_combout\ : std_logic;
SIGNAL \ROM1|memROM~45_combout\ : std_logic;
SIGNAL \ROM1|memROM~46_combout\ : std_logic;
SIGNAL \ROM1|memROM~47_combout\ : std_logic;
SIGNAL \ROM1|memROM~74_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~18\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM1|memROM~23_combout\ : std_logic;
SIGNAL \ROM1|memROM~24_combout\ : std_logic;
SIGNAL \ROM1|memROM~25_combout\ : std_logic;
SIGNAL \ROM1|memROM~26_combout\ : std_logic;
SIGNAL \ROM1|memROM~27_combout\ : std_logic;
SIGNAL \ROM1|memROM~28_combout\ : std_logic;
SIGNAL \ROM1|memROM~29_combout\ : std_logic;
SIGNAL \ROM1|memROM~30_combout\ : std_logic;
SIGNAL \ROM1|memROM~31_combout\ : std_logic;
SIGNAL \ROM1|memROM~32_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle[11]~5_combout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~34_combout\ : std_logic;
SIGNAL \ROM1|memROM~35_combout\ : std_logic;
SIGNAL \ROM1|memROM~36_combout\ : std_logic;
SIGNAL \ROM1|memROM~37_combout\ : std_logic;
SIGNAL \ROM1|memROM~38_combout\ : std_logic;
SIGNAL \ROM1|memROM~73_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~19_combout\ : std_logic;
SIGNAL \ROM1|memROM~20_combout\ : std_logic;
SIGNAL \ROM1|memROM~21_combout\ : std_logic;
SIGNAL \ROM1|memROM~22_combout\ : std_logic;
SIGNAL \ROM1|memROM~64_combout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|Equal0~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~68_combout\ : std_logic;
SIGNAL \ROM1|memROM~67_combout\ : std_logic;
SIGNAL \ROM1|memROM~66_combout\ : std_logic;
SIGNAL \ROM1|memROM~65_combout\ : std_logic;
SIGNAL \ROM1|memROM~80_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~59_combout\ : std_logic;
SIGNAL \ROM1|memROM~84_combout\ : std_logic;
SIGNAL \ROM1|memROM~60_combout\ : std_logic;
SIGNAL \ROM1|memROM~61_combout\ : std_logic;
SIGNAL \ROM1|memROM~62_combout\ : std_logic;
SIGNAL \ROM1|memROM~63_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~42_combout\ : std_logic;
SIGNAL \ROM1|memROM~41_combout\ : std_logic;
SIGNAL \ROM1|memROM~40_combout\ : std_logic;
SIGNAL \ROM1|memROM~39_combout\ : std_logic;
SIGNAL \ROM1|memROM~85_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~53_combout\ : std_logic;
SIGNAL \ROM1|memROM~54_combout\ : std_logic;
SIGNAL \ROM1|memROM~55_combout\ : std_logic;
SIGNAL \ROM1|memROM~56_combout\ : std_logic;
SIGNAL \ROM1|memROM~57_combout\ : std_logic;
SIGNAL \ROM1|memROM~58_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~75_combout\ : std_logic;
SIGNAL \ROM1|memROM~33_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle~2_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle[4]~6_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|Equal12~1_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~98_combout\ : std_logic;
SIGNAL \ROM1|memROM~94_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~93_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~89_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|Equal12~0_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle[1]~0_combout\ : std_logic;
SIGNAL \DECODER1|enableSWVector~0_combout\ : std_logic;
SIGNAL \DECODER1|enableSWVector~2_combout\ : std_logic;
SIGNAL \DECODER1|enableSWVector~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~72_combout\ : std_logic;
SIGNAL \ROM1|memROM~71_combout\ : std_logic;
SIGNAL \ROM1|memROM~70_combout\ : std_logic;
SIGNAL \ROM1|memROM~69_combout\ : std_logic;
SIGNAL \ROM1|memROM~76_combout\ : std_logic;
SIGNAL \RAM1|ram~695_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ram~696_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~697_combout\ : std_logic;
SIGNAL \RAM1|ram~698_combout\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~727_combout\ : std_logic;
SIGNAL \RAM1|ram~728_combout\ : std_logic;
SIGNAL \RAM1|ram~36_q\ : std_logic;
SIGNAL \RAM1|ram~729_combout\ : std_logic;
SIGNAL \RAM1|ram~730_combout\ : std_logic;
SIGNAL \RAM1|ram~68_q\ : std_logic;
SIGNAL \RAM1|ram~632_combout\ : std_logic;
SIGNAL \RAM1|ram~703_combout\ : std_logic;
SIGNAL \RAM1|ram~704_combout\ : std_logic;
SIGNAL \RAM1|ram~84_q\ : std_logic;
SIGNAL \RAM1|ram~705_combout\ : std_logic;
SIGNAL \RAM1|ram~706_combout\ : std_logic;
SIGNAL \RAM1|ram~116_q\ : std_logic;
SIGNAL \RAM1|ram~731_combout\ : std_logic;
SIGNAL \RAM1|ram~732_combout\ : std_logic;
SIGNAL \RAM1|ram~100_q\ : std_logic;
SIGNAL \RAM1|ram~733_combout\ : std_logic;
SIGNAL \RAM1|ram~734_combout\ : std_logic;
SIGNAL \RAM1|ram~132_q\ : std_logic;
SIGNAL \RAM1|ram~633_combout\ : std_logic;
SIGNAL \RAM1|ram~699_combout\ : std_logic;
SIGNAL \RAM1|ram~700_combout\ : std_logic;
SIGNAL \RAM1|ram~148_q\ : std_logic;
SIGNAL \RAM1|ram~701_combout\ : std_logic;
SIGNAL \RAM1|ram~702_combout\ : std_logic;
SIGNAL \RAM1|ram~180_q\ : std_logic;
SIGNAL \RAM1|ram~735_combout\ : std_logic;
SIGNAL \RAM1|ram~736_combout\ : std_logic;
SIGNAL \RAM1|ram~164_q\ : std_logic;
SIGNAL \RAM1|ram~737_combout\ : std_logic;
SIGNAL \RAM1|ram~738_combout\ : std_logic;
SIGNAL \RAM1|ram~196_q\ : std_logic;
SIGNAL \RAM1|ram~634_combout\ : std_logic;
SIGNAL \RAM1|ram~707_combout\ : std_logic;
SIGNAL \RAM1|ram~708_combout\ : std_logic;
SIGNAL \RAM1|ram~212_q\ : std_logic;
SIGNAL \RAM1|ram~709_combout\ : std_logic;
SIGNAL \RAM1|ram~710_combout\ : std_logic;
SIGNAL \RAM1|ram~244_q\ : std_logic;
SIGNAL \RAM1|ram~739_combout\ : std_logic;
SIGNAL \RAM1|ram~740_combout\ : std_logic;
SIGNAL \RAM1|ram~228_q\ : std_logic;
SIGNAL \RAM1|ram~741_combout\ : std_logic;
SIGNAL \RAM1|ram~742_combout\ : std_logic;
SIGNAL \RAM1|ram~260_q\ : std_logic;
SIGNAL \RAM1|ram~635_combout\ : std_logic;
SIGNAL \RAM1|ram~636_combout\ : std_logic;
SIGNAL \RAM1|ram~759_combout\ : std_logic;
SIGNAL \RAM1|ram~760_combout\ : std_logic;
SIGNAL \RAM1|ram~276_q\ : std_logic;
SIGNAL \RAM1|ram~767_combout\ : std_logic;
SIGNAL \RAM1|ram~768_combout\ : std_logic;
SIGNAL \RAM1|ram~308_q\ : std_logic;
SIGNAL \RAM1|ram~775_combout\ : std_logic;
SIGNAL \RAM1|ram~776_combout\ : std_logic;
SIGNAL \RAM1|ram~340_q\ : std_logic;
SIGNAL \RAM1|ram~783_combout\ : std_logic;
SIGNAL \RAM1|ram~784_combout\ : std_logic;
SIGNAL \RAM1|ram~372_q\ : std_logic;
SIGNAL \RAM1|ram~637_combout\ : std_logic;
SIGNAL \RAM1|ram~761_combout\ : std_logic;
SIGNAL \RAM1|ram~762_combout\ : std_logic;
SIGNAL \RAM1|ram~404_q\ : std_logic;
SIGNAL \RAM1|ram~769_combout\ : std_logic;
SIGNAL \RAM1|ram~770_combout\ : std_logic;
SIGNAL \RAM1|ram~436_q\ : std_logic;
SIGNAL \RAM1|ram~777_combout\ : std_logic;
SIGNAL \RAM1|ram~778_combout\ : std_logic;
SIGNAL \RAM1|ram~468_q\ : std_logic;
SIGNAL \RAM1|ram~785_combout\ : std_logic;
SIGNAL \RAM1|ram~786_combout\ : std_logic;
SIGNAL \RAM1|ram~500_q\ : std_logic;
SIGNAL \RAM1|ram~638_combout\ : std_logic;
SIGNAL \RAM1|ram~791_combout\ : std_logic;
SIGNAL \RAM1|ram~792_combout\ : std_logic;
SIGNAL \RAM1|ram~292_q\ : std_logic;
SIGNAL \RAM1|ram~793_combout\ : std_logic;
SIGNAL \RAM1|ram~794_combout\ : std_logic;
SIGNAL \RAM1|ram~324_q\ : std_logic;
SIGNAL \RAM1|ram~795_combout\ : std_logic;
SIGNAL \RAM1|ram~796_combout\ : std_logic;
SIGNAL \RAM1|ram~356_q\ : std_logic;
SIGNAL \RAM1|ram~797_combout\ : std_logic;
SIGNAL \RAM1|ram~798_combout\ : std_logic;
SIGNAL \RAM1|ram~388_q\ : std_logic;
SIGNAL \RAM1|ram~639_combout\ : std_logic;
SIGNAL \RAM1|ram~799_combout\ : std_logic;
SIGNAL \RAM1|ram~800_combout\ : std_logic;
SIGNAL \RAM1|ram~420_q\ : std_logic;
SIGNAL \RAM1|ram~801_combout\ : std_logic;
SIGNAL \RAM1|ram~802_combout\ : std_logic;
SIGNAL \RAM1|ram~452_q\ : std_logic;
SIGNAL \RAM1|ram~803_combout\ : std_logic;
SIGNAL \RAM1|ram~804_combout\ : std_logic;
SIGNAL \RAM1|ram~484_q\ : std_logic;
SIGNAL \RAM1|ram~805_combout\ : std_logic;
SIGNAL \RAM1|ram~806_combout\ : std_logic;
SIGNAL \RAM1|ram~516_q\ : std_logic;
SIGNAL \RAM1|ram~640_combout\ : std_logic;
SIGNAL \RAM1|ram~641_combout\ : std_logic;
SIGNAL \RAM1|ram~711_combout\ : std_logic;
SIGNAL \RAM1|ram~712_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~713_combout\ : std_logic;
SIGNAL \RAM1|ram~714_combout\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~715_combout\ : std_logic;
SIGNAL \RAM1|ram~716_combout\ : std_logic;
SIGNAL \RAM1|ram~156_q\ : std_logic;
SIGNAL \RAM1|ram~717_combout\ : std_logic;
SIGNAL \RAM1|ram~718_combout\ : std_logic;
SIGNAL \RAM1|ram~188_q\ : std_logic;
SIGNAL \RAM1|ram~642_combout\ : std_logic;
SIGNAL \RAM1|ram~719_combout\ : std_logic;
SIGNAL \RAM1|ram~720_combout\ : std_logic;
SIGNAL \RAM1|ram~92_q\ : std_logic;
SIGNAL \RAM1|ram~721_combout\ : std_logic;
SIGNAL \RAM1|ram~722_combout\ : std_logic;
SIGNAL \RAM1|ram~124_q\ : std_logic;
SIGNAL \RAM1|ram~723_combout\ : std_logic;
SIGNAL \RAM1|ram~724_combout\ : std_logic;
SIGNAL \RAM1|ram~220_q\ : std_logic;
SIGNAL \RAM1|ram~725_combout\ : std_logic;
SIGNAL \RAM1|ram~726_combout\ : std_logic;
SIGNAL \RAM1|ram~252_q\ : std_logic;
SIGNAL \RAM1|ram~643_combout\ : std_logic;
SIGNAL \RAM1|ram~743_combout\ : std_logic;
SIGNAL \RAM1|ram~744_combout\ : std_logic;
SIGNAL \RAM1|ram~44_q\ : std_logic;
SIGNAL \RAM1|ram~745_combout\ : std_logic;
SIGNAL \RAM1|ram~746_combout\ : std_logic;
SIGNAL \RAM1|ram~76_q\ : std_logic;
SIGNAL \RAM1|ram~751_combout\ : std_logic;
SIGNAL \RAM1|ram~752_combout\ : std_logic;
SIGNAL \RAM1|ram~172_q\ : std_logic;
SIGNAL \RAM1|ram~753_combout\ : std_logic;
SIGNAL \RAM1|ram~754_combout\ : std_logic;
SIGNAL \RAM1|ram~204_q\ : std_logic;
SIGNAL \RAM1|ram~644_combout\ : std_logic;
SIGNAL \RAM1|ram~747_combout\ : std_logic;
SIGNAL \RAM1|ram~748_combout\ : std_logic;
SIGNAL \RAM1|ram~108_q\ : std_logic;
SIGNAL \RAM1|ram~749_combout\ : std_logic;
SIGNAL \RAM1|ram~750_combout\ : std_logic;
SIGNAL \RAM1|ram~140_q\ : std_logic;
SIGNAL \RAM1|ram~755_combout\ : std_logic;
SIGNAL \RAM1|ram~756_combout\ : std_logic;
SIGNAL \RAM1|ram~236_q\ : std_logic;
SIGNAL \RAM1|ram~757_combout\ : std_logic;
SIGNAL \RAM1|ram~758_combout\ : std_logic;
SIGNAL \RAM1|ram~268_q\ : std_logic;
SIGNAL \RAM1|ram~645_combout\ : std_logic;
SIGNAL \RAM1|ram~646_combout\ : std_logic;
SIGNAL \RAM1|ram~763_combout\ : std_logic;
SIGNAL \RAM1|ram~764_combout\ : std_logic;
SIGNAL \RAM1|ram~284_q\ : std_logic;
SIGNAL \RAM1|ram~771_combout\ : std_logic;
SIGNAL \RAM1|ram~772_combout\ : std_logic;
SIGNAL \RAM1|ram~316_q\ : std_logic;
SIGNAL \RAM1|ram~807_combout\ : std_logic;
SIGNAL \RAM1|ram~808_combout\ : std_logic;
SIGNAL \RAM1|ram~300_q\ : std_logic;
SIGNAL \RAM1|ram~809_combout\ : std_logic;
SIGNAL \RAM1|ram~810_combout\ : std_logic;
SIGNAL \RAM1|ram~332_q\ : std_logic;
SIGNAL \RAM1|ram~647_combout\ : std_logic;
SIGNAL \RAM1|ram~779_combout\ : std_logic;
SIGNAL \RAM1|ram~780_combout\ : std_logic;
SIGNAL \RAM1|ram~348_q\ : std_logic;
SIGNAL \RAM1|ram~787_combout\ : std_logic;
SIGNAL \RAM1|ram~788_combout\ : std_logic;
SIGNAL \RAM1|ram~380_q\ : std_logic;
SIGNAL \RAM1|ram~811_combout\ : std_logic;
SIGNAL \RAM1|ram~812_combout\ : std_logic;
SIGNAL \RAM1|ram~364_q\ : std_logic;
SIGNAL \RAM1|ram~813_combout\ : std_logic;
SIGNAL \RAM1|ram~814_combout\ : std_logic;
SIGNAL \RAM1|ram~396_q\ : std_logic;
SIGNAL \RAM1|ram~648_combout\ : std_logic;
SIGNAL \RAM1|ram~765_combout\ : std_logic;
SIGNAL \RAM1|ram~766_combout\ : std_logic;
SIGNAL \RAM1|ram~412_q\ : std_logic;
SIGNAL \RAM1|ram~773_combout\ : std_logic;
SIGNAL \RAM1|ram~774_combout\ : std_logic;
SIGNAL \RAM1|ram~444_q\ : std_logic;
SIGNAL \RAM1|ram~815_combout\ : std_logic;
SIGNAL \RAM1|ram~816_combout\ : std_logic;
SIGNAL \RAM1|ram~428_q\ : std_logic;
SIGNAL \RAM1|ram~817_combout\ : std_logic;
SIGNAL \RAM1|ram~818_combout\ : std_logic;
SIGNAL \RAM1|ram~460_q\ : std_logic;
SIGNAL \RAM1|ram~649_combout\ : std_logic;
SIGNAL \RAM1|ram~781_combout\ : std_logic;
SIGNAL \RAM1|ram~782_combout\ : std_logic;
SIGNAL \RAM1|ram~476_q\ : std_logic;
SIGNAL \RAM1|ram~789_combout\ : std_logic;
SIGNAL \RAM1|ram~790_combout\ : std_logic;
SIGNAL \RAM1|ram~508_q\ : std_logic;
SIGNAL \RAM1|ram~819_combout\ : std_logic;
SIGNAL \RAM1|ram~820_combout\ : std_logic;
SIGNAL \RAM1|ram~492_q\ : std_logic;
SIGNAL \RAM1|ram~821_combout\ : std_logic;
SIGNAL \RAM1|ram~822_combout\ : std_logic;
SIGNAL \RAM1|ram~524_q\ : std_logic;
SIGNAL \RAM1|ram~650_combout\ : std_logic;
SIGNAL \RAM1|ram~651_combout\ : std_logic;
SIGNAL \RAM1|ram~652_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \CPU|Bloco_Reg|enableReg1~0_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|enableReg2~0_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle[4]~3_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|sinais_controle[5]~4_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|enableReg0~0_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|enableReg2~combout\ : std_logic;
SIGNAL \CPU|ULA|Equal3~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~10_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[5]~11_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|enableReg1~combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~35_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~43_q\ : std_logic;
SIGNAL \RAM1|ram~611_combout\ : std_logic;
SIGNAL \RAM1|ram~147_q\ : std_logic;
SIGNAL \RAM1|ram~163_q\ : std_logic;
SIGNAL \RAM1|ram~155_q\ : std_logic;
SIGNAL \RAM1|ram~171_q\ : std_logic;
SIGNAL \RAM1|ram~612_combout\ : std_logic;
SIGNAL \RAM1|ram~83_q\ : std_logic;
SIGNAL \RAM1|ram~99_q\ : std_logic;
SIGNAL \RAM1|ram~91_q\ : std_logic;
SIGNAL \RAM1|ram~107_q\ : std_logic;
SIGNAL \RAM1|ram~613_combout\ : std_logic;
SIGNAL \RAM1|ram~211_q\ : std_logic;
SIGNAL \RAM1|ram~227_q\ : std_logic;
SIGNAL \RAM1|ram~219_q\ : std_logic;
SIGNAL \RAM1|ram~235_q\ : std_logic;
SIGNAL \RAM1|ram~614_combout\ : std_logic;
SIGNAL \RAM1|ram~615_combout\ : std_logic;
SIGNAL \RAM1|ram~275_q\ : std_logic;
SIGNAL \RAM1|ram~291_q\ : std_logic;
SIGNAL \RAM1|ram~403_q\ : std_logic;
SIGNAL \RAM1|ram~419_q\ : std_logic;
SIGNAL \RAM1|ram~616_combout\ : std_logic;
SIGNAL \RAM1|ram~339_q\ : std_logic;
SIGNAL \RAM1|ram~355_q\ : std_logic;
SIGNAL \RAM1|ram~467_q\ : std_logic;
SIGNAL \RAM1|ram~483_q\ : std_logic;
SIGNAL \RAM1|ram~617_combout\ : std_logic;
SIGNAL \RAM1|ram~283_q\ : std_logic;
SIGNAL \RAM1|ram~299_q\ : std_logic;
SIGNAL \RAM1|ram~411_q\ : std_logic;
SIGNAL \RAM1|ram~427_q\ : std_logic;
SIGNAL \RAM1|ram~618_combout\ : std_logic;
SIGNAL \RAM1|ram~347_q\ : std_logic;
SIGNAL \RAM1|ram~363_q\ : std_logic;
SIGNAL \RAM1|ram~475_q\ : std_logic;
SIGNAL \RAM1|ram~491_q\ : std_logic;
SIGNAL \RAM1|ram~619_combout\ : std_logic;
SIGNAL \RAM1|ram~620_combout\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~67_q\ : std_logic;
SIGNAL \RAM1|ram~115_q\ : std_logic;
SIGNAL \RAM1|ram~131_q\ : std_logic;
SIGNAL \RAM1|ram~621_combout\ : std_logic;
SIGNAL \RAM1|ram~179_q\ : std_logic;
SIGNAL \RAM1|ram~195_q\ : std_logic;
SIGNAL \RAM1|ram~243_q\ : std_logic;
SIGNAL \RAM1|ram~259_q\ : std_logic;
SIGNAL \RAM1|ram~622_combout\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~75_q\ : std_logic;
SIGNAL \RAM1|ram~123_q\ : std_logic;
SIGNAL \RAM1|ram~139_q\ : std_logic;
SIGNAL \RAM1|ram~623_combout\ : std_logic;
SIGNAL \RAM1|ram~187_q\ : std_logic;
SIGNAL \RAM1|ram~203_q\ : std_logic;
SIGNAL \RAM1|ram~251_q\ : std_logic;
SIGNAL \RAM1|ram~267_q\ : std_logic;
SIGNAL \RAM1|ram~624_combout\ : std_logic;
SIGNAL \RAM1|ram~625_combout\ : std_logic;
SIGNAL \RAM1|ram~307_q\ : std_logic;
SIGNAL \RAM1|ram~323_q\ : std_logic;
SIGNAL \RAM1|ram~315_q\ : std_logic;
SIGNAL \RAM1|ram~331_q\ : std_logic;
SIGNAL \RAM1|ram~626_combout\ : std_logic;
SIGNAL \RAM1|ram~435_q\ : std_logic;
SIGNAL \RAM1|ram~451_q\ : std_logic;
SIGNAL \RAM1|ram~443_q\ : std_logic;
SIGNAL \RAM1|ram~459_q\ : std_logic;
SIGNAL \RAM1|ram~627_combout\ : std_logic;
SIGNAL \RAM1|ram~371_q\ : std_logic;
SIGNAL \RAM1|ram~387_q\ : std_logic;
SIGNAL \RAM1|ram~379_q\ : std_logic;
SIGNAL \RAM1|ram~395_q\ : std_logic;
SIGNAL \RAM1|ram~628_combout\ : std_logic;
SIGNAL \RAM1|ram~499_q\ : std_logic;
SIGNAL \RAM1|ram~515_q\ : std_logic;
SIGNAL \RAM1|ram~507_q\ : std_logic;
SIGNAL \RAM1|ram~523_q\ : std_logic;
SIGNAL \RAM1|ram~629_combout\ : std_logic;
SIGNAL \RAM1|ram~630_combout\ : std_logic;
SIGNAL \RAM1|ram~631_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~82_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~90_q\ : std_logic;
SIGNAL \RAM1|ram~590_combout\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~114_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~122_q\ : std_logic;
SIGNAL \RAM1|ram~591_combout\ : std_logic;
SIGNAL \RAM1|ram~146_q\ : std_logic;
SIGNAL \RAM1|ram~210_q\ : std_logic;
SIGNAL \RAM1|ram~154_q\ : std_logic;
SIGNAL \RAM1|ram~218_q\ : std_logic;
SIGNAL \RAM1|ram~592_combout\ : std_logic;
SIGNAL \RAM1|ram~178_q\ : std_logic;
SIGNAL \RAM1|ram~242_q\ : std_logic;
SIGNAL \RAM1|ram~186_q\ : std_logic;
SIGNAL \RAM1|ram~250_q\ : std_logic;
SIGNAL \RAM1|ram~593_combout\ : std_logic;
SIGNAL \RAM1|ram~594_combout\ : std_logic;
SIGNAL \RAM1|ram~274_q\ : std_logic;
SIGNAL \RAM1|ram~402_q\ : std_logic;
SIGNAL \RAM1|ram~282_q\ : std_logic;
SIGNAL \RAM1|ram~410_q\ : std_logic;
SIGNAL \RAM1|ram~595_combout\ : std_logic;
SIGNAL \RAM1|ram~306_q\ : std_logic;
SIGNAL \RAM1|ram~434_q\ : std_logic;
SIGNAL \RAM1|ram~314_q\ : std_logic;
SIGNAL \RAM1|ram~442_q\ : std_logic;
SIGNAL \RAM1|ram~596_combout\ : std_logic;
SIGNAL \RAM1|ram~338_q\ : std_logic;
SIGNAL \RAM1|ram~466_q\ : std_logic;
SIGNAL \RAM1|ram~346_q\ : std_logic;
SIGNAL \RAM1|ram~474_q\ : std_logic;
SIGNAL \RAM1|ram~597_combout\ : std_logic;
SIGNAL \RAM1|ram~370_q\ : std_logic;
SIGNAL \RAM1|ram~498_q\ : std_logic;
SIGNAL \RAM1|ram~378_q\ : std_logic;
SIGNAL \RAM1|ram~506_q\ : std_logic;
SIGNAL \RAM1|ram~598_combout\ : std_logic;
SIGNAL \RAM1|ram~599_combout\ : std_logic;
SIGNAL \RAM1|ram~34_q\ : std_logic;
SIGNAL \RAM1|ram~66_q\ : std_logic;
SIGNAL \RAM1|ram~42_q\ : std_logic;
SIGNAL \RAM1|ram~74_q\ : std_logic;
SIGNAL \RAM1|ram~600_combout\ : std_logic;
SIGNAL \RAM1|ram~98_q\ : std_logic;
SIGNAL \RAM1|ram~130_q\ : std_logic;
SIGNAL \RAM1|ram~106_q\ : std_logic;
SIGNAL \RAM1|ram~138_q\ : std_logic;
SIGNAL \RAM1|ram~601_combout\ : std_logic;
SIGNAL \RAM1|ram~162_q\ : std_logic;
SIGNAL \RAM1|ram~194_q\ : std_logic;
SIGNAL \RAM1|ram~170_q\ : std_logic;
SIGNAL \RAM1|ram~202_q\ : std_logic;
SIGNAL \RAM1|ram~602_combout\ : std_logic;
SIGNAL \RAM1|ram~226_q\ : std_logic;
SIGNAL \RAM1|ram~258_q\ : std_logic;
SIGNAL \RAM1|ram~234_q\ : std_logic;
SIGNAL \RAM1|ram~266_q\ : std_logic;
SIGNAL \RAM1|ram~603_combout\ : std_logic;
SIGNAL \RAM1|ram~604_combout\ : std_logic;
SIGNAL \RAM1|ram~290_q\ : std_logic;
SIGNAL \RAM1|ram~322_q\ : std_logic;
SIGNAL \RAM1|ram~354_q\ : std_logic;
SIGNAL \RAM1|ram~386_q\ : std_logic;
SIGNAL \RAM1|ram~605_combout\ : std_logic;
SIGNAL \RAM1|ram~418_q\ : std_logic;
SIGNAL \RAM1|ram~450_q\ : std_logic;
SIGNAL \RAM1|ram~482_q\ : std_logic;
SIGNAL \RAM1|ram~514_q\ : std_logic;
SIGNAL \RAM1|ram~606_combout\ : std_logic;
SIGNAL \RAM1|ram~298_q\ : std_logic;
SIGNAL \RAM1|ram~330_q\ : std_logic;
SIGNAL \RAM1|ram~362_q\ : std_logic;
SIGNAL \RAM1|ram~394_q\ : std_logic;
SIGNAL \RAM1|ram~607_combout\ : std_logic;
SIGNAL \RAM1|ram~426_q\ : std_logic;
SIGNAL \RAM1|ram~458_q\ : std_logic;
SIGNAL \RAM1|ram~490_q\ : std_logic;
SIGNAL \RAM1|ram~522_q\ : std_logic;
SIGNAL \RAM1|ram~608_combout\ : std_logic;
SIGNAL \RAM1|ram~609_combout\ : std_logic;
SIGNAL \RAM1|ram~610_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~47_q\ : std_logic;
SIGNAL \RAM1|ram~143_q\ : std_logic;
SIGNAL \RAM1|ram~175_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~79_q\ : std_logic;
SIGNAL \RAM1|ram~111_q\ : std_logic;
SIGNAL \RAM1|ram~207_q\ : std_logic;
SIGNAL \RAM1|ram~239_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~151_q\ : std_logic;
SIGNAL \RAM1|ram~183_q\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~87_q\ : std_logic;
SIGNAL \RAM1|ram~119_q\ : std_logic;
SIGNAL \RAM1|ram~215_q\ : std_logic;
SIGNAL \RAM1|ram~247_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~95_q\ : std_logic;
SIGNAL \RAM1|ram~127_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~159_q\ : std_logic;
SIGNAL \RAM1|ram~191_q\ : std_logic;
SIGNAL \RAM1|ram~223_q\ : std_logic;
SIGNAL \RAM1|ram~255_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~39_q\ : std_logic;
SIGNAL \RAM1|ram~71_q\ : std_logic;
SIGNAL \RAM1|ram~103_q\ : std_logic;
SIGNAL \RAM1|ram~135_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~167_q\ : std_logic;
SIGNAL \RAM1|ram~199_q\ : std_logic;
SIGNAL \RAM1|ram~231_q\ : std_logic;
SIGNAL \RAM1|ram~263_q\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~271_q\ : std_logic;
SIGNAL \RAM1|ram~399_q\ : std_logic;
SIGNAL \RAM1|ram~279_q\ : std_logic;
SIGNAL \RAM1|ram~407_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~303_q\ : std_logic;
SIGNAL \RAM1|ram~431_q\ : std_logic;
SIGNAL \RAM1|ram~311_q\ : std_logic;
SIGNAL \RAM1|ram~439_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~335_q\ : std_logic;
SIGNAL \RAM1|ram~463_q\ : std_logic;
SIGNAL \RAM1|ram~343_q\ : std_logic;
SIGNAL \RAM1|ram~471_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~367_q\ : std_logic;
SIGNAL \RAM1|ram~495_q\ : std_logic;
SIGNAL \RAM1|ram~375_q\ : std_logic;
SIGNAL \RAM1|ram~503_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~287_q\ : std_logic;
SIGNAL \RAM1|ram~319_q\ : std_logic;
SIGNAL \RAM1|ram~351_q\ : std_logic;
SIGNAL \RAM1|ram~383_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~415_q\ : std_logic;
SIGNAL \RAM1|ram~447_q\ : std_logic;
SIGNAL \RAM1|ram~479_q\ : std_logic;
SIGNAL \RAM1|ram~511_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~295_q\ : std_logic;
SIGNAL \RAM1|ram~327_q\ : std_logic;
SIGNAL \RAM1|ram~359_q\ : std_logic;
SIGNAL \RAM1|ram~391_q\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~423_q\ : std_logic;
SIGNAL \RAM1|ram~455_q\ : std_logic;
SIGNAL \RAM1|ram~487_q\ : std_logic;
SIGNAL \RAM1|ram~519_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \Data_In[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Data_In[0]~1_combout\ : std_logic;
SIGNAL \DECODER1|enableSWVector~1_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Data_In[0]~8_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_In[0]~4_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \Data_In[0]~6_combout\ : std_logic;
SIGNAL \Data_In[0]~9_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA|Add0~2\ : std_logic;
SIGNAL \CPU|ULA|Add0~5_sumout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[1]~3_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~40_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~80_q\ : std_logic;
SIGNAL \RAM1|ram~96_q\ : std_logic;
SIGNAL \RAM1|ram~88_q\ : std_logic;
SIGNAL \RAM1|ram~104_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~144_q\ : std_logic;
SIGNAL \RAM1|ram~160_q\ : std_logic;
SIGNAL \RAM1|ram~152_q\ : std_logic;
SIGNAL \RAM1|ram~168_q\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~208_q\ : std_logic;
SIGNAL \RAM1|ram~224_q\ : std_logic;
SIGNAL \RAM1|ram~216_q\ : std_logic;
SIGNAL \RAM1|ram~232_q\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|ram~272_q\ : std_logic;
SIGNAL \RAM1|ram~288_q\ : std_logic;
SIGNAL \RAM1|ram~336_q\ : std_logic;
SIGNAL \RAM1|ram~352_q\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|ram~400_q\ : std_logic;
SIGNAL \RAM1|ram~416_q\ : std_logic;
SIGNAL \RAM1|ram~464_q\ : std_logic;
SIGNAL \RAM1|ram~480_q\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|ram~280_q\ : std_logic;
SIGNAL \RAM1|ram~296_q\ : std_logic;
SIGNAL \RAM1|ram~344_q\ : std_logic;
SIGNAL \RAM1|ram~360_q\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|ram~408_q\ : std_logic;
SIGNAL \RAM1|ram~424_q\ : std_logic;
SIGNAL \RAM1|ram~472_q\ : std_logic;
SIGNAL \RAM1|ram~488_q\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|ram~48_q\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~176_q\ : std_logic;
SIGNAL \RAM1|ram~192_q\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \RAM1|ram~112_q\ : std_logic;
SIGNAL \RAM1|ram~128_q\ : std_logic;
SIGNAL \RAM1|ram~240_q\ : std_logic;
SIGNAL \RAM1|ram~256_q\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~72_q\ : std_logic;
SIGNAL \RAM1|ram~184_q\ : std_logic;
SIGNAL \RAM1|ram~200_q\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~120_q\ : std_logic;
SIGNAL \RAM1|ram~136_q\ : std_logic;
SIGNAL \RAM1|ram~248_q\ : std_logic;
SIGNAL \RAM1|ram~264_q\ : std_logic;
SIGNAL \RAM1|ram~561_combout\ : std_logic;
SIGNAL \RAM1|ram~562_combout\ : std_logic;
SIGNAL \RAM1|ram~304_q\ : std_logic;
SIGNAL \RAM1|ram~320_q\ : std_logic;
SIGNAL \RAM1|ram~312_q\ : std_logic;
SIGNAL \RAM1|ram~328_q\ : std_logic;
SIGNAL \RAM1|ram~563_combout\ : std_logic;
SIGNAL \RAM1|ram~368_q\ : std_logic;
SIGNAL \RAM1|ram~384_q\ : std_logic;
SIGNAL \RAM1|ram~376_q\ : std_logic;
SIGNAL \RAM1|ram~392_q\ : std_logic;
SIGNAL \RAM1|ram~564_combout\ : std_logic;
SIGNAL \RAM1|ram~432_q\ : std_logic;
SIGNAL \RAM1|ram~448_q\ : std_logic;
SIGNAL \RAM1|ram~440_q\ : std_logic;
SIGNAL \RAM1|ram~456_q\ : std_logic;
SIGNAL \RAM1|ram~565_combout\ : std_logic;
SIGNAL \RAM1|ram~496_q\ : std_logic;
SIGNAL \RAM1|ram~512_q\ : std_logic;
SIGNAL \RAM1|ram~504_q\ : std_logic;
SIGNAL \RAM1|ram~520_q\ : std_logic;
SIGNAL \RAM1|ram~566_combout\ : std_logic;
SIGNAL \RAM1|ram~567_combout\ : std_logic;
SIGNAL \RAM1|ram~568_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~6\ : std_logic;
SIGNAL \CPU|ULA|Add0~9_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[2]~5_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~33_q\ : std_logic;
SIGNAL \RAM1|ram~65_q\ : std_logic;
SIGNAL \RAM1|ram~569_combout\ : std_logic;
SIGNAL \RAM1|ram~81_q\ : std_logic;
SIGNAL \RAM1|ram~113_q\ : std_logic;
SIGNAL \RAM1|ram~97_q\ : std_logic;
SIGNAL \RAM1|ram~129_q\ : std_logic;
SIGNAL \RAM1|ram~570_combout\ : std_logic;
SIGNAL \RAM1|ram~145_q\ : std_logic;
SIGNAL \RAM1|ram~177_q\ : std_logic;
SIGNAL \RAM1|ram~161_q\ : std_logic;
SIGNAL \RAM1|ram~193_q\ : std_logic;
SIGNAL \RAM1|ram~571_combout\ : std_logic;
SIGNAL \RAM1|ram~209_q\ : std_logic;
SIGNAL \RAM1|ram~241_q\ : std_logic;
SIGNAL \RAM1|ram~225_q\ : std_logic;
SIGNAL \RAM1|ram~257_q\ : std_logic;
SIGNAL \RAM1|ram~572_combout\ : std_logic;
SIGNAL \RAM1|ram~573_combout\ : std_logic;
SIGNAL \RAM1|ram~273_q\ : std_logic;
SIGNAL \RAM1|ram~337_q\ : std_logic;
SIGNAL \RAM1|ram~289_q\ : std_logic;
SIGNAL \RAM1|ram~353_q\ : std_logic;
SIGNAL \RAM1|ram~574_combout\ : std_logic;
SIGNAL \RAM1|ram~305_q\ : std_logic;
SIGNAL \RAM1|ram~369_q\ : std_logic;
SIGNAL \RAM1|ram~321_q\ : std_logic;
SIGNAL \RAM1|ram~385_q\ : std_logic;
SIGNAL \RAM1|ram~575_combout\ : std_logic;
SIGNAL \RAM1|ram~401_q\ : std_logic;
SIGNAL \RAM1|ram~465_q\ : std_logic;
SIGNAL \RAM1|ram~417_q\ : std_logic;
SIGNAL \RAM1|ram~481_q\ : std_logic;
SIGNAL \RAM1|ram~576_combout\ : std_logic;
SIGNAL \RAM1|ram~433_q\ : std_logic;
SIGNAL \RAM1|ram~497_q\ : std_logic;
SIGNAL \RAM1|ram~449_q\ : std_logic;
SIGNAL \RAM1|ram~513_q\ : std_logic;
SIGNAL \RAM1|ram~577_combout\ : std_logic;
SIGNAL \RAM1|ram~578_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~153_q\ : std_logic;
SIGNAL \RAM1|ram~185_q\ : std_logic;
SIGNAL \RAM1|ram~579_combout\ : std_logic;
SIGNAL \RAM1|ram~89_q\ : std_logic;
SIGNAL \RAM1|ram~121_q\ : std_logic;
SIGNAL \RAM1|ram~217_q\ : std_logic;
SIGNAL \RAM1|ram~249_q\ : std_logic;
SIGNAL \RAM1|ram~580_combout\ : std_logic;
SIGNAL \RAM1|ram~41_q\ : std_logic;
SIGNAL \RAM1|ram~73_q\ : std_logic;
SIGNAL \RAM1|ram~169_q\ : std_logic;
SIGNAL \RAM1|ram~201_q\ : std_logic;
SIGNAL \RAM1|ram~581_combout\ : std_logic;
SIGNAL \RAM1|ram~105_q\ : std_logic;
SIGNAL \RAM1|ram~137_q\ : std_logic;
SIGNAL \RAM1|ram~233_q\ : std_logic;
SIGNAL \RAM1|ram~265_q\ : std_logic;
SIGNAL \RAM1|ram~582_combout\ : std_logic;
SIGNAL \RAM1|ram~583_combout\ : std_logic;
SIGNAL \RAM1|ram~281_q\ : std_logic;
SIGNAL \RAM1|ram~313_q\ : std_logic;
SIGNAL \RAM1|ram~409_q\ : std_logic;
SIGNAL \RAM1|ram~441_q\ : std_logic;
SIGNAL \RAM1|ram~584_combout\ : std_logic;
SIGNAL \RAM1|ram~345_q\ : std_logic;
SIGNAL \RAM1|ram~377_q\ : std_logic;
SIGNAL \RAM1|ram~473_q\ : std_logic;
SIGNAL \RAM1|ram~505_q\ : std_logic;
SIGNAL \RAM1|ram~585_combout\ : std_logic;
SIGNAL \RAM1|ram~297_q\ : std_logic;
SIGNAL \RAM1|ram~329_q\ : std_logic;
SIGNAL \RAM1|ram~425_q\ : std_logic;
SIGNAL \RAM1|ram~457_q\ : std_logic;
SIGNAL \RAM1|ram~586_combout\ : std_logic;
SIGNAL \RAM1|ram~361_q\ : std_logic;
SIGNAL \RAM1|ram~393_q\ : std_logic;
SIGNAL \RAM1|ram~489_q\ : std_logic;
SIGNAL \RAM1|ram~521_q\ : std_logic;
SIGNAL \RAM1|ram~587_combout\ : std_logic;
SIGNAL \RAM1|ram~588_combout\ : std_logic;
SIGNAL \RAM1|ram~589_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~10\ : std_logic;
SIGNAL \CPU|ULA|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~6_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[3]~7_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~14\ : std_logic;
SIGNAL \CPU|ULA|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~8_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[4]~9_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~18\ : std_logic;
SIGNAL \CPU|ULA|Add0~21_sumout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~277_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~285_q\ : std_logic;
SIGNAL \RAM1|ram~653_combout\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~309_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~317_q\ : std_logic;
SIGNAL \RAM1|ram~654_combout\ : std_logic;
SIGNAL \RAM1|ram~37_q\ : std_logic;
SIGNAL \RAM1|ram~293_q\ : std_logic;
SIGNAL \RAM1|ram~45_q\ : std_logic;
SIGNAL \RAM1|ram~301_q\ : std_logic;
SIGNAL \RAM1|ram~655_combout\ : std_logic;
SIGNAL \RAM1|ram~69_q\ : std_logic;
SIGNAL \RAM1|ram~325_q\ : std_logic;
SIGNAL \RAM1|ram~77_q\ : std_logic;
SIGNAL \RAM1|ram~333_q\ : std_logic;
SIGNAL \RAM1|ram~656_combout\ : std_logic;
SIGNAL \RAM1|ram~657_combout\ : std_logic;
SIGNAL \RAM1|ram~149_q\ : std_logic;
SIGNAL \RAM1|ram~405_q\ : std_logic;
SIGNAL \RAM1|ram~157_q\ : std_logic;
SIGNAL \RAM1|ram~413_q\ : std_logic;
SIGNAL \RAM1|ram~658_combout\ : std_logic;
SIGNAL \RAM1|ram~181_q\ : std_logic;
SIGNAL \RAM1|ram~437_q\ : std_logic;
SIGNAL \RAM1|ram~189_q\ : std_logic;
SIGNAL \RAM1|ram~445_q\ : std_logic;
SIGNAL \RAM1|ram~659_combout\ : std_logic;
SIGNAL \RAM1|ram~165_q\ : std_logic;
SIGNAL \RAM1|ram~421_q\ : std_logic;
SIGNAL \RAM1|ram~173_q\ : std_logic;
SIGNAL \RAM1|ram~429_q\ : std_logic;
SIGNAL \RAM1|ram~660_combout\ : std_logic;
SIGNAL \RAM1|ram~197_q\ : std_logic;
SIGNAL \RAM1|ram~453_q\ : std_logic;
SIGNAL \RAM1|ram~205_q\ : std_logic;
SIGNAL \RAM1|ram~461_q\ : std_logic;
SIGNAL \RAM1|ram~661_combout\ : std_logic;
SIGNAL \RAM1|ram~662_combout\ : std_logic;
SIGNAL \RAM1|ram~85_q\ : std_logic;
SIGNAL \RAM1|ram~341_q\ : std_logic;
SIGNAL \RAM1|ram~93_q\ : std_logic;
SIGNAL \RAM1|ram~349_q\ : std_logic;
SIGNAL \RAM1|ram~663_combout\ : std_logic;
SIGNAL \RAM1|ram~117_q\ : std_logic;
SIGNAL \RAM1|ram~373_q\ : std_logic;
SIGNAL \RAM1|ram~125_q\ : std_logic;
SIGNAL \RAM1|ram~381_q\ : std_logic;
SIGNAL \RAM1|ram~664_combout\ : std_logic;
SIGNAL \RAM1|ram~101_q\ : std_logic;
SIGNAL \RAM1|ram~357_q\ : std_logic;
SIGNAL \RAM1|ram~109_q\ : std_logic;
SIGNAL \RAM1|ram~365_q\ : std_logic;
SIGNAL \RAM1|ram~665_combout\ : std_logic;
SIGNAL \RAM1|ram~133_q\ : std_logic;
SIGNAL \RAM1|ram~389_q\ : std_logic;
SIGNAL \RAM1|ram~141_q\ : std_logic;
SIGNAL \RAM1|ram~397_q\ : std_logic;
SIGNAL \RAM1|ram~666_combout\ : std_logic;
SIGNAL \RAM1|ram~667_combout\ : std_logic;
SIGNAL \RAM1|ram~213_q\ : std_logic;
SIGNAL \RAM1|ram~469_q\ : std_logic;
SIGNAL \RAM1|ram~229_q\ : std_logic;
SIGNAL \RAM1|ram~485_q\ : std_logic;
SIGNAL \RAM1|ram~668_combout\ : std_logic;
SIGNAL \RAM1|ram~245_q\ : std_logic;
SIGNAL \RAM1|ram~501_q\ : std_logic;
SIGNAL \RAM1|ram~261_q\ : std_logic;
SIGNAL \RAM1|ram~517_q\ : std_logic;
SIGNAL \RAM1|ram~669_combout\ : std_logic;
SIGNAL \RAM1|ram~221_q\ : std_logic;
SIGNAL \RAM1|ram~477_q\ : std_logic;
SIGNAL \RAM1|ram~237_q\ : std_logic;
SIGNAL \RAM1|ram~493_q\ : std_logic;
SIGNAL \RAM1|ram~670_combout\ : std_logic;
SIGNAL \RAM1|ram~253_q\ : std_logic;
SIGNAL \RAM1|ram~509_q\ : std_logic;
SIGNAL \RAM1|ram~269_q\ : std_logic;
SIGNAL \RAM1|ram~525_q\ : std_logic;
SIGNAL \RAM1|ram~671_combout\ : std_logic;
SIGNAL \RAM1|ram~672_combout\ : std_logic;
SIGNAL \RAM1|ram~673_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~12_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[6]~13_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~22\ : std_logic;
SIGNAL \CPU|ULA|Add0~25_sumout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~278_q\ : std_logic;
SIGNAL \RAM1|ram~150_q\ : std_logic;
SIGNAL \RAM1|ram~406_q\ : std_logic;
SIGNAL \RAM1|ram~674_combout\ : std_logic;
SIGNAL \RAM1|ram~86_q\ : std_logic;
SIGNAL \RAM1|ram~342_q\ : std_logic;
SIGNAL \RAM1|ram~214_q\ : std_logic;
SIGNAL \RAM1|ram~470_q\ : std_logic;
SIGNAL \RAM1|ram~675_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~286_q\ : std_logic;
SIGNAL \RAM1|ram~158_q\ : std_logic;
SIGNAL \RAM1|ram~414_q\ : std_logic;
SIGNAL \RAM1|ram~676_combout\ : std_logic;
SIGNAL \RAM1|ram~94_q\ : std_logic;
SIGNAL \RAM1|ram~350_q\ : std_logic;
SIGNAL \RAM1|ram~222_q\ : std_logic;
SIGNAL \RAM1|ram~478_q\ : std_logic;
SIGNAL \RAM1|ram~677_combout\ : std_logic;
SIGNAL \RAM1|ram~678_combout\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~310_q\ : std_logic;
SIGNAL \RAM1|ram~182_q\ : std_logic;
SIGNAL \RAM1|ram~438_q\ : std_logic;
SIGNAL \RAM1|ram~679_combout\ : std_logic;
SIGNAL \RAM1|ram~118_q\ : std_logic;
SIGNAL \RAM1|ram~374_q\ : std_logic;
SIGNAL \RAM1|ram~246_q\ : std_logic;
SIGNAL \RAM1|ram~502_q\ : std_logic;
SIGNAL \RAM1|ram~680_combout\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~318_q\ : std_logic;
SIGNAL \RAM1|ram~190_q\ : std_logic;
SIGNAL \RAM1|ram~446_q\ : std_logic;
SIGNAL \RAM1|ram~681_combout\ : std_logic;
SIGNAL \RAM1|ram~126_q\ : std_logic;
SIGNAL \RAM1|ram~382_q\ : std_logic;
SIGNAL \RAM1|ram~254_q\ : std_logic;
SIGNAL \RAM1|ram~510_q\ : std_logic;
SIGNAL \RAM1|ram~682_combout\ : std_logic;
SIGNAL \RAM1|ram~683_combout\ : std_logic;
SIGNAL \RAM1|ram~38_q\ : std_logic;
SIGNAL \RAM1|ram~294_q\ : std_logic;
SIGNAL \RAM1|ram~102_q\ : std_logic;
SIGNAL \RAM1|ram~358_q\ : std_logic;
SIGNAL \RAM1|ram~684_combout\ : std_logic;
SIGNAL \RAM1|ram~166_q\ : std_logic;
SIGNAL \RAM1|ram~422_q\ : std_logic;
SIGNAL \RAM1|ram~230_q\ : std_logic;
SIGNAL \RAM1|ram~486_q\ : std_logic;
SIGNAL \RAM1|ram~685_combout\ : std_logic;
SIGNAL \RAM1|ram~46_q\ : std_logic;
SIGNAL \RAM1|ram~302_q\ : std_logic;
SIGNAL \RAM1|ram~110_q\ : std_logic;
SIGNAL \RAM1|ram~366_q\ : std_logic;
SIGNAL \RAM1|ram~686_combout\ : std_logic;
SIGNAL \RAM1|ram~174_q\ : std_logic;
SIGNAL \RAM1|ram~430_q\ : std_logic;
SIGNAL \RAM1|ram~238_q\ : std_logic;
SIGNAL \RAM1|ram~494_q\ : std_logic;
SIGNAL \RAM1|ram~687_combout\ : std_logic;
SIGNAL \RAM1|ram~688_combout\ : std_logic;
SIGNAL \RAM1|ram~70_q\ : std_logic;
SIGNAL \RAM1|ram~326_q\ : std_logic;
SIGNAL \RAM1|ram~134_q\ : std_logic;
SIGNAL \RAM1|ram~390_q\ : std_logic;
SIGNAL \RAM1|ram~689_combout\ : std_logic;
SIGNAL \RAM1|ram~198_q\ : std_logic;
SIGNAL \RAM1|ram~454_q\ : std_logic;
SIGNAL \RAM1|ram~262_q\ : std_logic;
SIGNAL \RAM1|ram~518_q\ : std_logic;
SIGNAL \RAM1|ram~690_combout\ : std_logic;
SIGNAL \RAM1|ram~78_q\ : std_logic;
SIGNAL \RAM1|ram~334_q\ : std_logic;
SIGNAL \RAM1|ram~142_q\ : std_logic;
SIGNAL \RAM1|ram~398_q\ : std_logic;
SIGNAL \RAM1|ram~691_combout\ : std_logic;
SIGNAL \RAM1|ram~206_q\ : std_logic;
SIGNAL \RAM1|ram~462_q\ : std_logic;
SIGNAL \RAM1|ram~270_q\ : std_logic;
SIGNAL \RAM1|ram~526_q\ : std_logic;
SIGNAL \RAM1|ram~692_combout\ : std_logic;
SIGNAL \RAM1|ram~693_combout\ : std_logic;
SIGNAL \RAM1|ram~694_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~14_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[7]~15_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|saida_MUX[7]~3_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~26\ : std_logic;
SIGNAL \CPU|ULA|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|Flag_Equal|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Flag_Equal|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|DOUT~3_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|DOUT~q\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|Equal1~0_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~48_combout\ : std_logic;
SIGNAL \ROM1|memROM~49_combout\ : std_logic;
SIGNAL \ROM1|memROM~50_combout\ : std_logic;
SIGNAL \ROM1|memROM~51_combout\ : std_logic;
SIGNAL \ROM1|memROM~52_combout\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementa_PC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \Data_In[0]~2_combout\ : std_logic;
SIGNAL \Data_In[0]~3_combout\ : std_logic;
SIGNAL \Data_In[0]~5_combout\ : std_logic;
SIGNAL \Data_In[0]~7_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|ULA|saida[0]~1_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \DECODER1|enableHEX0~0_combout\ : std_logic;
SIGNAL \DECODER1|enableLedVector~0_combout\ : std_logic;
SIGNAL \DECODER1|enableHEX0~1_combout\ : std_logic;
SIGNAL \FlipFlop8|DOUT~0_combout\ : std_logic;
SIGNAL \FlipFlop8|DOUT~q\ : std_logic;
SIGNAL \FlipFlop9|DOUT~0_combout\ : std_logic;
SIGNAL \FlipFlop9|DOUT~q\ : std_logic;
SIGNAL \DECODER1|enableHEX0~2_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HexDisplay0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER1|enableHEX1~0_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HexDisplay1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER1|enableHEX2~0_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HexDisplay2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DECODER1|enableHEX3~0_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HexDisplay3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HexDisplay4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \HexDisplay5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \RegisterHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegisterHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegisterHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|Bloco_Reg|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|Reg_Retorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegisterVector|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegisterHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|Bloco_Reg|REG0|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|Bloco_Reg|REG2|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \DECODER1|ALT_INV_enableSWVector~3_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_sinais_controle[5]~4_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_sinais_controle~2_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~75_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~1_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_enableSWVector~2_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_enableSWVector~1_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_enableSWVector~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~0_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_sinais_controle[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[6]~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[5]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[7]~3_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[6]~2_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Data_In[0]~8_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_saida[7]~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~98_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~93_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~84_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[5]~7_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[4]~6_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[3]~5_combout\ : std_logic;
SIGNAL \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \CPU|Reg_Retorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~74_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~73_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~72_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~71_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~70_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~69_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~68_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~67_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~66_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~65_combout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~64_combout\ : std_logic;
SIGNAL \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \CPU|Flag_Equal|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DECODER1|ALT_INV_enableHEX0~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~63_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~62_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~61_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~60_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~59_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~58_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~57_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~56_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~55_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~54_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~53_combout\ : std_logic;
SIGNAL \DECODER1|ALT_INV_enableHEX0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~52_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~51_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~50_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~49_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~48_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~47_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~46_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~45_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~44_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RegisterHEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegisterHEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegisterHEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegisterHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FlipFlop9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \FlipFlop8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~94_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~89_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~85_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~80_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~76_combout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|ULA|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementa_PC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
ROM_AddressOUT <= ww_ROM_AddressOUT;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
Bloco_Reg_Out <= ww_Bloco_Reg_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~241_q\ <= NOT \RAM1|ram~241_q\;
\RAM1|ALT_INV_ram~209_q\ <= NOT \RAM1|ram~209_q\;
\RAM1|ALT_INV_ram~571_combout\ <= NOT \RAM1|ram~571_combout\;
\RAM1|ALT_INV_ram~193_q\ <= NOT \RAM1|ram~193_q\;
\RAM1|ALT_INV_ram~161_q\ <= NOT \RAM1|ram~161_q\;
\RAM1|ALT_INV_ram~177_q\ <= NOT \RAM1|ram~177_q\;
\RAM1|ALT_INV_ram~145_q\ <= NOT \RAM1|ram~145_q\;
\RAM1|ALT_INV_ram~570_combout\ <= NOT \RAM1|ram~570_combout\;
\RAM1|ALT_INV_ram~129_q\ <= NOT \RAM1|ram~129_q\;
\RAM1|ALT_INV_ram~97_q\ <= NOT \RAM1|ram~97_q\;
\RAM1|ALT_INV_ram~113_q\ <= NOT \RAM1|ram~113_q\;
\RAM1|ALT_INV_ram~81_q\ <= NOT \RAM1|ram~81_q\;
\RAM1|ALT_INV_ram~569_combout\ <= NOT \RAM1|ram~569_combout\;
\RAM1|ALT_INV_ram~65_q\ <= NOT \RAM1|ram~65_q\;
\RAM1|ALT_INV_ram~33_q\ <= NOT \RAM1|ram~33_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\CPU|ULA|ALT_INV_saida[1]~2_combout\ <= NOT \CPU|ULA|saida[1]~2_combout\;
\RAM1|ALT_INV_ram~568_combout\ <= NOT \RAM1|ram~568_combout\;
\RAM1|ALT_INV_ram~567_combout\ <= NOT \RAM1|ram~567_combout\;
\RAM1|ALT_INV_ram~566_combout\ <= NOT \RAM1|ram~566_combout\;
\RAM1|ALT_INV_ram~520_q\ <= NOT \RAM1|ram~520_q\;
\RAM1|ALT_INV_ram~504_q\ <= NOT \RAM1|ram~504_q\;
\RAM1|ALT_INV_ram~512_q\ <= NOT \RAM1|ram~512_q\;
\RAM1|ALT_INV_ram~496_q\ <= NOT \RAM1|ram~496_q\;
\RAM1|ALT_INV_ram~565_combout\ <= NOT \RAM1|ram~565_combout\;
\RAM1|ALT_INV_ram~456_q\ <= NOT \RAM1|ram~456_q\;
\RAM1|ALT_INV_ram~440_q\ <= NOT \RAM1|ram~440_q\;
\RAM1|ALT_INV_ram~448_q\ <= NOT \RAM1|ram~448_q\;
\RAM1|ALT_INV_ram~432_q\ <= NOT \RAM1|ram~432_q\;
\RAM1|ALT_INV_ram~564_combout\ <= NOT \RAM1|ram~564_combout\;
\RAM1|ALT_INV_ram~392_q\ <= NOT \RAM1|ram~392_q\;
\RAM1|ALT_INV_ram~376_q\ <= NOT \RAM1|ram~376_q\;
\RAM1|ALT_INV_ram~384_q\ <= NOT \RAM1|ram~384_q\;
\RAM1|ALT_INV_ram~368_q\ <= NOT \RAM1|ram~368_q\;
\RAM1|ALT_INV_ram~563_combout\ <= NOT \RAM1|ram~563_combout\;
\RAM1|ALT_INV_ram~328_q\ <= NOT \RAM1|ram~328_q\;
\RAM1|ALT_INV_ram~312_q\ <= NOT \RAM1|ram~312_q\;
\RAM1|ALT_INV_ram~320_q\ <= NOT \RAM1|ram~320_q\;
\RAM1|ALT_INV_ram~304_q\ <= NOT \RAM1|ram~304_q\;
\RAM1|ALT_INV_ram~562_combout\ <= NOT \RAM1|ram~562_combout\;
\RAM1|ALT_INV_ram~561_combout\ <= NOT \RAM1|ram~561_combout\;
\RAM1|ALT_INV_ram~264_q\ <= NOT \RAM1|ram~264_q\;
\RAM1|ALT_INV_ram~248_q\ <= NOT \RAM1|ram~248_q\;
\RAM1|ALT_INV_ram~136_q\ <= NOT \RAM1|ram~136_q\;
\RAM1|ALT_INV_ram~120_q\ <= NOT \RAM1|ram~120_q\;
\RAM1|ALT_INV_ram~560_combout\ <= NOT \RAM1|ram~560_combout\;
\RAM1|ALT_INV_ram~200_q\ <= NOT \RAM1|ram~200_q\;
\RAM1|ALT_INV_ram~184_q\ <= NOT \RAM1|ram~184_q\;
\RAM1|ALT_INV_ram~72_q\ <= NOT \RAM1|ram~72_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~559_combout\ <= NOT \RAM1|ram~559_combout\;
\RAM1|ALT_INV_ram~256_q\ <= NOT \RAM1|ram~256_q\;
\RAM1|ALT_INV_ram~240_q\ <= NOT \RAM1|ram~240_q\;
\RAM1|ALT_INV_ram~128_q\ <= NOT \RAM1|ram~128_q\;
\RAM1|ALT_INV_ram~112_q\ <= NOT \RAM1|ram~112_q\;
\RAM1|ALT_INV_ram~558_combout\ <= NOT \RAM1|ram~558_combout\;
\RAM1|ALT_INV_ram~192_q\ <= NOT \RAM1|ram~192_q\;
\RAM1|ALT_INV_ram~176_q\ <= NOT \RAM1|ram~176_q\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~48_q\ <= NOT \RAM1|ram~48_q\;
\RAM1|ALT_INV_ram~557_combout\ <= NOT \RAM1|ram~557_combout\;
\RAM1|ALT_INV_ram~556_combout\ <= NOT \RAM1|ram~556_combout\;
\RAM1|ALT_INV_ram~488_q\ <= NOT \RAM1|ram~488_q\;
\RAM1|ALT_INV_ram~472_q\ <= NOT \RAM1|ram~472_q\;
\RAM1|ALT_INV_ram~424_q\ <= NOT \RAM1|ram~424_q\;
\RAM1|ALT_INV_ram~408_q\ <= NOT \RAM1|ram~408_q\;
\RAM1|ALT_INV_ram~555_combout\ <= NOT \RAM1|ram~555_combout\;
\RAM1|ALT_INV_ram~360_q\ <= NOT \RAM1|ram~360_q\;
\RAM1|ALT_INV_ram~344_q\ <= NOT \RAM1|ram~344_q\;
\RAM1|ALT_INV_ram~296_q\ <= NOT \RAM1|ram~296_q\;
\RAM1|ALT_INV_ram~280_q\ <= NOT \RAM1|ram~280_q\;
\RAM1|ALT_INV_ram~554_combout\ <= NOT \RAM1|ram~554_combout\;
\RAM1|ALT_INV_ram~480_q\ <= NOT \RAM1|ram~480_q\;
\RAM1|ALT_INV_ram~464_q\ <= NOT \RAM1|ram~464_q\;
\RAM1|ALT_INV_ram~416_q\ <= NOT \RAM1|ram~416_q\;
\RAM1|ALT_INV_ram~400_q\ <= NOT \RAM1|ram~400_q\;
\RAM1|ALT_INV_ram~553_combout\ <= NOT \RAM1|ram~553_combout\;
\RAM1|ALT_INV_ram~352_q\ <= NOT \RAM1|ram~352_q\;
\RAM1|ALT_INV_ram~336_q\ <= NOT \RAM1|ram~336_q\;
\RAM1|ALT_INV_ram~288_q\ <= NOT \RAM1|ram~288_q\;
\RAM1|ALT_INV_ram~272_q\ <= NOT \RAM1|ram~272_q\;
\RAM1|ALT_INV_ram~552_combout\ <= NOT \RAM1|ram~552_combout\;
\RAM1|ALT_INV_ram~551_combout\ <= NOT \RAM1|ram~551_combout\;
\RAM1|ALT_INV_ram~232_q\ <= NOT \RAM1|ram~232_q\;
\RAM1|ALT_INV_ram~216_q\ <= NOT \RAM1|ram~216_q\;
\RAM1|ALT_INV_ram~224_q\ <= NOT \RAM1|ram~224_q\;
\RAM1|ALT_INV_ram~208_q\ <= NOT \RAM1|ram~208_q\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~168_q\ <= NOT \RAM1|ram~168_q\;
\RAM1|ALT_INV_ram~152_q\ <= NOT \RAM1|ram~152_q\;
\RAM1|ALT_INV_ram~160_q\ <= NOT \RAM1|ram~160_q\;
\RAM1|ALT_INV_ram~144_q\ <= NOT \RAM1|ram~144_q\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~104_q\ <= NOT \RAM1|ram~104_q\;
\RAM1|ALT_INV_ram~88_q\ <= NOT \RAM1|ram~88_q\;
\RAM1|ALT_INV_ram~96_q\ <= NOT \RAM1|ram~96_q\;
\RAM1|ALT_INV_ram~80_q\ <= NOT \RAM1|ram~80_q\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~40_q\ <= NOT \RAM1|ram~40_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\DECODER1|ALT_INV_enableSWVector~3_combout\ <= NOT \DECODER1|enableSWVector~3_combout\;
\CPU|Dec_Instruction|ALT_INV_sinais_controle[5]~4_combout\ <= NOT \CPU|Dec_Instruction|sinais_controle[5]~4_combout\;
\CPU|ULA|ALT_INV_saida[0]~0_combout\ <= NOT \CPU|ULA|saida[0]~0_combout\;
\CPU|Dec_Instruction|ALT_INV_sinais_controle~2_combout\ <= NOT \CPU|Dec_Instruction|sinais_controle~2_combout\;
\CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\ <= NOT \CPU|Dec_Instruction|sinais_controle~1_combout\;
\ROM1|ALT_INV_memROM~75_combout\ <= NOT \ROM1|memROM~75_combout\;
\CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\ <= NOT \CPU|Bloco_Reg|enableReg2~0_combout\;
\CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\ <= NOT \CPU|Bloco_Reg|enableReg1~0_combout\;
\ALT_INV_Data_In[0]~7_combout\ <= NOT \Data_In[0]~7_combout\;
\ALT_INV_Data_In[0]~6_combout\ <= NOT \Data_In[0]~6_combout\;
\ALT_INV_Data_In[0]~5_combout\ <= NOT \Data_In[0]~5_combout\;
\ALT_INV_Data_In[0]~4_combout\ <= NOT \Data_In[0]~4_combout\;
\ALT_INV_Data_In[0]~3_combout\ <= NOT \Data_In[0]~3_combout\;
\ALT_INV_Data_In[0]~2_combout\ <= NOT \Data_In[0]~2_combout\;
\ALT_INV_Data_In[0]~1_combout\ <= NOT \Data_In[0]~1_combout\;
\DECODER1|ALT_INV_enableSWVector~2_combout\ <= NOT \DECODER1|enableSWVector~2_combout\;
\DECODER1|ALT_INV_enableSWVector~1_combout\ <= NOT \DECODER1|enableSWVector~1_combout\;
\DECODER1|ALT_INV_enableSWVector~0_combout\ <= NOT \DECODER1|enableSWVector~0_combout\;
\ALT_INV_Data_In[0]~0_combout\ <= NOT \Data_In[0]~0_combout\;
\CPU|Dec_Instruction|ALT_INV_sinais_controle[1]~0_combout\ <= NOT \CPU|Dec_Instruction|sinais_controle[1]~0_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~519_q\ <= NOT \RAM1|ram~519_q\;
\RAM1|ALT_INV_ram~487_q\ <= NOT \RAM1|ram~487_q\;
\RAM1|ALT_INV_ram~455_q\ <= NOT \RAM1|ram~455_q\;
\RAM1|ALT_INV_ram~423_q\ <= NOT \RAM1|ram~423_q\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~391_q\ <= NOT \RAM1|ram~391_q\;
\RAM1|ALT_INV_ram~359_q\ <= NOT \RAM1|ram~359_q\;
\RAM1|ALT_INV_ram~327_q\ <= NOT \RAM1|ram~327_q\;
\RAM1|ALT_INV_ram~295_q\ <= NOT \RAM1|ram~295_q\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~511_q\ <= NOT \RAM1|ram~511_q\;
\RAM1|ALT_INV_ram~479_q\ <= NOT \RAM1|ram~479_q\;
\RAM1|ALT_INV_ram~447_q\ <= NOT \RAM1|ram~447_q\;
\RAM1|ALT_INV_ram~415_q\ <= NOT \RAM1|ram~415_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~35_q\ <= NOT \RAM1|ram~35_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\CPU|ULA|ALT_INV_saida[3]~6_combout\ <= NOT \CPU|ULA|saida[3]~6_combout\;
\RAM1|ALT_INV_ram~610_combout\ <= NOT \RAM1|ram~610_combout\;
\RAM1|ALT_INV_ram~609_combout\ <= NOT \RAM1|ram~609_combout\;
\RAM1|ALT_INV_ram~608_combout\ <= NOT \RAM1|ram~608_combout\;
\RAM1|ALT_INV_ram~522_q\ <= NOT \RAM1|ram~522_q\;
\RAM1|ALT_INV_ram~490_q\ <= NOT \RAM1|ram~490_q\;
\RAM1|ALT_INV_ram~458_q\ <= NOT \RAM1|ram~458_q\;
\RAM1|ALT_INV_ram~426_q\ <= NOT \RAM1|ram~426_q\;
\RAM1|ALT_INV_ram~607_combout\ <= NOT \RAM1|ram~607_combout\;
\RAM1|ALT_INV_ram~394_q\ <= NOT \RAM1|ram~394_q\;
\RAM1|ALT_INV_ram~362_q\ <= NOT \RAM1|ram~362_q\;
\RAM1|ALT_INV_ram~330_q\ <= NOT \RAM1|ram~330_q\;
\RAM1|ALT_INV_ram~298_q\ <= NOT \RAM1|ram~298_q\;
\RAM1|ALT_INV_ram~606_combout\ <= NOT \RAM1|ram~606_combout\;
\RAM1|ALT_INV_ram~514_q\ <= NOT \RAM1|ram~514_q\;
\RAM1|ALT_INV_ram~482_q\ <= NOT \RAM1|ram~482_q\;
\RAM1|ALT_INV_ram~450_q\ <= NOT \RAM1|ram~450_q\;
\RAM1|ALT_INV_ram~418_q\ <= NOT \RAM1|ram~418_q\;
\RAM1|ALT_INV_ram~605_combout\ <= NOT \RAM1|ram~605_combout\;
\RAM1|ALT_INV_ram~386_q\ <= NOT \RAM1|ram~386_q\;
\RAM1|ALT_INV_ram~354_q\ <= NOT \RAM1|ram~354_q\;
\RAM1|ALT_INV_ram~322_q\ <= NOT \RAM1|ram~322_q\;
\RAM1|ALT_INV_ram~290_q\ <= NOT \RAM1|ram~290_q\;
\RAM1|ALT_INV_ram~604_combout\ <= NOT \RAM1|ram~604_combout\;
\RAM1|ALT_INV_ram~603_combout\ <= NOT \RAM1|ram~603_combout\;
\RAM1|ALT_INV_ram~266_q\ <= NOT \RAM1|ram~266_q\;
\RAM1|ALT_INV_ram~234_q\ <= NOT \RAM1|ram~234_q\;
\RAM1|ALT_INV_ram~258_q\ <= NOT \RAM1|ram~258_q\;
\RAM1|ALT_INV_ram~226_q\ <= NOT \RAM1|ram~226_q\;
\RAM1|ALT_INV_ram~602_combout\ <= NOT \RAM1|ram~602_combout\;
\RAM1|ALT_INV_ram~202_q\ <= NOT \RAM1|ram~202_q\;
\RAM1|ALT_INV_ram~170_q\ <= NOT \RAM1|ram~170_q\;
\RAM1|ALT_INV_ram~194_q\ <= NOT \RAM1|ram~194_q\;
\RAM1|ALT_INV_ram~162_q\ <= NOT \RAM1|ram~162_q\;
\RAM1|ALT_INV_ram~601_combout\ <= NOT \RAM1|ram~601_combout\;
\RAM1|ALT_INV_ram~138_q\ <= NOT \RAM1|ram~138_q\;
\RAM1|ALT_INV_ram~106_q\ <= NOT \RAM1|ram~106_q\;
\RAM1|ALT_INV_ram~130_q\ <= NOT \RAM1|ram~130_q\;
\RAM1|ALT_INV_ram~98_q\ <= NOT \RAM1|ram~98_q\;
\RAM1|ALT_INV_ram~600_combout\ <= NOT \RAM1|ram~600_combout\;
\RAM1|ALT_INV_ram~74_q\ <= NOT \RAM1|ram~74_q\;
\RAM1|ALT_INV_ram~42_q\ <= NOT \RAM1|ram~42_q\;
\RAM1|ALT_INV_ram~66_q\ <= NOT \RAM1|ram~66_q\;
\RAM1|ALT_INV_ram~34_q\ <= NOT \RAM1|ram~34_q\;
\RAM1|ALT_INV_ram~599_combout\ <= NOT \RAM1|ram~599_combout\;
\RAM1|ALT_INV_ram~598_combout\ <= NOT \RAM1|ram~598_combout\;
\RAM1|ALT_INV_ram~506_q\ <= NOT \RAM1|ram~506_q\;
\RAM1|ALT_INV_ram~378_q\ <= NOT \RAM1|ram~378_q\;
\RAM1|ALT_INV_ram~498_q\ <= NOT \RAM1|ram~498_q\;
\RAM1|ALT_INV_ram~370_q\ <= NOT \RAM1|ram~370_q\;
\RAM1|ALT_INV_ram~597_combout\ <= NOT \RAM1|ram~597_combout\;
\RAM1|ALT_INV_ram~474_q\ <= NOT \RAM1|ram~474_q\;
\RAM1|ALT_INV_ram~346_q\ <= NOT \RAM1|ram~346_q\;
\RAM1|ALT_INV_ram~466_q\ <= NOT \RAM1|ram~466_q\;
\RAM1|ALT_INV_ram~338_q\ <= NOT \RAM1|ram~338_q\;
\RAM1|ALT_INV_ram~596_combout\ <= NOT \RAM1|ram~596_combout\;
\RAM1|ALT_INV_ram~442_q\ <= NOT \RAM1|ram~442_q\;
\RAM1|ALT_INV_ram~314_q\ <= NOT \RAM1|ram~314_q\;
\RAM1|ALT_INV_ram~434_q\ <= NOT \RAM1|ram~434_q\;
\RAM1|ALT_INV_ram~306_q\ <= NOT \RAM1|ram~306_q\;
\RAM1|ALT_INV_ram~595_combout\ <= NOT \RAM1|ram~595_combout\;
\RAM1|ALT_INV_ram~410_q\ <= NOT \RAM1|ram~410_q\;
\RAM1|ALT_INV_ram~282_q\ <= NOT \RAM1|ram~282_q\;
\RAM1|ALT_INV_ram~402_q\ <= NOT \RAM1|ram~402_q\;
\RAM1|ALT_INV_ram~274_q\ <= NOT \RAM1|ram~274_q\;
\RAM1|ALT_INV_ram~594_combout\ <= NOT \RAM1|ram~594_combout\;
\RAM1|ALT_INV_ram~593_combout\ <= NOT \RAM1|ram~593_combout\;
\RAM1|ALT_INV_ram~250_q\ <= NOT \RAM1|ram~250_q\;
\RAM1|ALT_INV_ram~186_q\ <= NOT \RAM1|ram~186_q\;
\RAM1|ALT_INV_ram~242_q\ <= NOT \RAM1|ram~242_q\;
\RAM1|ALT_INV_ram~178_q\ <= NOT \RAM1|ram~178_q\;
\RAM1|ALT_INV_ram~592_combout\ <= NOT \RAM1|ram~592_combout\;
\RAM1|ALT_INV_ram~218_q\ <= NOT \RAM1|ram~218_q\;
\RAM1|ALT_INV_ram~154_q\ <= NOT \RAM1|ram~154_q\;
\RAM1|ALT_INV_ram~210_q\ <= NOT \RAM1|ram~210_q\;
\RAM1|ALT_INV_ram~146_q\ <= NOT \RAM1|ram~146_q\;
\RAM1|ALT_INV_ram~591_combout\ <= NOT \RAM1|ram~591_combout\;
\RAM1|ALT_INV_ram~122_q\ <= NOT \RAM1|ram~122_q\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~114_q\ <= NOT \RAM1|ram~114_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~590_combout\ <= NOT \RAM1|ram~590_combout\;
\RAM1|ALT_INV_ram~90_q\ <= NOT \RAM1|ram~90_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~82_q\ <= NOT \RAM1|ram~82_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\CPU|ULA|ALT_INV_saida[2]~4_combout\ <= NOT \CPU|ULA|saida[2]~4_combout\;
\RAM1|ALT_INV_ram~589_combout\ <= NOT \RAM1|ram~589_combout\;
\RAM1|ALT_INV_ram~588_combout\ <= NOT \RAM1|ram~588_combout\;
\RAM1|ALT_INV_ram~587_combout\ <= NOT \RAM1|ram~587_combout\;
\RAM1|ALT_INV_ram~521_q\ <= NOT \RAM1|ram~521_q\;
\RAM1|ALT_INV_ram~489_q\ <= NOT \RAM1|ram~489_q\;
\RAM1|ALT_INV_ram~393_q\ <= NOT \RAM1|ram~393_q\;
\RAM1|ALT_INV_ram~361_q\ <= NOT \RAM1|ram~361_q\;
\RAM1|ALT_INV_ram~586_combout\ <= NOT \RAM1|ram~586_combout\;
\RAM1|ALT_INV_ram~457_q\ <= NOT \RAM1|ram~457_q\;
\RAM1|ALT_INV_ram~425_q\ <= NOT \RAM1|ram~425_q\;
\RAM1|ALT_INV_ram~329_q\ <= NOT \RAM1|ram~329_q\;
\RAM1|ALT_INV_ram~297_q\ <= NOT \RAM1|ram~297_q\;
\RAM1|ALT_INV_ram~585_combout\ <= NOT \RAM1|ram~585_combout\;
\RAM1|ALT_INV_ram~505_q\ <= NOT \RAM1|ram~505_q\;
\RAM1|ALT_INV_ram~473_q\ <= NOT \RAM1|ram~473_q\;
\RAM1|ALT_INV_ram~377_q\ <= NOT \RAM1|ram~377_q\;
\RAM1|ALT_INV_ram~345_q\ <= NOT \RAM1|ram~345_q\;
\RAM1|ALT_INV_ram~584_combout\ <= NOT \RAM1|ram~584_combout\;
\RAM1|ALT_INV_ram~441_q\ <= NOT \RAM1|ram~441_q\;
\RAM1|ALT_INV_ram~409_q\ <= NOT \RAM1|ram~409_q\;
\RAM1|ALT_INV_ram~313_q\ <= NOT \RAM1|ram~313_q\;
\RAM1|ALT_INV_ram~281_q\ <= NOT \RAM1|ram~281_q\;
\RAM1|ALT_INV_ram~583_combout\ <= NOT \RAM1|ram~583_combout\;
\RAM1|ALT_INV_ram~582_combout\ <= NOT \RAM1|ram~582_combout\;
\RAM1|ALT_INV_ram~265_q\ <= NOT \RAM1|ram~265_q\;
\RAM1|ALT_INV_ram~233_q\ <= NOT \RAM1|ram~233_q\;
\RAM1|ALT_INV_ram~137_q\ <= NOT \RAM1|ram~137_q\;
\RAM1|ALT_INV_ram~105_q\ <= NOT \RAM1|ram~105_q\;
\RAM1|ALT_INV_ram~581_combout\ <= NOT \RAM1|ram~581_combout\;
\RAM1|ALT_INV_ram~201_q\ <= NOT \RAM1|ram~201_q\;
\RAM1|ALT_INV_ram~169_q\ <= NOT \RAM1|ram~169_q\;
\RAM1|ALT_INV_ram~73_q\ <= NOT \RAM1|ram~73_q\;
\RAM1|ALT_INV_ram~41_q\ <= NOT \RAM1|ram~41_q\;
\RAM1|ALT_INV_ram~580_combout\ <= NOT \RAM1|ram~580_combout\;
\RAM1|ALT_INV_ram~249_q\ <= NOT \RAM1|ram~249_q\;
\RAM1|ALT_INV_ram~217_q\ <= NOT \RAM1|ram~217_q\;
\RAM1|ALT_INV_ram~121_q\ <= NOT \RAM1|ram~121_q\;
\RAM1|ALT_INV_ram~89_q\ <= NOT \RAM1|ram~89_q\;
\RAM1|ALT_INV_ram~579_combout\ <= NOT \RAM1|ram~579_combout\;
\RAM1|ALT_INV_ram~185_q\ <= NOT \RAM1|ram~185_q\;
\RAM1|ALT_INV_ram~153_q\ <= NOT \RAM1|ram~153_q\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~578_combout\ <= NOT \RAM1|ram~578_combout\;
\RAM1|ALT_INV_ram~577_combout\ <= NOT \RAM1|ram~577_combout\;
\RAM1|ALT_INV_ram~513_q\ <= NOT \RAM1|ram~513_q\;
\RAM1|ALT_INV_ram~449_q\ <= NOT \RAM1|ram~449_q\;
\RAM1|ALT_INV_ram~497_q\ <= NOT \RAM1|ram~497_q\;
\RAM1|ALT_INV_ram~433_q\ <= NOT \RAM1|ram~433_q\;
\RAM1|ALT_INV_ram~576_combout\ <= NOT \RAM1|ram~576_combout\;
\RAM1|ALT_INV_ram~481_q\ <= NOT \RAM1|ram~481_q\;
\RAM1|ALT_INV_ram~417_q\ <= NOT \RAM1|ram~417_q\;
\RAM1|ALT_INV_ram~465_q\ <= NOT \RAM1|ram~465_q\;
\RAM1|ALT_INV_ram~401_q\ <= NOT \RAM1|ram~401_q\;
\RAM1|ALT_INV_ram~575_combout\ <= NOT \RAM1|ram~575_combout\;
\RAM1|ALT_INV_ram~385_q\ <= NOT \RAM1|ram~385_q\;
\RAM1|ALT_INV_ram~321_q\ <= NOT \RAM1|ram~321_q\;
\RAM1|ALT_INV_ram~369_q\ <= NOT \RAM1|ram~369_q\;
\RAM1|ALT_INV_ram~305_q\ <= NOT \RAM1|ram~305_q\;
\RAM1|ALT_INV_ram~574_combout\ <= NOT \RAM1|ram~574_combout\;
\RAM1|ALT_INV_ram~353_q\ <= NOT \RAM1|ram~353_q\;
\RAM1|ALT_INV_ram~289_q\ <= NOT \RAM1|ram~289_q\;
\RAM1|ALT_INV_ram~337_q\ <= NOT \RAM1|ram~337_q\;
\RAM1|ALT_INV_ram~273_q\ <= NOT \RAM1|ram~273_q\;
\RAM1|ALT_INV_ram~573_combout\ <= NOT \RAM1|ram~573_combout\;
\RAM1|ALT_INV_ram~572_combout\ <= NOT \RAM1|ram~572_combout\;
\RAM1|ALT_INV_ram~257_q\ <= NOT \RAM1|ram~257_q\;
\RAM1|ALT_INV_ram~225_q\ <= NOT \RAM1|ram~225_q\;
\RAM1|ALT_INV_ram~649_combout\ <= NOT \RAM1|ram~649_combout\;
\RAM1|ALT_INV_ram~460_q\ <= NOT \RAM1|ram~460_q\;
\RAM1|ALT_INV_ram~428_q\ <= NOT \RAM1|ram~428_q\;
\RAM1|ALT_INV_ram~444_q\ <= NOT \RAM1|ram~444_q\;
\RAM1|ALT_INV_ram~412_q\ <= NOT \RAM1|ram~412_q\;
\RAM1|ALT_INV_ram~648_combout\ <= NOT \RAM1|ram~648_combout\;
\RAM1|ALT_INV_ram~396_q\ <= NOT \RAM1|ram~396_q\;
\RAM1|ALT_INV_ram~364_q\ <= NOT \RAM1|ram~364_q\;
\RAM1|ALT_INV_ram~380_q\ <= NOT \RAM1|ram~380_q\;
\RAM1|ALT_INV_ram~348_q\ <= NOT \RAM1|ram~348_q\;
\RAM1|ALT_INV_ram~647_combout\ <= NOT \RAM1|ram~647_combout\;
\RAM1|ALT_INV_ram~332_q\ <= NOT \RAM1|ram~332_q\;
\RAM1|ALT_INV_ram~300_q\ <= NOT \RAM1|ram~300_q\;
\RAM1|ALT_INV_ram~316_q\ <= NOT \RAM1|ram~316_q\;
\RAM1|ALT_INV_ram~284_q\ <= NOT \RAM1|ram~284_q\;
\RAM1|ALT_INV_ram~646_combout\ <= NOT \RAM1|ram~646_combout\;
\RAM1|ALT_INV_ram~645_combout\ <= NOT \RAM1|ram~645_combout\;
\RAM1|ALT_INV_ram~268_q\ <= NOT \RAM1|ram~268_q\;
\RAM1|ALT_INV_ram~236_q\ <= NOT \RAM1|ram~236_q\;
\RAM1|ALT_INV_ram~140_q\ <= NOT \RAM1|ram~140_q\;
\RAM1|ALT_INV_ram~108_q\ <= NOT \RAM1|ram~108_q\;
\RAM1|ALT_INV_ram~644_combout\ <= NOT \RAM1|ram~644_combout\;
\RAM1|ALT_INV_ram~204_q\ <= NOT \RAM1|ram~204_q\;
\RAM1|ALT_INV_ram~172_q\ <= NOT \RAM1|ram~172_q\;
\RAM1|ALT_INV_ram~76_q\ <= NOT \RAM1|ram~76_q\;
\RAM1|ALT_INV_ram~44_q\ <= NOT \RAM1|ram~44_q\;
\RAM1|ALT_INV_ram~643_combout\ <= NOT \RAM1|ram~643_combout\;
\RAM1|ALT_INV_ram~252_q\ <= NOT \RAM1|ram~252_q\;
\RAM1|ALT_INV_ram~220_q\ <= NOT \RAM1|ram~220_q\;
\RAM1|ALT_INV_ram~124_q\ <= NOT \RAM1|ram~124_q\;
\RAM1|ALT_INV_ram~92_q\ <= NOT \RAM1|ram~92_q\;
\RAM1|ALT_INV_ram~642_combout\ <= NOT \RAM1|ram~642_combout\;
\RAM1|ALT_INV_ram~188_q\ <= NOT \RAM1|ram~188_q\;
\RAM1|ALT_INV_ram~156_q\ <= NOT \RAM1|ram~156_q\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~641_combout\ <= NOT \RAM1|ram~641_combout\;
\RAM1|ALT_INV_ram~640_combout\ <= NOT \RAM1|ram~640_combout\;
\RAM1|ALT_INV_ram~516_q\ <= NOT \RAM1|ram~516_q\;
\RAM1|ALT_INV_ram~484_q\ <= NOT \RAM1|ram~484_q\;
\RAM1|ALT_INV_ram~452_q\ <= NOT \RAM1|ram~452_q\;
\RAM1|ALT_INV_ram~420_q\ <= NOT \RAM1|ram~420_q\;
\RAM1|ALT_INV_ram~639_combout\ <= NOT \RAM1|ram~639_combout\;
\RAM1|ALT_INV_ram~388_q\ <= NOT \RAM1|ram~388_q\;
\RAM1|ALT_INV_ram~356_q\ <= NOT \RAM1|ram~356_q\;
\RAM1|ALT_INV_ram~324_q\ <= NOT \RAM1|ram~324_q\;
\RAM1|ALT_INV_ram~292_q\ <= NOT \RAM1|ram~292_q\;
\RAM1|ALT_INV_ram~638_combout\ <= NOT \RAM1|ram~638_combout\;
\RAM1|ALT_INV_ram~500_q\ <= NOT \RAM1|ram~500_q\;
\RAM1|ALT_INV_ram~468_q\ <= NOT \RAM1|ram~468_q\;
\RAM1|ALT_INV_ram~436_q\ <= NOT \RAM1|ram~436_q\;
\RAM1|ALT_INV_ram~404_q\ <= NOT \RAM1|ram~404_q\;
\RAM1|ALT_INV_ram~637_combout\ <= NOT \RAM1|ram~637_combout\;
\RAM1|ALT_INV_ram~372_q\ <= NOT \RAM1|ram~372_q\;
\RAM1|ALT_INV_ram~340_q\ <= NOT \RAM1|ram~340_q\;
\RAM1|ALT_INV_ram~308_q\ <= NOT \RAM1|ram~308_q\;
\RAM1|ALT_INV_ram~276_q\ <= NOT \RAM1|ram~276_q\;
\RAM1|ALT_INV_ram~636_combout\ <= NOT \RAM1|ram~636_combout\;
\RAM1|ALT_INV_ram~635_combout\ <= NOT \RAM1|ram~635_combout\;
\RAM1|ALT_INV_ram~260_q\ <= NOT \RAM1|ram~260_q\;
\RAM1|ALT_INV_ram~228_q\ <= NOT \RAM1|ram~228_q\;
\RAM1|ALT_INV_ram~244_q\ <= NOT \RAM1|ram~244_q\;
\RAM1|ALT_INV_ram~212_q\ <= NOT \RAM1|ram~212_q\;
\RAM1|ALT_INV_ram~634_combout\ <= NOT \RAM1|ram~634_combout\;
\RAM1|ALT_INV_ram~196_q\ <= NOT \RAM1|ram~196_q\;
\RAM1|ALT_INV_ram~164_q\ <= NOT \RAM1|ram~164_q\;
\RAM1|ALT_INV_ram~180_q\ <= NOT \RAM1|ram~180_q\;
\RAM1|ALT_INV_ram~148_q\ <= NOT \RAM1|ram~148_q\;
\RAM1|ALT_INV_ram~633_combout\ <= NOT \RAM1|ram~633_combout\;
\RAM1|ALT_INV_ram~132_q\ <= NOT \RAM1|ram~132_q\;
\RAM1|ALT_INV_ram~100_q\ <= NOT \RAM1|ram~100_q\;
\RAM1|ALT_INV_ram~116_q\ <= NOT \RAM1|ram~116_q\;
\RAM1|ALT_INV_ram~84_q\ <= NOT \RAM1|ram~84_q\;
\RAM1|ALT_INV_ram~632_combout\ <= NOT \RAM1|ram~632_combout\;
\RAM1|ALT_INV_ram~68_q\ <= NOT \RAM1|ram~68_q\;
\RAM1|ALT_INV_ram~36_q\ <= NOT \RAM1|ram~36_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\CPU|ULA|ALT_INV_saida[4]~8_combout\ <= NOT \CPU|ULA|saida[4]~8_combout\;
\RAM1|ALT_INV_ram~631_combout\ <= NOT \RAM1|ram~631_combout\;
\RAM1|ALT_INV_ram~630_combout\ <= NOT \RAM1|ram~630_combout\;
\RAM1|ALT_INV_ram~629_combout\ <= NOT \RAM1|ram~629_combout\;
\RAM1|ALT_INV_ram~523_q\ <= NOT \RAM1|ram~523_q\;
\RAM1|ALT_INV_ram~507_q\ <= NOT \RAM1|ram~507_q\;
\RAM1|ALT_INV_ram~515_q\ <= NOT \RAM1|ram~515_q\;
\RAM1|ALT_INV_ram~499_q\ <= NOT \RAM1|ram~499_q\;
\RAM1|ALT_INV_ram~628_combout\ <= NOT \RAM1|ram~628_combout\;
\RAM1|ALT_INV_ram~395_q\ <= NOT \RAM1|ram~395_q\;
\RAM1|ALT_INV_ram~379_q\ <= NOT \RAM1|ram~379_q\;
\RAM1|ALT_INV_ram~387_q\ <= NOT \RAM1|ram~387_q\;
\RAM1|ALT_INV_ram~371_q\ <= NOT \RAM1|ram~371_q\;
\RAM1|ALT_INV_ram~627_combout\ <= NOT \RAM1|ram~627_combout\;
\RAM1|ALT_INV_ram~459_q\ <= NOT \RAM1|ram~459_q\;
\RAM1|ALT_INV_ram~443_q\ <= NOT \RAM1|ram~443_q\;
\RAM1|ALT_INV_ram~451_q\ <= NOT \RAM1|ram~451_q\;
\RAM1|ALT_INV_ram~435_q\ <= NOT \RAM1|ram~435_q\;
\RAM1|ALT_INV_ram~626_combout\ <= NOT \RAM1|ram~626_combout\;
\RAM1|ALT_INV_ram~331_q\ <= NOT \RAM1|ram~331_q\;
\RAM1|ALT_INV_ram~315_q\ <= NOT \RAM1|ram~315_q\;
\RAM1|ALT_INV_ram~323_q\ <= NOT \RAM1|ram~323_q\;
\RAM1|ALT_INV_ram~307_q\ <= NOT \RAM1|ram~307_q\;
\RAM1|ALT_INV_ram~625_combout\ <= NOT \RAM1|ram~625_combout\;
\RAM1|ALT_INV_ram~624_combout\ <= NOT \RAM1|ram~624_combout\;
\RAM1|ALT_INV_ram~267_q\ <= NOT \RAM1|ram~267_q\;
\RAM1|ALT_INV_ram~251_q\ <= NOT \RAM1|ram~251_q\;
\RAM1|ALT_INV_ram~203_q\ <= NOT \RAM1|ram~203_q\;
\RAM1|ALT_INV_ram~187_q\ <= NOT \RAM1|ram~187_q\;
\RAM1|ALT_INV_ram~623_combout\ <= NOT \RAM1|ram~623_combout\;
\RAM1|ALT_INV_ram~139_q\ <= NOT \RAM1|ram~139_q\;
\RAM1|ALT_INV_ram~123_q\ <= NOT \RAM1|ram~123_q\;
\RAM1|ALT_INV_ram~75_q\ <= NOT \RAM1|ram~75_q\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~622_combout\ <= NOT \RAM1|ram~622_combout\;
\RAM1|ALT_INV_ram~259_q\ <= NOT \RAM1|ram~259_q\;
\RAM1|ALT_INV_ram~243_q\ <= NOT \RAM1|ram~243_q\;
\RAM1|ALT_INV_ram~195_q\ <= NOT \RAM1|ram~195_q\;
\RAM1|ALT_INV_ram~179_q\ <= NOT \RAM1|ram~179_q\;
\RAM1|ALT_INV_ram~621_combout\ <= NOT \RAM1|ram~621_combout\;
\RAM1|ALT_INV_ram~131_q\ <= NOT \RAM1|ram~131_q\;
\RAM1|ALT_INV_ram~115_q\ <= NOT \RAM1|ram~115_q\;
\RAM1|ALT_INV_ram~67_q\ <= NOT \RAM1|ram~67_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~620_combout\ <= NOT \RAM1|ram~620_combout\;
\RAM1|ALT_INV_ram~619_combout\ <= NOT \RAM1|ram~619_combout\;
\RAM1|ALT_INV_ram~491_q\ <= NOT \RAM1|ram~491_q\;
\RAM1|ALT_INV_ram~475_q\ <= NOT \RAM1|ram~475_q\;
\RAM1|ALT_INV_ram~363_q\ <= NOT \RAM1|ram~363_q\;
\RAM1|ALT_INV_ram~347_q\ <= NOT \RAM1|ram~347_q\;
\RAM1|ALT_INV_ram~618_combout\ <= NOT \RAM1|ram~618_combout\;
\RAM1|ALT_INV_ram~427_q\ <= NOT \RAM1|ram~427_q\;
\RAM1|ALT_INV_ram~411_q\ <= NOT \RAM1|ram~411_q\;
\RAM1|ALT_INV_ram~299_q\ <= NOT \RAM1|ram~299_q\;
\RAM1|ALT_INV_ram~283_q\ <= NOT \RAM1|ram~283_q\;
\RAM1|ALT_INV_ram~617_combout\ <= NOT \RAM1|ram~617_combout\;
\RAM1|ALT_INV_ram~483_q\ <= NOT \RAM1|ram~483_q\;
\RAM1|ALT_INV_ram~467_q\ <= NOT \RAM1|ram~467_q\;
\RAM1|ALT_INV_ram~355_q\ <= NOT \RAM1|ram~355_q\;
\RAM1|ALT_INV_ram~339_q\ <= NOT \RAM1|ram~339_q\;
\RAM1|ALT_INV_ram~616_combout\ <= NOT \RAM1|ram~616_combout\;
\RAM1|ALT_INV_ram~419_q\ <= NOT \RAM1|ram~419_q\;
\RAM1|ALT_INV_ram~403_q\ <= NOT \RAM1|ram~403_q\;
\RAM1|ALT_INV_ram~291_q\ <= NOT \RAM1|ram~291_q\;
\RAM1|ALT_INV_ram~275_q\ <= NOT \RAM1|ram~275_q\;
\RAM1|ALT_INV_ram~615_combout\ <= NOT \RAM1|ram~615_combout\;
\RAM1|ALT_INV_ram~614_combout\ <= NOT \RAM1|ram~614_combout\;
\RAM1|ALT_INV_ram~235_q\ <= NOT \RAM1|ram~235_q\;
\RAM1|ALT_INV_ram~219_q\ <= NOT \RAM1|ram~219_q\;
\RAM1|ALT_INV_ram~227_q\ <= NOT \RAM1|ram~227_q\;
\RAM1|ALT_INV_ram~211_q\ <= NOT \RAM1|ram~211_q\;
\RAM1|ALT_INV_ram~613_combout\ <= NOT \RAM1|ram~613_combout\;
\RAM1|ALT_INV_ram~107_q\ <= NOT \RAM1|ram~107_q\;
\RAM1|ALT_INV_ram~91_q\ <= NOT \RAM1|ram~91_q\;
\RAM1|ALT_INV_ram~99_q\ <= NOT \RAM1|ram~99_q\;
\RAM1|ALT_INV_ram~83_q\ <= NOT \RAM1|ram~83_q\;
\RAM1|ALT_INV_ram~612_combout\ <= NOT \RAM1|ram~612_combout\;
\RAM1|ALT_INV_ram~171_q\ <= NOT \RAM1|ram~171_q\;
\RAM1|ALT_INV_ram~155_q\ <= NOT \RAM1|ram~155_q\;
\RAM1|ALT_INV_ram~163_q\ <= NOT \RAM1|ram~163_q\;
\RAM1|ALT_INV_ram~147_q\ <= NOT \RAM1|ram~147_q\;
\RAM1|ALT_INV_ram~611_combout\ <= NOT \RAM1|ram~611_combout\;
\RAM1|ALT_INV_ram~43_q\ <= NOT \RAM1|ram~43_q\;
\RAM1|ALT_INV_ram~390_q\ <= NOT \RAM1|ram~390_q\;
\RAM1|ALT_INV_ram~134_q\ <= NOT \RAM1|ram~134_q\;
\RAM1|ALT_INV_ram~326_q\ <= NOT \RAM1|ram~326_q\;
\RAM1|ALT_INV_ram~70_q\ <= NOT \RAM1|ram~70_q\;
\RAM1|ALT_INV_ram~688_combout\ <= NOT \RAM1|ram~688_combout\;
\RAM1|ALT_INV_ram~687_combout\ <= NOT \RAM1|ram~687_combout\;
\RAM1|ALT_INV_ram~494_q\ <= NOT \RAM1|ram~494_q\;
\RAM1|ALT_INV_ram~238_q\ <= NOT \RAM1|ram~238_q\;
\RAM1|ALT_INV_ram~430_q\ <= NOT \RAM1|ram~430_q\;
\RAM1|ALT_INV_ram~174_q\ <= NOT \RAM1|ram~174_q\;
\RAM1|ALT_INV_ram~686_combout\ <= NOT \RAM1|ram~686_combout\;
\RAM1|ALT_INV_ram~366_q\ <= NOT \RAM1|ram~366_q\;
\RAM1|ALT_INV_ram~110_q\ <= NOT \RAM1|ram~110_q\;
\RAM1|ALT_INV_ram~302_q\ <= NOT \RAM1|ram~302_q\;
\RAM1|ALT_INV_ram~46_q\ <= NOT \RAM1|ram~46_q\;
\RAM1|ALT_INV_ram~685_combout\ <= NOT \RAM1|ram~685_combout\;
\RAM1|ALT_INV_ram~486_q\ <= NOT \RAM1|ram~486_q\;
\RAM1|ALT_INV_ram~230_q\ <= NOT \RAM1|ram~230_q\;
\RAM1|ALT_INV_ram~422_q\ <= NOT \RAM1|ram~422_q\;
\RAM1|ALT_INV_ram~166_q\ <= NOT \RAM1|ram~166_q\;
\RAM1|ALT_INV_ram~684_combout\ <= NOT \RAM1|ram~684_combout\;
\RAM1|ALT_INV_ram~358_q\ <= NOT \RAM1|ram~358_q\;
\RAM1|ALT_INV_ram~102_q\ <= NOT \RAM1|ram~102_q\;
\RAM1|ALT_INV_ram~294_q\ <= NOT \RAM1|ram~294_q\;
\RAM1|ALT_INV_ram~38_q\ <= NOT \RAM1|ram~38_q\;
\RAM1|ALT_INV_ram~683_combout\ <= NOT \RAM1|ram~683_combout\;
\RAM1|ALT_INV_ram~682_combout\ <= NOT \RAM1|ram~682_combout\;
\RAM1|ALT_INV_ram~510_q\ <= NOT \RAM1|ram~510_q\;
\RAM1|ALT_INV_ram~254_q\ <= NOT \RAM1|ram~254_q\;
\RAM1|ALT_INV_ram~382_q\ <= NOT \RAM1|ram~382_q\;
\RAM1|ALT_INV_ram~126_q\ <= NOT \RAM1|ram~126_q\;
\RAM1|ALT_INV_ram~681_combout\ <= NOT \RAM1|ram~681_combout\;
\RAM1|ALT_INV_ram~446_q\ <= NOT \RAM1|ram~446_q\;
\RAM1|ALT_INV_ram~190_q\ <= NOT \RAM1|ram~190_q\;
\RAM1|ALT_INV_ram~318_q\ <= NOT \RAM1|ram~318_q\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~680_combout\ <= NOT \RAM1|ram~680_combout\;
\RAM1|ALT_INV_ram~502_q\ <= NOT \RAM1|ram~502_q\;
\RAM1|ALT_INV_ram~246_q\ <= NOT \RAM1|ram~246_q\;
\RAM1|ALT_INV_ram~374_q\ <= NOT \RAM1|ram~374_q\;
\RAM1|ALT_INV_ram~118_q\ <= NOT \RAM1|ram~118_q\;
\RAM1|ALT_INV_ram~679_combout\ <= NOT \RAM1|ram~679_combout\;
\RAM1|ALT_INV_ram~438_q\ <= NOT \RAM1|ram~438_q\;
\RAM1|ALT_INV_ram~182_q\ <= NOT \RAM1|ram~182_q\;
\RAM1|ALT_INV_ram~310_q\ <= NOT \RAM1|ram~310_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~678_combout\ <= NOT \RAM1|ram~678_combout\;
\RAM1|ALT_INV_ram~677_combout\ <= NOT \RAM1|ram~677_combout\;
\RAM1|ALT_INV_ram~478_q\ <= NOT \RAM1|ram~478_q\;
\RAM1|ALT_INV_ram~222_q\ <= NOT \RAM1|ram~222_q\;
\RAM1|ALT_INV_ram~350_q\ <= NOT \RAM1|ram~350_q\;
\RAM1|ALT_INV_ram~94_q\ <= NOT \RAM1|ram~94_q\;
\RAM1|ALT_INV_ram~676_combout\ <= NOT \RAM1|ram~676_combout\;
\RAM1|ALT_INV_ram~414_q\ <= NOT \RAM1|ram~414_q\;
\RAM1|ALT_INV_ram~158_q\ <= NOT \RAM1|ram~158_q\;
\RAM1|ALT_INV_ram~286_q\ <= NOT \RAM1|ram~286_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~675_combout\ <= NOT \RAM1|ram~675_combout\;
\RAM1|ALT_INV_ram~470_q\ <= NOT \RAM1|ram~470_q\;
\RAM1|ALT_INV_ram~214_q\ <= NOT \RAM1|ram~214_q\;
\RAM1|ALT_INV_ram~342_q\ <= NOT \RAM1|ram~342_q\;
\RAM1|ALT_INV_ram~86_q\ <= NOT \RAM1|ram~86_q\;
\RAM1|ALT_INV_ram~674_combout\ <= NOT \RAM1|ram~674_combout\;
\RAM1|ALT_INV_ram~406_q\ <= NOT \RAM1|ram~406_q\;
\RAM1|ALT_INV_ram~150_q\ <= NOT \RAM1|ram~150_q\;
\RAM1|ALT_INV_ram~278_q\ <= NOT \RAM1|ram~278_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\CPU|ULA|ALT_INV_saida[6]~12_combout\ <= NOT \CPU|ULA|saida[6]~12_combout\;
\RAM1|ALT_INV_ram~673_combout\ <= NOT \RAM1|ram~673_combout\;
\RAM1|ALT_INV_ram~672_combout\ <= NOT \RAM1|ram~672_combout\;
\RAM1|ALT_INV_ram~671_combout\ <= NOT \RAM1|ram~671_combout\;
\RAM1|ALT_INV_ram~525_q\ <= NOT \RAM1|ram~525_q\;
\RAM1|ALT_INV_ram~269_q\ <= NOT \RAM1|ram~269_q\;
\RAM1|ALT_INV_ram~509_q\ <= NOT \RAM1|ram~509_q\;
\RAM1|ALT_INV_ram~253_q\ <= NOT \RAM1|ram~253_q\;
\RAM1|ALT_INV_ram~670_combout\ <= NOT \RAM1|ram~670_combout\;
\RAM1|ALT_INV_ram~493_q\ <= NOT \RAM1|ram~493_q\;
\RAM1|ALT_INV_ram~237_q\ <= NOT \RAM1|ram~237_q\;
\RAM1|ALT_INV_ram~477_q\ <= NOT \RAM1|ram~477_q\;
\RAM1|ALT_INV_ram~221_q\ <= NOT \RAM1|ram~221_q\;
\RAM1|ALT_INV_ram~669_combout\ <= NOT \RAM1|ram~669_combout\;
\RAM1|ALT_INV_ram~517_q\ <= NOT \RAM1|ram~517_q\;
\RAM1|ALT_INV_ram~261_q\ <= NOT \RAM1|ram~261_q\;
\RAM1|ALT_INV_ram~501_q\ <= NOT \RAM1|ram~501_q\;
\RAM1|ALT_INV_ram~245_q\ <= NOT \RAM1|ram~245_q\;
\RAM1|ALT_INV_ram~668_combout\ <= NOT \RAM1|ram~668_combout\;
\RAM1|ALT_INV_ram~485_q\ <= NOT \RAM1|ram~485_q\;
\RAM1|ALT_INV_ram~229_q\ <= NOT \RAM1|ram~229_q\;
\RAM1|ALT_INV_ram~469_q\ <= NOT \RAM1|ram~469_q\;
\RAM1|ALT_INV_ram~213_q\ <= NOT \RAM1|ram~213_q\;
\RAM1|ALT_INV_ram~667_combout\ <= NOT \RAM1|ram~667_combout\;
\RAM1|ALT_INV_ram~666_combout\ <= NOT \RAM1|ram~666_combout\;
\RAM1|ALT_INV_ram~397_q\ <= NOT \RAM1|ram~397_q\;
\RAM1|ALT_INV_ram~141_q\ <= NOT \RAM1|ram~141_q\;
\RAM1|ALT_INV_ram~389_q\ <= NOT \RAM1|ram~389_q\;
\RAM1|ALT_INV_ram~133_q\ <= NOT \RAM1|ram~133_q\;
\RAM1|ALT_INV_ram~665_combout\ <= NOT \RAM1|ram~665_combout\;
\RAM1|ALT_INV_ram~365_q\ <= NOT \RAM1|ram~365_q\;
\RAM1|ALT_INV_ram~109_q\ <= NOT \RAM1|ram~109_q\;
\RAM1|ALT_INV_ram~357_q\ <= NOT \RAM1|ram~357_q\;
\RAM1|ALT_INV_ram~101_q\ <= NOT \RAM1|ram~101_q\;
\RAM1|ALT_INV_ram~664_combout\ <= NOT \RAM1|ram~664_combout\;
\RAM1|ALT_INV_ram~381_q\ <= NOT \RAM1|ram~381_q\;
\RAM1|ALT_INV_ram~125_q\ <= NOT \RAM1|ram~125_q\;
\RAM1|ALT_INV_ram~373_q\ <= NOT \RAM1|ram~373_q\;
\RAM1|ALT_INV_ram~117_q\ <= NOT \RAM1|ram~117_q\;
\RAM1|ALT_INV_ram~663_combout\ <= NOT \RAM1|ram~663_combout\;
\RAM1|ALT_INV_ram~349_q\ <= NOT \RAM1|ram~349_q\;
\RAM1|ALT_INV_ram~93_q\ <= NOT \RAM1|ram~93_q\;
\RAM1|ALT_INV_ram~341_q\ <= NOT \RAM1|ram~341_q\;
\RAM1|ALT_INV_ram~85_q\ <= NOT \RAM1|ram~85_q\;
\RAM1|ALT_INV_ram~662_combout\ <= NOT \RAM1|ram~662_combout\;
\RAM1|ALT_INV_ram~661_combout\ <= NOT \RAM1|ram~661_combout\;
\RAM1|ALT_INV_ram~461_q\ <= NOT \RAM1|ram~461_q\;
\RAM1|ALT_INV_ram~205_q\ <= NOT \RAM1|ram~205_q\;
\RAM1|ALT_INV_ram~453_q\ <= NOT \RAM1|ram~453_q\;
\RAM1|ALT_INV_ram~197_q\ <= NOT \RAM1|ram~197_q\;
\RAM1|ALT_INV_ram~660_combout\ <= NOT \RAM1|ram~660_combout\;
\RAM1|ALT_INV_ram~429_q\ <= NOT \RAM1|ram~429_q\;
\RAM1|ALT_INV_ram~173_q\ <= NOT \RAM1|ram~173_q\;
\RAM1|ALT_INV_ram~421_q\ <= NOT \RAM1|ram~421_q\;
\RAM1|ALT_INV_ram~165_q\ <= NOT \RAM1|ram~165_q\;
\RAM1|ALT_INV_ram~659_combout\ <= NOT \RAM1|ram~659_combout\;
\RAM1|ALT_INV_ram~445_q\ <= NOT \RAM1|ram~445_q\;
\RAM1|ALT_INV_ram~189_q\ <= NOT \RAM1|ram~189_q\;
\RAM1|ALT_INV_ram~437_q\ <= NOT \RAM1|ram~437_q\;
\RAM1|ALT_INV_ram~181_q\ <= NOT \RAM1|ram~181_q\;
\RAM1|ALT_INV_ram~658_combout\ <= NOT \RAM1|ram~658_combout\;
\RAM1|ALT_INV_ram~413_q\ <= NOT \RAM1|ram~413_q\;
\RAM1|ALT_INV_ram~157_q\ <= NOT \RAM1|ram~157_q\;
\RAM1|ALT_INV_ram~405_q\ <= NOT \RAM1|ram~405_q\;
\RAM1|ALT_INV_ram~149_q\ <= NOT \RAM1|ram~149_q\;
\RAM1|ALT_INV_ram~657_combout\ <= NOT \RAM1|ram~657_combout\;
\RAM1|ALT_INV_ram~656_combout\ <= NOT \RAM1|ram~656_combout\;
\RAM1|ALT_INV_ram~333_q\ <= NOT \RAM1|ram~333_q\;
\RAM1|ALT_INV_ram~77_q\ <= NOT \RAM1|ram~77_q\;
\RAM1|ALT_INV_ram~325_q\ <= NOT \RAM1|ram~325_q\;
\RAM1|ALT_INV_ram~69_q\ <= NOT \RAM1|ram~69_q\;
\RAM1|ALT_INV_ram~655_combout\ <= NOT \RAM1|ram~655_combout\;
\RAM1|ALT_INV_ram~301_q\ <= NOT \RAM1|ram~301_q\;
\RAM1|ALT_INV_ram~45_q\ <= NOT \RAM1|ram~45_q\;
\RAM1|ALT_INV_ram~293_q\ <= NOT \RAM1|ram~293_q\;
\RAM1|ALT_INV_ram~37_q\ <= NOT \RAM1|ram~37_q\;
\RAM1|ALT_INV_ram~654_combout\ <= NOT \RAM1|ram~654_combout\;
\RAM1|ALT_INV_ram~317_q\ <= NOT \RAM1|ram~317_q\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~309_q\ <= NOT \RAM1|ram~309_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~653_combout\ <= NOT \RAM1|ram~653_combout\;
\RAM1|ALT_INV_ram~285_q\ <= NOT \RAM1|ram~285_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~277_q\ <= NOT \RAM1|ram~277_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\CPU|ULA|ALT_INV_saida[5]~10_combout\ <= NOT \CPU|ULA|saida[5]~10_combout\;
\RAM1|ALT_INV_ram~652_combout\ <= NOT \RAM1|ram~652_combout\;
\RAM1|ALT_INV_ram~651_combout\ <= NOT \RAM1|ram~651_combout\;
\RAM1|ALT_INV_ram~650_combout\ <= NOT \RAM1|ram~650_combout\;
\RAM1|ALT_INV_ram~524_q\ <= NOT \RAM1|ram~524_q\;
\RAM1|ALT_INV_ram~492_q\ <= NOT \RAM1|ram~492_q\;
\RAM1|ALT_INV_ram~508_q\ <= NOT \RAM1|ram~508_q\;
\RAM1|ALT_INV_ram~476_q\ <= NOT \RAM1|ram~476_q\;
\RAM1|ALT_INV_ram~769_combout\ <= NOT \RAM1|ram~769_combout\;
\RAM1|ALT_INV_ram~767_combout\ <= NOT \RAM1|ram~767_combout\;
\RAM1|ALT_INV_ram~765_combout\ <= NOT \RAM1|ram~765_combout\;
\RAM1|ALT_INV_ram~763_combout\ <= NOT \RAM1|ram~763_combout\;
\RAM1|ALT_INV_ram~761_combout\ <= NOT \RAM1|ram~761_combout\;
\RAM1|ALT_INV_ram~759_combout\ <= NOT \RAM1|ram~759_combout\;
\RAM1|ALT_INV_ram~757_combout\ <= NOT \RAM1|ram~757_combout\;
\RAM1|ALT_INV_ram~755_combout\ <= NOT \RAM1|ram~755_combout\;
\RAM1|ALT_INV_ram~753_combout\ <= NOT \RAM1|ram~753_combout\;
\RAM1|ALT_INV_ram~751_combout\ <= NOT \RAM1|ram~751_combout\;
\RAM1|ALT_INV_ram~749_combout\ <= NOT \RAM1|ram~749_combout\;
\RAM1|ALT_INV_ram~747_combout\ <= NOT \RAM1|ram~747_combout\;
\RAM1|ALT_INV_ram~745_combout\ <= NOT \RAM1|ram~745_combout\;
\RAM1|ALT_INV_ram~743_combout\ <= NOT \RAM1|ram~743_combout\;
\RAM1|ALT_INV_ram~741_combout\ <= NOT \RAM1|ram~741_combout\;
\RAM1|ALT_INV_ram~739_combout\ <= NOT \RAM1|ram~739_combout\;
\RAM1|ALT_INV_ram~737_combout\ <= NOT \RAM1|ram~737_combout\;
\RAM1|ALT_INV_ram~735_combout\ <= NOT \RAM1|ram~735_combout\;
\RAM1|ALT_INV_ram~733_combout\ <= NOT \RAM1|ram~733_combout\;
\RAM1|ALT_INV_ram~731_combout\ <= NOT \RAM1|ram~731_combout\;
\RAM1|ALT_INV_ram~729_combout\ <= NOT \RAM1|ram~729_combout\;
\RAM1|ALT_INV_ram~727_combout\ <= NOT \RAM1|ram~727_combout\;
\RAM1|ALT_INV_ram~725_combout\ <= NOT \RAM1|ram~725_combout\;
\RAM1|ALT_INV_ram~723_combout\ <= NOT \RAM1|ram~723_combout\;
\RAM1|ALT_INV_ram~721_combout\ <= NOT \RAM1|ram~721_combout\;
\RAM1|ALT_INV_ram~719_combout\ <= NOT \RAM1|ram~719_combout\;
\RAM1|ALT_INV_ram~717_combout\ <= NOT \RAM1|ram~717_combout\;
\RAM1|ALT_INV_ram~715_combout\ <= NOT \RAM1|ram~715_combout\;
\RAM1|ALT_INV_ram~713_combout\ <= NOT \RAM1|ram~713_combout\;
\RAM1|ALT_INV_ram~711_combout\ <= NOT \RAM1|ram~711_combout\;
\RAM1|ALT_INV_ram~709_combout\ <= NOT \RAM1|ram~709_combout\;
\RAM1|ALT_INV_ram~707_combout\ <= NOT \RAM1|ram~707_combout\;
\RAM1|ALT_INV_ram~705_combout\ <= NOT \RAM1|ram~705_combout\;
\RAM1|ALT_INV_ram~703_combout\ <= NOT \RAM1|ram~703_combout\;
\RAM1|ALT_INV_ram~701_combout\ <= NOT \RAM1|ram~701_combout\;
\RAM1|ALT_INV_ram~699_combout\ <= NOT \RAM1|ram~699_combout\;
\RAM1|ALT_INV_ram~697_combout\ <= NOT \RAM1|ram~697_combout\;
\RAM1|ALT_INV_process_0~1_combout\ <= NOT \RAM1|process_0~1_combout\;
\RAM1|ALT_INV_ram~695_combout\ <= NOT \RAM1|ram~695_combout\;
\CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\ <= NOT \CPU|Dec_Instruction|sinais_controle[4]~6_combout\;
\CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\ <= NOT \CPU|Dec_Instruction|Equal12~1_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[7]~3_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[7]~3_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[6]~2_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[6]~2_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[1]~1_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[0]~0_combout\;
\ALT_INV_Data_In[0]~9_combout\ <= NOT \Data_In[0]~9_combout\;
\ALT_INV_Data_In[0]~8_combout\ <= NOT \Data_In[0]~8_combout\;
\CPU|Flag_Equal|ALT_INV_DOUT~2_combout\ <= NOT \CPU|Flag_Equal|DOUT~2_combout\;
\CPU|Flag_Equal|ALT_INV_DOUT~1_combout\ <= NOT \CPU|Flag_Equal|DOUT~1_combout\;
\CPU|Flag_Equal|ALT_INV_DOUT~0_combout\ <= NOT \CPU|Flag_Equal|DOUT~0_combout\;
\CPU|ULA|ALT_INV_saida[7]~14_combout\ <= NOT \CPU|ULA|saida[7]~14_combout\;
\RAM1|ALT_INV_ram~694_combout\ <= NOT \RAM1|ram~694_combout\;
\RAM1|ALT_INV_ram~693_combout\ <= NOT \RAM1|ram~693_combout\;
\RAM1|ALT_INV_ram~692_combout\ <= NOT \RAM1|ram~692_combout\;
\RAM1|ALT_INV_ram~526_q\ <= NOT \RAM1|ram~526_q\;
\RAM1|ALT_INV_ram~270_q\ <= NOT \RAM1|ram~270_q\;
\RAM1|ALT_INV_ram~462_q\ <= NOT \RAM1|ram~462_q\;
\RAM1|ALT_INV_ram~206_q\ <= NOT \RAM1|ram~206_q\;
\RAM1|ALT_INV_ram~691_combout\ <= NOT \RAM1|ram~691_combout\;
\RAM1|ALT_INV_ram~398_q\ <= NOT \RAM1|ram~398_q\;
\RAM1|ALT_INV_ram~142_q\ <= NOT \RAM1|ram~142_q\;
\RAM1|ALT_INV_ram~334_q\ <= NOT \RAM1|ram~334_q\;
\RAM1|ALT_INV_ram~78_q\ <= NOT \RAM1|ram~78_q\;
\RAM1|ALT_INV_ram~690_combout\ <= NOT \RAM1|ram~690_combout\;
\RAM1|ALT_INV_ram~518_q\ <= NOT \RAM1|ram~518_q\;
\RAM1|ALT_INV_ram~262_q\ <= NOT \RAM1|ram~262_q\;
\RAM1|ALT_INV_ram~454_q\ <= NOT \RAM1|ram~454_q\;
\RAM1|ALT_INV_ram~198_q\ <= NOT \RAM1|ram~198_q\;
\RAM1|ALT_INV_ram~689_combout\ <= NOT \RAM1|ram~689_combout\;
\ROM1|ALT_INV_memROM~98_combout\ <= NOT \ROM1|memROM~98_combout\;
\ROM1|ALT_INV_memROM~93_combout\ <= NOT \ROM1|memROM~93_combout\;
\ROM1|ALT_INV_memROM~84_combout\ <= NOT \ROM1|memROM~84_combout\;
\CPU|ULA|ALT_INV_Equal3~0_combout\ <= NOT \CPU|ULA|Equal3~0_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[5]~7_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[5]~7_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[4]~6_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[4]~6_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[3]~5_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[3]~5_combout\;
\CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[2]~4_combout\ <= NOT \CPU|Mux_EntradaB_ULA|saida_MUX[2]~4_combout\;
\RAM1|ALT_INV_ram~821_combout\ <= NOT \RAM1|ram~821_combout\;
\RAM1|ALT_INV_ram~819_combout\ <= NOT \RAM1|ram~819_combout\;
\RAM1|ALT_INV_ram~817_combout\ <= NOT \RAM1|ram~817_combout\;
\RAM1|ALT_INV_ram~815_combout\ <= NOT \RAM1|ram~815_combout\;
\RAM1|ALT_INV_ram~813_combout\ <= NOT \RAM1|ram~813_combout\;
\RAM1|ALT_INV_ram~811_combout\ <= NOT \RAM1|ram~811_combout\;
\RAM1|ALT_INV_ram~809_combout\ <= NOT \RAM1|ram~809_combout\;
\RAM1|ALT_INV_ram~807_combout\ <= NOT \RAM1|ram~807_combout\;
\RAM1|ALT_INV_ram~805_combout\ <= NOT \RAM1|ram~805_combout\;
\RAM1|ALT_INV_ram~803_combout\ <= NOT \RAM1|ram~803_combout\;
\RAM1|ALT_INV_ram~801_combout\ <= NOT \RAM1|ram~801_combout\;
\RAM1|ALT_INV_ram~799_combout\ <= NOT \RAM1|ram~799_combout\;
\RAM1|ALT_INV_ram~797_combout\ <= NOT \RAM1|ram~797_combout\;
\RAM1|ALT_INV_ram~795_combout\ <= NOT \RAM1|ram~795_combout\;
\RAM1|ALT_INV_ram~793_combout\ <= NOT \RAM1|ram~793_combout\;
\RAM1|ALT_INV_ram~791_combout\ <= NOT \RAM1|ram~791_combout\;
\RAM1|ALT_INV_ram~789_combout\ <= NOT \RAM1|ram~789_combout\;
\RAM1|ALT_INV_ram~787_combout\ <= NOT \RAM1|ram~787_combout\;
\RAM1|ALT_INV_ram~785_combout\ <= NOT \RAM1|ram~785_combout\;
\RAM1|ALT_INV_ram~783_combout\ <= NOT \RAM1|ram~783_combout\;
\RAM1|ALT_INV_ram~781_combout\ <= NOT \RAM1|ram~781_combout\;
\RAM1|ALT_INV_ram~779_combout\ <= NOT \RAM1|ram~779_combout\;
\RAM1|ALT_INV_ram~777_combout\ <= NOT \RAM1|ram~777_combout\;
\RAM1|ALT_INV_ram~775_combout\ <= NOT \RAM1|ram~775_combout\;
\RAM1|ALT_INV_ram~773_combout\ <= NOT \RAM1|ram~773_combout\;
\RAM1|ALT_INV_ram~771_combout\ <= NOT \RAM1|ram~771_combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\RAM1|ALT_INV_ram~383_q\ <= NOT \RAM1|ram~383_q\;
\RAM1|ALT_INV_ram~351_q\ <= NOT \RAM1|ram~351_q\;
\RAM1|ALT_INV_ram~319_q\ <= NOT \RAM1|ram~319_q\;
\RAM1|ALT_INV_ram~287_q\ <= NOT \RAM1|ram~287_q\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~503_q\ <= NOT \RAM1|ram~503_q\;
\RAM1|ALT_INV_ram~375_q\ <= NOT \RAM1|ram~375_q\;
\RAM1|ALT_INV_ram~495_q\ <= NOT \RAM1|ram~495_q\;
\RAM1|ALT_INV_ram~367_q\ <= NOT \RAM1|ram~367_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~471_q\ <= NOT \RAM1|ram~471_q\;
\RAM1|ALT_INV_ram~343_q\ <= NOT \RAM1|ram~343_q\;
\RAM1|ALT_INV_ram~463_q\ <= NOT \RAM1|ram~463_q\;
\RAM1|ALT_INV_ram~335_q\ <= NOT \RAM1|ram~335_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~439_q\ <= NOT \RAM1|ram~439_q\;
\RAM1|ALT_INV_ram~311_q\ <= NOT \RAM1|ram~311_q\;
\RAM1|ALT_INV_ram~431_q\ <= NOT \RAM1|ram~431_q\;
\RAM1|ALT_INV_ram~303_q\ <= NOT \RAM1|ram~303_q\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~407_q\ <= NOT \RAM1|ram~407_q\;
\RAM1|ALT_INV_ram~279_q\ <= NOT \RAM1|ram~279_q\;
\RAM1|ALT_INV_ram~399_q\ <= NOT \RAM1|ram~399_q\;
\RAM1|ALT_INV_ram~271_q\ <= NOT \RAM1|ram~271_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~263_q\ <= NOT \RAM1|ram~263_q\;
\RAM1|ALT_INV_ram~231_q\ <= NOT \RAM1|ram~231_q\;
\RAM1|ALT_INV_ram~199_q\ <= NOT \RAM1|ram~199_q\;
\RAM1|ALT_INV_ram~167_q\ <= NOT \RAM1|ram~167_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~135_q\ <= NOT \RAM1|ram~135_q\;
\RAM1|ALT_INV_ram~103_q\ <= NOT \RAM1|ram~103_q\;
\RAM1|ALT_INV_ram~71_q\ <= NOT \RAM1|ram~71_q\;
\RAM1|ALT_INV_ram~39_q\ <= NOT \RAM1|ram~39_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~255_q\ <= NOT \RAM1|ram~255_q\;
\RAM1|ALT_INV_ram~223_q\ <= NOT \RAM1|ram~223_q\;
\RAM1|ALT_INV_ram~191_q\ <= NOT \RAM1|ram~191_q\;
\RAM1|ALT_INV_ram~159_q\ <= NOT \RAM1|ram~159_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~127_q\ <= NOT \RAM1|ram~127_q\;
\RAM1|ALT_INV_ram~95_q\ <= NOT \RAM1|ram~95_q\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~247_q\ <= NOT \RAM1|ram~247_q\;
\RAM1|ALT_INV_ram~215_q\ <= NOT \RAM1|ram~215_q\;
\RAM1|ALT_INV_ram~119_q\ <= NOT \RAM1|ram~119_q\;
\RAM1|ALT_INV_ram~87_q\ <= NOT \RAM1|ram~87_q\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~183_q\ <= NOT \RAM1|ram~183_q\;
\RAM1|ALT_INV_ram~151_q\ <= NOT \RAM1|ram~151_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~239_q\ <= NOT \RAM1|ram~239_q\;
\RAM1|ALT_INV_ram~207_q\ <= NOT \RAM1|ram~207_q\;
\RAM1|ALT_INV_ram~111_q\ <= NOT \RAM1|ram~111_q\;
\RAM1|ALT_INV_ram~79_q\ <= NOT \RAM1|ram~79_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~175_q\ <= NOT \RAM1|ram~175_q\;
\RAM1|ALT_INV_ram~143_q\ <= NOT \RAM1|ram~143_q\;
\RAM1|ALT_INV_ram~47_q\ <= NOT \RAM1|ram~47_q\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\ <= NOT \CPU|Dec_Instruction|Equal12~0_combout\;
\CPU|Reg_Retorno|ALT_INV_DOUT\(8) <= NOT \CPU|Reg_Retorno|DOUT\(8);
\CPU|Reg_Retorno|ALT_INV_DOUT\(7) <= NOT \CPU|Reg_Retorno|DOUT\(7);
\ROM1|ALT_INV_memROM~74_combout\ <= NOT \ROM1|memROM~74_combout\;
\CPU|Reg_Retorno|ALT_INV_DOUT\(6) <= NOT \CPU|Reg_Retorno|DOUT\(6);
\ROM1|ALT_INV_memROM~73_combout\ <= NOT \ROM1|memROM~73_combout\;
\CPU|Reg_Retorno|ALT_INV_DOUT\(5) <= NOT \CPU|Reg_Retorno|DOUT\(5);
\CPU|Reg_Retorno|ALT_INV_DOUT\(4) <= NOT \CPU|Reg_Retorno|DOUT\(4);
\ROM1|ALT_INV_memROM~72_combout\ <= NOT \ROM1|memROM~72_combout\;
\ROM1|ALT_INV_memROM~71_combout\ <= NOT \ROM1|memROM~71_combout\;
\ROM1|ALT_INV_memROM~70_combout\ <= NOT \ROM1|memROM~70_combout\;
\ROM1|ALT_INV_memROM~69_combout\ <= NOT \ROM1|memROM~69_combout\;
\CPU|Reg_Retorno|ALT_INV_DOUT\(3) <= NOT \CPU|Reg_Retorno|DOUT\(3);
\ROM1|ALT_INV_memROM~68_combout\ <= NOT \ROM1|memROM~68_combout\;
\ROM1|ALT_INV_memROM~67_combout\ <= NOT \ROM1|memROM~67_combout\;
\ROM1|ALT_INV_memROM~66_combout\ <= NOT \ROM1|memROM~66_combout\;
\ROM1|ALT_INV_memROM~65_combout\ <= NOT \ROM1|memROM~65_combout\;
\CPU|Reg_Retorno|ALT_INV_DOUT\(2) <= NOT \CPU|Reg_Retorno|DOUT\(2);
\CPU|Reg_Retorno|ALT_INV_DOUT\(1) <= NOT \CPU|Reg_Retorno|DOUT\(1);
\CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\ <= NOT \CPU|Mux_Prox_PC|Equal0~0_combout\;
\ROM1|ALT_INV_memROM~64_combout\ <= NOT \ROM1|memROM~64_combout\;
\CPU|Reg_Retorno|ALT_INV_DOUT\(0) <= NOT \CPU|Reg_Retorno|DOUT\(0);
\CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\ <= NOT \CPU|Mux_Prox_PC|Equal1~0_combout\;
\CPU|Flag_Equal|ALT_INV_DOUT~q\ <= NOT \CPU|Flag_Equal|DOUT~q\;
\DECODER1|ALT_INV_enableHEX0~1_combout\ <= NOT \DECODER1|enableHEX0~1_combout\;
\ROM1|ALT_INV_memROM~63_combout\ <= NOT \ROM1|memROM~63_combout\;
\ROM1|ALT_INV_memROM~62_combout\ <= NOT \ROM1|memROM~62_combout\;
\ROM1|ALT_INV_memROM~61_combout\ <= NOT \ROM1|memROM~61_combout\;
\ROM1|ALT_INV_memROM~60_combout\ <= NOT \ROM1|memROM~60_combout\;
\ROM1|ALT_INV_memROM~59_combout\ <= NOT \ROM1|memROM~59_combout\;
\ROM1|ALT_INV_memROM~58_combout\ <= NOT \ROM1|memROM~58_combout\;
\ROM1|ALT_INV_memROM~57_combout\ <= NOT \ROM1|memROM~57_combout\;
\ROM1|ALT_INV_memROM~56_combout\ <= NOT \ROM1|memROM~56_combout\;
\ROM1|ALT_INV_memROM~55_combout\ <= NOT \ROM1|memROM~55_combout\;
\ROM1|ALT_INV_memROM~54_combout\ <= NOT \ROM1|memROM~54_combout\;
\ROM1|ALT_INV_memROM~53_combout\ <= NOT \ROM1|memROM~53_combout\;
\DECODER1|ALT_INV_enableHEX0~0_combout\ <= NOT \DECODER1|enableHEX0~0_combout\;
\ROM1|ALT_INV_memROM~52_combout\ <= NOT \ROM1|memROM~52_combout\;
\ROM1|ALT_INV_memROM~51_combout\ <= NOT \ROM1|memROM~51_combout\;
\ROM1|ALT_INV_memROM~50_combout\ <= NOT \ROM1|memROM~50_combout\;
\ROM1|ALT_INV_memROM~49_combout\ <= NOT \ROM1|memROM~49_combout\;
\ROM1|ALT_INV_memROM~48_combout\ <= NOT \ROM1|memROM~48_combout\;
\ROM1|ALT_INV_memROM~47_combout\ <= NOT \ROM1|memROM~47_combout\;
\ROM1|ALT_INV_memROM~46_combout\ <= NOT \ROM1|memROM~46_combout\;
\ROM1|ALT_INV_memROM~45_combout\ <= NOT \ROM1|memROM~45_combout\;
\ROM1|ALT_INV_memROM~44_combout\ <= NOT \ROM1|memROM~44_combout\;
\ROM1|ALT_INV_memROM~43_combout\ <= NOT \ROM1|memROM~43_combout\;
\ROM1|ALT_INV_memROM~42_combout\ <= NOT \ROM1|memROM~42_combout\;
\ROM1|ALT_INV_memROM~41_combout\ <= NOT \ROM1|memROM~41_combout\;
\ROM1|ALT_INV_memROM~40_combout\ <= NOT \ROM1|memROM~40_combout\;
\ROM1|ALT_INV_memROM~39_combout\ <= NOT \ROM1|memROM~39_combout\;
\ROM1|ALT_INV_memROM~38_combout\ <= NOT \ROM1|memROM~38_combout\;
\ROM1|ALT_INV_memROM~37_combout\ <= NOT \ROM1|memROM~37_combout\;
\ROM1|ALT_INV_memROM~36_combout\ <= NOT \ROM1|memROM~36_combout\;
\ROM1|ALT_INV_memROM~35_combout\ <= NOT \ROM1|memROM~35_combout\;
\ROM1|ALT_INV_memROM~34_combout\ <= NOT \ROM1|memROM~34_combout\;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\ROM1|ALT_INV_memROM~33_combout\ <= NOT \ROM1|memROM~33_combout\;
\ROM1|ALT_INV_memROM~32_combout\ <= NOT \ROM1|memROM~32_combout\;
\ROM1|ALT_INV_memROM~31_combout\ <= NOT \ROM1|memROM~31_combout\;
\ROM1|ALT_INV_memROM~30_combout\ <= NOT \ROM1|memROM~30_combout\;
\ROM1|ALT_INV_memROM~29_combout\ <= NOT \ROM1|memROM~29_combout\;
\ROM1|ALT_INV_memROM~28_combout\ <= NOT \ROM1|memROM~28_combout\;
\ROM1|ALT_INV_memROM~27_combout\ <= NOT \ROM1|memROM~27_combout\;
\ROM1|ALT_INV_memROM~26_combout\ <= NOT \ROM1|memROM~26_combout\;
\ROM1|ALT_INV_memROM~25_combout\ <= NOT \ROM1|memROM~25_combout\;
\ROM1|ALT_INV_memROM~24_combout\ <= NOT \ROM1|memROM~24_combout\;
\ROM1|ALT_INV_memROM~23_combout\ <= NOT \ROM1|memROM~23_combout\;
\ROM1|ALT_INV_memROM~22_combout\ <= NOT \ROM1|memROM~22_combout\;
\ROM1|ALT_INV_memROM~21_combout\ <= NOT \ROM1|memROM~21_combout\;
\ROM1|ALT_INV_memROM~20_combout\ <= NOT \ROM1|memROM~20_combout\;
\ROM1|ALT_INV_memROM~19_combout\ <= NOT \ROM1|memROM~19_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\;
\CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\RegisterHEX3|ALT_INV_DOUT\(2) <= NOT \RegisterHEX3|DOUT\(2);
\RegisterHEX3|ALT_INV_DOUT\(1) <= NOT \RegisterHEX3|DOUT\(1);
\RegisterHEX3|ALT_INV_DOUT\(3) <= NOT \RegisterHEX3|DOUT\(3);
\RegisterHEX3|ALT_INV_DOUT\(0) <= NOT \RegisterHEX3|DOUT\(0);
\RegisterHEX2|ALT_INV_DOUT\(2) <= NOT \RegisterHEX2|DOUT\(2);
\RegisterHEX2|ALT_INV_DOUT\(1) <= NOT \RegisterHEX2|DOUT\(1);
\RegisterHEX2|ALT_INV_DOUT\(3) <= NOT \RegisterHEX2|DOUT\(3);
\RegisterHEX2|ALT_INV_DOUT\(0) <= NOT \RegisterHEX2|DOUT\(0);
\RegisterHEX1|ALT_INV_DOUT\(2) <= NOT \RegisterHEX1|DOUT\(2);
\RegisterHEX1|ALT_INV_DOUT\(1) <= NOT \RegisterHEX1|DOUT\(1);
\RegisterHEX1|ALT_INV_DOUT\(3) <= NOT \RegisterHEX1|DOUT\(3);
\RegisterHEX1|ALT_INV_DOUT\(0) <= NOT \RegisterHEX1|DOUT\(0);
\RegisterHEX0|ALT_INV_DOUT\(2) <= NOT \RegisterHEX0|DOUT\(2);
\RegisterHEX0|ALT_INV_DOUT\(1) <= NOT \RegisterHEX0|DOUT\(1);
\RegisterHEX0|ALT_INV_DOUT\(3) <= NOT \RegisterHEX0|DOUT\(3);
\RegisterHEX0|ALT_INV_DOUT\(0) <= NOT \RegisterHEX0|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\FlipFlop9|ALT_INV_DOUT~q\ <= NOT \FlipFlop9|DOUT~q\;
\FlipFlop8|ALT_INV_DOUT~q\ <= NOT \FlipFlop8|DOUT~q\;
\ROM1|ALT_INV_memROM~94_combout\ <= NOT \ROM1|memROM~94_combout\;
\ROM1|ALT_INV_memROM~89_combout\ <= NOT \ROM1|memROM~89_combout\;
\ROM1|ALT_INV_memROM~85_combout\ <= NOT \ROM1|memROM~85_combout\;
\ROM1|ALT_INV_memROM~80_combout\ <= NOT \ROM1|memROM~80_combout\;
\ROM1|ALT_INV_memROM~76_combout\ <= NOT \ROM1|memROM~76_combout\;
\CPU|ULA|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA|Add0~29_sumout\;
\CPU|ULA|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA|Add0~25_sumout\;
\CPU|ULA|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA|Add0~21_sumout\;
\CPU|ULA|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA|Add0~17_sumout\;
\CPU|ULA|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA|Add0~13_sumout\;
\CPU|ULA|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA|Add0~9_sumout\;
\CPU|ULA|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA|Add0~5_sumout\;
\CPU|ULA|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA|Add0~1_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementa_PC|Add0~33_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementa_PC|Add0~29_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementa_PC|Add0~25_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementa_PC|Add0~21_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementa_PC|Add0~17_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementa_PC|Add0~13_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementa_PC|Add0~9_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementa_PC|Add0~5_sumout\;
\CPU|incrementa_PC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementa_PC|Add0~1_sumout\;
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(7) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(7);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(7) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(7);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(7);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(6) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(6);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(6) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(6);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(6);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(5) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(5);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(5) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(5);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(5);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(4) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(4);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(4) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(4);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(4);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(3) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(3);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(3) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(3);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(3);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(2) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(2);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(2) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(2);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(2);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(1) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(1);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(1) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(1);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(1);
\CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(0) <= NOT \CPU|Bloco_Reg|REG2|DOUT\(0);
\CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(0) <= NOT \CPU|Bloco_Reg|REG0|DOUT\(0);
\CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|Bloco_Reg|REG1|DOUT\(0);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegisterVector|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FlipFlop8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FlipFlop9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\ROM_AddressOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[0]~output_o\);

\ROM_AddressOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[1]~output_o\);

\ROM_AddressOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[2]~output_o\);

\ROM_AddressOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[3]~output_o\);

\ROM_AddressOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[4]~output_o\);

\ROM_AddressOUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[5]~output_o\);

\ROM_AddressOUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[6]~output_o\);

\ROM_AddressOUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[7]~output_o\);

\ROM_AddressOUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \ROM_AddressOUT[8]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HexDisplay5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\Bloco_Reg_Out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[0]~output_o\);

\Bloco_Reg_Out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[1]~output_o\);

\Bloco_Reg_Out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[2]~output_o\);

\Bloco_Reg_Out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[3]~output_o\);

\Bloco_Reg_Out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[4]~output_o\);

\Bloco_Reg_Out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[5]~output_o\);

\Bloco_Reg_Out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[6]~output_o\);

\Bloco_Reg_Out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \Bloco_Reg_Out[7]~output_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\ROM1|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~43_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~43_combout\);

\ROM1|memROM~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~44_combout\ = ( \CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~44_combout\);

\ROM1|memROM~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~45_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( 
-- \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000001000000011000000001001010110000100010000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~45_combout\);

\ROM1|memROM~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~46_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~46_combout\);

\ROM1|memROM~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~47_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~46_combout\ ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~45_combout\ ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~44_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~43_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~43_combout\,
	datab => \ROM1|ALT_INV_memROM~44_combout\,
	datac => \ROM1|ALT_INV_memROM~45_combout\,
	datad => \ROM1|ALT_INV_memROM~46_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~47_combout\);

\ROM1|memROM~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~74_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~47_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~47_combout\,
	combout => \ROM1|memROM~74_combout\);

\CPU|incrementa_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementa_PC|Add0~2\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|incrementa_PC|Add0~1_sumout\,
	cout => \CPU|incrementa_PC|Add0~2\);

\CPU|incrementa_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~2\ ))
-- \CPU|incrementa_PC|Add0~6\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|incrementa_PC|Add0~2\,
	sumout => \CPU|incrementa_PC|Add0~5_sumout\,
	cout => \CPU|incrementa_PC|Add0~6\);

\CPU|incrementa_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~6\ ))
-- \CPU|incrementa_PC|Add0~10\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|incrementa_PC|Add0~6\,
	sumout => \CPU|incrementa_PC|Add0~9_sumout\,
	cout => \CPU|incrementa_PC|Add0~10\);

\CPU|incrementa_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~10\ ))
-- \CPU|incrementa_PC|Add0~14\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|incrementa_PC|Add0~10\,
	sumout => \CPU|incrementa_PC|Add0~13_sumout\,
	cout => \CPU|incrementa_PC|Add0~14\);

\CPU|incrementa_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~14\ ))
-- \CPU|incrementa_PC|Add0~18\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|incrementa_PC|Add0~14\,
	sumout => \CPU|incrementa_PC|Add0~17_sumout\,
	cout => \CPU|incrementa_PC|Add0~18\);

\CPU|incrementa_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~18\ ))
-- \CPU|incrementa_PC|Add0~22\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementa_PC|Add0~18\,
	sumout => \CPU|incrementa_PC|Add0~21_sumout\,
	cout => \CPU|incrementa_PC|Add0~22\);

\CPU|incrementa_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~22\ ))
-- \CPU|incrementa_PC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementa_PC|Add0~22\,
	sumout => \CPU|incrementa_PC|Add0~25_sumout\,
	cout => \CPU|incrementa_PC|Add0~26\);

\CPU|incrementa_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~26\ ))
-- \CPU|incrementa_PC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|incrementa_PC|Add0~26\,
	sumout => \CPU|incrementa_PC|Add0~29_sumout\,
	cout => \CPU|incrementa_PC|Add0~30\);

\ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~23_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(7) & (((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( 
-- \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) # 
-- (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000001010000010000000100000001000100001011101010110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~23_combout\);

\ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~24_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # 
-- (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000000000100000000100010000100001000010000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~24_combout\);

\ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~25_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) & 
-- (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010101100000000000000010001100000000000010000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~25_combout\);

\ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~26_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & 
-- (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~26_combout\);

\ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~27_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~26_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(5) & ( \ROM1|memROM~25_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~24_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( \ROM1|memROM~23_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~23_combout\,
	datab => \ROM1|ALT_INV_memROM~24_combout\,
	datac => \ROM1|ALT_INV_memROM~25_combout\,
	datad => \ROM1|ALT_INV_memROM~26_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~27_combout\);

\ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~28_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(2) & (((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & 
-- ((!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000001111111100011000111111100100110011100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~28_combout\);

\ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~29_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # ((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(0)))))) ) ) ) 
-- # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100000001110111000011111000000011101000111011011100010111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~29_combout\);

\ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~30_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # ((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001001000100100010010001111110000000001111101011010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~30_combout\);

\ROM1|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~31_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & 
-- ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101001010010100011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~31_combout\);

\ROM1|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~32_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~31_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( !\ROM1|memROM~30_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~29_combout\ ) 
-- ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( !\ROM1|memROM~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~28_combout\,
	datab => \ROM1|ALT_INV_memROM~29_combout\,
	datac => \ROM1|ALT_INV_memROM~30_combout\,
	datad => \ROM1|ALT_INV_memROM~31_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~32_combout\);

\CPU|Dec_Instruction|sinais_controle[11]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle[11]~5_combout\ = ( \ROM1|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~22_combout\ & \ROM1|memROM~27_combout\))) ) ) # ( !\ROM1|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(8) & 
-- (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~22_combout\ & \ROM1|memROM~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000001000000000000000001000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~32_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\);

\CPU|Reg_Retorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~29_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(7));

\CPU|Mux_Prox_PC|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[7]~7_combout\ = ( \CPU|incrementa_PC|Add0~29_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # (\CPU|Reg_Retorno|DOUT\(7))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (\ROM1|memROM~74_combout\)) ) ) # ( !\CPU|incrementa_PC|Add0~29_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Mux_Prox_PC|Equal0~0_combout\ & \CPU|Reg_Retorno|DOUT\(7))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\ROM1|memROM~74_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~74_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(7),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[7]~7_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\ROM1|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~34_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(6)))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(3)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(6)))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(3))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(6) & 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001000000001000000000011000000110110001000010100110010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~34_combout\);

\ROM1|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~35_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(7))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000001000000000000001000000000000000001000110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~35_combout\);

\ROM1|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~36_combout\ = ( \CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(4))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(0) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) $ (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4)))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( \CPU|PC|DOUT\(0) & ( 
-- !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(4))))) ) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(4))))) # 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100100000100000000000110010010100010000100001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(0),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~36_combout\);

\ROM1|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~37_combout\ = ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4)))) ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000100100000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~37_combout\);

\ROM1|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~38_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(2) & ( \ROM1|memROM~37_combout\ ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(2) & ( \ROM1|memROM~36_combout\ ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(2) & ( \ROM1|memROM~35_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(2) & ( \ROM1|memROM~34_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~34_combout\,
	datab => \ROM1|ALT_INV_memROM~35_combout\,
	datac => \ROM1|ALT_INV_memROM~36_combout\,
	datad => \ROM1|ALT_INV_memROM~37_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~38_combout\);

\ROM1|memROM~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~73_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~38_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~38_combout\,
	combout => \ROM1|memROM~73_combout\);

\CPU|Reg_Retorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~25_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(6));

\CPU|Mux_Prox_PC|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[6]~6_combout\ = ( \CPU|incrementa_PC|Add0~25_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # (\CPU|Reg_Retorno|DOUT\(6))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (\ROM1|memROM~73_combout\)) ) ) # ( !\CPU|incrementa_PC|Add0~25_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Mux_Prox_PC|Equal0~0_combout\ & \CPU|Reg_Retorno|DOUT\(6))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\ROM1|memROM~73_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~73_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(6),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[6]~6_combout\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(6)) # (\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(6))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) $ (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(7) & 
-- (!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) $ (((\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000010000000001001100110001010000000100001001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~19_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( 
-- (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(7)) # (!\CPU|PC|DOUT\(1))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & 
-- ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000100001000000000010100000100000000000000001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~19_combout\);

\ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~20_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(7))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(4)) # (!\CPU|PC|DOUT\(7)))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & 
-- ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(7)))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000010000010101001010001000100000100010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~20_combout\);

\ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~21_combout\ = ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000000000000000000000000100011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~21_combout\);

\ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~22_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(3) & ( \ROM1|memROM~21_combout\ ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(3) & ( \ROM1|memROM~20_combout\ ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(3) & ( \ROM1|memROM~19_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(3) & ( \ROM1|memROM~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~18_combout\,
	datab => \ROM1|ALT_INV_memROM~19_combout\,
	datac => \ROM1|ALT_INV_memROM~20_combout\,
	datad => \ROM1|ALT_INV_memROM~21_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~22_combout\);

\ROM1|memROM~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~64_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	combout => \ROM1|memROM~64_combout\);

\CPU|Mux_Prox_PC|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|Equal0~0_combout\ = (!\ROM1|memROM~16_combout\ & (\ROM1|memROM~22_combout\ & (\ROM1|memROM~64_combout\ & !\ROM1|memROM~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~32_combout\,
	combout => \CPU|Mux_Prox_PC|Equal0~0_combout\);

\ROM1|memROM~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~68_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & 
-- (\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000001000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~68_combout\);

\ROM1|memROM~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~67_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(7))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(7))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(7))))) # 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000011000010000010000000000000000111100000000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~67_combout\);

\ROM1|memROM~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~66_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0)))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # 
-- (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000100000100000000100010000110001001010010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~66_combout\);

\ROM1|memROM~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~65_combout\ = ( \CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( 
-- (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(7) & \CPU|PC|DOUT\(4)))))) # (\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(4)))) ) ) ) # ( !\CPU|PC|DOUT\(1) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(4))))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000101101001100001000000100000000000000000010101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~65_combout\);

\ROM1|memROM~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~80_combout\ = ( !\CPU|PC|DOUT\(5) & ( ((!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & (\ROM1|memROM~65_combout\)) # (\CPU|PC|DOUT\(6) & ((\ROM1|memROM~66_combout\)))))) ) ) # ( \CPU|PC|DOUT\(5) & ( ((!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & 
-- ((\ROM1|memROM~67_combout\))) # (\CPU|PC|DOUT\(6) & (\ROM1|memROM~68_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \ROM1|ALT_INV_memROM~68_combout\,
	datac => \ROM1|ALT_INV_memROM~67_combout\,
	datad => \ROM1|ALT_INV_memROM~66_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	datag => \ROM1|ALT_INV_memROM~65_combout\,
	combout => \ROM1|memROM~80_combout\);

\CPU|Reg_Retorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~13_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(3));

\CPU|Mux_Prox_PC|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[3]~3_combout\ = ( \CPU|incrementa_PC|Add0~13_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & ((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # ((\CPU|Reg_Retorno|DOUT\(3))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (((\ROM1|memROM~80_combout\)))) ) ) # ( !\CPU|incrementa_PC|Add0~13_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\CPU|Mux_Prox_PC|Equal0~0_combout\ & ((\CPU|Reg_Retorno|DOUT\(3))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (((\ROM1|memROM~80_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~80_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(3),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[3]~3_combout\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM1|memROM~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~59_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1) $ 
-- (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # ((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101011000000000111001110010000011010001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~59_combout\);

\ROM1|memROM~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~84_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(5)))) # (\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(5))) # (\CPU|PC|DOUT\(4)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(5) & (((!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(4))) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) $ 
-- (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000100000000000000000001011110101000101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~84_combout\);

\ROM1|memROM~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~60_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(2))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & 
-- ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000010100001010000100010010000000000100000001001000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~60_combout\);

\ROM1|memROM~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~61_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & 
-- (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~61_combout\);

\ROM1|memROM~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~62_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~61_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~60_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~84_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~59_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~59_combout\,
	datab => \ROM1|ALT_INV_memROM~84_combout\,
	datac => \ROM1|ALT_INV_memROM~60_combout\,
	datad => \ROM1|ALT_INV_memROM~61_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~62_combout\);

\ROM1|memROM~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~63_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~62_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \ROM1|memROM~63_combout\);

\CPU|Reg_Retorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~21_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(5));

\CPU|Mux_Prox_PC|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[5]~5_combout\ = ( \CPU|incrementa_PC|Add0~21_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # (\CPU|Reg_Retorno|DOUT\(5))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (\ROM1|memROM~63_combout\)) ) ) # ( !\CPU|incrementa_PC|Add0~21_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Mux_Prox_PC|Equal0~0_combout\ & \CPU|Reg_Retorno|DOUT\(5))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\ROM1|memROM~63_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~63_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(5),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[5]~5_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\ROM1|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~42_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000011100000000001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~42_combout\);

\ROM1|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~41_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & 
-- ((!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) # 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001000000100010000100000000011101011001110010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~41_combout\);

\ROM1|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~40_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # 
-- (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100001101000001000000101000000010000000000000011110000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~40_combout\);

\ROM1|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~39_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) # 
-- (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000011111000000000000000100101000000101000100111011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~39_combout\);

\ROM1|memROM~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~85_combout\ = ( !\CPU|PC|DOUT\(7) & ( ((!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(5) & (\ROM1|memROM~39_combout\)) # (\CPU|PC|DOUT\(5) & ((\ROM1|memROM~40_combout\)))))) ) ) # ( \CPU|PC|DOUT\(7) & ( ((!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(5) & 
-- ((\ROM1|memROM~41_combout\))) # (\CPU|PC|DOUT\(5) & (\ROM1|memROM~42_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \ROM1|ALT_INV_memROM~42_combout\,
	datac => \ROM1|ALT_INV_memROM~41_combout\,
	datad => \ROM1|ALT_INV_memROM~40_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	datag => \ROM1|ALT_INV_memROM~39_combout\,
	combout => \ROM1|memROM~85_combout\);

\CPU|Reg_Retorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~9_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(2));

\CPU|Mux_Prox_PC|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[2]~2_combout\ = ( \CPU|incrementa_PC|Add0~9_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # (\CPU|Reg_Retorno|DOUT\(2))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (\ROM1|memROM~85_combout\)) ) ) # ( !\CPU|incrementa_PC|Add0~9_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Mux_Prox_PC|Equal0~0_combout\ & \CPU|Reg_Retorno|DOUT\(2))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\ROM1|memROM~85_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~85_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(2),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\ROM1|memROM~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~53_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ ((\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & 
-- ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( 
-- (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( 
-- (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ ((\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000111100001010100011011100000101000000100001110100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~53_combout\);

\ROM1|memROM~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~54_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7))) ) ) ) # ( 
-- \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ ((\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(6) & ( 
-- (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000011000010110010100110000000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~54_combout\);

\ROM1|memROM~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~55_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(1))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (!\CPU|PC|DOUT\(1)))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- !\CPU|PC|DOUT\(7) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000100000010101010000000001100000000000000100001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~55_combout\);

\ROM1|memROM~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~56_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & 
-- !\CPU|PC|DOUT\(7))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(7)))))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(7)) # 
-- (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000011001110111000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~56_combout\);

\ROM1|memROM~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~57_combout\ = ( \CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( \ROM1|memROM~56_combout\ ) ) ) # ( !\CPU|PC|DOUT\(5) & ( \CPU|PC|DOUT\(4) & ( \ROM1|memROM~55_combout\ ) ) ) # ( \CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( \ROM1|memROM~54_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(5) & ( !\CPU|PC|DOUT\(4) & ( \ROM1|memROM~53_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~53_combout\,
	datab => \ROM1|ALT_INV_memROM~54_combout\,
	datac => \ROM1|ALT_INV_memROM~55_combout\,
	datad => \ROM1|ALT_INV_memROM~56_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~57_combout\);

\ROM1|memROM~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~58_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~57_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~57_combout\,
	combout => \ROM1|memROM~58_combout\);

\CPU|Reg_Retorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~5_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(1));

\CPU|Mux_Prox_PC|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[1]~1_combout\ = ( \CPU|incrementa_PC|Add0~5_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # (\CPU|Reg_Retorno|DOUT\(1))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (\ROM1|memROM~58_combout\)) ) ) # ( !\CPU|incrementa_PC|Add0~5_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Mux_Prox_PC|Equal0~0_combout\ & \CPU|Reg_Retorno|DOUT\(1))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\ROM1|memROM~58_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~58_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(1),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & 
-- ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & 
-- ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1)) # ((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011001100111100000001011110001111000011100101000001100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & 
-- (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2)))))) # 
-- (\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # 
-- (!\CPU|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011001000101010000101001001010000000011001100110000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( 
-- (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # ((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ 
-- (!\CPU|PC|DOUT\(3))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ 
-- (((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001101010110000011010101100000000000101011100000001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~8_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000110010000111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~9_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~8_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~7_combout\ ) ) ) 
-- # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~11_combout\);

\CPU|Reg_Retorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~1_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(0));

\CPU|Mux_Prox_PC|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[0]~0_combout\ = ( \CPU|incrementa_PC|Add0~1_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # (\CPU|Reg_Retorno|DOUT\(0))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (\ROM1|memROM~11_combout\)) ) ) # ( !\CPU|incrementa_PC|Add0~1_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Reg_Retorno|DOUT\(0) & \CPU|Mux_Prox_PC|Equal0~0_combout\)))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\ROM1|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datac => \CPU|Reg_Retorno|ALT_INV_DOUT\(0),
	datad => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datae => \CPU|incrementa_PC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & 
-- ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2)))) ) ) 
-- ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111011011110111100111101101110001001110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100011101100011101010011101110000000101010101010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(5) & ( ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3)) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & 
-- (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100001000100100010010100001011010111010101110101000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # ((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001100011000110111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~15_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~15_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~14_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~13_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( !\ROM1|memROM~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~15_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~16_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \ROM1|memROM~17_combout\);

\ROM1|memROM~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~75_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~22_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~22_combout\,
	combout => \ROM1|memROM~75_combout\);

\ROM1|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~33_combout\ = (!\CPU|PC|DOUT\(8) & \ROM1|memROM~32_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~32_combout\,
	combout => \ROM1|memROM~33_combout\);

\CPU|Dec_Instruction|sinais_controle~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle~2_combout\ = (!\ROM1|memROM~64_combout\ & (\ROM1|memROM~17_combout\ & (!\ROM1|memROM~75_combout\ & !\ROM1|memROM~33_combout\))) # (\ROM1|memROM~64_combout\ & (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~75_combout\ & 
-- \ROM1|memROM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000000010000100000000001000010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~64_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~75_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle~2_combout\);

\CPU|Dec_Instruction|sinais_controle[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle[4]~6_combout\ = ( \CPU|Dec_Instruction|sinais_controle~2_combout\ ) # ( !\CPU|Dec_Instruction|sinais_controle~2_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~75_combout\ & (!\ROM1|memROM~64_combout\ & 
-- \ROM1|memROM~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000111111111111111100000000100000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~75_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	datae => \CPU|Dec_Instruction|ALT_INV_sinais_controle~2_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle[4]~6_combout\);

\CPU|Dec_Instruction|Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|Equal12~1_combout\ = (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~75_combout\ & (!\ROM1|memROM~64_combout\ & !\ROM1|memROM~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~75_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \CPU|Dec_Instruction|Equal12~1_combout\);

\CPU|Dec_Instruction|sinais_controle~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle~1_combout\ = (!\ROM1|memROM~17_combout\ & (\ROM1|memROM~75_combout\ & (!\ROM1|memROM~64_combout\ $ (\ROM1|memROM~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~64_combout\,
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~75_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle~1_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(2)))) # (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000000000000111000000000000011100000000000001110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & 
-- ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~98_combout\ = ( !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(5)))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(5))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(2) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(0)))) # 
-- (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100011011101010101000000010000001001001000011010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~98_combout\);

\ROM1|memROM~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~94_combout\ = ( !\CPU|PC|DOUT\(7) & ( (((!\CPU|PC|DOUT\(6) & ((\ROM1|memROM~1_combout\))) # (\CPU|PC|DOUT\(6) & (\ROM1|memROM~98_combout\)))) ) ) # ( \CPU|PC|DOUT\(7) & ( (\ROM1|memROM~0_combout\ & (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(4) & 
-- ((\CPU|PC|DOUT\(6)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000000000000000001111000011110000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	datag => \ROM1|ALT_INV_memROM~98_combout\,
	combout => \ROM1|memROM~94_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(1))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(1) & 
-- \CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(1)) # ((!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(0))))) ) ) ) # 
-- ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000001001111100111110000000000000000100010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(7) & \ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(6) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(6))))) ) ) ) # ( 
-- !\CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000011001010011000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~93_combout\ = ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(4) & 
-- (!\CPU|PC|DOUT\(2) $ (((!\CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010100101110011100011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~93_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \CPU|PC|DOUT\(6) & ( (!\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(5)))) ) ) # ( !\CPU|PC|DOUT\(6) & ( (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011100000001100110000000000000000111000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~89_combout\ = ( !\CPU|PC|DOUT\(3) & ( ((\CPU|PC|DOUT\(4) & (\ROM1|memROM~2_combout\ & ((!\CPU|PC|DOUT\(7)))))) # (\ROM1|memROM~5_combout\) ) ) # ( \CPU|PC|DOUT\(3) & ( (((!\CPU|PC|DOUT\(7) & ((\ROM1|memROM~93_combout\) # 
-- (\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011100110111001111111111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~93_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	datag => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~89_combout\);

\CPU|Dec_Instruction|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|Equal12~0_combout\ = ( !\ROM1|memROM~33_combout\ & ( (\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~22_combout\ & !\ROM1|memROM~27_combout\)) # (\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100010001000000000000000000110001000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \CPU|Dec_Instruction|Equal12~0_combout\);

\CPU|Dec_Instruction|sinais_controle[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle[1]~0_combout\ = ( \ROM1|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~16_combout\ & ((!\ROM1|memROM~27_combout\) # (\ROM1|memROM~22_combout\)))) ) ) # ( !\ROM1|memROM~32_combout\ & ( (!\CPU|PC|DOUT\(8) & 
-- (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~22_combout\ $ (!\ROM1|memROM~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010000000100010000000100000001000100000001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~32_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle[1]~0_combout\);

\DECODER1|enableSWVector~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableSWVector~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~38_combout\ & (!\ROM1|memROM~47_combout\ & \ROM1|memROM~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~38_combout\,
	datac => \ROM1|ALT_INV_memROM~47_combout\,
	datad => \ROM1|ALT_INV_memROM~52_combout\,
	combout => \DECODER1|enableSWVector~0_combout\);

\DECODER1|enableSWVector~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableSWVector~2_combout\ = ( \ROM1|memROM~62_combout\ & ( (\CPU|PC|DOUT\(8) & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~85_combout\)) ) ) # ( !\ROM1|memROM~62_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~85_combout\ & 
-- ((!\ROM1|memROM~57_combout\) # (\CPU|PC|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000001000000010000000100000011000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~57_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	combout => \DECODER1|enableSWVector~2_combout\);

\DECODER1|enableSWVector~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableSWVector~3_combout\ = (\CPU|Dec_Instruction|sinais_controle[1]~0_combout\ & (\DECODER1|enableSWVector~0_combout\ & \DECODER1|enableSWVector~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[1]~0_combout\,
	datab => \DECODER1|ALT_INV_enableSWVector~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~2_combout\,
	combout => \DECODER1|enableSWVector~3_combout\);

\ROM1|memROM~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~72_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(2))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ 
-- (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100101001110010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~72_combout\);

\ROM1|memROM~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~71_combout\ = ( \CPU|PC|DOUT\(4) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(4) & ( 
-- !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(1))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000100000010010100001010000000000100000101001000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~71_combout\);

\ROM1|memROM~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~70_combout\ = ( !\CPU|PC|DOUT\(1) & ( \CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(1) & ( 
-- !\CPU|PC|DOUT\(2) & ( (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100100100000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~70_combout\);

\ROM1|memROM~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~69_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( 
-- \CPU|PC|DOUT\(4) & ( (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) ) # ( \CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(0)))) # 
-- (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(5) & 
-- (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100010000000000001000100001001000000000000000000001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~69_combout\);

\ROM1|memROM~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~76_combout\ = ( !\CPU|PC|DOUT\(7) & ( ((!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & (\ROM1|memROM~69_combout\)) # (\CPU|PC|DOUT\(6) & ((\ROM1|memROM~70_combout\)))))) ) ) # ( \CPU|PC|DOUT\(7) & ( ((!\CPU|PC|DOUT\(8) & ((!\CPU|PC|DOUT\(6) & 
-- ((\ROM1|memROM~71_combout\))) # (\CPU|PC|DOUT\(6) & (\ROM1|memROM~72_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101001011111000110110001101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(6),
	datab => \ROM1|ALT_INV_memROM~72_combout\,
	datac => \ROM1|ALT_INV_memROM~71_combout\,
	datad => \ROM1|ALT_INV_memROM~70_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	datag => \ROM1|ALT_INV_memROM~69_combout\,
	combout => \ROM1|memROM~76_combout\);

\RAM1|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~695_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~695_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~33_combout\ & ( (\ROM1|memROM~17_combout\ & (((!\ROM1|memROM~22_combout\ & !\ROM1|memROM~27_combout\)) # (\CPU|PC|DOUT\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100010001000100000000000000000011000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~17_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~33_combout\,
	combout => \RAM1|process_0~0_combout\);

\RAM1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~1_combout\ = ( \ROM1|memROM~52_combout\ & ( (\CPU|PC|DOUT\(8) & (!\ROM1|memROM~73_combout\ & (\RAM1|process_0~0_combout\ & !\ROM1|memROM~74_combout\))) ) ) # ( !\ROM1|memROM~52_combout\ & ( (!\ROM1|memROM~73_combout\ & 
-- (\RAM1|process_0~0_combout\ & !\ROM1|memROM~74_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000001000000000000001100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~73_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~74_combout\,
	datae => \ROM1|ALT_INV_memROM~52_combout\,
	combout => \RAM1|process_0~1_combout\);

\RAM1|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~696_combout\ = (\RAM1|ram~695_combout\ & \RAM1|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~695_combout\,
	datab => \RAM1|ALT_INV_process_0~1_combout\,
	combout => \RAM1|ram~696_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~697_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~697_combout\);

\RAM1|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~698_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~697_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~697_combout\,
	combout => \RAM1|ram~698_combout\);

\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

\RAM1|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~727_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~727_combout\);

\RAM1|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~728_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~727_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~727_combout\,
	combout => \RAM1|ram~728_combout\);

\RAM1|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~36_q\);

\RAM1|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~729_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~729_combout\);

\RAM1|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~730_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~729_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~729_combout\,
	combout => \RAM1|ram~730_combout\);

\RAM1|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~68_q\);

\RAM1|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~632_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~68_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~36_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( 
-- \RAM1|ram~52_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datab => \RAM1|ALT_INV_ram~52_q\,
	datac => \RAM1|ALT_INV_ram~36_q\,
	datad => \RAM1|ALT_INV_ram~68_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~632_combout\);

\RAM1|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~703_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~703_combout\);

\RAM1|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~704_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~703_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~703_combout\,
	combout => \RAM1|ram~704_combout\);

\RAM1|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~84_q\);

\RAM1|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~705_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~705_combout\);

\RAM1|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~706_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~705_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~705_combout\,
	combout => \RAM1|ram~706_combout\);

\RAM1|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~116_q\);

\RAM1|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~731_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~731_combout\);

\RAM1|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~732_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~731_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~731_combout\,
	combout => \RAM1|ram~732_combout\);

\RAM1|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~100_q\);

\RAM1|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~733_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~733_combout\);

\RAM1|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~734_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~733_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~733_combout\,
	combout => \RAM1|ram~734_combout\);

\RAM1|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~132_q\);

\RAM1|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~633_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~132_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~100_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~116_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~84_q\,
	datab => \RAM1|ALT_INV_ram~116_q\,
	datac => \RAM1|ALT_INV_ram~100_q\,
	datad => \RAM1|ALT_INV_ram~132_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~633_combout\);

\RAM1|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~699_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~699_combout\);

\RAM1|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~700_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~699_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~699_combout\,
	combout => \RAM1|ram~700_combout\);

\RAM1|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~148_q\);

\RAM1|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~701_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~701_combout\);

\RAM1|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~702_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~701_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~701_combout\,
	combout => \RAM1|ram~702_combout\);

\RAM1|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~180_q\);

\RAM1|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~735_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~735_combout\);

\RAM1|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~736_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~735_combout\,
	combout => \RAM1|ram~736_combout\);

\RAM1|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~164_q\);

\RAM1|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~737_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~737_combout\);

\RAM1|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~738_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~737_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~737_combout\,
	combout => \RAM1|ram~738_combout\);

\RAM1|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~196_q\);

\RAM1|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~634_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~196_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~164_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~180_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~148_q\,
	datab => \RAM1|ALT_INV_ram~180_q\,
	datac => \RAM1|ALT_INV_ram~164_q\,
	datad => \RAM1|ALT_INV_ram~196_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~634_combout\);

\RAM1|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~707_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~707_combout\);

\RAM1|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~708_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~707_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~707_combout\,
	combout => \RAM1|ram~708_combout\);

\RAM1|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~212_q\);

\RAM1|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~709_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~709_combout\);

\RAM1|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~710_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~709_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~709_combout\,
	combout => \RAM1|ram~710_combout\);

\RAM1|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~244_q\);

\RAM1|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~739_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~739_combout\);

\RAM1|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~740_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~739_combout\,
	combout => \RAM1|ram~740_combout\);

\RAM1|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~228_q\);

\RAM1|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~741_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~741_combout\);

\RAM1|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~742_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~741_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~741_combout\,
	combout => \RAM1|ram~742_combout\);

\RAM1|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~260_q\);

\RAM1|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~635_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~260_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~228_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~244_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~212_q\,
	datab => \RAM1|ALT_INV_ram~244_q\,
	datac => \RAM1|ALT_INV_ram~228_q\,
	datad => \RAM1|ALT_INV_ram~260_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~635_combout\);

\RAM1|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~636_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~635_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~634_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~633_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~632_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~632_combout\,
	datab => \RAM1|ALT_INV_ram~633_combout\,
	datac => \RAM1|ALT_INV_ram~634_combout\,
	datad => \RAM1|ALT_INV_ram~635_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~636_combout\);

\RAM1|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~759_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~759_combout\);

\RAM1|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~760_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~759_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~759_combout\,
	combout => \RAM1|ram~760_combout\);

\RAM1|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~276_q\);

\RAM1|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~767_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~767_combout\);

\RAM1|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~768_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~767_combout\,
	combout => \RAM1|ram~768_combout\);

\RAM1|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~308_q\);

\RAM1|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~775_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~775_combout\);

\RAM1|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~776_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~775_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~775_combout\,
	combout => \RAM1|ram~776_combout\);

\RAM1|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~340_q\);

\RAM1|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~783_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~783_combout\);

\RAM1|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~784_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~783_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~783_combout\,
	combout => \RAM1|ram~784_combout\);

\RAM1|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~372_q\);

\RAM1|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~637_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~372_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~340_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~308_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~276_q\,
	datab => \RAM1|ALT_INV_ram~308_q\,
	datac => \RAM1|ALT_INV_ram~340_q\,
	datad => \RAM1|ALT_INV_ram~372_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~637_combout\);

\RAM1|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~761_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~761_combout\);

\RAM1|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~762_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~761_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~761_combout\,
	combout => \RAM1|ram~762_combout\);

\RAM1|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~404_q\);

\RAM1|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~769_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~769_combout\);

\RAM1|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~770_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~769_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~769_combout\,
	combout => \RAM1|ram~770_combout\);

\RAM1|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~436_q\);

\RAM1|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~777_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~777_combout\);

\RAM1|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~778_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~777_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~777_combout\,
	combout => \RAM1|ram~778_combout\);

\RAM1|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~468_q\);

\RAM1|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~785_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~785_combout\);

\RAM1|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~786_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~785_combout\,
	combout => \RAM1|ram~786_combout\);

\RAM1|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~500_q\);

\RAM1|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~638_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~500_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~468_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~436_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~404_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~404_q\,
	datab => \RAM1|ALT_INV_ram~436_q\,
	datac => \RAM1|ALT_INV_ram~468_q\,
	datad => \RAM1|ALT_INV_ram~500_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~638_combout\);

\RAM1|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~791_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~791_combout\);

\RAM1|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~792_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~791_combout\,
	combout => \RAM1|ram~792_combout\);

\RAM1|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~292_q\);

\RAM1|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~793_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~793_combout\);

\RAM1|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~794_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~793_combout\,
	combout => \RAM1|ram~794_combout\);

\RAM1|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~324_q\);

\RAM1|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~795_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~795_combout\);

\RAM1|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~796_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~795_combout\,
	combout => \RAM1|ram~796_combout\);

\RAM1|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~356_q\);

\RAM1|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~797_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~797_combout\);

\RAM1|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~798_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~797_combout\,
	combout => \RAM1|ram~798_combout\);

\RAM1|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~388_q\);

\RAM1|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~639_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~388_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~356_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~324_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~292_q\,
	datab => \RAM1|ALT_INV_ram~324_q\,
	datac => \RAM1|ALT_INV_ram~356_q\,
	datad => \RAM1|ALT_INV_ram~388_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~639_combout\);

\RAM1|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~799_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~799_combout\);

\RAM1|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~800_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~799_combout\,
	combout => \RAM1|ram~800_combout\);

\RAM1|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~420_q\);

\RAM1|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~801_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~801_combout\);

\RAM1|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~802_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~801_combout\,
	combout => \RAM1|ram~802_combout\);

\RAM1|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~452_q\);

\RAM1|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~803_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~803_combout\);

\RAM1|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~804_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~803_combout\,
	combout => \RAM1|ram~804_combout\);

\RAM1|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~484_q\);

\RAM1|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~805_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~805_combout\);

\RAM1|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~806_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~805_combout\,
	combout => \RAM1|ram~806_combout\);

\RAM1|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~516_q\);

\RAM1|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~640_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~516_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~484_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~452_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~420_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~420_q\,
	datab => \RAM1|ALT_INV_ram~452_q\,
	datac => \RAM1|ALT_INV_ram~484_q\,
	datad => \RAM1|ALT_INV_ram~516_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~640_combout\);

\RAM1|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~641_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~640_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~639_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~638_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~637_combout\,
	datab => \RAM1|ALT_INV_ram~638_combout\,
	datac => \RAM1|ALT_INV_ram~639_combout\,
	datad => \RAM1|ALT_INV_ram~640_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~641_combout\);

\RAM1|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~711_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~711_combout\);

\RAM1|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~712_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~711_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~711_combout\,
	combout => \RAM1|ram~712_combout\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~713_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~713_combout\);

\RAM1|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~714_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~713_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~713_combout\,
	combout => \RAM1|ram~714_combout\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~715_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~715_combout\);

\RAM1|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~716_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~715_combout\,
	combout => \RAM1|ram~716_combout\);

\RAM1|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~156_q\);

\RAM1|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~717_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~717_combout\);

\RAM1|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~718_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~717_combout\,
	combout => \RAM1|ram~718_combout\);

\RAM1|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~188_q\);

\RAM1|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~642_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~188_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~156_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~60_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datab => \RAM1|ALT_INV_ram~60_q\,
	datac => \RAM1|ALT_INV_ram~156_q\,
	datad => \RAM1|ALT_INV_ram~188_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~642_combout\);

\RAM1|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~719_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~719_combout\);

\RAM1|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~720_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~719_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~719_combout\,
	combout => \RAM1|ram~720_combout\);

\RAM1|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~92_q\);

\RAM1|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~721_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~721_combout\);

\RAM1|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~722_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~721_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~721_combout\,
	combout => \RAM1|ram~722_combout\);

\RAM1|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~124_q\);

\RAM1|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~723_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~723_combout\);

\RAM1|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~724_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~723_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~723_combout\,
	combout => \RAM1|ram~724_combout\);

\RAM1|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~220_q\);

\RAM1|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~725_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~725_combout\);

\RAM1|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~726_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~725_combout\,
	combout => \RAM1|ram~726_combout\);

\RAM1|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~252_q\);

\RAM1|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~643_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~252_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~220_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~124_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~92_q\,
	datab => \RAM1|ALT_INV_ram~124_q\,
	datac => \RAM1|ALT_INV_ram~220_q\,
	datad => \RAM1|ALT_INV_ram~252_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~643_combout\);

\RAM1|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~743_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~743_combout\);

\RAM1|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~744_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~743_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~743_combout\,
	combout => \RAM1|ram~744_combout\);

\RAM1|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~44_q\);

\RAM1|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~745_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~745_combout\);

\RAM1|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~746_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~745_combout\,
	combout => \RAM1|ram~746_combout\);

\RAM1|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~76_q\);

\RAM1|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~751_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~751_combout\);

\RAM1|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~752_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~751_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~751_combout\,
	combout => \RAM1|ram~752_combout\);

\RAM1|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~172_q\);

\RAM1|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~753_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~753_combout\);

\RAM1|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~754_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~753_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~753_combout\,
	combout => \RAM1|ram~754_combout\);

\RAM1|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~204_q\);

\RAM1|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~644_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~204_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~172_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~76_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~44_q\,
	datab => \RAM1|ALT_INV_ram~76_q\,
	datac => \RAM1|ALT_INV_ram~172_q\,
	datad => \RAM1|ALT_INV_ram~204_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~644_combout\);

\RAM1|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~747_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~747_combout\);

\RAM1|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~748_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~747_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~747_combout\,
	combout => \RAM1|ram~748_combout\);

\RAM1|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~108_q\);

\RAM1|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~749_combout\ = ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~749_combout\);

\RAM1|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~750_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~749_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~749_combout\,
	combout => \RAM1|ram~750_combout\);

\RAM1|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~140_q\);

\RAM1|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~755_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~755_combout\);

\RAM1|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~756_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~755_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~755_combout\,
	combout => \RAM1|ram~756_combout\);

\RAM1|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~236_q\);

\RAM1|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~757_combout\ = ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~757_combout\);

\RAM1|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~758_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~757_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~757_combout\,
	combout => \RAM1|ram~758_combout\);

\RAM1|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~268_q\);

\RAM1|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~645_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~268_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~236_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~140_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~108_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~108_q\,
	datab => \RAM1|ALT_INV_ram~140_q\,
	datac => \RAM1|ALT_INV_ram~236_q\,
	datad => \RAM1|ALT_INV_ram~268_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~645_combout\);

\RAM1|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~646_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~645_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~644_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~643_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~642_combout\,
	datab => \RAM1|ALT_INV_ram~643_combout\,
	datac => \RAM1|ALT_INV_ram~644_combout\,
	datad => \RAM1|ALT_INV_ram~645_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~646_combout\);

\RAM1|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~763_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~763_combout\);

\RAM1|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~764_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~763_combout\,
	combout => \RAM1|ram~764_combout\);

\RAM1|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~284_q\);

\RAM1|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~771_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~771_combout\);

\RAM1|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~772_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~771_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~771_combout\,
	combout => \RAM1|ram~772_combout\);

\RAM1|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~316_q\);

\RAM1|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~807_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~807_combout\);

\RAM1|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~808_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~807_combout\,
	combout => \RAM1|ram~808_combout\);

\RAM1|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~300_q\);

\RAM1|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~809_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~809_combout\);

\RAM1|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~810_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~809_combout\,
	combout => \RAM1|ram~810_combout\);

\RAM1|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~332_q\);

\RAM1|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~647_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~332_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~300_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~316_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~284_q\,
	datab => \RAM1|ALT_INV_ram~316_q\,
	datac => \RAM1|ALT_INV_ram~300_q\,
	datad => \RAM1|ALT_INV_ram~332_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~647_combout\);

\RAM1|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~779_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~779_combout\);

\RAM1|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~780_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~779_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~779_combout\,
	combout => \RAM1|ram~780_combout\);

\RAM1|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~348_q\);

\RAM1|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~787_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~787_combout\);

\RAM1|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~788_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~787_combout\,
	combout => \RAM1|ram~788_combout\);

\RAM1|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~380_q\);

\RAM1|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~811_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~811_combout\);

\RAM1|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~812_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~811_combout\,
	combout => \RAM1|ram~812_combout\);

\RAM1|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~364_q\);

\RAM1|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~813_combout\ = ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~813_combout\);

\RAM1|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~814_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~813_combout\,
	combout => \RAM1|ram~814_combout\);

\RAM1|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~396_q\);

\RAM1|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~648_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~396_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~364_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~380_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~348_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~348_q\,
	datab => \RAM1|ALT_INV_ram~380_q\,
	datac => \RAM1|ALT_INV_ram~364_q\,
	datad => \RAM1|ALT_INV_ram~396_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~648_combout\);

\RAM1|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~765_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~765_combout\);

\RAM1|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~766_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~765_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~765_combout\,
	combout => \RAM1|ram~766_combout\);

\RAM1|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~412_q\);

\RAM1|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~773_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~773_combout\);

\RAM1|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~774_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~773_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~773_combout\,
	combout => \RAM1|ram~774_combout\);

\RAM1|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~444_q\);

\RAM1|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~815_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~815_combout\);

\RAM1|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~816_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~815_combout\,
	combout => \RAM1|ram~816_combout\);

\RAM1|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~428_q\);

\RAM1|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~817_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~817_combout\);

\RAM1|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~818_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~817_combout\,
	combout => \RAM1|ram~818_combout\);

\RAM1|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~460_q\);

\RAM1|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~649_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~460_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~428_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~444_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~412_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~412_q\,
	datab => \RAM1|ALT_INV_ram~444_q\,
	datac => \RAM1|ALT_INV_ram~428_q\,
	datad => \RAM1|ALT_INV_ram~460_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~649_combout\);

\RAM1|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~781_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~781_combout\);

\RAM1|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~782_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~781_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~781_combout\,
	combout => \RAM1|ram~782_combout\);

\RAM1|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~476_q\);

\RAM1|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~789_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~789_combout\);

\RAM1|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~790_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~789_combout\,
	combout => \RAM1|ram~790_combout\);

\RAM1|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~508_q\);

\RAM1|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~819_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (!\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~819_combout\);

\RAM1|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~820_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~819_combout\,
	combout => \RAM1|ram~820_combout\);

\RAM1|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~492_q\);

\RAM1|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~821_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\ROM1|memROM~58_combout\ & (\ROM1|memROM~85_combout\ & \ROM1|memROM~80_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~58_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~80_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~821_combout\);

\RAM1|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~822_combout\ = (\RAM1|process_0~1_combout\ & \RAM1|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~1_combout\,
	datab => \RAM1|ALT_INV_ram~821_combout\,
	combout => \RAM1|ram~822_combout\);

\RAM1|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~524_q\);

\RAM1|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~650_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~524_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~492_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~508_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~476_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~476_q\,
	datab => \RAM1|ALT_INV_ram~508_q\,
	datac => \RAM1|ALT_INV_ram~492_q\,
	datad => \RAM1|ALT_INV_ram~524_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~650_combout\);

\RAM1|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~651_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~650_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~649_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~648_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~647_combout\,
	datab => \RAM1|ALT_INV_ram~648_combout\,
	datac => \RAM1|ALT_INV_ram~649_combout\,
	datad => \RAM1|ALT_INV_ram~650_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~651_combout\);

\RAM1|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~652_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~651_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~646_combout\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~641_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~636_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~636_combout\,
	datab => \RAM1|ALT_INV_ram~641_combout\,
	datac => \RAM1|ALT_INV_ram~646_combout\,
	datad => \RAM1|ALT_INV_ram~651_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~652_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\CPU|Bloco_Reg|enableReg1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|enableReg1~0_combout\ = (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & \ROM1|memROM~89_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	combout => \CPU|Bloco_Reg|enableReg1~0_combout\);

\CPU|Bloco_Reg|enableReg2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|enableReg2~0_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~94_combout\ & !\ROM1|memROM~89_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	combout => \CPU|Bloco_Reg|enableReg2~0_combout\);

\CPU|Dec_Instruction|sinais_controle[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle[4]~3_combout\ = ( \CPU|Dec_Instruction|sinais_controle~2_combout\ & ( (((\ROM1|memROM~33_combout\) # (\ROM1|memROM~64_combout\)) # (\ROM1|memROM~75_combout\)) # (\ROM1|memROM~17_combout\) ) ) # ( 
-- !\CPU|Dec_Instruction|sinais_controle~2_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~75_combout\ & (!\ROM1|memROM~64_combout\ & \ROM1|memROM~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000011111111111111100000000100000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~75_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	datae => \CPU|Dec_Instruction|ALT_INV_sinais_controle~2_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\);

\CPU|Dec_Instruction|sinais_controle[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Dec_Instruction|sinais_controle[5]~4_combout\ = ( \CPU|Dec_Instruction|sinais_controle~2_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~75_combout\ & (!\ROM1|memROM~64_combout\ & !\ROM1|memROM~33_combout\))) ) ) # ( 
-- !\CPU|Dec_Instruction|sinais_controle~2_combout\ & ( (((!\ROM1|memROM~75_combout\ & !\ROM1|memROM~33_combout\)) # (\ROM1|memROM~64_combout\)) # (\ROM1|memROM~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111101011111100000000000000011011111010111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~75_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	datae => \CPU|Dec_Instruction|ALT_INV_sinais_controle~2_combout\,
	combout => \CPU|Dec_Instruction|sinais_controle[5]~4_combout\);

\CPU|Bloco_Reg|enableReg0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|enableReg0~0_combout\ = (!\CPU|Dec_Instruction|sinais_controle[5]~4_combout\ & (((!\ROM1|memROM~94_combout\ & !\ROM1|memROM~89_combout\)) # (\CPU|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010100000000110101010000000011010101000000001101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Dec_Instruction|ALT_INV_sinais_controle[5]~4_combout\,
	combout => \CPU|Bloco_Reg|enableReg0~0_combout\);

\CPU|Bloco_Reg|REG0|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|ULA|saida[5]~11_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(5));

\CPU|Bloco_Reg|enableReg2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|enableReg2~combout\ = (\CPU|Bloco_Reg|enableReg2~0_combout\ & !\CPU|Dec_Instruction|sinais_controle[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_sinais_controle[5]~4_combout\,
	combout => \CPU|Bloco_Reg|enableReg2~combout\);

\CPU|Bloco_Reg|REG2|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|ULA|saida[5]~11_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(5));

\CPU|ULA|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Equal3~0_combout\ = ( !\CPU|PC|DOUT\(8) & ( (\ROM1|memROM~32_combout\ & (\ROM1|memROM~27_combout\ & (\ROM1|memROM~22_combout\ & !\ROM1|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~32_combout\,
	datab => \ROM1|ALT_INV_memROM~27_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \CPU|ULA|Equal3~0_combout\);

\CPU|ULA|saida[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~10_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(5) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(5))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(5))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(5) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(5))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(5),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(5),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(5),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[5]~10_combout\);

\CPU|ULA|saida[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[5]~11_combout\ = ( \SW[5]~input_o\ & ( !\CPU|ULA|saida[5]~10_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~652_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~63_combout\)) ) ) ) # ( !\SW[5]~input_o\ & ( !\CPU|ULA|saida[5]~10_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~652_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~63_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~63_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~652_combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[5]~10_combout\,
	combout => \CPU|ULA|saida[5]~11_combout\);

\CPU|Bloco_Reg|enableReg1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|enableReg1~combout\ = (\CPU|Bloco_Reg|enableReg1~0_combout\ & !\CPU|Dec_Instruction|sinais_controle[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_sinais_controle[5]~4_combout\,
	combout => \CPU|Bloco_Reg|enableReg1~combout\);

\CPU|Bloco_Reg|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~21_sumout\,
	asdata => \CPU|ULA|saida[5]~11_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(5));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(5) & ( \CPU|Bloco_Reg|REG2|DOUT\(5) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(5))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(5) & ( \CPU|Bloco_Reg|REG2|DOUT\(5) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(5))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(5) & ( !\CPU|Bloco_Reg|REG2|DOUT\(5) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(5)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(5) & ( !\CPU|Bloco_Reg|REG2|DOUT\(5) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(5),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(5),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(5),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\);

\CPU|Mux_EntradaB_ULA|saida_MUX[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[5]~7_combout\ = ( \SW[5]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~652_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~63_combout\)) ) ) # ( !\SW[5]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~652_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~63_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~63_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~652_combout\,
	datae => \ALT_INV_SW[5]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[5]~7_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~35_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~43_q\);

\RAM1|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~611_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~43_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~27_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~35_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~35_q\,
	datac => \RAM1|ALT_INV_ram~27_q\,
	datad => \RAM1|ALT_INV_ram~43_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~611_combout\);

\RAM1|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~147_q\);

\RAM1|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~163_q\);

\RAM1|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~155_q\);

\RAM1|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~171_q\);

\RAM1|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~612_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~171_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~155_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~163_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~147_q\,
	datab => \RAM1|ALT_INV_ram~163_q\,
	datac => \RAM1|ALT_INV_ram~155_q\,
	datad => \RAM1|ALT_INV_ram~171_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~612_combout\);

\RAM1|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~83_q\);

\RAM1|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~99_q\);

\RAM1|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~91_q\);

\RAM1|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~107_q\);

\RAM1|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~613_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~107_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~91_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~99_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~83_q\,
	datab => \RAM1|ALT_INV_ram~99_q\,
	datac => \RAM1|ALT_INV_ram~91_q\,
	datad => \RAM1|ALT_INV_ram~107_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~613_combout\);

\RAM1|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~211_q\);

\RAM1|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~227_q\);

\RAM1|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~219_q\);

\RAM1|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~235_q\);

\RAM1|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~614_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~235_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~219_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~227_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~211_q\,
	datab => \RAM1|ALT_INV_ram~227_q\,
	datac => \RAM1|ALT_INV_ram~219_q\,
	datad => \RAM1|ALT_INV_ram~235_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~614_combout\);

\RAM1|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~615_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~614_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~613_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~80_combout\ & ( \RAM1|ram~612_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~611_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~611_combout\,
	datab => \RAM1|ALT_INV_ram~612_combout\,
	datac => \RAM1|ALT_INV_ram~613_combout\,
	datad => \RAM1|ALT_INV_ram~614_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~615_combout\);

\RAM1|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~275_q\);

\RAM1|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~291_q\);

\RAM1|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~403_q\);

\RAM1|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~419_q\);

\RAM1|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~616_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~419_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~403_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~291_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~275_q\,
	datab => \RAM1|ALT_INV_ram~291_q\,
	datac => \RAM1|ALT_INV_ram~403_q\,
	datad => \RAM1|ALT_INV_ram~419_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~616_combout\);

\RAM1|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~339_q\);

\RAM1|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~355_q\);

\RAM1|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~467_q\);

\RAM1|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~483_q\);

\RAM1|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~617_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~483_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~467_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~355_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~339_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~339_q\,
	datab => \RAM1|ALT_INV_ram~355_q\,
	datac => \RAM1|ALT_INV_ram~467_q\,
	datad => \RAM1|ALT_INV_ram~483_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~617_combout\);

\RAM1|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~283_q\);

\RAM1|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~299_q\);

\RAM1|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~411_q\);

\RAM1|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~427_q\);

\RAM1|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~618_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~427_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~411_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~299_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~283_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~283_q\,
	datab => \RAM1|ALT_INV_ram~299_q\,
	datac => \RAM1|ALT_INV_ram~411_q\,
	datad => \RAM1|ALT_INV_ram~427_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~618_combout\);

\RAM1|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~347_q\);

\RAM1|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~363_q\);

\RAM1|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~475_q\);

\RAM1|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~491_q\);

\RAM1|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~619_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~491_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~475_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~363_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~347_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~347_q\,
	datab => \RAM1|ALT_INV_ram~363_q\,
	datac => \RAM1|ALT_INV_ram~475_q\,
	datad => \RAM1|ALT_INV_ram~491_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~619_combout\);

\RAM1|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~620_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~619_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~618_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~617_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~616_combout\,
	datab => \RAM1|ALT_INV_ram~617_combout\,
	datac => \RAM1|ALT_INV_ram~618_combout\,
	datad => \RAM1|ALT_INV_ram~619_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~620_combout\);

\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

\RAM1|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~67_q\);

\RAM1|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~115_q\);

\RAM1|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~131_q\);

\RAM1|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~621_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~131_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~115_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~67_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~51_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~51_q\,
	datab => \RAM1|ALT_INV_ram~67_q\,
	datac => \RAM1|ALT_INV_ram~115_q\,
	datad => \RAM1|ALT_INV_ram~131_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~621_combout\);

\RAM1|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~179_q\);

\RAM1|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~195_q\);

\RAM1|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~243_q\);

\RAM1|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~259_q\);

\RAM1|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~622_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~259_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~243_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~195_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~179_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~179_q\,
	datab => \RAM1|ALT_INV_ram~195_q\,
	datac => \RAM1|ALT_INV_ram~243_q\,
	datad => \RAM1|ALT_INV_ram~259_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~622_combout\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\RAM1|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~75_q\);

\RAM1|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~123_q\);

\RAM1|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~139_q\);

\RAM1|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~623_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~139_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~123_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~75_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~59_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~59_q\,
	datab => \RAM1|ALT_INV_ram~75_q\,
	datac => \RAM1|ALT_INV_ram~123_q\,
	datad => \RAM1|ALT_INV_ram~139_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~623_combout\);

\RAM1|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~187_q\);

\RAM1|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~203_q\);

\RAM1|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~251_q\);

\RAM1|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~267_q\);

\RAM1|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~624_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~267_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~251_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~203_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~187_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~187_q\,
	datab => \RAM1|ALT_INV_ram~203_q\,
	datac => \RAM1|ALT_INV_ram~251_q\,
	datad => \RAM1|ALT_INV_ram~267_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~624_combout\);

\RAM1|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~625_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~624_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~623_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~622_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~621_combout\,
	datab => \RAM1|ALT_INV_ram~622_combout\,
	datac => \RAM1|ALT_INV_ram~623_combout\,
	datad => \RAM1|ALT_INV_ram~624_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~625_combout\);

\RAM1|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~307_q\);

\RAM1|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~323_q\);

\RAM1|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~315_q\);

\RAM1|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~331_q\);

\RAM1|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~626_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~331_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~315_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~323_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~307_q\,
	datab => \RAM1|ALT_INV_ram~323_q\,
	datac => \RAM1|ALT_INV_ram~315_q\,
	datad => \RAM1|ALT_INV_ram~331_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~626_combout\);

\RAM1|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~435_q\);

\RAM1|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~451_q\);

\RAM1|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~443_q\);

\RAM1|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~459_q\);

\RAM1|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~627_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~459_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~443_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~451_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~435_q\,
	datab => \RAM1|ALT_INV_ram~451_q\,
	datac => \RAM1|ALT_INV_ram~443_q\,
	datad => \RAM1|ALT_INV_ram~459_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~627_combout\);

\RAM1|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~371_q\);

\RAM1|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~387_q\);

\RAM1|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~379_q\);

\RAM1|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~395_q\);

\RAM1|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~628_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~395_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~379_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~387_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~371_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~371_q\,
	datab => \RAM1|ALT_INV_ram~387_q\,
	datac => \RAM1|ALT_INV_ram~379_q\,
	datad => \RAM1|ALT_INV_ram~395_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~628_combout\);

\RAM1|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~499_q\);

\RAM1|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~515_q\);

\RAM1|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~507_q\);

\RAM1|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~523_q\);

\RAM1|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~629_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~523_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~507_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~515_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~499_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~499_q\,
	datab => \RAM1|ALT_INV_ram~515_q\,
	datac => \RAM1|ALT_INV_ram~507_q\,
	datad => \RAM1|ALT_INV_ram~523_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~629_combout\);

\RAM1|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~630_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~629_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~628_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~80_combout\ & ( \RAM1|ram~627_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~626_combout\,
	datab => \RAM1|ALT_INV_ram~627_combout\,
	datac => \RAM1|ALT_INV_ram~628_combout\,
	datad => \RAM1|ALT_INV_ram~629_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~630_combout\);

\RAM1|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~631_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~85_combout\ & ( \RAM1|ram~630_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~85_combout\ & ( \RAM1|ram~625_combout\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( 
-- !\ROM1|memROM~85_combout\ & ( \RAM1|ram~620_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~85_combout\ & ( \RAM1|ram~615_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~615_combout\,
	datab => \RAM1|ALT_INV_ram~620_combout\,
	datac => \RAM1|ALT_INV_ram~625_combout\,
	datad => \RAM1|ALT_INV_ram~630_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~85_combout\,
	combout => \RAM1|ram~631_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\CPU|Mux_EntradaB_ULA|saida_MUX[4]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[4]~6_combout\ = ( \SW[4]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~631_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~76_combout\)) ) ) # ( !\SW[4]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~631_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~76_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~76_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~631_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[4]~6_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~82_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~90_q\);

\RAM1|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~590_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~90_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~26_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~82_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~82_q\,
	datac => \RAM1|ALT_INV_ram~26_q\,
	datad => \RAM1|ALT_INV_ram~90_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~590_combout\);

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~114_q\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~122_q\);

\RAM1|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~591_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~122_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~58_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~114_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~50_q\,
	datab => \RAM1|ALT_INV_ram~114_q\,
	datac => \RAM1|ALT_INV_ram~58_q\,
	datad => \RAM1|ALT_INV_ram~122_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~591_combout\);

\RAM1|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~146_q\);

\RAM1|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~210_q\);

\RAM1|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~154_q\);

\RAM1|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~218_q\);

\RAM1|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~592_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~218_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~154_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~210_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~146_q\,
	datab => \RAM1|ALT_INV_ram~210_q\,
	datac => \RAM1|ALT_INV_ram~154_q\,
	datad => \RAM1|ALT_INV_ram~218_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~592_combout\);

\RAM1|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~178_q\);

\RAM1|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~242_q\);

\RAM1|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~186_q\);

\RAM1|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~250_q\);

\RAM1|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~593_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~250_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~186_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~242_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~178_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~178_q\,
	datab => \RAM1|ALT_INV_ram~242_q\,
	datac => \RAM1|ALT_INV_ram~186_q\,
	datad => \RAM1|ALT_INV_ram~250_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~593_combout\);

\RAM1|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~594_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~593_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~592_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~591_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~590_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~590_combout\,
	datab => \RAM1|ALT_INV_ram~591_combout\,
	datac => \RAM1|ALT_INV_ram~592_combout\,
	datad => \RAM1|ALT_INV_ram~593_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~594_combout\);

\RAM1|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~274_q\);

\RAM1|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~402_q\);

\RAM1|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~282_q\);

\RAM1|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~410_q\);

\RAM1|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~595_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~410_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~282_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~402_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~274_q\,
	datab => \RAM1|ALT_INV_ram~402_q\,
	datac => \RAM1|ALT_INV_ram~282_q\,
	datad => \RAM1|ALT_INV_ram~410_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~595_combout\);

\RAM1|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~306_q\);

\RAM1|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~434_q\);

\RAM1|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~314_q\);

\RAM1|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~442_q\);

\RAM1|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~596_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~442_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~314_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~434_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~306_q\,
	datab => \RAM1|ALT_INV_ram~434_q\,
	datac => \RAM1|ALT_INV_ram~314_q\,
	datad => \RAM1|ALT_INV_ram~442_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~596_combout\);

\RAM1|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~338_q\);

\RAM1|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~466_q\);

\RAM1|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~346_q\);

\RAM1|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~474_q\);

\RAM1|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~597_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~474_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~346_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~466_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~338_q\,
	datab => \RAM1|ALT_INV_ram~466_q\,
	datac => \RAM1|ALT_INV_ram~346_q\,
	datad => \RAM1|ALT_INV_ram~474_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~597_combout\);

\RAM1|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~370_q\);

\RAM1|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~498_q\);

\RAM1|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~378_q\);

\RAM1|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~506_q\);

\RAM1|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~598_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~506_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~378_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~498_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~370_q\,
	datab => \RAM1|ALT_INV_ram~498_q\,
	datac => \RAM1|ALT_INV_ram~378_q\,
	datad => \RAM1|ALT_INV_ram~506_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~598_combout\);

\RAM1|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~599_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~598_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~597_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~80_combout\ & ( \RAM1|ram~596_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~595_combout\,
	datab => \RAM1|ALT_INV_ram~596_combout\,
	datac => \RAM1|ALT_INV_ram~597_combout\,
	datad => \RAM1|ALT_INV_ram~598_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~599_combout\);

\RAM1|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~34_q\);

\RAM1|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~66_q\);

\RAM1|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~42_q\);

\RAM1|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~74_q\);

\RAM1|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~600_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~74_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~42_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~66_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~34_q\,
	datab => \RAM1|ALT_INV_ram~66_q\,
	datac => \RAM1|ALT_INV_ram~42_q\,
	datad => \RAM1|ALT_INV_ram~74_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~600_combout\);

\RAM1|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~98_q\);

\RAM1|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~130_q\);

\RAM1|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~106_q\);

\RAM1|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~138_q\);

\RAM1|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~601_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~138_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~106_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~130_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~98_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~98_q\,
	datab => \RAM1|ALT_INV_ram~130_q\,
	datac => \RAM1|ALT_INV_ram~106_q\,
	datad => \RAM1|ALT_INV_ram~138_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~601_combout\);

\RAM1|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~162_q\);

\RAM1|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~194_q\);

\RAM1|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~170_q\);

\RAM1|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~202_q\);

\RAM1|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~602_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~202_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~170_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~194_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~162_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~162_q\,
	datab => \RAM1|ALT_INV_ram~194_q\,
	datac => \RAM1|ALT_INV_ram~170_q\,
	datad => \RAM1|ALT_INV_ram~202_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~602_combout\);

\RAM1|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~226_q\);

\RAM1|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~258_q\);

\RAM1|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~234_q\);

\RAM1|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~266_q\);

\RAM1|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~603_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~266_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~234_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~258_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~226_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~226_q\,
	datab => \RAM1|ALT_INV_ram~258_q\,
	datac => \RAM1|ALT_INV_ram~234_q\,
	datad => \RAM1|ALT_INV_ram~266_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~603_combout\);

\RAM1|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~604_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~603_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~602_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~601_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~600_combout\,
	datab => \RAM1|ALT_INV_ram~601_combout\,
	datac => \RAM1|ALT_INV_ram~602_combout\,
	datad => \RAM1|ALT_INV_ram~603_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~604_combout\);

\RAM1|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~290_q\);

\RAM1|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~322_q\);

\RAM1|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~354_q\);

\RAM1|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~386_q\);

\RAM1|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~605_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~386_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~354_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~322_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~290_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~290_q\,
	datab => \RAM1|ALT_INV_ram~322_q\,
	datac => \RAM1|ALT_INV_ram~354_q\,
	datad => \RAM1|ALT_INV_ram~386_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~605_combout\);

\RAM1|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~418_q\);

\RAM1|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~450_q\);

\RAM1|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~482_q\);

\RAM1|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~514_q\);

\RAM1|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~606_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~514_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~482_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~450_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~418_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~418_q\,
	datab => \RAM1|ALT_INV_ram~450_q\,
	datac => \RAM1|ALT_INV_ram~482_q\,
	datad => \RAM1|ALT_INV_ram~514_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~606_combout\);

\RAM1|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~298_q\);

\RAM1|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~330_q\);

\RAM1|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~362_q\);

\RAM1|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~394_q\);

\RAM1|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~607_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~394_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~362_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~330_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~298_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~298_q\,
	datab => \RAM1|ALT_INV_ram~330_q\,
	datac => \RAM1|ALT_INV_ram~362_q\,
	datad => \RAM1|ALT_INV_ram~394_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~607_combout\);

\RAM1|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~426_q\);

\RAM1|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~458_q\);

\RAM1|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~490_q\);

\RAM1|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~522_q\);

\RAM1|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~608_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~522_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~490_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~458_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~426_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~426_q\,
	datab => \RAM1|ALT_INV_ram~458_q\,
	datac => \RAM1|ALT_INV_ram~490_q\,
	datad => \RAM1|ALT_INV_ram~522_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~608_combout\);

\RAM1|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~609_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~608_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~607_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~606_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~605_combout\,
	datab => \RAM1|ALT_INV_ram~606_combout\,
	datac => \RAM1|ALT_INV_ram~607_combout\,
	datad => \RAM1|ALT_INV_ram~608_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~609_combout\);

\RAM1|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~610_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~609_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~604_combout\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~599_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~594_combout\,
	datab => \RAM1|ALT_INV_ram~599_combout\,
	datac => \RAM1|ALT_INV_ram~604_combout\,
	datad => \RAM1|ALT_INV_ram~609_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~610_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\CPU|Mux_EntradaB_ULA|saida_MUX[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[3]~5_combout\ = ( \SW[3]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~610_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~80_combout\)) ) ) # ( !\SW[3]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~610_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~80_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~80_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~610_combout\,
	datae => \ALT_INV_SW[3]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[3]~5_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~47_q\);

\RAM1|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~143_q\);

\RAM1|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~175_q\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~175_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~143_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~47_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datab => \RAM1|ALT_INV_ram~47_q\,
	datac => \RAM1|ALT_INV_ram~143_q\,
	datad => \RAM1|ALT_INV_ram~175_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~79_q\);

\RAM1|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~111_q\);

\RAM1|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~207_q\);

\RAM1|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~239_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~239_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~207_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~111_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~79_q\,
	datab => \RAM1|ALT_INV_ram~111_q\,
	datac => \RAM1|ALT_INV_ram~207_q\,
	datad => \RAM1|ALT_INV_ram~239_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~151_q\);

\RAM1|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~183_q\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~183_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~151_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~55_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \RAM1|ALT_INV_ram~55_q\,
	datac => \RAM1|ALT_INV_ram~151_q\,
	datad => \RAM1|ALT_INV_ram~183_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~87_q\);

\RAM1|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~119_q\);

\RAM1|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~215_q\);

\RAM1|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~247_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~247_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~215_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~119_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~87_q\,
	datab => \RAM1|ALT_INV_ram~119_q\,
	datac => \RAM1|ALT_INV_ram~215_q\,
	datad => \RAM1|ALT_INV_ram~247_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~530_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~529_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~528_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	datac => \RAM1|ALT_INV_ram~529_combout\,
	datad => \RAM1|ALT_INV_ram~530_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~531_combout\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

\RAM1|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~95_q\);

\RAM1|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~127_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~127_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~95_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( 
-- \RAM1|ram~63_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~31_q\,
	datab => \RAM1|ALT_INV_ram~63_q\,
	datac => \RAM1|ALT_INV_ram~95_q\,
	datad => \RAM1|ALT_INV_ram~127_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~159_q\);

\RAM1|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~191_q\);

\RAM1|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~223_q\);

\RAM1|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~255_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~255_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~223_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~191_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~159_q\,
	datab => \RAM1|ALT_INV_ram~191_q\,
	datac => \RAM1|ALT_INV_ram~223_q\,
	datad => \RAM1|ALT_INV_ram~255_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~39_q\);

\RAM1|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~71_q\);

\RAM1|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~103_q\);

\RAM1|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~135_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~135_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~103_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~71_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~39_q\,
	datab => \RAM1|ALT_INV_ram~71_q\,
	datac => \RAM1|ALT_INV_ram~103_q\,
	datad => \RAM1|ALT_INV_ram~135_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~167_q\);

\RAM1|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~199_q\);

\RAM1|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~231_q\);

\RAM1|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~263_q\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~263_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~231_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~199_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~167_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~167_q\,
	datab => \RAM1|ALT_INV_ram~199_q\,
	datac => \RAM1|ALT_INV_ram~231_q\,
	datad => \RAM1|ALT_INV_ram~263_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~535_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~534_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~533_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~532_combout\,
	datab => \RAM1|ALT_INV_ram~533_combout\,
	datac => \RAM1|ALT_INV_ram~534_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~271_q\);

\RAM1|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~399_q\);

\RAM1|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~279_q\);

\RAM1|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~407_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~407_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~279_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~399_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~271_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~271_q\,
	datab => \RAM1|ALT_INV_ram~399_q\,
	datac => \RAM1|ALT_INV_ram~279_q\,
	datad => \RAM1|ALT_INV_ram~407_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~303_q\);

\RAM1|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~431_q\);

\RAM1|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~311_q\);

\RAM1|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~439_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~439_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~311_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~431_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~303_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~303_q\,
	datab => \RAM1|ALT_INV_ram~431_q\,
	datac => \RAM1|ALT_INV_ram~311_q\,
	datad => \RAM1|ALT_INV_ram~439_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~335_q\);

\RAM1|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~463_q\);

\RAM1|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~343_q\);

\RAM1|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~471_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~471_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~343_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~463_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~335_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~335_q\,
	datab => \RAM1|ALT_INV_ram~463_q\,
	datac => \RAM1|ALT_INV_ram~343_q\,
	datad => \RAM1|ALT_INV_ram~471_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~367_q\);

\RAM1|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~495_q\);

\RAM1|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~375_q\);

\RAM1|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~503_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~503_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~375_q\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~495_q\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~367_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~367_q\,
	datab => \RAM1|ALT_INV_ram~495_q\,
	datac => \RAM1|ALT_INV_ram~375_q\,
	datad => \RAM1|ALT_INV_ram~503_q\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~539_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~80_combout\ & ( \RAM1|ram~538_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~537_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	datad => \RAM1|ALT_INV_ram~540_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~287_q\);

\RAM1|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~319_q\);

\RAM1|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~351_q\);

\RAM1|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~383_q\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~383_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~351_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~319_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~287_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~287_q\,
	datab => \RAM1|ALT_INV_ram~319_q\,
	datac => \RAM1|ALT_INV_ram~351_q\,
	datad => \RAM1|ALT_INV_ram~383_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~415_q\);

\RAM1|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~447_q\);

\RAM1|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~479_q\);

\RAM1|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~511_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~511_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~479_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~447_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~415_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~415_q\,
	datab => \RAM1|ALT_INV_ram~447_q\,
	datac => \RAM1|ALT_INV_ram~479_q\,
	datad => \RAM1|ALT_INV_ram~511_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~295_q\);

\RAM1|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~327_q\);

\RAM1|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~359_q\);

\RAM1|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~391_q\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~391_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~359_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~327_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~295_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~295_q\,
	datab => \RAM1|ALT_INV_ram~327_q\,
	datac => \RAM1|ALT_INV_ram~359_q\,
	datad => \RAM1|ALT_INV_ram~391_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~423_q\);

\RAM1|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~455_q\);

\RAM1|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~487_q\);

\RAM1|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~519_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~519_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~487_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~455_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~423_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~423_q\,
	datab => \RAM1|ALT_INV_ram~455_q\,
	datac => \RAM1|ALT_INV_ram~487_q\,
	datad => \RAM1|ALT_INV_ram~519_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~545_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~544_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~543_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~542_combout\,
	datab => \RAM1|ALT_INV_ram~543_combout\,
	datac => \RAM1|ALT_INV_ram~544_combout\,
	datad => \RAM1|ALT_INV_ram~545_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~63_combout\ & ( \RAM1|ram~546_combout\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~63_combout\ & ( \RAM1|ram~541_combout\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( 
-- !\ROM1|memROM~63_combout\ & ( \RAM1|ram~536_combout\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~63_combout\ & ( \RAM1|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~531_combout\,
	datab => \RAM1|ALT_INV_ram~536_combout\,
	datac => \RAM1|ALT_INV_ram~541_combout\,
	datad => \RAM1|ALT_INV_ram~546_combout\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \RAM1|ram~547_combout\);

\Data_In[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~0_combout\ = ( \CPU|Dec_Instruction|sinais_controle[1]~0_combout\ & ( (!\ROM1|memROM~73_combout\ & (!\ROM1|memROM~74_combout\ & ((!\ROM1|memROM~52_combout\) # (\CPU|PC|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000100000000000000000000001100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~73_combout\,
	datac => \ROM1|ALT_INV_memROM~74_combout\,
	datad => \ROM1|ALT_INV_memROM~52_combout\,
	datae => \CPU|Dec_Instruction|ALT_INV_sinais_controle[1]~0_combout\,
	combout => \Data_In[0]~0_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\Data_In[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~1_combout\ = (\CPU|Dec_Instruction|sinais_controle[1]~0_combout\ & (\SW[0]~input_o\ & (\DECODER1|enableSWVector~0_combout\ & \DECODER1|enableSWVector~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[1]~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \DECODER1|ALT_INV_enableSWVector~0_combout\,
	datad => \DECODER1|ALT_INV_enableSWVector~2_combout\,
	combout => \Data_In[0]~1_combout\);

\DECODER1|enableSWVector~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableSWVector~1_combout\ = (\CPU|Dec_Instruction|sinais_controle[1]~0_combout\ & \DECODER1|enableSWVector~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[1]~0_combout\,
	datab => \DECODER1|ALT_INV_enableSWVector~0_combout\,
	combout => \DECODER1|enableSWVector~1_combout\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\Data_In[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~8_combout\ = ( \KEY[0]~input_o\ & ( \KEY[1]~input_o\ & ( (\ROM1|memROM~58_combout\ & ((!\ROM1|memROM~11_combout\ & ((!\KEY[2]~input_o\))) # (\ROM1|memROM~11_combout\ & (!\KEY[3]~input_o\)))) ) ) ) # ( !\KEY[0]~input_o\ & ( \KEY[1]~input_o\ & ( 
-- (!\ROM1|memROM~11_combout\ & (((!\ROM1|memROM~58_combout\) # (!\KEY[2]~input_o\)))) # (\ROM1|memROM~11_combout\ & (!\KEY[3]~input_o\ & (\ROM1|memROM~58_combout\))) ) ) ) # ( \KEY[0]~input_o\ & ( !\KEY[1]~input_o\ & ( (!\ROM1|memROM~11_combout\ & 
-- (((\ROM1|memROM~58_combout\ & !\KEY[2]~input_o\)))) # (\ROM1|memROM~11_combout\ & ((!\KEY[3]~input_o\) # ((!\ROM1|memROM~58_combout\)))) ) ) ) # ( !\KEY[0]~input_o\ & ( !\KEY[1]~input_o\ & ( (!\ROM1|memROM~58_combout\) # ((!\ROM1|memROM~11_combout\ & 
-- ((!\KEY[2]~input_o\))) # (\ROM1|memROM~11_combout\ & (!\KEY[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011110010001111100011001011001110110000100000111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~58_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \Data_In[0]~8_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\Data_In[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~4_combout\ = ( \SW[9]~input_o\ & ( (!\ROM1|memROM~11_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~57_combout\))) # (\ROM1|memROM~11_combout\ & (\SW[8]~input_o\ & ((!\ROM1|memROM~57_combout\) # (\CPU|PC|DOUT\(8))))) ) ) # ( !\SW[9]~input_o\ & 
-- ( (\ROM1|memROM~11_combout\ & (\SW[8]~input_o\ & ((!\ROM1|memROM~57_combout\) # (\CPU|PC|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000010000011100100000000001100010000100000111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~57_combout\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	combout => \Data_In[0]~4_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\Data_In[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~6_combout\ = ( \ROM1|memROM~62_combout\ & ( !\FPGA_RESET_N~input_o\ & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~11_combout\ & (\ROM1|memROM~85_combout\ & !\ROM1|memROM~57_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~57_combout\,
	datae => \ROM1|ALT_INV_memROM~62_combout\,
	dataf => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \Data_In[0]~6_combout\);

\Data_In[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~9_combout\ = ( \Data_In[0]~4_combout\ & ( \Data_In[0]~6_combout\ & ( \DECODER1|enableSWVector~1_combout\ ) ) ) # ( !\Data_In[0]~4_combout\ & ( \Data_In[0]~6_combout\ & ( \DECODER1|enableSWVector~1_combout\ ) ) ) # ( \Data_In[0]~4_combout\ & ( 
-- !\Data_In[0]~6_combout\ & ( (!\ROM1|memROM~85_combout\ & (\DECODER1|enableSWVector~1_combout\ & ((!\ROM1|memROM~63_combout\) # (\Data_In[0]~8_combout\)))) ) ) ) # ( !\Data_In[0]~4_combout\ & ( !\Data_In[0]~6_combout\ & ( (!\ROM1|memROM~85_combout\ & 
-- (\ROM1|memROM~63_combout\ & (\DECODER1|enableSWVector~1_combout\ & \Data_In[0]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000010000000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~85_combout\,
	datab => \ROM1|ALT_INV_memROM~63_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~1_combout\,
	datad => \ALT_INV_Data_In[0]~8_combout\,
	datae => \ALT_INV_Data_In[0]~4_combout\,
	dataf => \ALT_INV_Data_In[0]~6_combout\,
	combout => \Data_In[0]~9_combout\);

\CPU|Mux_EntradaB_ULA|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[0]~0_combout\ = ( \Data_In[0]~1_combout\ & ( \Data_In[0]~9_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\) # (\ROM1|memROM~11_combout\) ) ) ) # ( !\Data_In[0]~1_combout\ & ( \Data_In[0]~9_combout\ & ( 
-- (!\CPU|Dec_Instruction|Equal12~0_combout\) # (\ROM1|memROM~11_combout\) ) ) ) # ( \Data_In[0]~1_combout\ & ( !\Data_In[0]~9_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\) # (\ROM1|memROM~11_combout\) ) ) ) # ( !\Data_In[0]~1_combout\ & ( 
-- !\Data_In[0]~9_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~547_combout\ & \Data_In[0]~0_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111011101110111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \RAM1|ALT_INV_ram~547_combout\,
	datad => \ALT_INV_Data_In[0]~0_combout\,
	datae => \ALT_INV_Data_In[0]~1_combout\,
	dataf => \ALT_INV_Data_In[0]~9_combout\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[0]~0_combout\);

\CPU|ULA|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~34_cout\ = CARRY(( (!\CPU|Dec_Instruction|sinais_controle~1_combout\) # ((!\CPU|Dec_Instruction|Equal12~1_combout\ & \CPU|Dec_Instruction|sinais_controle[4]~6_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datad => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	cin => GND,
	cout => \CPU|ULA|Add0~34_cout\);

\CPU|ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[0]~0_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~34_cout\ ))
-- \CPU|ULA|Add0~2\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[0]~0_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100101011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	cin => \CPU|ULA|Add0~34_cout\,
	sumout => \CPU|ULA|Add0~1_sumout\,
	cout => \CPU|ULA|Add0~2\);

\CPU|ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~5_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[1]~1_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~2\ ))
-- \CPU|ULA|Add0~6\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[1]~1_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000001111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datac => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	cin => \CPU|ULA|Add0~2\,
	sumout => \CPU|ULA|Add0~5_sumout\,
	cout => \CPU|ULA|Add0~6\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\CPU|Bloco_Reg|REG0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|ULA|saida[1]~3_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(1));

\CPU|Bloco_Reg|REG2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|ULA|saida[1]~3_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(1));

\CPU|ULA|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~2_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(1) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(1))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(1))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(1) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(1))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(1),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(1),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(1),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[1]~2_combout\);

\CPU|ULA|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[1]~3_combout\ = ( \SW[1]~input_o\ & ( !\CPU|ULA|saida[1]~2_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~568_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~58_combout\)) ) ) ) # ( !\SW[1]~input_o\ & ( !\CPU|ULA|saida[1]~2_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~568_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~58_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~58_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~568_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[1]~2_combout\,
	combout => \CPU|ULA|saida[1]~3_combout\);

\CPU|Bloco_Reg|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~5_sumout\,
	asdata => \CPU|ULA|saida[1]~3_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(1));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(1) & ( \CPU|Bloco_Reg|REG2|DOUT\(1) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(1))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(1) & ( \CPU|Bloco_Reg|REG2|DOUT\(1) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(1))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(1) & ( !\CPU|Bloco_Reg|REG2|DOUT\(1) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(1)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(1) & ( !\CPU|Bloco_Reg|REG2|DOUT\(1) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(1),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(1),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(1),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~40_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~40_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~24_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~32_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \RAM1|ALT_INV_ram~24_q\,
	datad => \RAM1|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~80_q\);

\RAM1|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~96_q\);

\RAM1|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~88_q\);

\RAM1|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~104_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~104_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~88_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~96_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~80_q\,
	datab => \RAM1|ALT_INV_ram~96_q\,
	datac => \RAM1|ALT_INV_ram~88_q\,
	datad => \RAM1|ALT_INV_ram~104_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~144_q\);

\RAM1|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~160_q\);

\RAM1|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~152_q\);

\RAM1|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~168_q\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~168_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~152_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~160_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~144_q\,
	datab => \RAM1|ALT_INV_ram~160_q\,
	datac => \RAM1|ALT_INV_ram~152_q\,
	datad => \RAM1|ALT_INV_ram~168_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~208_q\);

\RAM1|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~224_q\);

\RAM1|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~216_q\);

\RAM1|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~232_q\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~232_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~216_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~224_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~208_q\,
	datab => \RAM1|ALT_INV_ram~224_q\,
	datac => \RAM1|ALT_INV_ram~216_q\,
	datad => \RAM1|ALT_INV_ram~232_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~551_combout\);

\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~551_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~550_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~548_combout\,
	datab => \RAM1|ALT_INV_ram~549_combout\,
	datac => \RAM1|ALT_INV_ram~550_combout\,
	datad => \RAM1|ALT_INV_ram~551_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~552_combout\);

\RAM1|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~272_q\);

\RAM1|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~288_q\);

\RAM1|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~336_q\);

\RAM1|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~352_q\);

\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~352_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~336_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~288_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~272_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~272_q\,
	datab => \RAM1|ALT_INV_ram~288_q\,
	datac => \RAM1|ALT_INV_ram~336_q\,
	datad => \RAM1|ALT_INV_ram~352_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~553_combout\);

\RAM1|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~400_q\);

\RAM1|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~416_q\);

\RAM1|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~464_q\);

\RAM1|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~480_q\);

\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~480_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~464_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~416_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~400_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~400_q\,
	datab => \RAM1|ALT_INV_ram~416_q\,
	datac => \RAM1|ALT_INV_ram~464_q\,
	datad => \RAM1|ALT_INV_ram~480_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~554_combout\);

\RAM1|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~280_q\);

\RAM1|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~296_q\);

\RAM1|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~344_q\);

\RAM1|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~360_q\);

\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~360_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~344_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~296_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~280_q\,
	datab => \RAM1|ALT_INV_ram~296_q\,
	datac => \RAM1|ALT_INV_ram~344_q\,
	datad => \RAM1|ALT_INV_ram~360_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~555_combout\);

\RAM1|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~408_q\);

\RAM1|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~424_q\);

\RAM1|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~472_q\);

\RAM1|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~488_q\);

\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~488_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~472_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~424_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~408_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~408_q\,
	datab => \RAM1|ALT_INV_ram~424_q\,
	datac => \RAM1|ALT_INV_ram~472_q\,
	datad => \RAM1|ALT_INV_ram~488_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~556_combout\);

\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~556_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~555_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~554_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~553_combout\,
	datab => \RAM1|ALT_INV_ram~554_combout\,
	datac => \RAM1|ALT_INV_ram~555_combout\,
	datad => \RAM1|ALT_INV_ram~556_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~557_combout\);

\RAM1|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~48_q\);

\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

\RAM1|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~176_q\);

\RAM1|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~192_q\);

\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~192_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~176_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~64_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~48_q\,
	datab => \RAM1|ALT_INV_ram~64_q\,
	datac => \RAM1|ALT_INV_ram~176_q\,
	datad => \RAM1|ALT_INV_ram~192_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~558_combout\);

\RAM1|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~112_q\);

\RAM1|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~128_q\);

\RAM1|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~240_q\);

\RAM1|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~256_q\);

\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~256_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~240_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~128_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~112_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~112_q\,
	datab => \RAM1|ALT_INV_ram~128_q\,
	datac => \RAM1|ALT_INV_ram~240_q\,
	datad => \RAM1|ALT_INV_ram~256_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~559_combout\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~72_q\);

\RAM1|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~184_q\);

\RAM1|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~200_q\);

\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~200_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~184_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~72_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~56_q\,
	datab => \RAM1|ALT_INV_ram~72_q\,
	datac => \RAM1|ALT_INV_ram~184_q\,
	datad => \RAM1|ALT_INV_ram~200_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~560_combout\);

\RAM1|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~120_q\);

\RAM1|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~136_q\);

\RAM1|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~248_q\);

\RAM1|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~264_q\);

\RAM1|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~561_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~264_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~248_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~136_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~120_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~120_q\,
	datab => \RAM1|ALT_INV_ram~136_q\,
	datac => \RAM1|ALT_INV_ram~248_q\,
	datad => \RAM1|ALT_INV_ram~264_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~561_combout\);

\RAM1|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~562_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~561_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~560_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~559_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~558_combout\,
	datab => \RAM1|ALT_INV_ram~559_combout\,
	datac => \RAM1|ALT_INV_ram~560_combout\,
	datad => \RAM1|ALT_INV_ram~561_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~562_combout\);

\RAM1|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~304_q\);

\RAM1|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~320_q\);

\RAM1|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~312_q\);

\RAM1|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~328_q\);

\RAM1|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~563_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~328_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~312_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~320_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~304_q\,
	datab => \RAM1|ALT_INV_ram~320_q\,
	datac => \RAM1|ALT_INV_ram~312_q\,
	datad => \RAM1|ALT_INV_ram~328_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~563_combout\);

\RAM1|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~368_q\);

\RAM1|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~384_q\);

\RAM1|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~376_q\);

\RAM1|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~392_q\);

\RAM1|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~564_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~392_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~376_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~384_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~368_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~368_q\,
	datab => \RAM1|ALT_INV_ram~384_q\,
	datac => \RAM1|ALT_INV_ram~376_q\,
	datad => \RAM1|ALT_INV_ram~392_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~564_combout\);

\RAM1|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~432_q\);

\RAM1|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~448_q\);

\RAM1|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~440_q\);

\RAM1|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~456_q\);

\RAM1|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~565_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~456_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~440_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~448_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~432_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~432_q\,
	datab => \RAM1|ALT_INV_ram~448_q\,
	datac => \RAM1|ALT_INV_ram~440_q\,
	datad => \RAM1|ALT_INV_ram~456_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~565_combout\);

\RAM1|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~496_q\);

\RAM1|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~512_q\);

\RAM1|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~504_q\);

\RAM1|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~520_q\);

\RAM1|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~566_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~520_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~504_q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~512_q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~496_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~496_q\,
	datab => \RAM1|ALT_INV_ram~512_q\,
	datac => \RAM1|ALT_INV_ram~504_q\,
	datad => \RAM1|ALT_INV_ram~520_q\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~566_combout\);

\RAM1|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~567_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~566_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~565_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~564_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~563_combout\,
	datab => \RAM1|ALT_INV_ram~564_combout\,
	datac => \RAM1|ALT_INV_ram~565_combout\,
	datad => \RAM1|ALT_INV_ram~566_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~567_combout\);

\RAM1|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~568_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~85_combout\ & ( \RAM1|ram~567_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~85_combout\ & ( \RAM1|ram~562_combout\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( 
-- !\ROM1|memROM~85_combout\ & ( \RAM1|ram~557_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~85_combout\ & ( \RAM1|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~552_combout\,
	datab => \RAM1|ALT_INV_ram~557_combout\,
	datac => \RAM1|ALT_INV_ram~562_combout\,
	datad => \RAM1|ALT_INV_ram~567_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~85_combout\,
	combout => \RAM1|ram~568_combout\);

\CPU|Mux_EntradaB_ULA|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[1]~1_combout\ = ( \SW[1]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~568_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~58_combout\)) ) ) # ( !\SW[1]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~568_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~58_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~58_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~568_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[1]~1_combout\);

\CPU|ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~9_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[2]~4_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~6\ ))
-- \CPU|ULA|Add0~10\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[2]~4_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000001111000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datac => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[2]~4_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	cin => \CPU|ULA|Add0~6\,
	sumout => \CPU|ULA|Add0~9_sumout\,
	cout => \CPU|ULA|Add0~10\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\CPU|Bloco_Reg|REG0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|ULA|saida[2]~5_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(2));

\CPU|Bloco_Reg|REG2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|ULA|saida[2]~5_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(2));

\CPU|ULA|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~4_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(2) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(2))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(2))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(2) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(2))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(2),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(2),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(2),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[2]~4_combout\);

\CPU|ULA|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[2]~5_combout\ = ( \SW[2]~input_o\ & ( !\CPU|ULA|saida[2]~4_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~589_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~85_combout\)) ) ) ) # ( !\SW[2]~input_o\ & ( !\CPU|ULA|saida[2]~4_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~589_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~85_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~85_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~589_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[2]~4_combout\,
	combout => \CPU|ULA|saida[2]~5_combout\);

\CPU|Bloco_Reg|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~9_sumout\,
	asdata => \CPU|ULA|saida[2]~5_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(2));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(2) & ( \CPU|Bloco_Reg|REG2|DOUT\(2) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(2))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(2) & ( \CPU|Bloco_Reg|REG2|DOUT\(2) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(2))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(2) & ( !\CPU|Bloco_Reg|REG2|DOUT\(2) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(2)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(2) & ( !\CPU|Bloco_Reg|REG2|DOUT\(2) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(2),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(2),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(2),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~33_q\);

\RAM1|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~65_q\);

\RAM1|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~569_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~65_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~33_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( 
-- \RAM1|ram~49_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~49_q\,
	datac => \RAM1|ALT_INV_ram~33_q\,
	datad => \RAM1|ALT_INV_ram~65_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~569_combout\);

\RAM1|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~81_q\);

\RAM1|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~113_q\);

\RAM1|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~97_q\);

\RAM1|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~129_q\);

\RAM1|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~570_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~129_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~97_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( 
-- \RAM1|ram~113_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~81_q\,
	datab => \RAM1|ALT_INV_ram~113_q\,
	datac => \RAM1|ALT_INV_ram~97_q\,
	datad => \RAM1|ALT_INV_ram~129_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~570_combout\);

\RAM1|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~145_q\);

\RAM1|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~177_q\);

\RAM1|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~161_q\);

\RAM1|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~193_q\);

\RAM1|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~571_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~193_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~161_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~177_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~145_q\,
	datab => \RAM1|ALT_INV_ram~177_q\,
	datac => \RAM1|ALT_INV_ram~161_q\,
	datad => \RAM1|ALT_INV_ram~193_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~571_combout\);

\RAM1|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~209_q\);

\RAM1|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~241_q\);

\RAM1|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~225_q\);

\RAM1|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~257_q\);

\RAM1|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~572_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~257_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~225_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~241_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~209_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~209_q\,
	datab => \RAM1|ALT_INV_ram~241_q\,
	datac => \RAM1|ALT_INV_ram~225_q\,
	datad => \RAM1|ALT_INV_ram~257_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~572_combout\);

\RAM1|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~573_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~572_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~571_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~570_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~569_combout\,
	datab => \RAM1|ALT_INV_ram~570_combout\,
	datac => \RAM1|ALT_INV_ram~571_combout\,
	datad => \RAM1|ALT_INV_ram~572_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~573_combout\);

\RAM1|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~273_q\);

\RAM1|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~337_q\);

\RAM1|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~289_q\);

\RAM1|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~353_q\);

\RAM1|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~574_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~353_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~289_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~337_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~273_q\,
	datab => \RAM1|ALT_INV_ram~337_q\,
	datac => \RAM1|ALT_INV_ram~289_q\,
	datad => \RAM1|ALT_INV_ram~353_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~574_combout\);

\RAM1|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~305_q\);

\RAM1|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~369_q\);

\RAM1|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~321_q\);

\RAM1|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~385_q\);

\RAM1|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~575_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~385_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~321_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~369_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~305_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~305_q\,
	datab => \RAM1|ALT_INV_ram~369_q\,
	datac => \RAM1|ALT_INV_ram~321_q\,
	datad => \RAM1|ALT_INV_ram~385_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~575_combout\);

\RAM1|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~401_q\);

\RAM1|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~465_q\);

\RAM1|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~417_q\);

\RAM1|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~481_q\);

\RAM1|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~576_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~481_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~417_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~465_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~401_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~401_q\,
	datab => \RAM1|ALT_INV_ram~465_q\,
	datac => \RAM1|ALT_INV_ram~417_q\,
	datad => \RAM1|ALT_INV_ram~481_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~576_combout\);

\RAM1|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~433_q\);

\RAM1|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~497_q\);

\RAM1|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~449_q\);

\RAM1|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~513_q\);

\RAM1|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~577_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~513_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~449_q\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~497_q\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~433_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~433_q\,
	datab => \RAM1|ALT_INV_ram~497_q\,
	datac => \RAM1|ALT_INV_ram~449_q\,
	datad => \RAM1|ALT_INV_ram~513_q\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~577_combout\);

\RAM1|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~578_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~577_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~576_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~76_combout\ & ( \RAM1|ram~575_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~574_combout\,
	datab => \RAM1|ALT_INV_ram~575_combout\,
	datac => \RAM1|ALT_INV_ram~576_combout\,
	datad => \RAM1|ALT_INV_ram~577_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~578_combout\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~153_q\);

\RAM1|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~185_q\);

\RAM1|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~579_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~185_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~153_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~57_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datab => \RAM1|ALT_INV_ram~57_q\,
	datac => \RAM1|ALT_INV_ram~153_q\,
	datad => \RAM1|ALT_INV_ram~185_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~579_combout\);

\RAM1|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~89_q\);

\RAM1|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~121_q\);

\RAM1|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~217_q\);

\RAM1|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~249_q\);

\RAM1|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~580_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~249_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~217_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~121_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~89_q\,
	datab => \RAM1|ALT_INV_ram~121_q\,
	datac => \RAM1|ALT_INV_ram~217_q\,
	datad => \RAM1|ALT_INV_ram~249_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~580_combout\);

\RAM1|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~41_q\);

\RAM1|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~73_q\);

\RAM1|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~169_q\);

\RAM1|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~201_q\);

\RAM1|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~581_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~201_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~169_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~73_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~41_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~41_q\,
	datab => \RAM1|ALT_INV_ram~73_q\,
	datac => \RAM1|ALT_INV_ram~169_q\,
	datad => \RAM1|ALT_INV_ram~201_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~581_combout\);

\RAM1|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~105_q\);

\RAM1|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~137_q\);

\RAM1|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~233_q\);

\RAM1|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~265_q\);

\RAM1|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~582_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~265_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~233_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~137_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~105_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~105_q\,
	datab => \RAM1|ALT_INV_ram~137_q\,
	datac => \RAM1|ALT_INV_ram~233_q\,
	datad => \RAM1|ALT_INV_ram~265_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~582_combout\);

\RAM1|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~583_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~582_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~581_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~580_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~579_combout\,
	datab => \RAM1|ALT_INV_ram~580_combout\,
	datac => \RAM1|ALT_INV_ram~581_combout\,
	datad => \RAM1|ALT_INV_ram~582_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~583_combout\);

\RAM1|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~281_q\);

\RAM1|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~313_q\);

\RAM1|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~409_q\);

\RAM1|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~441_q\);

\RAM1|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~584_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~441_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~409_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~313_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~281_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~281_q\,
	datab => \RAM1|ALT_INV_ram~313_q\,
	datac => \RAM1|ALT_INV_ram~409_q\,
	datad => \RAM1|ALT_INV_ram~441_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~584_combout\);

\RAM1|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~345_q\);

\RAM1|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~377_q\);

\RAM1|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~473_q\);

\RAM1|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~505_q\);

\RAM1|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~585_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~505_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~473_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~377_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~345_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~345_q\,
	datab => \RAM1|ALT_INV_ram~377_q\,
	datac => \RAM1|ALT_INV_ram~473_q\,
	datad => \RAM1|ALT_INV_ram~505_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~585_combout\);

\RAM1|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~297_q\);

\RAM1|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~329_q\);

\RAM1|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~425_q\);

\RAM1|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~457_q\);

\RAM1|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~586_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~457_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~425_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~329_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~297_q\,
	datab => \RAM1|ALT_INV_ram~329_q\,
	datac => \RAM1|ALT_INV_ram~425_q\,
	datad => \RAM1|ALT_INV_ram~457_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~586_combout\);

\RAM1|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~361_q\);

\RAM1|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~393_q\);

\RAM1|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~489_q\);

\RAM1|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~521_q\);

\RAM1|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~587_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~521_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~489_q\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~393_q\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~361_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~361_q\,
	datab => \RAM1|ALT_INV_ram~393_q\,
	datac => \RAM1|ALT_INV_ram~489_q\,
	datad => \RAM1|ALT_INV_ram~521_q\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~587_combout\);

\RAM1|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~588_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~587_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~586_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~585_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~584_combout\,
	datab => \RAM1|ALT_INV_ram~585_combout\,
	datac => \RAM1|ALT_INV_ram~586_combout\,
	datad => \RAM1|ALT_INV_ram~587_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~588_combout\);

\RAM1|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~589_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~588_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~583_combout\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~578_combout\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~573_combout\,
	datab => \RAM1|ALT_INV_ram~578_combout\,
	datac => \RAM1|ALT_INV_ram~583_combout\,
	datad => \RAM1|ALT_INV_ram~588_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~589_combout\);

\CPU|Mux_EntradaB_ULA|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[2]~4_combout\ = ( \SW[2]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~589_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~85_combout\)) ) ) # ( !\SW[2]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~589_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~85_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~85_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~589_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[2]~4_combout\);

\CPU|ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~13_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[3]~5_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~10\ ))
-- \CPU|ULA|Add0~14\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[3]~5_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[3]~5_combout\,
	cin => \CPU|ULA|Add0~10\,
	sumout => \CPU|ULA|Add0~13_sumout\,
	cout => \CPU|ULA|Add0~14\);

\CPU|Bloco_Reg|REG0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|ULA|saida[3]~7_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(3));

\CPU|Bloco_Reg|REG2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|ULA|saida[3]~7_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(3));

\CPU|ULA|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~6_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(3) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(3))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(3))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(3) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(3))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(3),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(3),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(3),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[3]~6_combout\);

\CPU|ULA|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[3]~7_combout\ = ( \SW[3]~input_o\ & ( !\CPU|ULA|saida[3]~6_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~610_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~80_combout\)) ) ) ) # ( !\SW[3]~input_o\ & ( !\CPU|ULA|saida[3]~6_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~610_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~80_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~80_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~610_combout\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[3]~6_combout\,
	combout => \CPU|ULA|saida[3]~7_combout\);

\CPU|Bloco_Reg|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~13_sumout\,
	asdata => \CPU|ULA|saida[3]~7_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(3));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(3) & ( \CPU|Bloco_Reg|REG2|DOUT\(3) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(3))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(3) & ( \CPU|Bloco_Reg|REG2|DOUT\(3) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(3))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(3) & ( !\CPU|Bloco_Reg|REG2|DOUT\(3) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(3)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(3) & ( !\CPU|Bloco_Reg|REG2|DOUT\(3) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(3),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(3),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(3),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\);

\CPU|ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~17_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[4]~6_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~14\ ))
-- \CPU|ULA|Add0~18\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[4]~6_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[4]~4_combout\,
	dataf => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[4]~6_combout\,
	cin => \CPU|ULA|Add0~14\,
	sumout => \CPU|ULA|Add0~17_sumout\,
	cout => \CPU|ULA|Add0~18\);

\CPU|Bloco_Reg|REG0|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|ULA|saida[4]~9_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(4));

\CPU|Bloco_Reg|REG2|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|ULA|saida[4]~9_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(4));

\CPU|ULA|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~8_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(4) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(4))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(4))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(4) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(4))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(4),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(4),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(4),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[4]~8_combout\);

\CPU|ULA|saida[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[4]~9_combout\ = ( \SW[4]~input_o\ & ( !\CPU|ULA|saida[4]~8_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~631_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~76_combout\)) ) ) ) # ( !\SW[4]~input_o\ & ( !\CPU|ULA|saida[4]~8_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~631_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~76_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~76_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~631_combout\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[4]~8_combout\,
	combout => \CPU|ULA|saida[4]~9_combout\);

\CPU|Bloco_Reg|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~17_sumout\,
	asdata => \CPU|ULA|saida[4]~9_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(4));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(4) & ( \CPU|Bloco_Reg|REG2|DOUT\(4) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(4))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(4) & ( \CPU|Bloco_Reg|REG2|DOUT\(4) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(4))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(4) & ( !\CPU|Bloco_Reg|REG2|DOUT\(4) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(4)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(4) & ( !\CPU|Bloco_Reg|REG2|DOUT\(4) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(4),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(4),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(4),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\);

\CPU|ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~21_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[5]~7_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~18\ ))
-- \CPU|ULA|Add0~22\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[5]~7_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[5]~5_combout\,
	dataf => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[5]~7_combout\,
	cin => \CPU|ULA|Add0~18\,
	sumout => \CPU|ULA|Add0~21_sumout\,
	cout => \CPU|ULA|Add0~22\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~277_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~285_q\);

\RAM1|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~653_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~285_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~29_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~277_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~277_q\,
	datac => \RAM1|ALT_INV_ram~29_q\,
	datad => \RAM1|ALT_INV_ram~285_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~653_combout\);

\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

\RAM1|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~309_q\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~317_q\);

\RAM1|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~654_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~317_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~61_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~309_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~53_q\,
	datab => \RAM1|ALT_INV_ram~309_q\,
	datac => \RAM1|ALT_INV_ram~61_q\,
	datad => \RAM1|ALT_INV_ram~317_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~654_combout\);

\RAM1|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~37_q\);

\RAM1|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~293_q\);

\RAM1|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~45_q\);

\RAM1|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~301_q\);

\RAM1|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~655_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~301_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~45_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~293_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~37_q\,
	datab => \RAM1|ALT_INV_ram~293_q\,
	datac => \RAM1|ALT_INV_ram~45_q\,
	datad => \RAM1|ALT_INV_ram~301_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~655_combout\);

\RAM1|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~69_q\);

\RAM1|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~325_q\);

\RAM1|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~77_q\);

\RAM1|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~333_q\);

\RAM1|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~656_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~333_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~77_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~325_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~69_q\,
	datab => \RAM1|ALT_INV_ram~325_q\,
	datac => \RAM1|ALT_INV_ram~77_q\,
	datad => \RAM1|ALT_INV_ram~333_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~656_combout\);

\RAM1|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~657_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~656_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~655_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~654_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~653_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~653_combout\,
	datab => \RAM1|ALT_INV_ram~654_combout\,
	datac => \RAM1|ALT_INV_ram~655_combout\,
	datad => \RAM1|ALT_INV_ram~656_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~657_combout\);

\RAM1|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~149_q\);

\RAM1|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~405_q\);

\RAM1|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~157_q\);

\RAM1|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~413_q\);

\RAM1|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~658_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~413_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~157_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~405_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~149_q\,
	datab => \RAM1|ALT_INV_ram~405_q\,
	datac => \RAM1|ALT_INV_ram~157_q\,
	datad => \RAM1|ALT_INV_ram~413_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~658_combout\);

\RAM1|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~181_q\);

\RAM1|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~437_q\);

\RAM1|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~189_q\);

\RAM1|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~445_q\);

\RAM1|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~659_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~445_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~189_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~437_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~181_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~181_q\,
	datab => \RAM1|ALT_INV_ram~437_q\,
	datac => \RAM1|ALT_INV_ram~189_q\,
	datad => \RAM1|ALT_INV_ram~445_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~659_combout\);

\RAM1|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~165_q\);

\RAM1|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~421_q\);

\RAM1|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~173_q\);

\RAM1|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~429_q\);

\RAM1|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~660_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~429_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~173_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~421_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~165_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~165_q\,
	datab => \RAM1|ALT_INV_ram~421_q\,
	datac => \RAM1|ALT_INV_ram~173_q\,
	datad => \RAM1|ALT_INV_ram~429_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~660_combout\);

\RAM1|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~197_q\);

\RAM1|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~453_q\);

\RAM1|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~205_q\);

\RAM1|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~461_q\);

\RAM1|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~661_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~461_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~205_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~453_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~197_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~197_q\,
	datab => \RAM1|ALT_INV_ram~453_q\,
	datac => \RAM1|ALT_INV_ram~205_q\,
	datad => \RAM1|ALT_INV_ram~461_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~661_combout\);

\RAM1|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~662_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~661_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~660_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~659_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~658_combout\,
	datab => \RAM1|ALT_INV_ram~659_combout\,
	datac => \RAM1|ALT_INV_ram~660_combout\,
	datad => \RAM1|ALT_INV_ram~661_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~662_combout\);

\RAM1|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~85_q\);

\RAM1|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~341_q\);

\RAM1|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~93_q\);

\RAM1|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~349_q\);

\RAM1|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~663_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~349_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~93_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( 
-- \RAM1|ram~341_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~85_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~85_q\,
	datab => \RAM1|ALT_INV_ram~341_q\,
	datac => \RAM1|ALT_INV_ram~93_q\,
	datad => \RAM1|ALT_INV_ram~349_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~663_combout\);

\RAM1|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~117_q\);

\RAM1|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~373_q\);

\RAM1|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~125_q\);

\RAM1|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~381_q\);

\RAM1|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~664_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~381_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~125_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~373_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~117_q\,
	datab => \RAM1|ALT_INV_ram~373_q\,
	datac => \RAM1|ALT_INV_ram~125_q\,
	datad => \RAM1|ALT_INV_ram~381_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~664_combout\);

\RAM1|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~101_q\);

\RAM1|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~357_q\);

\RAM1|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~109_q\);

\RAM1|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~365_q\);

\RAM1|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~665_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~365_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~109_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~357_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~101_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~101_q\,
	datab => \RAM1|ALT_INV_ram~357_q\,
	datac => \RAM1|ALT_INV_ram~109_q\,
	datad => \RAM1|ALT_INV_ram~365_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~665_combout\);

\RAM1|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~133_q\);

\RAM1|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~389_q\);

\RAM1|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~141_q\);

\RAM1|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~397_q\);

\RAM1|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~666_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~397_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~141_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & 
-- ( \RAM1|ram~389_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~133_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~133_q\,
	datab => \RAM1|ALT_INV_ram~389_q\,
	datac => \RAM1|ALT_INV_ram~141_q\,
	datad => \RAM1|ALT_INV_ram~397_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~666_combout\);

\RAM1|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~667_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~666_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~665_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~664_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~663_combout\,
	datab => \RAM1|ALT_INV_ram~664_combout\,
	datac => \RAM1|ALT_INV_ram~665_combout\,
	datad => \RAM1|ALT_INV_ram~666_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~667_combout\);

\RAM1|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~213_q\);

\RAM1|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~469_q\);

\RAM1|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~229_q\);

\RAM1|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~485_q\);

\RAM1|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~668_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~485_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~229_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~469_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~213_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~213_q\,
	datab => \RAM1|ALT_INV_ram~469_q\,
	datac => \RAM1|ALT_INV_ram~229_q\,
	datad => \RAM1|ALT_INV_ram~485_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~668_combout\);

\RAM1|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~245_q\);

\RAM1|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~501_q\);

\RAM1|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~261_q\);

\RAM1|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~517_q\);

\RAM1|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~669_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~517_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~261_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~501_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~245_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~245_q\,
	datab => \RAM1|ALT_INV_ram~501_q\,
	datac => \RAM1|ALT_INV_ram~261_q\,
	datad => \RAM1|ALT_INV_ram~517_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~669_combout\);

\RAM1|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~221_q\);

\RAM1|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~477_q\);

\RAM1|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~237_q\);

\RAM1|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~493_q\);

\RAM1|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~670_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~493_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~237_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~477_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~221_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~221_q\,
	datab => \RAM1|ALT_INV_ram~477_q\,
	datac => \RAM1|ALT_INV_ram~237_q\,
	datad => \RAM1|ALT_INV_ram~493_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~670_combout\);

\RAM1|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~253_q\);

\RAM1|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~509_q\);

\RAM1|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~269_q\);

\RAM1|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~525_q\);

\RAM1|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~671_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~525_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~269_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & 
-- ( \RAM1|ram~509_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~253_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~253_q\,
	datab => \RAM1|ALT_INV_ram~509_q\,
	datac => \RAM1|ALT_INV_ram~269_q\,
	datad => \RAM1|ALT_INV_ram~525_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~671_combout\);

\RAM1|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~672_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~671_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~670_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~669_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~668_combout\,
	datab => \RAM1|ALT_INV_ram~669_combout\,
	datac => \RAM1|ALT_INV_ram~670_combout\,
	datad => \RAM1|ALT_INV_ram~671_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~672_combout\);

\RAM1|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~673_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~672_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~667_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~80_combout\ & ( \RAM1|ram~662_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~657_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~657_combout\,
	datab => \RAM1|ALT_INV_ram~662_combout\,
	datac => \RAM1|ALT_INV_ram~667_combout\,
	datad => \RAM1|ALT_INV_ram~672_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~673_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\CPU|Bloco_Reg|REG0|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|ULA|saida[6]~13_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(6));

\CPU|Bloco_Reg|REG2|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|ULA|saida[6]~13_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(6));

\CPU|ULA|saida[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~12_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(6) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(6))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(6))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(6) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(6))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(6),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(6),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(6),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[6]~12_combout\);

\CPU|ULA|saida[6]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[6]~13_combout\ = ( \SW[6]~input_o\ & ( !\CPU|ULA|saida[6]~12_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~673_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~73_combout\)) ) ) ) # ( !\SW[6]~input_o\ & ( !\CPU|ULA|saida[6]~12_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~673_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~73_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~73_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~673_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[6]~12_combout\,
	combout => \CPU|ULA|saida[6]~13_combout\);

\CPU|Bloco_Reg|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~25_sumout\,
	asdata => \CPU|ULA|saida[6]~13_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(6));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(6) & ( \CPU|Bloco_Reg|REG2|DOUT\(6) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(6))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(6) & ( \CPU|Bloco_Reg|REG2|DOUT\(6) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(6))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(6) & ( !\CPU|Bloco_Reg|REG2|DOUT\(6) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(6)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(6) & ( !\CPU|Bloco_Reg|REG2|DOUT\(6) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(6),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(6),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(6),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\);

\CPU|Mux_EntradaB_ULA|saida_MUX[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[6]~2_combout\ = ( \SW[6]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~673_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~73_combout\)) ) ) # ( !\SW[6]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~673_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~73_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~73_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~673_combout\,
	datae => \ALT_INV_SW[6]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[6]~2_combout\);

\CPU|ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~25_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[6]~2_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~22\ ))
-- \CPU|ULA|Add0~26\ = CARRY(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[6]~2_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[6]~6_combout\,
	dataf => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[6]~2_combout\,
	cin => \CPU|ULA|Add0~22\,
	sumout => \CPU|ULA|Add0~25_sumout\,
	cout => \CPU|ULA|Add0~26\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~278_q\);

\RAM1|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~150_q\);

\RAM1|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~406_q\);

\RAM1|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~674_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~406_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~150_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~278_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datab => \RAM1|ALT_INV_ram~278_q\,
	datac => \RAM1|ALT_INV_ram~150_q\,
	datad => \RAM1|ALT_INV_ram~406_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~674_combout\);

\RAM1|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~86_q\);

\RAM1|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~342_q\);

\RAM1|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~214_q\);

\RAM1|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~470_q\);

\RAM1|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~675_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~470_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~214_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~342_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~86_q\,
	datab => \RAM1|ALT_INV_ram~342_q\,
	datac => \RAM1|ALT_INV_ram~214_q\,
	datad => \RAM1|ALT_INV_ram~470_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~675_combout\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~286_q\);

\RAM1|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~158_q\);

\RAM1|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~414_q\);

\RAM1|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~676_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~414_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~158_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~286_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datab => \RAM1|ALT_INV_ram~286_q\,
	datac => \RAM1|ALT_INV_ram~158_q\,
	datad => \RAM1|ALT_INV_ram~414_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~676_combout\);

\RAM1|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~94_q\);

\RAM1|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~350_q\);

\RAM1|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~222_q\);

\RAM1|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~478_q\);

\RAM1|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~677_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~478_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~222_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~350_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~94_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~94_q\,
	datab => \RAM1|ALT_INV_ram~350_q\,
	datac => \RAM1|ALT_INV_ram~222_q\,
	datad => \RAM1|ALT_INV_ram~478_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~677_combout\);

\RAM1|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~678_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~677_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~676_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~675_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~674_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~674_combout\,
	datab => \RAM1|ALT_INV_ram~675_combout\,
	datac => \RAM1|ALT_INV_ram~676_combout\,
	datad => \RAM1|ALT_INV_ram~677_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~678_combout\);

\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

\RAM1|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~310_q\);

\RAM1|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~182_q\);

\RAM1|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~438_q\);

\RAM1|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~679_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~438_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~182_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~310_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~54_q\,
	datab => \RAM1|ALT_INV_ram~310_q\,
	datac => \RAM1|ALT_INV_ram~182_q\,
	datad => \RAM1|ALT_INV_ram~438_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~679_combout\);

\RAM1|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~118_q\);

\RAM1|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~374_q\);

\RAM1|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~246_q\);

\RAM1|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~502_q\);

\RAM1|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~680_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~502_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~246_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~374_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~118_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~118_q\,
	datab => \RAM1|ALT_INV_ram~374_q\,
	datac => \RAM1|ALT_INV_ram~246_q\,
	datad => \RAM1|ALT_INV_ram~502_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~680_combout\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~318_q\);

\RAM1|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~190_q\);

\RAM1|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~446_q\);

\RAM1|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~681_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~446_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~190_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~318_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~62_q\,
	datab => \RAM1|ALT_INV_ram~318_q\,
	datac => \RAM1|ALT_INV_ram~190_q\,
	datad => \RAM1|ALT_INV_ram~446_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~681_combout\);

\RAM1|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~126_q\);

\RAM1|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~382_q\);

\RAM1|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~254_q\);

\RAM1|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~510_q\);

\RAM1|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~682_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~510_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~76_combout\ & ( \RAM1|ram~254_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & 
-- ( \RAM1|ram~382_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~76_combout\ & ( \RAM1|ram~126_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~126_q\,
	datab => \RAM1|ALT_INV_ram~382_q\,
	datac => \RAM1|ALT_INV_ram~254_q\,
	datad => \RAM1|ALT_INV_ram~510_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~76_combout\,
	combout => \RAM1|ram~682_combout\);

\RAM1|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~683_combout\ = ( \ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~682_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~681_combout\ ) ) ) # ( \ROM1|memROM~80_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~680_combout\ ) ) ) # ( !\ROM1|memROM~80_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~679_combout\,
	datab => \RAM1|ALT_INV_ram~680_combout\,
	datac => \RAM1|ALT_INV_ram~681_combout\,
	datad => \RAM1|ALT_INV_ram~682_combout\,
	datae => \ROM1|ALT_INV_memROM~80_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~683_combout\);

\RAM1|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~38_q\);

\RAM1|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~294_q\);

\RAM1|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~102_q\);

\RAM1|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~358_q\);

\RAM1|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~684_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~358_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~102_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~294_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~38_q\,
	datab => \RAM1|ALT_INV_ram~294_q\,
	datac => \RAM1|ALT_INV_ram~102_q\,
	datad => \RAM1|ALT_INV_ram~358_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~684_combout\);

\RAM1|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~166_q\);

\RAM1|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~422_q\);

\RAM1|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~230_q\);

\RAM1|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~486_q\);

\RAM1|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~685_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~486_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~230_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~422_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~166_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~166_q\,
	datab => \RAM1|ALT_INV_ram~422_q\,
	datac => \RAM1|ALT_INV_ram~230_q\,
	datad => \RAM1|ALT_INV_ram~486_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~685_combout\);

\RAM1|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~46_q\);

\RAM1|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~302_q\);

\RAM1|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~110_q\);

\RAM1|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~366_q\);

\RAM1|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~686_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~366_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~110_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~302_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~46_q\,
	datab => \RAM1|ALT_INV_ram~302_q\,
	datac => \RAM1|ALT_INV_ram~110_q\,
	datad => \RAM1|ALT_INV_ram~366_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~686_combout\);

\RAM1|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~174_q\);

\RAM1|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~430_q\);

\RAM1|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~238_q\);

\RAM1|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~494_q\);

\RAM1|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~687_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~494_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~238_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~430_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~174_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~174_q\,
	datab => \RAM1|ALT_INV_ram~430_q\,
	datac => \RAM1|ALT_INV_ram~238_q\,
	datad => \RAM1|ALT_INV_ram~494_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~687_combout\);

\RAM1|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~688_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~687_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~686_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~685_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~684_combout\,
	datab => \RAM1|ALT_INV_ram~685_combout\,
	datac => \RAM1|ALT_INV_ram~686_combout\,
	datad => \RAM1|ALT_INV_ram~687_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~688_combout\);

\RAM1|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~70_q\);

\RAM1|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~326_q\);

\RAM1|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~134_q\);

\RAM1|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~390_q\);

\RAM1|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~689_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~390_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~134_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~326_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~70_q\,
	datab => \RAM1|ALT_INV_ram~326_q\,
	datac => \RAM1|ALT_INV_ram~134_q\,
	datad => \RAM1|ALT_INV_ram~390_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~689_combout\);

\RAM1|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~198_q\);

\RAM1|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~454_q\);

\RAM1|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~262_q\);

\RAM1|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~518_q\);

\RAM1|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~690_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~518_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~262_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~454_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~198_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~198_q\,
	datab => \RAM1|ALT_INV_ram~454_q\,
	datac => \RAM1|ALT_INV_ram~262_q\,
	datad => \RAM1|ALT_INV_ram~518_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~690_combout\);

\RAM1|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~78_q\);

\RAM1|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~334_q\);

\RAM1|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~142_q\);

\RAM1|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~398_q\);

\RAM1|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~691_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~398_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~142_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~334_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~78_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~78_q\,
	datab => \RAM1|ALT_INV_ram~334_q\,
	datac => \RAM1|ALT_INV_ram~142_q\,
	datad => \RAM1|ALT_INV_ram~398_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~691_combout\);

\RAM1|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~206_q\);

\RAM1|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~462_q\);

\RAM1|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~270_q\);

\RAM1|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \RAM1|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~526_q\);

\RAM1|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~692_combout\ = ( \ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~526_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( \ROM1|memROM~80_combout\ & ( \RAM1|ram~270_q\ ) ) ) # ( \ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & 
-- ( \RAM1|ram~462_q\ ) ) ) # ( !\ROM1|memROM~63_combout\ & ( !\ROM1|memROM~80_combout\ & ( \RAM1|ram~206_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~206_q\,
	datab => \RAM1|ALT_INV_ram~462_q\,
	datac => \RAM1|ALT_INV_ram~270_q\,
	datad => \RAM1|ALT_INV_ram~526_q\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	dataf => \ROM1|ALT_INV_memROM~80_combout\,
	combout => \RAM1|ram~692_combout\);

\RAM1|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~693_combout\ = ( \ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~692_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( \ROM1|memROM~11_combout\ & ( \RAM1|ram~691_combout\ ) ) ) # ( \ROM1|memROM~76_combout\ & ( 
-- !\ROM1|memROM~11_combout\ & ( \RAM1|ram~690_combout\ ) ) ) # ( !\ROM1|memROM~76_combout\ & ( !\ROM1|memROM~11_combout\ & ( \RAM1|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~689_combout\,
	datab => \RAM1|ALT_INV_ram~690_combout\,
	datac => \RAM1|ALT_INV_ram~691_combout\,
	datad => \RAM1|ALT_INV_ram~692_combout\,
	datae => \ROM1|ALT_INV_memROM~76_combout\,
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM1|ram~693_combout\);

\RAM1|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~694_combout\ = ( \ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~693_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( \ROM1|memROM~58_combout\ & ( \RAM1|ram~688_combout\ ) ) ) # ( \ROM1|memROM~85_combout\ & ( 
-- !\ROM1|memROM~58_combout\ & ( \RAM1|ram~683_combout\ ) ) ) # ( !\ROM1|memROM~85_combout\ & ( !\ROM1|memROM~58_combout\ & ( \RAM1|ram~678_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~678_combout\,
	datab => \RAM1|ALT_INV_ram~683_combout\,
	datac => \RAM1|ALT_INV_ram~688_combout\,
	datad => \RAM1|ALT_INV_ram~693_combout\,
	datae => \ROM1|ALT_INV_memROM~85_combout\,
	dataf => \ROM1|ALT_INV_memROM~58_combout\,
	combout => \RAM1|ram~694_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\CPU|Bloco_Reg|REG0|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|ULA|saida[7]~15_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(7));

\CPU|Bloco_Reg|REG2|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|ULA|saida[7]~15_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(7));

\CPU|ULA|saida[7]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~14_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(7) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|enableReg2~0_combout\ & ((!\CPU|Bloco_Reg|REG0|DOUT\(7))))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (((!\CPU|Bloco_Reg|REG1|DOUT\(7))))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(7) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(7))) # (\CPU|Bloco_Reg|enableReg2~0_combout\))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG1|DOUT\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010011100101101100001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datac => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(7),
	datad => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(7),
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(7),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[7]~14_combout\);

\CPU|ULA|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[7]~15_combout\ = ( \SW[7]~input_o\ & ( !\CPU|ULA|saida[7]~14_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~694_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~74_combout\)) ) ) ) # ( !\SW[7]~input_o\ & ( !\CPU|ULA|saida[7]~14_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~694_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~74_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~74_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~694_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \CPU|ULA|ALT_INV_saida[7]~14_combout\,
	combout => \CPU|ULA|saida[7]~15_combout\);

\CPU|Bloco_Reg|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~29_sumout\,
	asdata => \CPU|ULA|saida[7]~15_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(7));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(7) & ( \CPU|Bloco_Reg|REG2|DOUT\(7) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(7))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(7) & ( \CPU|Bloco_Reg|REG2|DOUT\(7) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(7))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(7) & ( !\CPU|Bloco_Reg|REG2|DOUT\(7) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(7)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(7) & ( !\CPU|Bloco_Reg|REG2|DOUT\(7) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(7),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(7),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(7),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\);

\CPU|Mux_EntradaB_ULA|saida_MUX[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_EntradaB_ULA|saida_MUX[7]~3_combout\ = ( \SW[7]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~694_combout\) # (\DECODER1|enableSWVector~3_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~74_combout\)) ) ) # ( !\SW[7]~input_o\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((!\DECODER1|enableSWVector~3_combout\ & \RAM1|ram~694_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & (\ROM1|memROM~74_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111010001000111011101110100010001110100010001110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~74_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \DECODER1|ALT_INV_enableSWVector~3_combout\,
	datad => \RAM1|ALT_INV_ram~694_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	combout => \CPU|Mux_EntradaB_ULA|saida_MUX[7]~3_combout\);

\CPU|ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~29_sumout\ = SUM(( \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\ ) + ( !\CPU|Mux_EntradaB_ULA|saida_MUX[7]~3_combout\ $ (((\CPU|Dec_Instruction|sinais_controle~1_combout\ & ((!\CPU|Dec_Instruction|sinais_controle[4]~6_combout\) # 
-- (\CPU|Dec_Instruction|Equal12~1_combout\))))) ) + ( \CPU|ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010111111010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Dec_Instruction|ALT_INV_sinais_controle[4]~6_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~1_combout\,
	datac => \CPU|Dec_Instruction|ALT_INV_sinais_controle~1_combout\,
	datad => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[7]~7_combout\,
	dataf => \CPU|Mux_EntradaB_ULA|ALT_INV_saida_MUX[7]~3_combout\,
	cin => \CPU|ULA|Add0~26\,
	sumout => \CPU|ULA|Add0~29_sumout\);

\CPU|Flag_Equal|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Flag_Equal|DOUT~0_combout\ = ( \CPU|Flag_Equal|DOUT~q\ & ( (((!\ROM1|memROM~64_combout\) # (\ROM1|memROM~33_combout\)) # (\ROM1|memROM~75_combout\)) # (\ROM1|memROM~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101111111111100000000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~75_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	datae => \CPU|Flag_Equal|ALT_INV_DOUT~q\,
	combout => \CPU|Flag_Equal|DOUT~0_combout\);

\CPU|Flag_Equal|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Flag_Equal|DOUT~1_combout\ = ( !\CPU|Dec_Instruction|sinais_controle~2_combout\ & ( (!\ROM1|memROM~17_combout\ & (!\ROM1|memROM~75_combout\ & (\ROM1|memROM~64_combout\ & !\ROM1|memROM~33_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~17_combout\,
	datab => \ROM1|ALT_INV_memROM~75_combout\,
	datac => \ROM1|ALT_INV_memROM~64_combout\,
	datad => \ROM1|ALT_INV_memROM~33_combout\,
	datae => \CPU|Dec_Instruction|ALT_INV_sinais_controle~2_combout\,
	combout => \CPU|Flag_Equal|DOUT~1_combout\);

\CPU|Flag_Equal|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Flag_Equal|DOUT~2_combout\ = ( !\CPU|ULA|Add0~17_sumout\ & ( \CPU|Flag_Equal|DOUT~1_combout\ & ( (!\CPU|ULA|Add0~1_sumout\ & (!\CPU|ULA|Add0~5_sumout\ & (!\CPU|ULA|Add0~9_sumout\ & !\CPU|ULA|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add0~1_sumout\,
	datab => \CPU|ULA|ALT_INV_Add0~5_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~9_sumout\,
	datad => \CPU|ULA|ALT_INV_Add0~13_sumout\,
	datae => \CPU|ULA|ALT_INV_Add0~17_sumout\,
	dataf => \CPU|Flag_Equal|ALT_INV_DOUT~1_combout\,
	combout => \CPU|Flag_Equal|DOUT~2_combout\);

\CPU|Flag_Equal|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Flag_Equal|DOUT~3_combout\ = ( \CPU|Flag_Equal|DOUT~2_combout\ & ( ((!\CPU|ULA|Add0~21_sumout\ & (!\CPU|ULA|Add0~25_sumout\ & !\CPU|ULA|Add0~29_sumout\))) # (\CPU|Flag_Equal|DOUT~0_combout\) ) ) # ( !\CPU|Flag_Equal|DOUT~2_combout\ & ( 
-- \CPU|Flag_Equal|DOUT~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111100000001111111100000000111111111000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|ALT_INV_Add0~21_sumout\,
	datab => \CPU|ULA|ALT_INV_Add0~25_sumout\,
	datac => \CPU|ULA|ALT_INV_Add0~29_sumout\,
	datad => \CPU|Flag_Equal|ALT_INV_DOUT~0_combout\,
	datae => \CPU|Flag_Equal|ALT_INV_DOUT~2_combout\,
	combout => \CPU|Flag_Equal|DOUT~3_combout\);

\CPU|Flag_Equal|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Flag_Equal|DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Flag_Equal|DOUT~q\);

\CPU|Mux_Prox_PC|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|Equal1~0_combout\ = ( \ROM1|memROM~32_combout\ & ( \CPU|Flag_Equal|DOUT~q\ & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~22_combout\ & \ROM1|memROM~27_combout\)) # (\ROM1|memROM~16_combout\ & 
-- (\ROM1|memROM~22_combout\ & !\ROM1|memROM~27_combout\)))) ) ) ) # ( !\ROM1|memROM~32_combout\ & ( \CPU|Flag_Equal|DOUT~q\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~16_combout\ & (!\ROM1|memROM~22_combout\ $ (!\ROM1|memROM~27_combout\)))) ) ) ) # ( 
-- \ROM1|memROM~32_combout\ & ( !\CPU|Flag_Equal|DOUT~q\ & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~22_combout\ & \ROM1|memROM~27_combout\))) ) ) ) # ( !\ROM1|memROM~32_combout\ & ( !\CPU|Flag_Equal|DOUT~q\ & ( (!\CPU|PC|DOUT\(8) & 
-- (\ROM1|memROM~16_combout\ & (\ROM1|memROM~22_combout\ & !\ROM1|memROM~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000001000000000000010001000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~16_combout\,
	datac => \ROM1|ALT_INV_memROM~22_combout\,
	datad => \ROM1|ALT_INV_memROM~27_combout\,
	datae => \ROM1|ALT_INV_memROM~32_combout\,
	dataf => \CPU|Flag_Equal|ALT_INV_DOUT~q\,
	combout => \CPU|Mux_Prox_PC|Equal1~0_combout\);

\CPU|Reg_Retorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~17_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(4));

\CPU|Mux_Prox_PC|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[4]~4_combout\ = ( \CPU|incrementa_PC|Add0~17_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & ((!\CPU|Mux_Prox_PC|Equal0~0_combout\) # ((\CPU|Reg_Retorno|DOUT\(4))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (((\ROM1|memROM~76_combout\)))) ) ) # ( !\CPU|incrementa_PC|Add0~17_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (\CPU|Mux_Prox_PC|Equal0~0_combout\ & ((\CPU|Reg_Retorno|DOUT\(4))))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & 
-- (((\ROM1|memROM~76_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111100011011010111100000101001001111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datab => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~76_combout\,
	datad => \CPU|Reg_Retorno|ALT_INV_DOUT\(4),
	datae => \CPU|incrementa_PC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[4]~4_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\ROM1|memROM~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~48_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) $ 
-- (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(0))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(0))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(1) $ (((!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(0)))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010000000100000001000000010000010100001001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~48_combout\);

\ROM1|memROM~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~49_combout\ = ( \CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(3) & ( \CPU|PC|DOUT\(5) & ( 
-- (!\CPU|PC|DOUT\(1) & (((\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(4) $ (\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000011100000001001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~49_combout\);

\ROM1|memROM~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~50_combout\ = ( \CPU|PC|DOUT\(2) & ( \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( 
-- \CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(1)))))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT\(5))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(1))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\CPU|PC|DOUT\(4) & ( (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & 
-- (!\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000001001001000101001000000001001000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~50_combout\);

\ROM1|memROM~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~51_combout\ = ( \CPU|PC|DOUT\(4) & ( !\CPU|PC|DOUT\(5) & ( (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(4),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM1|memROM~51_combout\);

\ROM1|memROM~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~52_combout\ = ( \CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~51_combout\ ) ) ) # ( !\CPU|PC|DOUT\(6) & ( \CPU|PC|DOUT\(7) & ( \ROM1|memROM~50_combout\ ) ) ) # ( \CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~49_combout\ ) ) 
-- ) # ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(7) & ( \ROM1|memROM~48_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~48_combout\,
	datab => \ROM1|ALT_INV_memROM~49_combout\,
	datac => \ROM1|ALT_INV_memROM~50_combout\,
	datad => \ROM1|ALT_INV_memROM~51_combout\,
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~52_combout\);

\CPU|incrementa_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementa_PC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|incrementa_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|incrementa_PC|Add0~30\,
	sumout => \CPU|incrementa_PC|Add0~33_sumout\);

\CPU|Reg_Retorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|incrementa_PC|Add0~33_sumout\,
	ena => \CPU|Dec_Instruction|sinais_controle[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Reg_Retorno|DOUT\(8));

\CPU|Mux_Prox_PC|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Mux_Prox_PC|saida_MUX[8]~8_combout\ = ( \CPU|Reg_Retorno|DOUT\(8) & ( \CPU|incrementa_PC|Add0~33_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\) # ((!\CPU|PC|DOUT\(8) & \ROM1|memROM~52_combout\)) ) ) ) # ( !\CPU|Reg_Retorno|DOUT\(8) & ( 
-- \CPU|incrementa_PC|Add0~33_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((!\CPU|Mux_Prox_PC|Equal0~0_combout\)))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~52_combout\))) ) ) ) # ( \CPU|Reg_Retorno|DOUT\(8) & ( 
-- !\CPU|incrementa_PC|Add0~33_sumout\ & ( (!\CPU|Mux_Prox_PC|Equal1~0_combout\ & (((\CPU|Mux_Prox_PC|Equal0~0_combout\)))) # (\CPU|Mux_Prox_PC|Equal1~0_combout\ & (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~52_combout\))) ) ) ) # ( !\CPU|Reg_Retorno|DOUT\(8) & ( 
-- !\CPU|incrementa_PC|Add0~33_sumout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM1|memROM~52_combout\ & \CPU|Mux_Prox_PC|Equal1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000101111001011110010000000101111001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~52_combout\,
	datac => \CPU|Mux_Prox_PC|ALT_INV_Equal1~0_combout\,
	datad => \CPU|Mux_Prox_PC|ALT_INV_Equal0~0_combout\,
	datae => \CPU|Reg_Retorno|ALT_INV_DOUT\(8),
	dataf => \CPU|incrementa_PC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|Mux_Prox_PC|saida_MUX[8]~8_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Mux_Prox_PC|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\Data_In[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~2_combout\ = (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~10_combout\ & ((!\KEY[2]~input_o\))) # (\ROM1|memROM~10_combout\ & (!\KEY[3]~input_o\)))) # (\CPU|PC|DOUT\(8) & (((!\KEY[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110100001000111111010000100011111101000010001111110100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	combout => \Data_In[0]~2_combout\);

\Data_In[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~3_combout\ = (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~10_combout\ & (!\KEY[0]~input_o\)) # (\ROM1|memROM~10_combout\ & ((!\KEY[1]~input_o\))))) # (\CPU|PC|DOUT\(8) & (((!\KEY[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011010000111100101101000011110010110100001111001011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	combout => \Data_In[0]~3_combout\);

\Data_In[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~5_combout\ = ( \Data_In[0]~4_combout\ & ( (!\ROM1|memROM~63_combout\) # ((!\ROM1|memROM~58_combout\ & ((\Data_In[0]~3_combout\))) # (\ROM1|memROM~58_combout\ & (\Data_In[0]~2_combout\))) ) ) # ( !\Data_In[0]~4_combout\ & ( 
-- (\ROM1|memROM~63_combout\ & ((!\ROM1|memROM~58_combout\ & ((\Data_In[0]~3_combout\))) # (\ROM1|memROM~58_combout\ & (\Data_In[0]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~58_combout\,
	datab => \ROM1|ALT_INV_memROM~63_combout\,
	datac => \ALT_INV_Data_In[0]~2_combout\,
	datad => \ALT_INV_Data_In[0]~3_combout\,
	datae => \ALT_INV_Data_In[0]~4_combout\,
	combout => \Data_In[0]~5_combout\);

\Data_In[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_In[0]~7_combout\ = ( \Data_In[0]~6_combout\ & ( (!\DECODER1|enableSWVector~1_combout\ & !\Data_In[0]~1_combout\) ) ) # ( !\Data_In[0]~6_combout\ & ( (!\Data_In[0]~1_combout\ & (((!\DECODER1|enableSWVector~1_combout\) # (!\Data_In[0]~5_combout\)) # 
-- (\ROM1|memROM~85_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010000110000001100000011110000110100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~85_combout\,
	datab => \DECODER1|ALT_INV_enableSWVector~1_combout\,
	datac => \ALT_INV_Data_In[0]~1_combout\,
	datad => \ALT_INV_Data_In[0]~5_combout\,
	datae => \ALT_INV_Data_In[0]~6_combout\,
	combout => \Data_In[0]~7_combout\);

\CPU|Bloco_Reg|REG0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|ULA|saida[0]~1_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG0|DOUT\(0));

\CPU|Bloco_Reg|REG2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|ULA|saida[0]~1_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG2|DOUT\(0));

\CPU|ULA|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~0_combout\ = ( \CPU|Bloco_Reg|REG2|DOUT\(0) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(0) & !\CPU|Bloco_Reg|enableReg2~0_combout\)))) # (\CPU|Bloco_Reg|enableReg1~0_combout\ 
-- & (!\CPU|Bloco_Reg|REG1|DOUT\(0))) ) ) ) # ( !\CPU|Bloco_Reg|REG2|DOUT\(0) & ( \CPU|ULA|Equal3~0_combout\ & ( (!\CPU|Bloco_Reg|enableReg1~0_combout\ & (((!\CPU|Bloco_Reg|REG0|DOUT\(0)) # (\CPU|Bloco_Reg|enableReg2~0_combout\)))) # 
-- (\CPU|Bloco_Reg|enableReg1~0_combout\ & (!\CPU|Bloco_Reg|REG1|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100010111011101110001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(0),
	datab => \CPU|Bloco_Reg|ALT_INV_enableReg1~0_combout\,
	datac => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(0),
	datad => \CPU|Bloco_Reg|ALT_INV_enableReg2~0_combout\,
	datae => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(0),
	dataf => \CPU|ULA|ALT_INV_Equal3~0_combout\,
	combout => \CPU|ULA|saida[0]~0_combout\);

\CPU|ULA|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA|saida[0]~1_combout\ = ( \Data_In[0]~7_combout\ & ( !\CPU|ULA|saida[0]~0_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\ & (((\RAM1|ram~547_combout\ & \Data_In[0]~0_combout\)))) # (\CPU|Dec_Instruction|Equal12~0_combout\ & 
-- (\ROM1|memROM~11_combout\)) ) ) ) # ( !\Data_In[0]~7_combout\ & ( !\CPU|ULA|saida[0]~0_combout\ & ( (!\CPU|Dec_Instruction|Equal12~0_combout\) # (\ROM1|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101000100010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \CPU|Dec_Instruction|ALT_INV_Equal12~0_combout\,
	datac => \RAM1|ALT_INV_ram~547_combout\,
	datad => \ALT_INV_Data_In[0]~0_combout\,
	datae => \ALT_INV_Data_In[0]~7_combout\,
	dataf => \CPU|ULA|ALT_INV_saida[0]~0_combout\,
	combout => \CPU|ULA|saida[0]~1_combout\);

\CPU|Bloco_Reg|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|ULA|Add0~1_sumout\,
	asdata => \CPU|ULA|saida[0]~1_combout\,
	sload => \CPU|Dec_Instruction|sinais_controle[4]~3_combout\,
	ena => \CPU|Bloco_Reg|enableReg1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|Bloco_Reg|REG1|DOUT\(0));

\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\ = ( \CPU|Bloco_Reg|REG0|DOUT\(0) & ( \CPU|Bloco_Reg|REG2|DOUT\(0) & ( (((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(0))) # (\ROM1|memROM~94_combout\)) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(0) & ( \CPU|Bloco_Reg|REG2|DOUT\(0) & ( (!\CPU|PC|DOUT\(8) & ((!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(0))) # (\ROM1|memROM~94_combout\ & (!\ROM1|memROM~89_combout\)))) ) ) ) # ( 
-- \CPU|Bloco_Reg|REG0|DOUT\(0) & ( !\CPU|Bloco_Reg|REG2|DOUT\(0) & ( ((!\ROM1|memROM~94_combout\ & ((!\ROM1|memROM~89_combout\) # (\CPU|Bloco_Reg|REG1|DOUT\(0)))) # (\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\))) # (\CPU|PC|DOUT\(8)) ) ) ) # ( 
-- !\CPU|Bloco_Reg|REG0|DOUT\(0) & ( !\CPU|Bloco_Reg|REG2|DOUT\(0) & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~94_combout\ & (\ROM1|memROM~89_combout\ & \CPU|Bloco_Reg|REG1|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000110101111101111100100000001010001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~94_combout\,
	datac => \ROM1|ALT_INV_memROM~89_combout\,
	datad => \CPU|Bloco_Reg|REG1|ALT_INV_DOUT\(0),
	datae => \CPU|Bloco_Reg|REG0|ALT_INV_DOUT\(0),
	dataf => \CPU|Bloco_Reg|REG2|ALT_INV_DOUT\(0),
	combout => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\);

\DECODER1|enableHEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableHEX0~0_combout\ = ( \ROM1|memROM~52_combout\ & ( (!\CPU|PC|DOUT\(8) & (!\ROM1|memROM~38_combout\ & (!\ROM1|memROM~85_combout\ & !\ROM1|memROM~47_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~38_combout\,
	datac => \ROM1|ALT_INV_memROM~85_combout\,
	datad => \ROM1|ALT_INV_memROM~47_combout\,
	datae => \ROM1|ALT_INV_memROM~52_combout\,
	combout => \DECODER1|enableHEX0~0_combout\);

\DECODER1|enableLedVector~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableLedVector~0_combout\ = ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\RAM1|process_0~0_combout\ & (\DECODER1|enableHEX0~0_combout\ & !\ROM1|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \DECODER1|ALT_INV_enableHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~58_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \DECODER1|enableLedVector~0_combout\);

\RegisterVector|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(0));

\RegisterVector|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(1));

\RegisterVector|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(2));

\RegisterVector|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(3));

\RegisterVector|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[4]~4_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(4));

\RegisterVector|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[5]~5_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(5));

\RegisterVector|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[6]~6_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(6));

\RegisterVector|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[7]~7_combout\,
	ena => \DECODER1|enableLedVector~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterVector|DOUT\(7));

\DECODER1|enableHEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableHEX0~1_combout\ = (\RAM1|process_0~0_combout\ & \DECODER1|enableHEX0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_process_0~0_combout\,
	datab => \DECODER1|ALT_INV_enableHEX0~0_combout\,
	combout => \DECODER1|enableHEX0~1_combout\);

\FlipFlop8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlipFlop8|DOUT~0_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~63_combout\ & ( \FlipFlop8|DOUT~q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~63_combout\ & ( \FlipFlop8|DOUT~q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( 
-- !\ROM1|memROM~63_combout\ & ( \FlipFlop8|DOUT~q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\FlipFlop8|DOUT~q\)) # (\ROM1|memROM~11_combout\ & ((!\DECODER1|enableHEX0~1_combout\ & 
-- (\FlipFlop8|DOUT~q\)) # (\DECODER1|enableHEX0~1_combout\ & ((\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FlipFlop8|ALT_INV_DOUT~q\,
	datab => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \DECODER1|ALT_INV_enableHEX0~1_combout\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \FlipFlop8|DOUT~0_combout\);

\FlipFlop8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \FlipFlop8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlipFlop8|DOUT~q\);

\FlipFlop9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FlipFlop9|DOUT~0_combout\ = ( \ROM1|memROM~58_combout\ & ( \ROM1|memROM~63_combout\ & ( \FlipFlop9|DOUT~q\ ) ) ) # ( !\ROM1|memROM~58_combout\ & ( \ROM1|memROM~63_combout\ & ( \FlipFlop9|DOUT~q\ ) ) ) # ( \ROM1|memROM~58_combout\ & ( 
-- !\ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & ((!\DECODER1|enableHEX0~1_combout\ & (\FlipFlop9|DOUT~q\)) # (\DECODER1|enableHEX0~1_combout\ & ((\CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\))))) # (\ROM1|memROM~11_combout\ & 
-- (\FlipFlop9|DOUT~q\)) ) ) ) # ( !\ROM1|memROM~58_combout\ & ( !\ROM1|memROM~63_combout\ & ( \FlipFlop9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010011010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FlipFlop9|ALT_INV_DOUT~q\,
	datab => \CPU|Bloco_Reg|MUX_DOUT|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \DECODER1|ALT_INV_enableHEX0~1_combout\,
	datae => \ROM1|ALT_INV_memROM~58_combout\,
	dataf => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \FlipFlop9|DOUT~0_combout\);

\FlipFlop9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \FlipFlop9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FlipFlop9|DOUT~q\);

\DECODER1|enableHEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableHEX0~2_combout\ = ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\RAM1|process_0~0_combout\ & (\DECODER1|enableHEX0~0_combout\ & !\ROM1|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \DECODER1|ALT_INV_enableHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~58_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \DECODER1|enableHEX0~2_combout\);

\RegisterHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \DECODER1|enableHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX0|DOUT\(0));

\RegisterHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \DECODER1|enableHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX0|DOUT\(3));

\RegisterHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \DECODER1|enableHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX0|DOUT\(1));

\RegisterHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \DECODER1|enableHEX0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX0|DOUT\(2));

\HexDisplay0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[0]~0_combout\ = (!\RegisterHEX0|DOUT\(3) & (!\RegisterHEX0|DOUT\(1) & (!\RegisterHEX0|DOUT\(0) $ (!\RegisterHEX0|DOUT\(2))))) # (\RegisterHEX0|DOUT\(3) & (\RegisterHEX0|DOUT\(0) & (!\RegisterHEX0|DOUT\(1) $ 
-- (!\RegisterHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(0),
	datab => \RegisterHEX0|ALT_INV_DOUT\(3),
	datac => \RegisterHEX0|ALT_INV_DOUT\(1),
	datad => \RegisterHEX0|ALT_INV_DOUT\(2),
	combout => \HexDisplay0|rascSaida7seg[0]~0_combout\);

\HexDisplay0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[1]~1_combout\ = (!\RegisterHEX0|DOUT\(3) & (\RegisterHEX0|DOUT\(2) & (!\RegisterHEX0|DOUT\(0) $ (!\RegisterHEX0|DOUT\(1))))) # (\RegisterHEX0|DOUT\(3) & ((!\RegisterHEX0|DOUT\(0) & ((\RegisterHEX0|DOUT\(2)))) # 
-- (\RegisterHEX0|DOUT\(0) & (\RegisterHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(0),
	datab => \RegisterHEX0|ALT_INV_DOUT\(3),
	datac => \RegisterHEX0|ALT_INV_DOUT\(1),
	datad => \RegisterHEX0|ALT_INV_DOUT\(2),
	combout => \HexDisplay0|rascSaida7seg[1]~1_combout\);

\HexDisplay0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[2]~2_combout\ = (!\RegisterHEX0|DOUT\(3) & (!\RegisterHEX0|DOUT\(0) & (\RegisterHEX0|DOUT\(1) & !\RegisterHEX0|DOUT\(2)))) # (\RegisterHEX0|DOUT\(3) & (\RegisterHEX0|DOUT\(2) & ((!\RegisterHEX0|DOUT\(0)) # 
-- (\RegisterHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(0),
	datab => \RegisterHEX0|ALT_INV_DOUT\(3),
	datac => \RegisterHEX0|ALT_INV_DOUT\(1),
	datad => \RegisterHEX0|ALT_INV_DOUT\(2),
	combout => \HexDisplay0|rascSaida7seg[2]~2_combout\);

\HexDisplay0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[3]~3_combout\ = (!\RegisterHEX0|DOUT\(1) & (!\RegisterHEX0|DOUT\(3) & (!\RegisterHEX0|DOUT\(0) $ (!\RegisterHEX0|DOUT\(2))))) # (\RegisterHEX0|DOUT\(1) & ((!\RegisterHEX0|DOUT\(0) & (!\RegisterHEX0|DOUT\(2) & 
-- \RegisterHEX0|DOUT\(3))) # (\RegisterHEX0|DOUT\(0) & (\RegisterHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(0),
	datab => \RegisterHEX0|ALT_INV_DOUT\(1),
	datac => \RegisterHEX0|ALT_INV_DOUT\(2),
	datad => \RegisterHEX0|ALT_INV_DOUT\(3),
	combout => \HexDisplay0|rascSaida7seg[3]~3_combout\);

\HexDisplay0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[4]~4_combout\ = (!\RegisterHEX0|DOUT\(1) & ((!\RegisterHEX0|DOUT\(2) & ((\RegisterHEX0|DOUT\(0)))) # (\RegisterHEX0|DOUT\(2) & (!\RegisterHEX0|DOUT\(3))))) # (\RegisterHEX0|DOUT\(1) & (!\RegisterHEX0|DOUT\(3) & 
-- ((\RegisterHEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(3),
	datab => \RegisterHEX0|ALT_INV_DOUT\(1),
	datac => \RegisterHEX0|ALT_INV_DOUT\(2),
	datad => \RegisterHEX0|ALT_INV_DOUT\(0),
	combout => \HexDisplay0|rascSaida7seg[4]~4_combout\);

\HexDisplay0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[5]~5_combout\ = (!\RegisterHEX0|DOUT\(0) & (\RegisterHEX0|DOUT\(1) & (!\RegisterHEX0|DOUT\(2) & !\RegisterHEX0|DOUT\(3)))) # (\RegisterHEX0|DOUT\(0) & (!\RegisterHEX0|DOUT\(3) $ (((!\RegisterHEX0|DOUT\(1) & 
-- \RegisterHEX0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(0),
	datab => \RegisterHEX0|ALT_INV_DOUT\(1),
	datac => \RegisterHEX0|ALT_INV_DOUT\(2),
	datad => \RegisterHEX0|ALT_INV_DOUT\(3),
	combout => \HexDisplay0|rascSaida7seg[5]~5_combout\);

\HexDisplay0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay0|rascSaida7seg[6]~6_combout\ = (!\RegisterHEX0|DOUT\(0) & (!\RegisterHEX0|DOUT\(1) & (!\RegisterHEX0|DOUT\(3) $ (\RegisterHEX0|DOUT\(2))))) # (\RegisterHEX0|DOUT\(0) & (!\RegisterHEX0|DOUT\(3) & (!\RegisterHEX0|DOUT\(1) $ 
-- (\RegisterHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX0|ALT_INV_DOUT\(0),
	datab => \RegisterHEX0|ALT_INV_DOUT\(3),
	datac => \RegisterHEX0|ALT_INV_DOUT\(1),
	datad => \RegisterHEX0|ALT_INV_DOUT\(2),
	combout => \HexDisplay0|rascSaida7seg[6]~6_combout\);

\DECODER1|enableHEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableHEX1~0_combout\ = ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\RAM1|process_0~0_combout\ & (\DECODER1|enableHEX0~0_combout\ & !\ROM1|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \DECODER1|ALT_INV_enableHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~58_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \DECODER1|enableHEX1~0_combout\);

\RegisterHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \DECODER1|enableHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX1|DOUT\(0));

\RegisterHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \DECODER1|enableHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX1|DOUT\(3));

\RegisterHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \DECODER1|enableHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX1|DOUT\(1));

\RegisterHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \DECODER1|enableHEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX1|DOUT\(2));

\HexDisplay1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[0]~0_combout\ = (!\RegisterHEX1|DOUT\(3) & (!\RegisterHEX1|DOUT\(1) & (!\RegisterHEX1|DOUT\(0) $ (!\RegisterHEX1|DOUT\(2))))) # (\RegisterHEX1|DOUT\(3) & (\RegisterHEX1|DOUT\(0) & (!\RegisterHEX1|DOUT\(1) $ 
-- (!\RegisterHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(0),
	datab => \RegisterHEX1|ALT_INV_DOUT\(3),
	datac => \RegisterHEX1|ALT_INV_DOUT\(1),
	datad => \RegisterHEX1|ALT_INV_DOUT\(2),
	combout => \HexDisplay1|rascSaida7seg[0]~0_combout\);

\HexDisplay1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[1]~1_combout\ = (!\RegisterHEX1|DOUT\(3) & (\RegisterHEX1|DOUT\(2) & (!\RegisterHEX1|DOUT\(0) $ (!\RegisterHEX1|DOUT\(1))))) # (\RegisterHEX1|DOUT\(3) & ((!\RegisterHEX1|DOUT\(0) & ((\RegisterHEX1|DOUT\(2)))) # 
-- (\RegisterHEX1|DOUT\(0) & (\RegisterHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(0),
	datab => \RegisterHEX1|ALT_INV_DOUT\(3),
	datac => \RegisterHEX1|ALT_INV_DOUT\(1),
	datad => \RegisterHEX1|ALT_INV_DOUT\(2),
	combout => \HexDisplay1|rascSaida7seg[1]~1_combout\);

\HexDisplay1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[2]~2_combout\ = (!\RegisterHEX1|DOUT\(3) & (!\RegisterHEX1|DOUT\(0) & (\RegisterHEX1|DOUT\(1) & !\RegisterHEX1|DOUT\(2)))) # (\RegisterHEX1|DOUT\(3) & (\RegisterHEX1|DOUT\(2) & ((!\RegisterHEX1|DOUT\(0)) # 
-- (\RegisterHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(0),
	datab => \RegisterHEX1|ALT_INV_DOUT\(3),
	datac => \RegisterHEX1|ALT_INV_DOUT\(1),
	datad => \RegisterHEX1|ALT_INV_DOUT\(2),
	combout => \HexDisplay1|rascSaida7seg[2]~2_combout\);

\HexDisplay1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[3]~3_combout\ = (!\RegisterHEX1|DOUT\(1) & (!\RegisterHEX1|DOUT\(3) & (!\RegisterHEX1|DOUT\(0) $ (!\RegisterHEX1|DOUT\(2))))) # (\RegisterHEX1|DOUT\(1) & ((!\RegisterHEX1|DOUT\(0) & (!\RegisterHEX1|DOUT\(2) & 
-- \RegisterHEX1|DOUT\(3))) # (\RegisterHEX1|DOUT\(0) & (\RegisterHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(0),
	datab => \RegisterHEX1|ALT_INV_DOUT\(1),
	datac => \RegisterHEX1|ALT_INV_DOUT\(2),
	datad => \RegisterHEX1|ALT_INV_DOUT\(3),
	combout => \HexDisplay1|rascSaida7seg[3]~3_combout\);

\HexDisplay1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[4]~4_combout\ = (!\RegisterHEX1|DOUT\(1) & ((!\RegisterHEX1|DOUT\(2) & ((\RegisterHEX1|DOUT\(0)))) # (\RegisterHEX1|DOUT\(2) & (!\RegisterHEX1|DOUT\(3))))) # (\RegisterHEX1|DOUT\(1) & (!\RegisterHEX1|DOUT\(3) & 
-- ((\RegisterHEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(3),
	datab => \RegisterHEX1|ALT_INV_DOUT\(1),
	datac => \RegisterHEX1|ALT_INV_DOUT\(2),
	datad => \RegisterHEX1|ALT_INV_DOUT\(0),
	combout => \HexDisplay1|rascSaida7seg[4]~4_combout\);

\HexDisplay1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[5]~5_combout\ = (!\RegisterHEX1|DOUT\(0) & (\RegisterHEX1|DOUT\(1) & (!\RegisterHEX1|DOUT\(2) & !\RegisterHEX1|DOUT\(3)))) # (\RegisterHEX1|DOUT\(0) & (!\RegisterHEX1|DOUT\(3) $ (((!\RegisterHEX1|DOUT\(1) & 
-- \RegisterHEX1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(0),
	datab => \RegisterHEX1|ALT_INV_DOUT\(1),
	datac => \RegisterHEX1|ALT_INV_DOUT\(2),
	datad => \RegisterHEX1|ALT_INV_DOUT\(3),
	combout => \HexDisplay1|rascSaida7seg[5]~5_combout\);

\HexDisplay1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay1|rascSaida7seg[6]~6_combout\ = (!\RegisterHEX1|DOUT\(0) & (!\RegisterHEX1|DOUT\(1) & (!\RegisterHEX1|DOUT\(3) $ (\RegisterHEX1|DOUT\(2))))) # (\RegisterHEX1|DOUT\(0) & (!\RegisterHEX1|DOUT\(3) & (!\RegisterHEX1|DOUT\(1) $ 
-- (\RegisterHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX1|ALT_INV_DOUT\(0),
	datab => \RegisterHEX1|ALT_INV_DOUT\(3),
	datac => \RegisterHEX1|ALT_INV_DOUT\(1),
	datad => \RegisterHEX1|ALT_INV_DOUT\(2),
	combout => \HexDisplay1|rascSaida7seg[6]~6_combout\);

\DECODER1|enableHEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableHEX2~0_combout\ = ( \ROM1|memROM~63_combout\ & ( (!\ROM1|memROM~11_combout\ & (\RAM1|process_0~0_combout\ & (\DECODER1|enableHEX0~0_combout\ & \ROM1|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \DECODER1|ALT_INV_enableHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~58_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \DECODER1|enableHEX2~0_combout\);

\RegisterHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \DECODER1|enableHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX2|DOUT\(0));

\RegisterHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \DECODER1|enableHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX2|DOUT\(3));

\RegisterHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \DECODER1|enableHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX2|DOUT\(1));

\RegisterHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \DECODER1|enableHEX2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX2|DOUT\(2));

\HexDisplay2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[0]~0_combout\ = (!\RegisterHEX2|DOUT\(3) & (!\RegisterHEX2|DOUT\(1) & (!\RegisterHEX2|DOUT\(0) $ (!\RegisterHEX2|DOUT\(2))))) # (\RegisterHEX2|DOUT\(3) & (\RegisterHEX2|DOUT\(0) & (!\RegisterHEX2|DOUT\(1) $ 
-- (!\RegisterHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(0),
	datab => \RegisterHEX2|ALT_INV_DOUT\(3),
	datac => \RegisterHEX2|ALT_INV_DOUT\(1),
	datad => \RegisterHEX2|ALT_INV_DOUT\(2),
	combout => \HexDisplay2|rascSaida7seg[0]~0_combout\);

\HexDisplay2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[1]~1_combout\ = (!\RegisterHEX2|DOUT\(3) & (\RegisterHEX2|DOUT\(2) & (!\RegisterHEX2|DOUT\(0) $ (!\RegisterHEX2|DOUT\(1))))) # (\RegisterHEX2|DOUT\(3) & ((!\RegisterHEX2|DOUT\(0) & ((\RegisterHEX2|DOUT\(2)))) # 
-- (\RegisterHEX2|DOUT\(0) & (\RegisterHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(0),
	datab => \RegisterHEX2|ALT_INV_DOUT\(3),
	datac => \RegisterHEX2|ALT_INV_DOUT\(1),
	datad => \RegisterHEX2|ALT_INV_DOUT\(2),
	combout => \HexDisplay2|rascSaida7seg[1]~1_combout\);

\HexDisplay2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[2]~2_combout\ = (!\RegisterHEX2|DOUT\(3) & (!\RegisterHEX2|DOUT\(0) & (\RegisterHEX2|DOUT\(1) & !\RegisterHEX2|DOUT\(2)))) # (\RegisterHEX2|DOUT\(3) & (\RegisterHEX2|DOUT\(2) & ((!\RegisterHEX2|DOUT\(0)) # 
-- (\RegisterHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(0),
	datab => \RegisterHEX2|ALT_INV_DOUT\(3),
	datac => \RegisterHEX2|ALT_INV_DOUT\(1),
	datad => \RegisterHEX2|ALT_INV_DOUT\(2),
	combout => \HexDisplay2|rascSaida7seg[2]~2_combout\);

\HexDisplay2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[3]~3_combout\ = (!\RegisterHEX2|DOUT\(1) & (!\RegisterHEX2|DOUT\(3) & (!\RegisterHEX2|DOUT\(0) $ (!\RegisterHEX2|DOUT\(2))))) # (\RegisterHEX2|DOUT\(1) & ((!\RegisterHEX2|DOUT\(0) & (!\RegisterHEX2|DOUT\(2) & 
-- \RegisterHEX2|DOUT\(3))) # (\RegisterHEX2|DOUT\(0) & (\RegisterHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(0),
	datab => \RegisterHEX2|ALT_INV_DOUT\(1),
	datac => \RegisterHEX2|ALT_INV_DOUT\(2),
	datad => \RegisterHEX2|ALT_INV_DOUT\(3),
	combout => \HexDisplay2|rascSaida7seg[3]~3_combout\);

\HexDisplay2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[4]~4_combout\ = (!\RegisterHEX2|DOUT\(1) & ((!\RegisterHEX2|DOUT\(2) & ((\RegisterHEX2|DOUT\(0)))) # (\RegisterHEX2|DOUT\(2) & (!\RegisterHEX2|DOUT\(3))))) # (\RegisterHEX2|DOUT\(1) & (!\RegisterHEX2|DOUT\(3) & 
-- ((\RegisterHEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(3),
	datab => \RegisterHEX2|ALT_INV_DOUT\(1),
	datac => \RegisterHEX2|ALT_INV_DOUT\(2),
	datad => \RegisterHEX2|ALT_INV_DOUT\(0),
	combout => \HexDisplay2|rascSaida7seg[4]~4_combout\);

\HexDisplay2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[5]~5_combout\ = (!\RegisterHEX2|DOUT\(0) & (\RegisterHEX2|DOUT\(1) & (!\RegisterHEX2|DOUT\(2) & !\RegisterHEX2|DOUT\(3)))) # (\RegisterHEX2|DOUT\(0) & (!\RegisterHEX2|DOUT\(3) $ (((!\RegisterHEX2|DOUT\(1) & 
-- \RegisterHEX2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(0),
	datab => \RegisterHEX2|ALT_INV_DOUT\(1),
	datac => \RegisterHEX2|ALT_INV_DOUT\(2),
	datad => \RegisterHEX2|ALT_INV_DOUT\(3),
	combout => \HexDisplay2|rascSaida7seg[5]~5_combout\);

\HexDisplay2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay2|rascSaida7seg[6]~6_combout\ = (!\RegisterHEX2|DOUT\(0) & (!\RegisterHEX2|DOUT\(1) & (!\RegisterHEX2|DOUT\(3) $ (\RegisterHEX2|DOUT\(2))))) # (\RegisterHEX2|DOUT\(0) & (!\RegisterHEX2|DOUT\(3) & (!\RegisterHEX2|DOUT\(1) $ 
-- (\RegisterHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX2|ALT_INV_DOUT\(0),
	datab => \RegisterHEX2|ALT_INV_DOUT\(3),
	datac => \RegisterHEX2|ALT_INV_DOUT\(1),
	datad => \RegisterHEX2|ALT_INV_DOUT\(2),
	combout => \HexDisplay2|rascSaida7seg[6]~6_combout\);

\DECODER1|enableHEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECODER1|enableHEX3~0_combout\ = ( \ROM1|memROM~63_combout\ & ( (\ROM1|memROM~11_combout\ & (\RAM1|process_0~0_combout\ & (\DECODER1|enableHEX0~0_combout\ & \ROM1|memROM~58_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \RAM1|ALT_INV_process_0~0_combout\,
	datac => \DECODER1|ALT_INV_enableHEX0~0_combout\,
	datad => \ROM1|ALT_INV_memROM~58_combout\,
	datae => \ROM1|ALT_INV_memROM~63_combout\,
	combout => \DECODER1|enableHEX3~0_combout\);

\RegisterHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[0]~0_combout\,
	ena => \DECODER1|enableHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX3|DOUT\(0));

\RegisterHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[3]~3_combout\,
	ena => \DECODER1|enableHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX3|DOUT\(3));

\RegisterHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[1]~1_combout\,
	ena => \DECODER1|enableHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX3|DOUT\(1));

\RegisterHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \CPU|Bloco_Reg|MUX_DOUT|saida_MUX[2]~2_combout\,
	ena => \DECODER1|enableHEX3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegisterHEX3|DOUT\(2));

\HexDisplay3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[0]~0_combout\ = (!\RegisterHEX3|DOUT\(3) & (!\RegisterHEX3|DOUT\(1) & (!\RegisterHEX3|DOUT\(0) $ (!\RegisterHEX3|DOUT\(2))))) # (\RegisterHEX3|DOUT\(3) & (\RegisterHEX3|DOUT\(0) & (!\RegisterHEX3|DOUT\(1) $ 
-- (!\RegisterHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(0),
	datab => \RegisterHEX3|ALT_INV_DOUT\(3),
	datac => \RegisterHEX3|ALT_INV_DOUT\(1),
	datad => \RegisterHEX3|ALT_INV_DOUT\(2),
	combout => \HexDisplay3|rascSaida7seg[0]~0_combout\);

\HexDisplay3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[1]~1_combout\ = (!\RegisterHEX3|DOUT\(3) & (\RegisterHEX3|DOUT\(2) & (!\RegisterHEX3|DOUT\(0) $ (!\RegisterHEX3|DOUT\(1))))) # (\RegisterHEX3|DOUT\(3) & ((!\RegisterHEX3|DOUT\(0) & ((\RegisterHEX3|DOUT\(2)))) # 
-- (\RegisterHEX3|DOUT\(0) & (\RegisterHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(0),
	datab => \RegisterHEX3|ALT_INV_DOUT\(3),
	datac => \RegisterHEX3|ALT_INV_DOUT\(1),
	datad => \RegisterHEX3|ALT_INV_DOUT\(2),
	combout => \HexDisplay3|rascSaida7seg[1]~1_combout\);

\HexDisplay3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[2]~2_combout\ = (!\RegisterHEX3|DOUT\(3) & (!\RegisterHEX3|DOUT\(0) & (\RegisterHEX3|DOUT\(1) & !\RegisterHEX3|DOUT\(2)))) # (\RegisterHEX3|DOUT\(3) & (\RegisterHEX3|DOUT\(2) & ((!\RegisterHEX3|DOUT\(0)) # 
-- (\RegisterHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(0),
	datab => \RegisterHEX3|ALT_INV_DOUT\(3),
	datac => \RegisterHEX3|ALT_INV_DOUT\(1),
	datad => \RegisterHEX3|ALT_INV_DOUT\(2),
	combout => \HexDisplay3|rascSaida7seg[2]~2_combout\);

\HexDisplay3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[3]~3_combout\ = (!\RegisterHEX3|DOUT\(1) & (!\RegisterHEX3|DOUT\(3) & (!\RegisterHEX3|DOUT\(0) $ (!\RegisterHEX3|DOUT\(2))))) # (\RegisterHEX3|DOUT\(1) & ((!\RegisterHEX3|DOUT\(0) & (!\RegisterHEX3|DOUT\(2) & 
-- \RegisterHEX3|DOUT\(3))) # (\RegisterHEX3|DOUT\(0) & (\RegisterHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(0),
	datab => \RegisterHEX3|ALT_INV_DOUT\(1),
	datac => \RegisterHEX3|ALT_INV_DOUT\(2),
	datad => \RegisterHEX3|ALT_INV_DOUT\(3),
	combout => \HexDisplay3|rascSaida7seg[3]~3_combout\);

\HexDisplay3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[4]~4_combout\ = (!\RegisterHEX3|DOUT\(1) & ((!\RegisterHEX3|DOUT\(2) & ((\RegisterHEX3|DOUT\(0)))) # (\RegisterHEX3|DOUT\(2) & (!\RegisterHEX3|DOUT\(3))))) # (\RegisterHEX3|DOUT\(1) & (!\RegisterHEX3|DOUT\(3) & 
-- ((\RegisterHEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(3),
	datab => \RegisterHEX3|ALT_INV_DOUT\(1),
	datac => \RegisterHEX3|ALT_INV_DOUT\(2),
	datad => \RegisterHEX3|ALT_INV_DOUT\(0),
	combout => \HexDisplay3|rascSaida7seg[4]~4_combout\);

\HexDisplay3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[5]~5_combout\ = (!\RegisterHEX3|DOUT\(0) & (\RegisterHEX3|DOUT\(1) & (!\RegisterHEX3|DOUT\(2) & !\RegisterHEX3|DOUT\(3)))) # (\RegisterHEX3|DOUT\(0) & (!\RegisterHEX3|DOUT\(3) $ (((!\RegisterHEX3|DOUT\(1) & 
-- \RegisterHEX3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(0),
	datab => \RegisterHEX3|ALT_INV_DOUT\(1),
	datac => \RegisterHEX3|ALT_INV_DOUT\(2),
	datad => \RegisterHEX3|ALT_INV_DOUT\(3),
	combout => \HexDisplay3|rascSaida7seg[5]~5_combout\);

\HexDisplay3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay3|rascSaida7seg[6]~6_combout\ = (!\RegisterHEX3|DOUT\(0) & (!\RegisterHEX3|DOUT\(1) & (!\RegisterHEX3|DOUT\(3) $ (\RegisterHEX3|DOUT\(2))))) # (\RegisterHEX3|DOUT\(0) & (!\RegisterHEX3|DOUT\(3) & (!\RegisterHEX3|DOUT\(1) $ 
-- (\RegisterHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegisterHEX3|ALT_INV_DOUT\(0),
	datab => \RegisterHEX3|ALT_INV_DOUT\(3),
	datac => \RegisterHEX3|ALT_INV_DOUT\(1),
	datad => \RegisterHEX3|ALT_INV_DOUT\(2),
	combout => \HexDisplay3|rascSaida7seg[6]~6_combout\);

\HexDisplay4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[0]~0_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	combout => \HexDisplay4|rascSaida7seg[0]~0_combout\);

\HexDisplay4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[1]~1_combout\ = (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \HexDisplay4|rascSaida7seg[1]~1_combout\);

\HexDisplay4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[2]~2_combout\ = (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \HexDisplay4|rascSaida7seg[2]~2_combout\);

\HexDisplay4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[3]~3_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT\(0) & 
-- (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \HexDisplay4|rascSaida7seg[3]~3_combout\);

\HexDisplay4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[4]~4_combout\ = (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(0)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \HexDisplay4|rascSaida7seg[4]~4_combout\);

\HexDisplay4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[5]~5_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) $ (((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \HexDisplay4|rascSaida7seg[5]~5_combout\);

\HexDisplay4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay4|rascSaida7seg[6]~6_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \HexDisplay4|rascSaida7seg[6]~6_combout\);

\HexDisplay5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[0]~0_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(6))))) # (\CPU|PC|DOUT\(7) & (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	combout => \HexDisplay5|rascSaida7seg[0]~0_combout\);

\HexDisplay5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[1]~1_combout\ = (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(6))) # (\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \HexDisplay5|rascSaida7seg[1]~1_combout\);

\HexDisplay5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[2]~2_combout\ = (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT\(7) & ((!\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000001011001000000000101100100000000010110010000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \HexDisplay5|rascSaida7seg[2]~2_combout\);

\HexDisplay5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[3]~3_combout\ = (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) $ (!\CPU|PC|DOUT\(6))))) # (\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(6) & \CPU|PC|DOUT\(7))) # (\CPU|PC|DOUT\(4) & 
-- (\CPU|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \HexDisplay5|rascSaida7seg[3]~3_combout\);

\HexDisplay5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[4]~4_combout\ = (!\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(6) & ((\CPU|PC|DOUT\(4)))) # (\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(7) & ((\CPU|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \HexDisplay5|rascSaida7seg[4]~4_combout\);

\HexDisplay5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[5]~5_combout\ = (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7)))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) $ (((!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(6))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \HexDisplay5|rascSaida7seg[5]~5_combout\);

\HexDisplay5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HexDisplay5|rascSaida7seg[6]~6_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) $ (\CPU|PC|DOUT\(7))))) # (\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100001000110000010000100011000001000010001100000100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(5),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	combout => \HexDisplay5|rascSaida7seg[6]~6_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_ROM_AddressOUT(0) <= \ROM_AddressOUT[0]~output_o\;

ww_ROM_AddressOUT(1) <= \ROM_AddressOUT[1]~output_o\;

ww_ROM_AddressOUT(2) <= \ROM_AddressOUT[2]~output_o\;

ww_ROM_AddressOUT(3) <= \ROM_AddressOUT[3]~output_o\;

ww_ROM_AddressOUT(4) <= \ROM_AddressOUT[4]~output_o\;

ww_ROM_AddressOUT(5) <= \ROM_AddressOUT[5]~output_o\;

ww_ROM_AddressOUT(6) <= \ROM_AddressOUT[6]~output_o\;

ww_ROM_AddressOUT(7) <= \ROM_AddressOUT[7]~output_o\;

ww_ROM_AddressOUT(8) <= \ROM_AddressOUT[8]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_Bloco_Reg_Out(0) <= \Bloco_Reg_Out[0]~output_o\;

ww_Bloco_Reg_Out(1) <= \Bloco_Reg_Out[1]~output_o\;

ww_Bloco_Reg_Out(2) <= \Bloco_Reg_Out[2]~output_o\;

ww_Bloco_Reg_Out(3) <= \Bloco_Reg_Out[3]~output_o\;

ww_Bloco_Reg_Out(4) <= \Bloco_Reg_Out[4]~output_o\;

ww_Bloco_Reg_Out(5) <= \Bloco_Reg_Out[5]~output_o\;

ww_Bloco_Reg_Out(6) <= \Bloco_Reg_Out[6]~output_o\;

ww_Bloco_Reg_Out(7) <= \Bloco_Reg_Out[7]~output_o\;
END structure;


