-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/11/2017 20:11:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	J17 IS
    PORT (
	clk : IN std_logic;
	\in\ : IN std_logic;
	seg : BUFFER std_logic_vector(6 DOWNTO 0);
	PC : BUFFER std_logic_vector(31 DOWNTO 0);
	alucode : BUFFER std_logic_vector(3 DOWNTO 0);
	op1 : BUFFER std_logic_vector(2 DOWNTO 0);
	op2 : BUFFER std_logic_vector(20 DOWNTO 0);
	pcControl : BUFFER std_logic_vector(3 DOWNTO 0);
	flag : BUFFER std_logic;
	flag1 : BUFFER std_logic;
	imControl : BUFFER std_logic;
	writecode : BUFFER std_logic;
	result : BUFFER std_logic_vector(31 DOWNTO 0);
	memaddr : BUFFER std_logic_vector(9 DOWNTO 0);
	writemem : BUFFER std_logic;
	writememdata : BUFFER std_logic_vector(31 DOWNTO 0);
	memresult : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END J17;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[31]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alucode[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alucode[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alucode[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alucode[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[0]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op1[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[0]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[6]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[8]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[10]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[13]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[15]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[16]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[18]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[19]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op2[20]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcControl[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcControl[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcControl[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pcControl[3]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- flag1	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- imControl	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writecode	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[1]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[3]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[4]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[5]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[6]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[7]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[8]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memaddr[9]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writemem	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[1]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[3]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[5]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[6]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[12]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[13]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[14]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[15]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[16]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[17]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[18]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[19]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[20]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[21]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[22]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[23]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[24]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[25]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[26]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[27]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[28]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[29]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writememdata[31]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[1]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[9]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[10]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[11]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[13]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[15]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[17]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[18]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[19]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[20]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[21]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[22]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[23]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[24]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[25]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[26]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[27]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[28]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[29]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[30]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memresult[31]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF J17 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \ww_in\ : std_logic;
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_alucode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_op2 : std_logic_vector(20 DOWNTO 0);
SIGNAL ww_pcControl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_flag : std_logic;
SIGNAL ww_flag1 : std_logic;
SIGNAL ww_imControl : std_logic;
SIGNAL ww_writecode : std_logic;
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memaddr : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_writemem : std_logic;
SIGNAL ww_writememdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memresult : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[4]~output_o\ : std_logic;
SIGNAL \PC[5]~output_o\ : std_logic;
SIGNAL \PC[6]~output_o\ : std_logic;
SIGNAL \PC[7]~output_o\ : std_logic;
SIGNAL \PC[8]~output_o\ : std_logic;
SIGNAL \PC[9]~output_o\ : std_logic;
SIGNAL \PC[10]~output_o\ : std_logic;
SIGNAL \PC[11]~output_o\ : std_logic;
SIGNAL \PC[12]~output_o\ : std_logic;
SIGNAL \PC[13]~output_o\ : std_logic;
SIGNAL \PC[14]~output_o\ : std_logic;
SIGNAL \PC[15]~output_o\ : std_logic;
SIGNAL \PC[16]~output_o\ : std_logic;
SIGNAL \PC[17]~output_o\ : std_logic;
SIGNAL \PC[18]~output_o\ : std_logic;
SIGNAL \PC[19]~output_o\ : std_logic;
SIGNAL \PC[20]~output_o\ : std_logic;
SIGNAL \PC[21]~output_o\ : std_logic;
SIGNAL \PC[22]~output_o\ : std_logic;
SIGNAL \PC[23]~output_o\ : std_logic;
SIGNAL \PC[24]~output_o\ : std_logic;
SIGNAL \PC[25]~output_o\ : std_logic;
SIGNAL \PC[26]~output_o\ : std_logic;
SIGNAL \PC[27]~output_o\ : std_logic;
SIGNAL \PC[28]~output_o\ : std_logic;
SIGNAL \PC[29]~output_o\ : std_logic;
SIGNAL \PC[30]~output_o\ : std_logic;
SIGNAL \PC[31]~output_o\ : std_logic;
SIGNAL \alucode[0]~output_o\ : std_logic;
SIGNAL \alucode[1]~output_o\ : std_logic;
SIGNAL \alucode[2]~output_o\ : std_logic;
SIGNAL \alucode[3]~output_o\ : std_logic;
SIGNAL \op1[0]~output_o\ : std_logic;
SIGNAL \op1[1]~output_o\ : std_logic;
SIGNAL \op1[2]~output_o\ : std_logic;
SIGNAL \op2[0]~output_o\ : std_logic;
SIGNAL \op2[1]~output_o\ : std_logic;
SIGNAL \op2[2]~output_o\ : std_logic;
SIGNAL \op2[3]~output_o\ : std_logic;
SIGNAL \op2[4]~output_o\ : std_logic;
SIGNAL \op2[5]~output_o\ : std_logic;
SIGNAL \op2[6]~output_o\ : std_logic;
SIGNAL \op2[7]~output_o\ : std_logic;
SIGNAL \op2[8]~output_o\ : std_logic;
SIGNAL \op2[9]~output_o\ : std_logic;
SIGNAL \op2[10]~output_o\ : std_logic;
SIGNAL \op2[11]~output_o\ : std_logic;
SIGNAL \op2[12]~output_o\ : std_logic;
SIGNAL \op2[13]~output_o\ : std_logic;
SIGNAL \op2[14]~output_o\ : std_logic;
SIGNAL \op2[15]~output_o\ : std_logic;
SIGNAL \op2[16]~output_o\ : std_logic;
SIGNAL \op2[17]~output_o\ : std_logic;
SIGNAL \op2[18]~output_o\ : std_logic;
SIGNAL \op2[19]~output_o\ : std_logic;
SIGNAL \op2[20]~output_o\ : std_logic;
SIGNAL \pcControl[0]~output_o\ : std_logic;
SIGNAL \pcControl[1]~output_o\ : std_logic;
SIGNAL \pcControl[2]~output_o\ : std_logic;
SIGNAL \pcControl[3]~output_o\ : std_logic;
SIGNAL \flag~output_o\ : std_logic;
SIGNAL \flag1~output_o\ : std_logic;
SIGNAL \imControl~output_o\ : std_logic;
SIGNAL \writecode~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \result[14]~output_o\ : std_logic;
SIGNAL \result[15]~output_o\ : std_logic;
SIGNAL \result[16]~output_o\ : std_logic;
SIGNAL \result[17]~output_o\ : std_logic;
SIGNAL \result[18]~output_o\ : std_logic;
SIGNAL \result[19]~output_o\ : std_logic;
SIGNAL \result[20]~output_o\ : std_logic;
SIGNAL \result[21]~output_o\ : std_logic;
SIGNAL \result[22]~output_o\ : std_logic;
SIGNAL \result[23]~output_o\ : std_logic;
SIGNAL \result[24]~output_o\ : std_logic;
SIGNAL \result[25]~output_o\ : std_logic;
SIGNAL \result[26]~output_o\ : std_logic;
SIGNAL \result[27]~output_o\ : std_logic;
SIGNAL \result[28]~output_o\ : std_logic;
SIGNAL \result[29]~output_o\ : std_logic;
SIGNAL \result[30]~output_o\ : std_logic;
SIGNAL \result[31]~output_o\ : std_logic;
SIGNAL \memaddr[0]~output_o\ : std_logic;
SIGNAL \memaddr[1]~output_o\ : std_logic;
SIGNAL \memaddr[2]~output_o\ : std_logic;
SIGNAL \memaddr[3]~output_o\ : std_logic;
SIGNAL \memaddr[4]~output_o\ : std_logic;
SIGNAL \memaddr[5]~output_o\ : std_logic;
SIGNAL \memaddr[6]~output_o\ : std_logic;
SIGNAL \memaddr[7]~output_o\ : std_logic;
SIGNAL \memaddr[8]~output_o\ : std_logic;
SIGNAL \memaddr[9]~output_o\ : std_logic;
SIGNAL \writemem~output_o\ : std_logic;
SIGNAL \writememdata[0]~output_o\ : std_logic;
SIGNAL \writememdata[1]~output_o\ : std_logic;
SIGNAL \writememdata[2]~output_o\ : std_logic;
SIGNAL \writememdata[3]~output_o\ : std_logic;
SIGNAL \writememdata[4]~output_o\ : std_logic;
SIGNAL \writememdata[5]~output_o\ : std_logic;
SIGNAL \writememdata[6]~output_o\ : std_logic;
SIGNAL \writememdata[7]~output_o\ : std_logic;
SIGNAL \writememdata[8]~output_o\ : std_logic;
SIGNAL \writememdata[9]~output_o\ : std_logic;
SIGNAL \writememdata[10]~output_o\ : std_logic;
SIGNAL \writememdata[11]~output_o\ : std_logic;
SIGNAL \writememdata[12]~output_o\ : std_logic;
SIGNAL \writememdata[13]~output_o\ : std_logic;
SIGNAL \writememdata[14]~output_o\ : std_logic;
SIGNAL \writememdata[15]~output_o\ : std_logic;
SIGNAL \writememdata[16]~output_o\ : std_logic;
SIGNAL \writememdata[17]~output_o\ : std_logic;
SIGNAL \writememdata[18]~output_o\ : std_logic;
SIGNAL \writememdata[19]~output_o\ : std_logic;
SIGNAL \writememdata[20]~output_o\ : std_logic;
SIGNAL \writememdata[21]~output_o\ : std_logic;
SIGNAL \writememdata[22]~output_o\ : std_logic;
SIGNAL \writememdata[23]~output_o\ : std_logic;
SIGNAL \writememdata[24]~output_o\ : std_logic;
SIGNAL \writememdata[25]~output_o\ : std_logic;
SIGNAL \writememdata[26]~output_o\ : std_logic;
SIGNAL \writememdata[27]~output_o\ : std_logic;
SIGNAL \writememdata[28]~output_o\ : std_logic;
SIGNAL \writememdata[29]~output_o\ : std_logic;
SIGNAL \writememdata[30]~output_o\ : std_logic;
SIGNAL \writememdata[31]~output_o\ : std_logic;
SIGNAL \memresult[0]~output_o\ : std_logic;
SIGNAL \memresult[1]~output_o\ : std_logic;
SIGNAL \memresult[2]~output_o\ : std_logic;
SIGNAL \memresult[3]~output_o\ : std_logic;
SIGNAL \memresult[4]~output_o\ : std_logic;
SIGNAL \memresult[5]~output_o\ : std_logic;
SIGNAL \memresult[6]~output_o\ : std_logic;
SIGNAL \memresult[7]~output_o\ : std_logic;
SIGNAL \memresult[8]~output_o\ : std_logic;
SIGNAL \memresult[9]~output_o\ : std_logic;
SIGNAL \memresult[10]~output_o\ : std_logic;
SIGNAL \memresult[11]~output_o\ : std_logic;
SIGNAL \memresult[12]~output_o\ : std_logic;
SIGNAL \memresult[13]~output_o\ : std_logic;
SIGNAL \memresult[14]~output_o\ : std_logic;
SIGNAL \memresult[15]~output_o\ : std_logic;
SIGNAL \memresult[16]~output_o\ : std_logic;
SIGNAL \memresult[17]~output_o\ : std_logic;
SIGNAL \memresult[18]~output_o\ : std_logic;
SIGNAL \memresult[19]~output_o\ : std_logic;
SIGNAL \memresult[20]~output_o\ : std_logic;
SIGNAL \memresult[21]~output_o\ : std_logic;
SIGNAL \memresult[22]~output_o\ : std_logic;
SIGNAL \memresult[23]~output_o\ : std_logic;
SIGNAL \memresult[24]~output_o\ : std_logic;
SIGNAL \memresult[25]~output_o\ : std_logic;
SIGNAL \memresult[26]~output_o\ : std_logic;
SIGNAL \memresult[27]~output_o\ : std_logic;
SIGNAL \memresult[28]~output_o\ : std_logic;
SIGNAL \memresult[29]~output_o\ : std_logic;
SIGNAL \memresult[30]~output_o\ : std_logic;
SIGNAL \memresult[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DataPath|PC[0]~33\ : std_logic;
SIGNAL \DataPath|PC[1]~34_combout\ : std_logic;
SIGNAL \InstructionFetch|list~3_combout\ : std_logic;
SIGNAL \InstructionFetch|list~4_combout\ : std_logic;
SIGNAL \InstructionFetch|list~8_combout\ : std_logic;
SIGNAL \InstructionFetch|list~7_combout\ : std_logic;
SIGNAL \InstructionFetch|list~0_combout\ : std_logic;
SIGNAL \DataPath|towrite~0_combout\ : std_logic;
SIGNAL \DataPath|Decoder1~0_combout\ : std_logic;
SIGNAL \DataPath|regs[0][1]~q\ : std_logic;
SIGNAL \DataPath|Mux61~0_combout\ : std_logic;
SIGNAL \DataPath|memaddr[1]~feeder_combout\ : std_logic;
SIGNAL \DataPath|memaddr[0]~feeder_combout\ : std_logic;
SIGNAL \DataPath|writemem~0_combout\ : std_logic;
SIGNAL \DataPath|regs[0][10]~q\ : std_logic;
SIGNAL \DataPath|num1~0_combout\ : std_logic;
SIGNAL \DataPath|memaddr[3]~feeder_combout\ : std_logic;
SIGNAL \DataPath|writemem~q\ : std_logic;
SIGNAL \RAM|RAM[0][0]~0_combout\ : std_logic;
SIGNAL \RAM|RAM[0][0]~q\ : std_logic;
SIGNAL \RAM|RAM~1_combout\ : std_logic;
SIGNAL \RAM|RAM~2_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[0]~11_combout\ : std_logic;
SIGNAL \in~input_o\ : std_logic;
SIGNAL \RAM|comb_3|DFF1~q\ : std_logic;
SIGNAL \RAM|comb_3|DFF2~feeder_combout\ : std_logic;
SIGNAL \RAM|comb_3|DFF2~q\ : std_logic;
SIGNAL \RAM|comb_3|q_reset~combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[0]~12\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[1]~13_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[1]~14\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[2]~15_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[2]~16\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[3]~17_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[3]~18\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[4]~19_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[4]~20\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[5]~21_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[5]~22\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[6]~23_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[6]~24\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[7]~25_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[7]~26\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[8]~27_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[8]~28\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[9]~29_combout\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[9]~30\ : std_logic;
SIGNAL \RAM|comb_3|q_reg[10]~31_combout\ : std_logic;
SIGNAL \RAM|comb_3|DB_out~0_combout\ : std_logic;
SIGNAL \RAM|comb_3|DB_out~q\ : std_logic;
SIGNAL \RAM|RAM[1][0]~q\ : std_logic;
SIGNAL \RAM|Mux31~0_combout\ : std_logic;
SIGNAL \DataPath|Mux127~0_combout\ : std_logic;
SIGNAL \DataPath|regs[4][0]~0_combout\ : std_logic;
SIGNAL \DataPath|regs[4][0]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[4][0]~q\ : std_logic;
SIGNAL \DataPath|Mux63~0_combout\ : std_logic;
SIGNAL \DataPath|regs[2][0]~5_combout\ : std_logic;
SIGNAL \DataPath|regs[2][0]~6_combout\ : std_logic;
SIGNAL \DataPath|regs[2][0]~q\ : std_logic;
SIGNAL \InstructionFetch|list~2_combout\ : std_logic;
SIGNAL \DataPath|regs[3][0]~1_combout\ : std_logic;
SIGNAL \DataPath|regs[3][0]~2_combout\ : std_logic;
SIGNAL \DataPath|regs[3][0]~q\ : std_logic;
SIGNAL \DataPath|regs[0][0]~q\ : std_logic;
SIGNAL \DataPath|regs[1][0]~3_combout\ : std_logic;
SIGNAL \DataPath|regs[1][0]~4_combout\ : std_logic;
SIGNAL \DataPath|regs[1][0]~q\ : std_logic;
SIGNAL \InstructionFetch|list~1_combout\ : std_logic;
SIGNAL \DataPath|Mux63~1_combout\ : std_logic;
SIGNAL \DataPath|Mux63~2_combout\ : std_logic;
SIGNAL \DataPath|Mux63~3_combout\ : std_logic;
SIGNAL \DataPath|num1~3_combout\ : std_logic;
SIGNAL \RAM|RAM~3_combout\ : std_logic;
SIGNAL \RAM|RAM[1][27]~4_combout\ : std_logic;
SIGNAL \RAM|RAM[1][1]~q\ : std_logic;
SIGNAL \RAM|RAM[0][1]~q\ : std_logic;
SIGNAL \RAM|Mux30~0_combout\ : std_logic;
SIGNAL \DataPath|num1~2_combout\ : std_logic;
SIGNAL \DataPath|Mux180~6_combout\ : std_logic;
SIGNAL \RAM|RAM~5_combout\ : std_logic;
SIGNAL \RAM|RAM[1][10]~q\ : std_logic;
SIGNAL \RAM|Mux28~0_combout\ : std_logic;
SIGNAL \DataPath|num1~1_combout\ : std_logic;
SIGNAL \DataPath|Mux180~7_combout\ : std_logic;
SIGNAL \DataPath|num2~2_combout\ : std_logic;
SIGNAL \DataPath|num2~3_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr6~0_combout\ : std_logic;
SIGNAL \DataPath|num2~0_combout\ : std_logic;
SIGNAL \DataPath|num2~1_combout\ : std_logic;
SIGNAL \DataPath|Mux180~4_combout\ : std_logic;
SIGNAL \DataPath|Mux180~5_combout\ : std_logic;
SIGNAL \DataPath|LessThan0~1_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~3_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~5_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~7_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~9_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~11_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~13_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~15_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~17_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~19_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~21_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~23_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~25_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~27_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~29_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~31_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~33_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~35_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~37_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~39_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~41_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~43_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~45_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~47_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~49_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~51_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~53_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~55_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~57_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~59_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~61_cout\ : std_logic;
SIGNAL \DataPath|LessThan0~62_combout\ : std_logic;
SIGNAL \DataPath|Mux180~8_combout\ : std_logic;
SIGNAL \DataPath|Mux160~0_combout\ : std_logic;
SIGNAL \DataPath|PC[1]~35\ : std_logic;
SIGNAL \DataPath|PC[2]~36_combout\ : std_logic;
SIGNAL \DataPath|Mux191~5_combout\ : std_logic;
SIGNAL \DataPath|Mux191~4_combout\ : std_logic;
SIGNAL \DataPath|PC[0]~32_combout\ : std_logic;
SIGNAL \DataPath|towrite~1_combout\ : std_logic;
SIGNAL \DataPath|writememdata[10]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[0][17]~q\ : std_logic;
SIGNAL \RAM|comb_4|WideOr6~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr5~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr4~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr5~1_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr1~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr0~0_combout\ : std_logic;
SIGNAL \DataPath|PC[2]~37\ : std_logic;
SIGNAL \DataPath|PC[3]~38_combout\ : std_logic;
SIGNAL \DataPath|PC[3]~39\ : std_logic;
SIGNAL \DataPath|PC[4]~40_combout\ : std_logic;
SIGNAL \DataPath|PC[4]~41\ : std_logic;
SIGNAL \DataPath|PC[5]~42_combout\ : std_logic;
SIGNAL \DataPath|PC[5]~43\ : std_logic;
SIGNAL \DataPath|PC[6]~44_combout\ : std_logic;
SIGNAL \DataPath|PC[6]~45\ : std_logic;
SIGNAL \DataPath|PC[7]~46_combout\ : std_logic;
SIGNAL \DataPath|PC[7]~47\ : std_logic;
SIGNAL \DataPath|PC[8]~48_combout\ : std_logic;
SIGNAL \DataPath|PC[8]~49\ : std_logic;
SIGNAL \DataPath|PC[9]~50_combout\ : std_logic;
SIGNAL \DataPath|PC[9]~51\ : std_logic;
SIGNAL \DataPath|PC[10]~52_combout\ : std_logic;
SIGNAL \DataPath|PC[10]~53\ : std_logic;
SIGNAL \DataPath|PC[11]~54_combout\ : std_logic;
SIGNAL \DataPath|PC[11]~55\ : std_logic;
SIGNAL \DataPath|PC[12]~56_combout\ : std_logic;
SIGNAL \DataPath|PC[12]~57\ : std_logic;
SIGNAL \DataPath|PC[13]~58_combout\ : std_logic;
SIGNAL \DataPath|PC[13]~59\ : std_logic;
SIGNAL \DataPath|PC[14]~60_combout\ : std_logic;
SIGNAL \DataPath|PC[14]~61\ : std_logic;
SIGNAL \DataPath|PC[15]~62_combout\ : std_logic;
SIGNAL \DataPath|PC[15]~63\ : std_logic;
SIGNAL \DataPath|PC[16]~64_combout\ : std_logic;
SIGNAL \DataPath|PC[16]~65\ : std_logic;
SIGNAL \DataPath|PC[17]~66_combout\ : std_logic;
SIGNAL \DataPath|PC[17]~67\ : std_logic;
SIGNAL \DataPath|PC[18]~68_combout\ : std_logic;
SIGNAL \DataPath|PC[18]~69\ : std_logic;
SIGNAL \DataPath|PC[19]~70_combout\ : std_logic;
SIGNAL \DataPath|PC[19]~71\ : std_logic;
SIGNAL \DataPath|PC[20]~72_combout\ : std_logic;
SIGNAL \DataPath|PC[20]~73\ : std_logic;
SIGNAL \DataPath|PC[21]~74_combout\ : std_logic;
SIGNAL \DataPath|PC[21]~75\ : std_logic;
SIGNAL \DataPath|PC[22]~76_combout\ : std_logic;
SIGNAL \DataPath|PC[22]~77\ : std_logic;
SIGNAL \DataPath|PC[23]~78_combout\ : std_logic;
SIGNAL \DataPath|PC[23]~79\ : std_logic;
SIGNAL \DataPath|PC[24]~80_combout\ : std_logic;
SIGNAL \DataPath|PC[24]~81\ : std_logic;
SIGNAL \DataPath|PC[25]~82_combout\ : std_logic;
SIGNAL \DataPath|PC[25]~83\ : std_logic;
SIGNAL \DataPath|PC[26]~84_combout\ : std_logic;
SIGNAL \DataPath|PC[26]~85\ : std_logic;
SIGNAL \DataPath|PC[27]~86_combout\ : std_logic;
SIGNAL \DataPath|PC[27]~87\ : std_logic;
SIGNAL \DataPath|PC[28]~88_combout\ : std_logic;
SIGNAL \DataPath|PC[28]~89\ : std_logic;
SIGNAL \DataPath|PC[29]~90_combout\ : std_logic;
SIGNAL \DataPath|PC[29]~91\ : std_logic;
SIGNAL \DataPath|PC[30]~92_combout\ : std_logic;
SIGNAL \DataPath|PC[30]~93\ : std_logic;
SIGNAL \DataPath|PC[31]~94_combout\ : std_logic;
SIGNAL \InstructionFetch|list~5_combout\ : std_logic;
SIGNAL \InstructionFetch|list~6_combout\ : std_logic;
SIGNAL \DataPath|Mux126~0_combout\ : std_logic;
SIGNAL \DataPath|result[1]~feeder_combout\ : std_logic;
SIGNAL \DataPath|Mux124~0_combout\ : std_logic;
SIGNAL \DataPath|result[3]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[4]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[5]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[6]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[7]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[8]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[9]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[10]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[11]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[12]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[13]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[14]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[15]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[16]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[17]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[18]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[19]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[20]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[21]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[22]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[23]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[24]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[25]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[26]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[27]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[28]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[29]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[30]~feeder_combout\ : std_logic;
SIGNAL \DataPath|result[31]~feeder_combout\ : std_logic;
SIGNAL \DataPath|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM|comb_3|q_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \DataPath|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DataPath|memaddr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DataPath|writememdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DataPath|ALT_INV_writemem~q\ : std_logic;
SIGNAL \InstructionFetch|ALT_INV_list~8_combout\ : std_logic;
SIGNAL \InstructionFetch|ALT_INV_list~4_combout\ : std_logic;
SIGNAL \InstructionFetch|ALT_INV_list~3_combout\ : std_logic;
SIGNAL \InstructionFetch|ALT_INV_list~1_combout\ : std_logic;
SIGNAL \InstructionFetch|ALT_INV_list~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|ALT_INV_WideOr6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
\ww_in\ <= \in\;
seg <= ww_seg;
PC <= ww_PC;
alucode <= ww_alucode;
op1 <= ww_op1;
op2 <= ww_op2;
pcControl <= ww_pcControl;
flag <= ww_flag;
flag1 <= ww_flag1;
imControl <= ww_imControl;
writecode <= ww_writecode;
result <= ww_result;
memaddr <= ww_memaddr;
writemem <= ww_writemem;
writememdata <= ww_writememdata;
memresult <= ww_memresult;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\DataPath|ALT_INV_writemem~q\ <= NOT \DataPath|writemem~q\;
\InstructionFetch|ALT_INV_list~8_combout\ <= NOT \InstructionFetch|list~8_combout\;
\InstructionFetch|ALT_INV_list~4_combout\ <= NOT \InstructionFetch|list~4_combout\;
\InstructionFetch|ALT_INV_list~3_combout\ <= NOT \InstructionFetch|list~3_combout\;
\InstructionFetch|ALT_INV_list~1_combout\ <= NOT \InstructionFetch|list~1_combout\;
\InstructionFetch|ALT_INV_list~0_combout\ <= NOT \InstructionFetch|list~0_combout\;
\RAM|comb_4|ALT_INV_WideOr6~0_combout\ <= NOT \RAM|comb_4|WideOr6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|WideOr5~1_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|comb_4|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(0),
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(1),
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(2),
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(3),
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(4),
	devoe => ww_devoe,
	o => \PC[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(5),
	devoe => ww_devoe,
	o => \PC[5]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(6),
	devoe => ww_devoe,
	o => \PC[6]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(7),
	devoe => ww_devoe,
	o => \PC[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(8),
	devoe => ww_devoe,
	o => \PC[8]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(9),
	devoe => ww_devoe,
	o => \PC[9]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(10),
	devoe => ww_devoe,
	o => \PC[10]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(11),
	devoe => ww_devoe,
	o => \PC[11]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(12),
	devoe => ww_devoe,
	o => \PC[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(13),
	devoe => ww_devoe,
	o => \PC[13]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(14),
	devoe => ww_devoe,
	o => \PC[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(15),
	devoe => ww_devoe,
	o => \PC[15]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(16),
	devoe => ww_devoe,
	o => \PC[16]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(17),
	devoe => ww_devoe,
	o => \PC[17]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(18),
	devoe => ww_devoe,
	o => \PC[18]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(19),
	devoe => ww_devoe,
	o => \PC[19]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(20),
	devoe => ww_devoe,
	o => \PC[20]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(21),
	devoe => ww_devoe,
	o => \PC[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(22),
	devoe => ww_devoe,
	o => \PC[22]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(23),
	devoe => ww_devoe,
	o => \PC[23]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(24),
	devoe => ww_devoe,
	o => \PC[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(25),
	devoe => ww_devoe,
	o => \PC[25]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(26),
	devoe => ww_devoe,
	o => \PC[26]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(27),
	devoe => ww_devoe,
	o => \PC[27]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(28),
	devoe => ww_devoe,
	o => \PC[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(29),
	devoe => ww_devoe,
	o => \PC[29]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(30),
	devoe => ww_devoe,
	o => \PC[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|PC\(31),
	devoe => ww_devoe,
	o => \PC[31]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\alucode[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alucode[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\alucode[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~0_combout\,
	devoe => ww_devoe,
	o => \alucode[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\alucode[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~0_combout\,
	devoe => ww_devoe,
	o => \alucode[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\alucode[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~0_combout\,
	devoe => ww_devoe,
	o => \alucode[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\op1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|ALT_INV_list~1_combout\,
	devoe => ww_devoe,
	o => \op1[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\op1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~2_combout\,
	devoe => ww_devoe,
	o => \op1[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\op1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op1[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\op2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|ALT_INV_list~4_combout\,
	devoe => ww_devoe,
	o => \op2[0]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\op2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~5_combout\,
	devoe => ww_devoe,
	o => \op2[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\op2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~5_combout\,
	devoe => ww_devoe,
	o => \op2[2]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\op2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[3]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\op2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[4]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\op2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[5]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\op2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[6]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\op2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[7]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\op2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[8]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\op2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[9]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\op2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[10]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\op2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[11]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\op2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\op2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[13]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\op2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\op2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[15]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\op2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\op2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~6_combout\,
	devoe => ww_devoe,
	o => \op2[17]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\op2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\op2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~6_combout\,
	devoe => ww_devoe,
	o => \op2[19]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\op2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~3_combout\,
	devoe => ww_devoe,
	o => \op2[20]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\pcControl[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \pcControl[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\pcControl[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|ALT_INV_list~0_combout\,
	devoe => ww_devoe,
	o => \pcControl[1]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\pcControl[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ControlUnit|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \pcControl[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\pcControl[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|ALT_INV_list~0_combout\,
	devoe => ww_devoe,
	o => \pcControl[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\flag~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|list~7_combout\,
	devoe => ww_devoe,
	o => \flag~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\flag1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \flag1~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\imControl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|ALT_INV_list~8_combout\,
	devoe => ww_devoe,
	o => \imControl~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\writecode~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \InstructionFetch|ALT_INV_list~8_combout\,
	devoe => ww_devoe,
	o => \writecode~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(4),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(5),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(6),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(8),
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(9),
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(10),
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(11),
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(12),
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(13),
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(14),
	devoe => ww_devoe,
	o => \result[14]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(15),
	devoe => ww_devoe,
	o => \result[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(16),
	devoe => ww_devoe,
	o => \result[16]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(17),
	devoe => ww_devoe,
	o => \result[17]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(18),
	devoe => ww_devoe,
	o => \result[18]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(19),
	devoe => ww_devoe,
	o => \result[19]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(20),
	devoe => ww_devoe,
	o => \result[20]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(21),
	devoe => ww_devoe,
	o => \result[21]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(22),
	devoe => ww_devoe,
	o => \result[22]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(23),
	devoe => ww_devoe,
	o => \result[23]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(24),
	devoe => ww_devoe,
	o => \result[24]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(25),
	devoe => ww_devoe,
	o => \result[25]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(26),
	devoe => ww_devoe,
	o => \result[26]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(27),
	devoe => ww_devoe,
	o => \result[27]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(28),
	devoe => ww_devoe,
	o => \result[28]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(29),
	devoe => ww_devoe,
	o => \result[29]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(30),
	devoe => ww_devoe,
	o => \result[30]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|result\(31),
	devoe => ww_devoe,
	o => \result[31]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\memaddr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(0),
	devoe => ww_devoe,
	o => \memaddr[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\memaddr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(1),
	devoe => ww_devoe,
	o => \memaddr[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\memaddr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(1),
	devoe => ww_devoe,
	o => \memaddr[2]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\memaddr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[3]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\memaddr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\memaddr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[5]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\memaddr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[6]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\memaddr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[7]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\memaddr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[8]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\memaddr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|memaddr\(3),
	devoe => ww_devoe,
	o => \memaddr[9]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\writemem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writemem~q\,
	devoe => ww_devoe,
	o => \writemem~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\writememdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(0),
	devoe => ww_devoe,
	o => \writememdata[0]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\writememdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(1),
	devoe => ww_devoe,
	o => \writememdata[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\writememdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(1),
	devoe => ww_devoe,
	o => \writememdata[2]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\writememdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\writememdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\writememdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\writememdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[6]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\writememdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[7]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\writememdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[8]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\writememdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[9]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\writememdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\writememdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[11]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\writememdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[12]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\writememdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[13]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\writememdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\writememdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[15]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\writememdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[16]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\writememdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[17]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\writememdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[18]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\writememdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\writememdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[20]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\writememdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\writememdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[22]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\writememdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[23]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\writememdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[24]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\writememdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[25]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\writememdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[26]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\writememdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[27]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\writememdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[28]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\writememdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[29]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\writememdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[30]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\writememdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DataPath|writememdata\(10),
	devoe => ww_devoe,
	o => \writememdata[31]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\memresult[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \memresult[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\memresult[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \memresult[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\memresult[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \memresult[2]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\memresult[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[3]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\memresult[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\memresult[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[5]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\memresult[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[6]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\memresult[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\memresult[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\memresult[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\memresult[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[10]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\memresult[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[11]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\memresult[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[12]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\memresult[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[13]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\memresult[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[14]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\memresult[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[15]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\memresult[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[16]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\memresult[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[17]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\memresult[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[18]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\memresult[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[19]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\memresult[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[20]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\memresult[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[21]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\memresult[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[22]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\memresult[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[23]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\memresult[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[24]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\memresult[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[25]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\memresult[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[26]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\memresult[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[27]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\memresult[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[28]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\memresult[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[29]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\memresult[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[30]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\memresult[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \memresult[31]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y5_N0
\DataPath|PC[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[0]~32_combout\ = (\DataPath|Mux191~4_combout\ & (\DataPath|PC\(0) $ (VCC))) # (!\DataPath|Mux191~4_combout\ & (\DataPath|PC\(0) & VCC))
-- \DataPath|PC[0]~33\ = CARRY((\DataPath|Mux191~4_combout\ & \DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux191~4_combout\,
	datab => \DataPath|PC\(0),
	datad => VCC,
	combout => \DataPath|PC[0]~32_combout\,
	cout => \DataPath|PC[0]~33\);

-- Location: LCCOMB_X59_Y5_N2
\DataPath|PC[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[1]~34_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(1) & (\DataPath|PC[0]~33\ & VCC)) # (!\DataPath|PC\(1) & (!\DataPath|PC[0]~33\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(1) & (!\DataPath|PC[0]~33\)) # 
-- (!\DataPath|PC\(1) & ((\DataPath|PC[0]~33\) # (GND)))))
-- \DataPath|PC[1]~35\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(1) & !\DataPath|PC[0]~33\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[0]~33\) # (!\DataPath|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(1),
	datad => VCC,
	cin => \DataPath|PC[0]~33\,
	combout => \DataPath|PC[1]~34_combout\,
	cout => \DataPath|PC[1]~35\);

-- Location: FF_X59_Y5_N3
\DataPath|PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(1));

-- Location: LCCOMB_X62_Y4_N26
\InstructionFetch|list~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~3_combout\ = (\DataPath|PC\(2) & (!\DataPath|PC\(1) & !\DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \InstructionFetch|list~3_combout\);

-- Location: LCCOMB_X61_Y4_N26
\InstructionFetch|list~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~4_combout\ = (\DataPath|PC\(0) & (\DataPath|PC\(2))) # (!\DataPath|PC\(0) & (!\DataPath|PC\(2) & !\DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(1),
	combout => \InstructionFetch|list~4_combout\);

-- Location: LCCOMB_X61_Y4_N30
\InstructionFetch|list~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~8_combout\ = (\DataPath|PC\(0) & \DataPath|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	combout => \InstructionFetch|list~8_combout\);

-- Location: LCCOMB_X60_Y5_N30
\InstructionFetch|list~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~7_combout\ = (\DataPath|PC\(2) & (\DataPath|PC\(0) $ (\DataPath|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~7_combout\);

-- Location: LCCOMB_X42_Y1_N4
\InstructionFetch|list~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~0_combout\ = ((!\DataPath|PC\(2)) # (!\DataPath|PC\(1))) # (!\DataPath|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(0),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~0_combout\);

-- Location: LCCOMB_X61_Y4_N28
\DataPath|towrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~0_combout\ = (\DataPath|PC\(2) & (((\DataPath|regs[0][1]~q\) # (!\DataPath|PC\(1))) # (!\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|regs[0][1]~q\,
	datad => \DataPath|PC\(1),
	combout => \DataPath|towrite~0_combout\);

-- Location: LCCOMB_X61_Y4_N14
\DataPath|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Decoder1~0_combout\ = (!\DataPath|PC\(0) & (!\DataPath|PC\(2) & !\DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(1),
	combout => \DataPath|Decoder1~0_combout\);

-- Location: FF_X61_Y4_N29
\DataPath|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~0_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][1]~q\);

-- Location: LCCOMB_X61_Y4_N6
\DataPath|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux61~0_combout\ = (\DataPath|PC\(1) & (\DataPath|PC\(2) & ((\DataPath|regs[0][1]~q\)))) # (!\DataPath|PC\(1) & (!\DataPath|PC\(0) & ((\DataPath|PC\(2)) # (\DataPath|regs[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(0),
	datad => \DataPath|regs[0][1]~q\,
	combout => \DataPath|Mux61~0_combout\);

-- Location: LCCOMB_X62_Y5_N20
\DataPath|memaddr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr[1]~feeder_combout\ = \DataPath|Mux61~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux61~0_combout\,
	combout => \DataPath|memaddr[1]~feeder_combout\);

-- Location: FF_X62_Y5_N21
\DataPath|memaddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr[1]~feeder_combout\,
	ena => \InstructionFetch|list~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(1));

-- Location: LCCOMB_X62_Y5_N22
\DataPath|memaddr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr[0]~feeder_combout\ = \DataPath|Mux63~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux63~3_combout\,
	combout => \DataPath|memaddr[0]~feeder_combout\);

-- Location: FF_X62_Y5_N23
\DataPath|memaddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr[0]~feeder_combout\,
	ena => \InstructionFetch|list~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(0));

-- Location: LCCOMB_X61_Y4_N8
\DataPath|writemem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writemem~0_combout\ = (!\DataPath|PC\(0) & (\DataPath|PC\(2) & \DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(1),
	combout => \DataPath|writemem~0_combout\);

-- Location: FF_X61_Y4_N1
\DataPath|writememdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|regs[4][0]~0_combout\,
	sload => VCC,
	ena => \DataPath|writemem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(0));

-- Location: FF_X61_Y4_N19
\DataPath|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~1_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][10]~q\);

-- Location: LCCOMB_X61_Y4_N10
\DataPath|num1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num1~0_combout\ = (\DataPath|PC\(1) & (\DataPath|PC\(2) & ((\DataPath|regs[0][10]~q\)))) # (!\DataPath|PC\(1) & (!\DataPath|PC\(0) & ((\DataPath|PC\(2)) # (\DataPath|regs[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(0),
	datad => \DataPath|regs[0][10]~q\,
	combout => \DataPath|num1~0_combout\);

-- Location: LCCOMB_X62_Y5_N14
\DataPath|memaddr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr[3]~feeder_combout\ = \DataPath|num1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|num1~0_combout\,
	combout => \DataPath|memaddr[3]~feeder_combout\);

-- Location: FF_X62_Y5_N15
\DataPath|memaddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr[3]~feeder_combout\,
	ena => \InstructionFetch|list~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(3));

-- Location: FF_X60_Y4_N1
\DataPath|writemem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|writemem~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writemem~q\);

-- Location: LCCOMB_X62_Y5_N0
\RAM|RAM[0][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[0][0]~0_combout\ = (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (!\DataPath|memaddr\(3) & \DataPath|writemem~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \DataPath|memaddr\(3),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM[0][0]~0_combout\);

-- Location: FF_X60_Y5_N31
\RAM|RAM[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(0),
	sload => VCC,
	ena => \RAM|RAM[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][0]~q\);

-- Location: LCCOMB_X62_Y5_N18
\RAM|RAM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~1_combout\ = (!\DataPath|memaddr\(3) & (\DataPath|memaddr\(0) & !\DataPath|memaddr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|memaddr\(3),
	datac => \DataPath|memaddr\(0),
	datad => \DataPath|memaddr\(1),
	combout => \RAM|RAM~1_combout\);

-- Location: LCCOMB_X62_Y5_N12
\RAM|RAM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~2_combout\ = (\RAM|RAM~1_combout\ & (\DataPath|writememdata\(0))) # (!\RAM|RAM~1_combout\ & ((\RAM|RAM[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata\(0),
	datac => \RAM|RAM[1][0]~q\,
	datad => \RAM|RAM~1_combout\,
	combout => \RAM|RAM~2_combout\);

-- Location: LCCOMB_X67_Y5_N6
\RAM|comb_3|q_reg[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[0]~11_combout\ = \RAM|comb_3|q_reg\(0) $ (VCC)
-- \RAM|comb_3|q_reg[0]~12\ = CARRY(\RAM|comb_3|q_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(0),
	datad => VCC,
	combout => \RAM|comb_3|q_reg[0]~11_combout\,
	cout => \RAM|comb_3|q_reg[0]~12\);

-- Location: IOIBUF_X115_Y35_N22
\in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\,
	o => \in~input_o\);

-- Location: FF_X67_Y8_N17
\RAM|comb_3|DFF1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|DFF1~q\);

-- Location: LCCOMB_X67_Y5_N2
\RAM|comb_3|DFF2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|DFF2~feeder_combout\ = \RAM|comb_3|DFF1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|comb_3|DFF1~q\,
	combout => \RAM|comb_3|DFF2~feeder_combout\);

-- Location: FF_X67_Y5_N3
\RAM|comb_3|DFF2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|DFF2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|DFF2~q\);

-- Location: LCCOMB_X67_Y8_N16
\RAM|comb_3|q_reset\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reset~combout\ = \RAM|comb_3|DFF1~q\ $ (\RAM|comb_3|DFF2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|comb_3|DFF1~q\,
	datad => \RAM|comb_3|DFF2~q\,
	combout => \RAM|comb_3|q_reset~combout\);

-- Location: FF_X67_Y5_N7
\RAM|comb_3|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[0]~11_combout\,
	asdata => \RAM|comb_3|q_reg\(0),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(0));

-- Location: LCCOMB_X67_Y5_N8
\RAM|comb_3|q_reg[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[1]~13_combout\ = (\RAM|comb_3|q_reg\(1) & (!\RAM|comb_3|q_reg[0]~12\)) # (!\RAM|comb_3|q_reg\(1) & ((\RAM|comb_3|q_reg[0]~12\) # (GND)))
-- \RAM|comb_3|q_reg[1]~14\ = CARRY((!\RAM|comb_3|q_reg[0]~12\) # (!\RAM|comb_3|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(1),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[0]~12\,
	combout => \RAM|comb_3|q_reg[1]~13_combout\,
	cout => \RAM|comb_3|q_reg[1]~14\);

-- Location: FF_X67_Y5_N9
\RAM|comb_3|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[1]~13_combout\,
	asdata => \RAM|comb_3|q_reg\(1),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(1));

-- Location: LCCOMB_X67_Y5_N10
\RAM|comb_3|q_reg[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[2]~15_combout\ = (\RAM|comb_3|q_reg\(2) & (\RAM|comb_3|q_reg[1]~14\ $ (GND))) # (!\RAM|comb_3|q_reg\(2) & (!\RAM|comb_3|q_reg[1]~14\ & VCC))
-- \RAM|comb_3|q_reg[2]~16\ = CARRY((\RAM|comb_3|q_reg\(2) & !\RAM|comb_3|q_reg[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(2),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[1]~14\,
	combout => \RAM|comb_3|q_reg[2]~15_combout\,
	cout => \RAM|comb_3|q_reg[2]~16\);

-- Location: FF_X67_Y5_N11
\RAM|comb_3|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[2]~15_combout\,
	asdata => \RAM|comb_3|q_reg\(2),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(2));

-- Location: LCCOMB_X67_Y5_N12
\RAM|comb_3|q_reg[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[3]~17_combout\ = (\RAM|comb_3|q_reg\(3) & (!\RAM|comb_3|q_reg[2]~16\)) # (!\RAM|comb_3|q_reg\(3) & ((\RAM|comb_3|q_reg[2]~16\) # (GND)))
-- \RAM|comb_3|q_reg[3]~18\ = CARRY((!\RAM|comb_3|q_reg[2]~16\) # (!\RAM|comb_3|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(3),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[2]~16\,
	combout => \RAM|comb_3|q_reg[3]~17_combout\,
	cout => \RAM|comb_3|q_reg[3]~18\);

-- Location: FF_X67_Y5_N13
\RAM|comb_3|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[3]~17_combout\,
	asdata => \RAM|comb_3|q_reg\(3),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(3));

-- Location: LCCOMB_X67_Y5_N14
\RAM|comb_3|q_reg[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[4]~19_combout\ = (\RAM|comb_3|q_reg\(4) & (\RAM|comb_3|q_reg[3]~18\ $ (GND))) # (!\RAM|comb_3|q_reg\(4) & (!\RAM|comb_3|q_reg[3]~18\ & VCC))
-- \RAM|comb_3|q_reg[4]~20\ = CARRY((\RAM|comb_3|q_reg\(4) & !\RAM|comb_3|q_reg[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(4),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[3]~18\,
	combout => \RAM|comb_3|q_reg[4]~19_combout\,
	cout => \RAM|comb_3|q_reg[4]~20\);

-- Location: FF_X67_Y5_N15
\RAM|comb_3|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[4]~19_combout\,
	asdata => \RAM|comb_3|q_reg\(4),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(4));

-- Location: LCCOMB_X67_Y5_N16
\RAM|comb_3|q_reg[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[5]~21_combout\ = (\RAM|comb_3|q_reg\(5) & (!\RAM|comb_3|q_reg[4]~20\)) # (!\RAM|comb_3|q_reg\(5) & ((\RAM|comb_3|q_reg[4]~20\) # (GND)))
-- \RAM|comb_3|q_reg[5]~22\ = CARRY((!\RAM|comb_3|q_reg[4]~20\) # (!\RAM|comb_3|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(5),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[4]~20\,
	combout => \RAM|comb_3|q_reg[5]~21_combout\,
	cout => \RAM|comb_3|q_reg[5]~22\);

-- Location: FF_X67_Y5_N17
\RAM|comb_3|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[5]~21_combout\,
	asdata => \RAM|comb_3|q_reg\(5),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(5));

-- Location: LCCOMB_X67_Y5_N18
\RAM|comb_3|q_reg[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[6]~23_combout\ = (\RAM|comb_3|q_reg\(6) & (\RAM|comb_3|q_reg[5]~22\ $ (GND))) # (!\RAM|comb_3|q_reg\(6) & (!\RAM|comb_3|q_reg[5]~22\ & VCC))
-- \RAM|comb_3|q_reg[6]~24\ = CARRY((\RAM|comb_3|q_reg\(6) & !\RAM|comb_3|q_reg[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(6),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[5]~22\,
	combout => \RAM|comb_3|q_reg[6]~23_combout\,
	cout => \RAM|comb_3|q_reg[6]~24\);

-- Location: FF_X67_Y5_N19
\RAM|comb_3|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[6]~23_combout\,
	asdata => \RAM|comb_3|q_reg\(6),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(6));

-- Location: LCCOMB_X67_Y5_N20
\RAM|comb_3|q_reg[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[7]~25_combout\ = (\RAM|comb_3|q_reg\(7) & (!\RAM|comb_3|q_reg[6]~24\)) # (!\RAM|comb_3|q_reg\(7) & ((\RAM|comb_3|q_reg[6]~24\) # (GND)))
-- \RAM|comb_3|q_reg[7]~26\ = CARRY((!\RAM|comb_3|q_reg[6]~24\) # (!\RAM|comb_3|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(7),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[6]~24\,
	combout => \RAM|comb_3|q_reg[7]~25_combout\,
	cout => \RAM|comb_3|q_reg[7]~26\);

-- Location: FF_X67_Y5_N21
\RAM|comb_3|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[7]~25_combout\,
	asdata => \RAM|comb_3|q_reg\(7),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(7));

-- Location: LCCOMB_X67_Y5_N22
\RAM|comb_3|q_reg[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[8]~27_combout\ = (\RAM|comb_3|q_reg\(8) & (\RAM|comb_3|q_reg[7]~26\ $ (GND))) # (!\RAM|comb_3|q_reg\(8) & (!\RAM|comb_3|q_reg[7]~26\ & VCC))
-- \RAM|comb_3|q_reg[8]~28\ = CARRY((\RAM|comb_3|q_reg\(8) & !\RAM|comb_3|q_reg[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(8),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[7]~26\,
	combout => \RAM|comb_3|q_reg[8]~27_combout\,
	cout => \RAM|comb_3|q_reg[8]~28\);

-- Location: FF_X67_Y5_N23
\RAM|comb_3|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[8]~27_combout\,
	asdata => \RAM|comb_3|q_reg\(8),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(8));

-- Location: LCCOMB_X67_Y5_N24
\RAM|comb_3|q_reg[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[9]~29_combout\ = (\RAM|comb_3|q_reg\(9) & (!\RAM|comb_3|q_reg[8]~28\)) # (!\RAM|comb_3|q_reg\(9) & ((\RAM|comb_3|q_reg[8]~28\) # (GND)))
-- \RAM|comb_3|q_reg[9]~30\ = CARRY((!\RAM|comb_3|q_reg[8]~28\) # (!\RAM|comb_3|q_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(9),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[8]~28\,
	combout => \RAM|comb_3|q_reg[9]~29_combout\,
	cout => \RAM|comb_3|q_reg[9]~30\);

-- Location: FF_X67_Y5_N25
\RAM|comb_3|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[9]~29_combout\,
	asdata => \RAM|comb_3|q_reg\(9),
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(9));

-- Location: LCCOMB_X67_Y5_N26
\RAM|comb_3|q_reg[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[10]~31_combout\ = \RAM|comb_3|q_reg\(10) $ (!\RAM|comb_3|q_reg[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(10),
	cin => \RAM|comb_3|q_reg[9]~30\,
	combout => \RAM|comb_3|q_reg[10]~31_combout\);

-- Location: FF_X67_Y5_N27
\RAM|comb_3|q_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|q_reg[10]~31_combout\,
	asdata => VCC,
	sclr => \RAM|comb_3|q_reset~combout\,
	sload => \RAM|comb_3|q_reg\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|q_reg\(10));

-- Location: LCCOMB_X67_Y5_N28
\RAM|comb_3|DB_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|DB_out~0_combout\ = (\RAM|comb_3|q_reg\(10) & ((\RAM|comb_3|DFF2~q\))) # (!\RAM|comb_3|q_reg\(10) & (\RAM|comb_3|DB_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(10),
	datac => \RAM|comb_3|DB_out~q\,
	datad => \RAM|comb_3|DFF2~q\,
	combout => \RAM|comb_3|DB_out~0_combout\);

-- Location: FF_X67_Y5_N29
\RAM|comb_3|DB_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RAM|comb_3|DB_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|comb_3|DB_out~q\);

-- Location: FF_X62_Y5_N13
\RAM|RAM[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~2_combout\,
	asdata => \RAM|comb_3|DB_out~q\,
	sload => \DataPath|ALT_INV_writemem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][0]~q\);

-- Location: LCCOMB_X60_Y5_N10
\RAM|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux31~0_combout\ = (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][0]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[1][0]~q\,
	combout => \RAM|Mux31~0_combout\);

-- Location: LCCOMB_X60_Y4_N28
\DataPath|Mux127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux127~0_combout\ = (\InstructionFetch|list~0_combout\) # ((\InstructionFetch|list~7_combout\ & ((\RAM|Mux31~0_combout\))) # (!\InstructionFetch|list~7_combout\ & (\DataPath|Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~7_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|Mux63~3_combout\,
	datad => \RAM|Mux31~0_combout\,
	combout => \DataPath|Mux127~0_combout\);

-- Location: LCCOMB_X61_Y4_N20
\DataPath|regs[4][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[4][0]~0_combout\ = (\InstructionFetch|list~8_combout\ & ((\DataPath|Mux127~0_combout\))) # (!\InstructionFetch|list~8_combout\ & (!\InstructionFetch|list~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~4_combout\,
	datab => \InstructionFetch|list~8_combout\,
	datad => \DataPath|Mux127~0_combout\,
	combout => \DataPath|regs[4][0]~0_combout\);

-- Location: LCCOMB_X62_Y4_N8
\DataPath|regs[4][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[4][0]~feeder_combout\ = \DataPath|regs[4][0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|regs[4][0]~0_combout\,
	combout => \DataPath|regs[4][0]~feeder_combout\);

-- Location: FF_X62_Y4_N9
\DataPath|regs[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[4][0]~feeder_combout\,
	asdata => \DataPath|regs[4][0]~q\,
	sload => \InstructionFetch|ALT_INV_list~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[4][0]~q\);

-- Location: LCCOMB_X62_Y4_N30
\DataPath|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~0_combout\ = (!\DataPath|PC\(1) & (\DataPath|PC\(2) & (\DataPath|regs[4][0]~q\ & !\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|regs[4][0]~q\,
	datad => \DataPath|PC\(0),
	combout => \DataPath|Mux63~0_combout\);

-- Location: LCCOMB_X62_Y4_N14
\DataPath|regs[2][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[2][0]~5_combout\ = (!\DataPath|PC\(2) & (\DataPath|PC\(1) & !\DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|regs[2][0]~5_combout\);

-- Location: LCCOMB_X62_Y4_N24
\DataPath|regs[2][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[2][0]~6_combout\ = (\DataPath|regs[2][0]~5_combout\ & ((\DataPath|regs[4][0]~0_combout\))) # (!\DataPath|regs[2][0]~5_combout\ & (\DataPath|regs[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[2][0]~5_combout\,
	datac => \DataPath|regs[2][0]~q\,
	datad => \DataPath|regs[4][0]~0_combout\,
	combout => \DataPath|regs[2][0]~6_combout\);

-- Location: FF_X62_Y4_N25
\DataPath|regs[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[2][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[2][0]~q\);

-- Location: LCCOMB_X62_Y4_N16
\InstructionFetch|list~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~2_combout\ = (\DataPath|PC\(1) & (!\DataPath|PC\(2))) # (!\DataPath|PC\(1) & (\DataPath|PC\(2) & \DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(0),
	combout => \InstructionFetch|list~2_combout\);

-- Location: LCCOMB_X62_Y4_N18
\DataPath|regs[3][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[3][0]~1_combout\ = (!\DataPath|PC\(2) & (\DataPath|PC\(1) & \DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|regs[3][0]~1_combout\);

-- Location: LCCOMB_X62_Y4_N4
\DataPath|regs[3][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[3][0]~2_combout\ = (\DataPath|regs[3][0]~1_combout\ & (\DataPath|regs[4][0]~0_combout\)) # (!\DataPath|regs[3][0]~1_combout\ & ((\DataPath|regs[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|regs[4][0]~0_combout\,
	datac => \DataPath|regs[3][0]~q\,
	datad => \DataPath|regs[3][0]~1_combout\,
	combout => \DataPath|regs[3][0]~2_combout\);

-- Location: FF_X62_Y4_N5
\DataPath|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][0]~q\);

-- Location: FF_X61_Y4_N5
\DataPath|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|regs[4][0]~0_combout\,
	sload => VCC,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][0]~q\);

-- Location: LCCOMB_X62_Y4_N12
\DataPath|regs[1][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[1][0]~3_combout\ = (!\DataPath|PC\(2) & (!\DataPath|PC\(1) & \DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|regs[1][0]~3_combout\);

-- Location: LCCOMB_X62_Y4_N28
\DataPath|regs[1][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[1][0]~4_combout\ = (\DataPath|regs[1][0]~3_combout\ & (\DataPath|regs[4][0]~0_combout\)) # (!\DataPath|regs[1][0]~3_combout\ & ((\DataPath|regs[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|regs[4][0]~0_combout\,
	datac => \DataPath|regs[1][0]~q\,
	datad => \DataPath|regs[1][0]~3_combout\,
	combout => \DataPath|regs[1][0]~4_combout\);

-- Location: FF_X62_Y4_N29
\DataPath|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[1][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][0]~q\);

-- Location: LCCOMB_X62_Y4_N22
\InstructionFetch|list~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~1_combout\ = ((\DataPath|PC\(1) & \DataPath|PC\(2))) # (!\DataPath|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(0),
	combout => \InstructionFetch|list~1_combout\);

-- Location: LCCOMB_X62_Y4_N6
\DataPath|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~1_combout\ = (\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][0]~q\) # ((\InstructionFetch|list~2_combout\)))) # (!\InstructionFetch|list~1_combout\ & (((\DataPath|regs[1][0]~q\ & !\InstructionFetch|list~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][0]~q\,
	datab => \DataPath|regs[1][0]~q\,
	datac => \InstructionFetch|list~1_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux63~1_combout\);

-- Location: LCCOMB_X62_Y4_N10
\DataPath|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~2_combout\ = (\InstructionFetch|list~2_combout\ & ((\DataPath|Mux63~1_combout\ & (\DataPath|regs[2][0]~q\)) # (!\DataPath|Mux63~1_combout\ & ((\DataPath|regs[3][0]~q\))))) # (!\InstructionFetch|list~2_combout\ & 
-- (((\DataPath|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[2][0]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][0]~q\,
	datad => \DataPath|Mux63~1_combout\,
	combout => \DataPath|Mux63~2_combout\);

-- Location: LCCOMB_X62_Y4_N0
\DataPath|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~3_combout\ = (\DataPath|Mux63~0_combout\) # ((!\InstructionFetch|list~3_combout\ & \DataPath|Mux63~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~3_combout\,
	datac => \DataPath|Mux63~0_combout\,
	datad => \DataPath|Mux63~2_combout\,
	combout => \DataPath|Mux63~3_combout\);

-- Location: LCCOMB_X60_Y5_N14
\DataPath|num1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num1~3_combout\ = (\InstructionFetch|list~7_combout\ & ((\RAM|Mux31~0_combout\))) # (!\InstructionFetch|list~7_combout\ & (\DataPath|Mux63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|Mux63~3_combout\,
	datac => \InstructionFetch|list~7_combout\,
	datad => \RAM|Mux31~0_combout\,
	combout => \DataPath|num1~3_combout\);

-- Location: FF_X61_Y4_N23
\DataPath|writememdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~0_combout\,
	sload => VCC,
	ena => \DataPath|writemem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(1));

-- Location: LCCOMB_X60_Y5_N20
\RAM|RAM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~3_combout\ = (\DataPath|writememdata\(1) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(1),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~3_combout\);

-- Location: LCCOMB_X62_Y5_N4
\RAM|RAM[1][27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[1][27]~4_combout\ = ((\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & !\DataPath|memaddr\(3)))) # (!\DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \DataPath|memaddr\(3),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM[1][27]~4_combout\);

-- Location: FF_X60_Y5_N9
\RAM|RAM[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \RAM|RAM~3_combout\,
	sload => VCC,
	ena => \RAM|RAM[1][27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][1]~q\);

-- Location: FF_X60_Y5_N21
\RAM|RAM[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(1),
	sload => VCC,
	ena => \RAM|RAM[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][1]~q\);

-- Location: LCCOMB_X60_Y5_N8
\RAM|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux30~0_combout\ = (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & (\RAM|RAM[1][1]~q\)) # (!\DataPath|memaddr\(0) & ((\RAM|RAM[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[1][1]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|Mux30~0_combout\);

-- Location: LCCOMB_X60_Y5_N2
\DataPath|num1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num1~2_combout\ = (\InstructionFetch|list~7_combout\ & (\RAM|Mux30~0_combout\)) # (!\InstructionFetch|list~7_combout\ & ((\DataPath|Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstructionFetch|list~7_combout\,
	datac => \RAM|Mux30~0_combout\,
	datad => \DataPath|Mux61~0_combout\,
	combout => \DataPath|num1~2_combout\);

-- Location: LCCOMB_X60_Y5_N24
\DataPath|Mux180~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux180~6_combout\ = (!\DataPath|num1~2_combout\ & ((!\DataPath|PC\(2)) # (!\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|num1~2_combout\,
	datad => \DataPath|PC\(2),
	combout => \DataPath|Mux180~6_combout\);

-- Location: LCCOMB_X60_Y4_N16
\RAM|RAM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~5_combout\ = (\DataPath|writememdata\(10) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(10),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~5_combout\);

-- Location: FF_X60_Y5_N19
\RAM|RAM[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \RAM|RAM~5_combout\,
	sload => VCC,
	ena => \RAM|RAM[1][27]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][10]~q\);

-- Location: LCCOMB_X60_Y5_N18
\RAM|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Mux28~0_combout\ = (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & (\RAM|RAM[1][10]~q\)) # (!\DataPath|memaddr\(0) & ((\RAM|RAM[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[1][10]~q\,
	datad => \RAM|RAM[0][17]~q\,
	combout => \RAM|Mux28~0_combout\);

-- Location: LCCOMB_X60_Y5_N0
\DataPath|num1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num1~1_combout\ = (\InstructionFetch|list~7_combout\ & ((!\RAM|Mux28~0_combout\))) # (!\InstructionFetch|list~7_combout\ & (!\DataPath|num1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~0_combout\,
	datab => \InstructionFetch|list~7_combout\,
	datad => \RAM|Mux28~0_combout\,
	combout => \DataPath|num1~1_combout\);

-- Location: LCCOMB_X60_Y5_N22
\DataPath|Mux180~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux180~7_combout\ = (!\DataPath|num1~3_combout\ & (\DataPath|Mux180~6_combout\ & \DataPath|num1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|num1~3_combout\,
	datac => \DataPath|Mux180~6_combout\,
	datad => \DataPath|num1~1_combout\,
	combout => \DataPath|Mux180~7_combout\);

-- Location: LCCOMB_X61_Y4_N4
\DataPath|num2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~2_combout\ = (\DataPath|PC\(1) & (\DataPath|regs[0][0]~q\)) # (!\DataPath|PC\(1) & ((\DataPath|regs[2][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(1),
	datac => \DataPath|regs[0][0]~q\,
	datad => \DataPath|regs[2][0]~q\,
	combout => \DataPath|num2~2_combout\);

-- Location: LCCOMB_X61_Y4_N2
\DataPath|num2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~3_combout\ = (\DataPath|PC\(0) & (((\DataPath|num2~2_combout\)) # (!\DataPath|PC\(2)))) # (!\DataPath|PC\(0) & ((\DataPath|PC\(2)) # ((\DataPath|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|num2~2_combout\,
	datad => \DataPath|PC\(1),
	combout => \DataPath|num2~3_combout\);

-- Location: LCCOMB_X61_Y4_N16
\ControlUnit|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr6~0_combout\ = (\DataPath|PC\(0) & (\DataPath|PC\(2) & !\DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(1),
	combout => \ControlUnit|WideOr6~0_combout\);

-- Location: LCCOMB_X61_Y4_N24
\DataPath|num2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~0_combout\ = (\DataPath|PC\(2) & ((\DataPath|PC\(0) & (\DataPath|PC\(1) & \DataPath|regs[0][10]~q\)) # (!\DataPath|PC\(0) & (!\DataPath|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(2),
	datad => \DataPath|regs[0][10]~q\,
	combout => \DataPath|num2~0_combout\);

-- Location: LCCOMB_X61_Y4_N12
\DataPath|num2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~1_combout\ = (\DataPath|PC\(2) & (((\DataPath|PC\(1) & \DataPath|regs[0][1]~q\)) # (!\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(2),
	datad => \DataPath|regs[0][1]~q\,
	combout => \DataPath|num2~1_combout\);

-- Location: LCCOMB_X60_Y5_N12
\DataPath|Mux180~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux180~4_combout\ = (\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (\DataPath|num1~2_combout\ $ (\DataPath|num2~1_combout\)))) # (!\DataPath|num2~0_combout\ & ((\DataPath|num1~2_combout\ $ (\DataPath|num2~1_combout\)) # 
-- (!\DataPath|num1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~2_combout\,
	datac => \DataPath|num2~1_combout\,
	datad => \DataPath|num1~1_combout\,
	combout => \DataPath|Mux180~4_combout\);

-- Location: LCCOMB_X60_Y5_N28
\DataPath|Mux180~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux180~5_combout\ = (\ControlUnit|WideOr6~0_combout\ & ((\DataPath|Mux180~4_combout\) # (\DataPath|num2~3_combout\ $ (\DataPath|num1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~3_combout\,
	datab => \ControlUnit|WideOr6~0_combout\,
	datac => \DataPath|num1~3_combout\,
	datad => \DataPath|Mux180~4_combout\,
	combout => \DataPath|Mux180~5_combout\);

-- Location: LCCOMB_X61_Y6_N0
\DataPath|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~1_cout\ = CARRY((!\DataPath|num1~3_combout\ & \DataPath|num2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~3_combout\,
	datab => \DataPath|num2~3_combout\,
	datad => VCC,
	cout => \DataPath|LessThan0~1_cout\);

-- Location: LCCOMB_X61_Y6_N2
\DataPath|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~3_cout\ = CARRY((\DataPath|num2~1_combout\ & (\DataPath|num1~2_combout\ & !\DataPath|LessThan0~1_cout\)) # (!\DataPath|num2~1_combout\ & ((\DataPath|num1~2_combout\) # (!\DataPath|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~1_combout\,
	datab => \DataPath|num1~2_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~1_cout\,
	cout => \DataPath|LessThan0~3_cout\);

-- Location: LCCOMB_X61_Y6_N4
\DataPath|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~5_cout\ = CARRY((\DataPath|num2~1_combout\ & ((!\DataPath|LessThan0~3_cout\) # (!\DataPath|num1~2_combout\))) # (!\DataPath|num2~1_combout\ & (!\DataPath|num1~2_combout\ & !\DataPath|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~1_combout\,
	datab => \DataPath|num1~2_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~3_cout\,
	cout => \DataPath|LessThan0~5_cout\);

-- Location: LCCOMB_X61_Y6_N6
\DataPath|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~7_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~5_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~5_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~5_cout\,
	cout => \DataPath|LessThan0~7_cout\);

-- Location: LCCOMB_X61_Y6_N8
\DataPath|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~9_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~7_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~7_cout\,
	cout => \DataPath|LessThan0~9_cout\);

-- Location: LCCOMB_X61_Y6_N10
\DataPath|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~11_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~9_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~9_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~9_cout\,
	cout => \DataPath|LessThan0~11_cout\);

-- Location: LCCOMB_X61_Y6_N12
\DataPath|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~13_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~11_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~11_cout\,
	cout => \DataPath|LessThan0~13_cout\);

-- Location: LCCOMB_X61_Y6_N14
\DataPath|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~15_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~13_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~13_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~13_cout\,
	cout => \DataPath|LessThan0~15_cout\);

-- Location: LCCOMB_X61_Y6_N16
\DataPath|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~17_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~15_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~15_cout\,
	cout => \DataPath|LessThan0~17_cout\);

-- Location: LCCOMB_X61_Y6_N18
\DataPath|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~19_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~17_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~17_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~17_cout\,
	cout => \DataPath|LessThan0~19_cout\);

-- Location: LCCOMB_X61_Y6_N20
\DataPath|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~21_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~19_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~19_cout\,
	cout => \DataPath|LessThan0~21_cout\);

-- Location: LCCOMB_X61_Y6_N22
\DataPath|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~23_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~21_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~21_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~21_cout\,
	cout => \DataPath|LessThan0~23_cout\);

-- Location: LCCOMB_X61_Y6_N24
\DataPath|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~25_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~23_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~23_cout\,
	cout => \DataPath|LessThan0~25_cout\);

-- Location: LCCOMB_X61_Y6_N26
\DataPath|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~27_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~25_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~25_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~25_cout\,
	cout => \DataPath|LessThan0~27_cout\);

-- Location: LCCOMB_X61_Y6_N28
\DataPath|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~29_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~27_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~27_cout\,
	cout => \DataPath|LessThan0~29_cout\);

-- Location: LCCOMB_X61_Y6_N30
\DataPath|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~31_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~29_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~29_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~29_cout\,
	cout => \DataPath|LessThan0~31_cout\);

-- Location: LCCOMB_X61_Y5_N0
\DataPath|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~33_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~31_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~31_cout\,
	cout => \DataPath|LessThan0~33_cout\);

-- Location: LCCOMB_X61_Y5_N2
\DataPath|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~35_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~33_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~33_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~33_cout\,
	cout => \DataPath|LessThan0~35_cout\);

-- Location: LCCOMB_X61_Y5_N4
\DataPath|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~37_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~35_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~35_cout\,
	cout => \DataPath|LessThan0~37_cout\);

-- Location: LCCOMB_X61_Y5_N6
\DataPath|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~39_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~37_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~37_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~37_cout\,
	cout => \DataPath|LessThan0~39_cout\);

-- Location: LCCOMB_X61_Y5_N8
\DataPath|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~41_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~39_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~39_cout\,
	cout => \DataPath|LessThan0~41_cout\);

-- Location: LCCOMB_X61_Y5_N10
\DataPath|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~43_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~41_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~41_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~41_cout\,
	cout => \DataPath|LessThan0~43_cout\);

-- Location: LCCOMB_X61_Y5_N12
\DataPath|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~45_cout\ = CARRY((\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (!\DataPath|LessThan0~43_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & !\DataPath|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~43_cout\,
	cout => \DataPath|LessThan0~45_cout\);

-- Location: LCCOMB_X61_Y5_N14
\DataPath|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~47_cout\ = CARRY((\DataPath|num1~1_combout\ & (!\DataPath|num2~0_combout\ & !\DataPath|LessThan0~45_cout\)) # (!\DataPath|num1~1_combout\ & ((!\DataPath|LessThan0~45_cout\) # (!\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~45_cout\,
	cout => \DataPath|LessThan0~47_cout\);

-- Location: LCCOMB_X61_Y5_N16
\DataPath|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~49_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~47_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~47_cout\,
	cout => \DataPath|LessThan0~49_cout\);

-- Location: LCCOMB_X61_Y5_N18
\DataPath|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~51_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~49_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~49_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~49_cout\,
	cout => \DataPath|LessThan0~51_cout\);

-- Location: LCCOMB_X61_Y5_N20
\DataPath|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~53_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~51_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~51_cout\,
	cout => \DataPath|LessThan0~53_cout\);

-- Location: LCCOMB_X61_Y5_N22
\DataPath|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~55_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~53_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~53_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~53_cout\,
	cout => \DataPath|LessThan0~55_cout\);

-- Location: LCCOMB_X61_Y5_N24
\DataPath|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~57_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~55_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~55_cout\,
	cout => \DataPath|LessThan0~57_cout\);

-- Location: LCCOMB_X61_Y5_N26
\DataPath|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~59_cout\ = CARRY((\DataPath|num2~0_combout\ & (!\DataPath|num1~1_combout\ & !\DataPath|LessThan0~57_cout\)) # (!\DataPath|num2~0_combout\ & ((!\DataPath|LessThan0~57_cout\) # (!\DataPath|num1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~57_cout\,
	cout => \DataPath|LessThan0~59_cout\);

-- Location: LCCOMB_X61_Y5_N28
\DataPath|LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~61_cout\ = CARRY((\DataPath|num2~0_combout\ & ((\DataPath|num1~1_combout\) # (!\DataPath|LessThan0~59_cout\))) # (!\DataPath|num2~0_combout\ & (\DataPath|num1~1_combout\ & !\DataPath|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~0_combout\,
	datab => \DataPath|num1~1_combout\,
	datad => VCC,
	cin => \DataPath|LessThan0~59_cout\,
	cout => \DataPath|LessThan0~61_cout\);

-- Location: LCCOMB_X61_Y5_N30
\DataPath|LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|LessThan0~62_combout\ = (\DataPath|num1~1_combout\ & ((\DataPath|num2~0_combout\) # (\DataPath|LessThan0~61_cout\))) # (!\DataPath|num1~1_combout\ & (\DataPath|num2~0_combout\ & \DataPath|LessThan0~61_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~1_combout\,
	datab => \DataPath|num2~0_combout\,
	cin => \DataPath|LessThan0~61_cout\,
	combout => \DataPath|LessThan0~62_combout\);

-- Location: LCCOMB_X60_Y5_N16
\DataPath|Mux180~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux180~8_combout\ = (\DataPath|Mux180~7_combout\) # ((\DataPath|Mux180~5_combout\) # ((\DataPath|LessThan0~62_combout\ & !\InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux180~7_combout\,
	datab => \DataPath|Mux180~5_combout\,
	datac => \DataPath|LessThan0~62_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux180~8_combout\);

-- Location: LCCOMB_X60_Y5_N4
\DataPath|Mux160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux160~0_combout\ = (\DataPath|PC\(2) & (!\DataPath|PC\(1) & (\DataPath|PC\(0) & \DataPath|Mux180~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(0),
	datad => \DataPath|Mux180~8_combout\,
	combout => \DataPath|Mux160~0_combout\);

-- Location: LCCOMB_X59_Y5_N4
\DataPath|PC[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[2]~36_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(2) $ (!\DataPath|PC[1]~35\)))) # (GND)
-- \DataPath|PC[2]~37\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(2)) # (!\DataPath|PC[1]~35\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(2) & !\DataPath|PC[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(2),
	datad => VCC,
	cin => \DataPath|PC[1]~35\,
	combout => \DataPath|PC[2]~36_combout\,
	cout => \DataPath|PC[2]~37\);

-- Location: FF_X59_Y5_N5
\DataPath|PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(2));

-- Location: LCCOMB_X61_Y4_N0
\DataPath|Mux191~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux191~5_combout\ = (\DataPath|PC\(2) & (\DataPath|regs[4][0]~q\ & !\DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|regs[4][0]~q\,
	datad => \DataPath|PC\(1),
	combout => \DataPath|Mux191~5_combout\);

-- Location: LCCOMB_X60_Y5_N6
\DataPath|Mux191~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux191~4_combout\ = (\ControlUnit|WideOr6~0_combout\ & ((\DataPath|Mux191~5_combout\) # ((!\DataPath|Mux180~8_combout\)))) # (!\ControlUnit|WideOr6~0_combout\ & (((\InstructionFetch|list~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux191~5_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \ControlUnit|WideOr6~0_combout\,
	datad => \DataPath|Mux180~8_combout\,
	combout => \DataPath|Mux191~4_combout\);

-- Location: FF_X59_Y5_N1
\DataPath|PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(0));

-- Location: LCCOMB_X61_Y4_N18
\DataPath|towrite~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~1_combout\ = (\DataPath|PC\(2) & (((\DataPath|PC\(0) & \DataPath|regs[0][10]~q\)) # (!\DataPath|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|regs[0][10]~q\,
	datad => \DataPath|PC\(1),
	combout => \DataPath|towrite~1_combout\);

-- Location: LCCOMB_X60_Y4_N30
\DataPath|writememdata[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[10]~feeder_combout\ = \DataPath|towrite~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~1_combout\,
	combout => \DataPath|writememdata[10]~feeder_combout\);

-- Location: FF_X60_Y4_N31
\DataPath|writememdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[10]~feeder_combout\,
	ena => \DataPath|writemem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(10));

-- Location: FF_X60_Y5_N25
\RAM|RAM[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][17]~q\);

-- Location: LCCOMB_X67_Y54_N0
\RAM|comb_4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr6~0_combout\ = (\RAM|RAM[0][17]~q\ & ((!\RAM|RAM[0][1]~q\))) # (!\RAM|RAM[0][17]~q\ & (!\RAM|RAM[0][0]~q\ & \RAM|RAM[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][17]~q\,
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|comb_4|WideOr6~0_combout\);

-- Location: LCCOMB_X67_Y54_N30
\RAM|comb_4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr5~0_combout\ = (\RAM|RAM[0][17]~q\ & ((\RAM|RAM[0][1]~q\))) # (!\RAM|RAM[0][17]~q\ & (\RAM|RAM[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][17]~q\,
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|comb_4|WideOr5~0_combout\);

-- Location: LCCOMB_X67_Y54_N16
\RAM|comb_4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr4~0_combout\ = (\RAM|RAM[0][0]~q\) # ((\RAM|RAM[0][17]~q\ & \RAM|RAM[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][17]~q\,
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|comb_4|WideOr4~0_combout\);

-- Location: LCCOMB_X67_Y54_N18
\RAM|comb_4|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr5~1_combout\ = (\RAM|RAM[0][17]~q\ & \RAM|RAM[0][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RAM|RAM[0][17]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|comb_4|WideOr5~1_combout\);

-- Location: LCCOMB_X67_Y54_N12
\RAM|comb_4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr1~0_combout\ = (\RAM|RAM[0][1]~q\ & ((\RAM|RAM[0][17]~q\) # (!\RAM|RAM[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][17]~q\,
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|comb_4|WideOr1~0_combout\);

-- Location: LCCOMB_X67_Y54_N26
\RAM|comb_4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr0~0_combout\ = (\RAM|RAM[0][17]~q\ & ((\RAM|RAM[0][1]~q\))) # (!\RAM|RAM[0][17]~q\ & (\RAM|RAM[0][0]~q\ & !\RAM|RAM[0][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][17]~q\,
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[0][1]~q\,
	combout => \RAM|comb_4|WideOr0~0_combout\);

-- Location: LCCOMB_X59_Y5_N6
\DataPath|PC[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[3]~38_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(3) & (\DataPath|PC[2]~37\ & VCC)) # (!\DataPath|PC\(3) & (!\DataPath|PC[2]~37\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(3) & (!\DataPath|PC[2]~37\)) # 
-- (!\DataPath|PC\(3) & ((\DataPath|PC[2]~37\) # (GND)))))
-- \DataPath|PC[3]~39\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(3) & !\DataPath|PC[2]~37\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[2]~37\) # (!\DataPath|PC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(3),
	datad => VCC,
	cin => \DataPath|PC[2]~37\,
	combout => \DataPath|PC[3]~38_combout\,
	cout => \DataPath|PC[3]~39\);

-- Location: FF_X59_Y5_N7
\DataPath|PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(3));

-- Location: LCCOMB_X59_Y5_N8
\DataPath|PC[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[4]~40_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(4) $ (!\DataPath|PC[3]~39\)))) # (GND)
-- \DataPath|PC[4]~41\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(4)) # (!\DataPath|PC[3]~39\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(4) & !\DataPath|PC[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(4),
	datad => VCC,
	cin => \DataPath|PC[3]~39\,
	combout => \DataPath|PC[4]~40_combout\,
	cout => \DataPath|PC[4]~41\);

-- Location: FF_X59_Y5_N9
\DataPath|PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[4]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(4));

-- Location: LCCOMB_X59_Y5_N10
\DataPath|PC[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[5]~42_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(5) & (\DataPath|PC[4]~41\ & VCC)) # (!\DataPath|PC\(5) & (!\DataPath|PC[4]~41\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(5) & (!\DataPath|PC[4]~41\)) # 
-- (!\DataPath|PC\(5) & ((\DataPath|PC[4]~41\) # (GND)))))
-- \DataPath|PC[5]~43\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(5) & !\DataPath|PC[4]~41\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[4]~41\) # (!\DataPath|PC\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(5),
	datad => VCC,
	cin => \DataPath|PC[4]~41\,
	combout => \DataPath|PC[5]~42_combout\,
	cout => \DataPath|PC[5]~43\);

-- Location: FF_X59_Y5_N11
\DataPath|PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[5]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(5));

-- Location: LCCOMB_X59_Y5_N12
\DataPath|PC[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[6]~44_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(6) $ (!\DataPath|PC[5]~43\)))) # (GND)
-- \DataPath|PC[6]~45\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(6)) # (!\DataPath|PC[5]~43\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(6) & !\DataPath|PC[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(6),
	datad => VCC,
	cin => \DataPath|PC[5]~43\,
	combout => \DataPath|PC[6]~44_combout\,
	cout => \DataPath|PC[6]~45\);

-- Location: FF_X59_Y5_N13
\DataPath|PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[6]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(6));

-- Location: LCCOMB_X59_Y5_N14
\DataPath|PC[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[7]~46_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(7) & (\DataPath|PC[6]~45\ & VCC)) # (!\DataPath|PC\(7) & (!\DataPath|PC[6]~45\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(7) & (!\DataPath|PC[6]~45\)) # 
-- (!\DataPath|PC\(7) & ((\DataPath|PC[6]~45\) # (GND)))))
-- \DataPath|PC[7]~47\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(7) & !\DataPath|PC[6]~45\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[6]~45\) # (!\DataPath|PC\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(7),
	datad => VCC,
	cin => \DataPath|PC[6]~45\,
	combout => \DataPath|PC[7]~46_combout\,
	cout => \DataPath|PC[7]~47\);

-- Location: FF_X59_Y5_N15
\DataPath|PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[7]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(7));

-- Location: LCCOMB_X59_Y5_N16
\DataPath|PC[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[8]~48_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(8) $ (!\DataPath|PC[7]~47\)))) # (GND)
-- \DataPath|PC[8]~49\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(8)) # (!\DataPath|PC[7]~47\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(8) & !\DataPath|PC[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(8),
	datad => VCC,
	cin => \DataPath|PC[7]~47\,
	combout => \DataPath|PC[8]~48_combout\,
	cout => \DataPath|PC[8]~49\);

-- Location: FF_X59_Y5_N17
\DataPath|PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[8]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(8));

-- Location: LCCOMB_X59_Y5_N18
\DataPath|PC[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[9]~50_combout\ = (\DataPath|PC\(9) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[8]~49\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[8]~49\)))) # (!\DataPath|PC\(9) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[8]~49\)) # 
-- (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[8]~49\) # (GND)))))
-- \DataPath|PC[9]~51\ = CARRY((\DataPath|PC\(9) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[8]~49\)) # (!\DataPath|PC\(9) & ((!\DataPath|PC[8]~49\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(9),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[8]~49\,
	combout => \DataPath|PC[9]~50_combout\,
	cout => \DataPath|PC[9]~51\);

-- Location: FF_X59_Y5_N19
\DataPath|PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[9]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(9));

-- Location: LCCOMB_X59_Y5_N20
\DataPath|PC[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[10]~52_combout\ = ((\DataPath|PC\(10) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[9]~51\)))) # (GND)
-- \DataPath|PC[10]~53\ = CARRY((\DataPath|PC\(10) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[9]~51\))) # (!\DataPath|PC\(10) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(10),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[9]~51\,
	combout => \DataPath|PC[10]~52_combout\,
	cout => \DataPath|PC[10]~53\);

-- Location: FF_X59_Y5_N21
\DataPath|PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[10]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(10));

-- Location: LCCOMB_X59_Y5_N22
\DataPath|PC[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[11]~54_combout\ = (\DataPath|PC\(11) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[10]~53\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[10]~53\)))) # (!\DataPath|PC\(11) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[10]~53\)) 
-- # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[10]~53\) # (GND)))))
-- \DataPath|PC[11]~55\ = CARRY((\DataPath|PC\(11) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[10]~53\)) # (!\DataPath|PC\(11) & ((!\DataPath|PC[10]~53\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(11),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[10]~53\,
	combout => \DataPath|PC[11]~54_combout\,
	cout => \DataPath|PC[11]~55\);

-- Location: FF_X59_Y5_N23
\DataPath|PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(11));

-- Location: LCCOMB_X59_Y5_N24
\DataPath|PC[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[12]~56_combout\ = ((\DataPath|PC\(12) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[11]~55\)))) # (GND)
-- \DataPath|PC[12]~57\ = CARRY((\DataPath|PC\(12) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[11]~55\))) # (!\DataPath|PC\(12) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(12),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[11]~55\,
	combout => \DataPath|PC[12]~56_combout\,
	cout => \DataPath|PC[12]~57\);

-- Location: FF_X59_Y5_N25
\DataPath|PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(12));

-- Location: LCCOMB_X59_Y5_N26
\DataPath|PC[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[13]~58_combout\ = (\DataPath|PC\(13) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[12]~57\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[12]~57\)))) # (!\DataPath|PC\(13) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[12]~57\)) 
-- # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[12]~57\) # (GND)))))
-- \DataPath|PC[13]~59\ = CARRY((\DataPath|PC\(13) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[12]~57\)) # (!\DataPath|PC\(13) & ((!\DataPath|PC[12]~57\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(13),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[12]~57\,
	combout => \DataPath|PC[13]~58_combout\,
	cout => \DataPath|PC[13]~59\);

-- Location: FF_X59_Y5_N27
\DataPath|PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(13));

-- Location: LCCOMB_X59_Y5_N28
\DataPath|PC[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[14]~60_combout\ = ((\DataPath|PC\(14) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[13]~59\)))) # (GND)
-- \DataPath|PC[14]~61\ = CARRY((\DataPath|PC\(14) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[13]~59\))) # (!\DataPath|PC\(14) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(14),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[13]~59\,
	combout => \DataPath|PC[14]~60_combout\,
	cout => \DataPath|PC[14]~61\);

-- Location: FF_X59_Y5_N29
\DataPath|PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[14]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(14));

-- Location: LCCOMB_X59_Y5_N30
\DataPath|PC[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[15]~62_combout\ = (\DataPath|PC\(15) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[14]~61\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[14]~61\)))) # (!\DataPath|PC\(15) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[14]~61\)) 
-- # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[14]~61\) # (GND)))))
-- \DataPath|PC[15]~63\ = CARRY((\DataPath|PC\(15) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[14]~61\)) # (!\DataPath|PC\(15) & ((!\DataPath|PC[14]~61\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(15),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[14]~61\,
	combout => \DataPath|PC[15]~62_combout\,
	cout => \DataPath|PC[15]~63\);

-- Location: FF_X59_Y5_N31
\DataPath|PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[15]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(15));

-- Location: LCCOMB_X59_Y4_N0
\DataPath|PC[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[16]~64_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(16) $ (!\DataPath|PC[15]~63\)))) # (GND)
-- \DataPath|PC[16]~65\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(16)) # (!\DataPath|PC[15]~63\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(16) & !\DataPath|PC[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(16),
	datad => VCC,
	cin => \DataPath|PC[15]~63\,
	combout => \DataPath|PC[16]~64_combout\,
	cout => \DataPath|PC[16]~65\);

-- Location: FF_X59_Y4_N1
\DataPath|PC[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(16));

-- Location: LCCOMB_X59_Y4_N2
\DataPath|PC[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[17]~66_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(17) & (\DataPath|PC[16]~65\ & VCC)) # (!\DataPath|PC\(17) & (!\DataPath|PC[16]~65\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(17) & (!\DataPath|PC[16]~65\)) # 
-- (!\DataPath|PC\(17) & ((\DataPath|PC[16]~65\) # (GND)))))
-- \DataPath|PC[17]~67\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(17) & !\DataPath|PC[16]~65\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[16]~65\) # (!\DataPath|PC\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(17),
	datad => VCC,
	cin => \DataPath|PC[16]~65\,
	combout => \DataPath|PC[17]~66_combout\,
	cout => \DataPath|PC[17]~67\);

-- Location: FF_X59_Y4_N3
\DataPath|PC[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[17]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(17));

-- Location: LCCOMB_X59_Y4_N4
\DataPath|PC[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[18]~68_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(18) $ (!\DataPath|PC[17]~67\)))) # (GND)
-- \DataPath|PC[18]~69\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(18)) # (!\DataPath|PC[17]~67\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(18) & !\DataPath|PC[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(18),
	datad => VCC,
	cin => \DataPath|PC[17]~67\,
	combout => \DataPath|PC[18]~68_combout\,
	cout => \DataPath|PC[18]~69\);

-- Location: FF_X59_Y4_N5
\DataPath|PC[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[18]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(18));

-- Location: LCCOMB_X59_Y4_N6
\DataPath|PC[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[19]~70_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(19) & (\DataPath|PC[18]~69\ & VCC)) # (!\DataPath|PC\(19) & (!\DataPath|PC[18]~69\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(19) & (!\DataPath|PC[18]~69\)) # 
-- (!\DataPath|PC\(19) & ((\DataPath|PC[18]~69\) # (GND)))))
-- \DataPath|PC[19]~71\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(19) & !\DataPath|PC[18]~69\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[18]~69\) # (!\DataPath|PC\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(19),
	datad => VCC,
	cin => \DataPath|PC[18]~69\,
	combout => \DataPath|PC[19]~70_combout\,
	cout => \DataPath|PC[19]~71\);

-- Location: FF_X59_Y4_N7
\DataPath|PC[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[19]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(19));

-- Location: LCCOMB_X59_Y4_N8
\DataPath|PC[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[20]~72_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(20) $ (!\DataPath|PC[19]~71\)))) # (GND)
-- \DataPath|PC[20]~73\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(20)) # (!\DataPath|PC[19]~71\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(20) & !\DataPath|PC[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(20),
	datad => VCC,
	cin => \DataPath|PC[19]~71\,
	combout => \DataPath|PC[20]~72_combout\,
	cout => \DataPath|PC[20]~73\);

-- Location: FF_X59_Y4_N9
\DataPath|PC[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[20]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(20));

-- Location: LCCOMB_X59_Y4_N10
\DataPath|PC[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[21]~74_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(21) & (\DataPath|PC[20]~73\ & VCC)) # (!\DataPath|PC\(21) & (!\DataPath|PC[20]~73\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(21) & (!\DataPath|PC[20]~73\)) # 
-- (!\DataPath|PC\(21) & ((\DataPath|PC[20]~73\) # (GND)))))
-- \DataPath|PC[21]~75\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(21) & !\DataPath|PC[20]~73\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[20]~73\) # (!\DataPath|PC\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(21),
	datad => VCC,
	cin => \DataPath|PC[20]~73\,
	combout => \DataPath|PC[21]~74_combout\,
	cout => \DataPath|PC[21]~75\);

-- Location: FF_X59_Y4_N11
\DataPath|PC[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[21]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(21));

-- Location: LCCOMB_X59_Y4_N12
\DataPath|PC[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[22]~76_combout\ = ((\DataPath|Mux160~0_combout\ $ (\DataPath|PC\(22) $ (!\DataPath|PC[21]~75\)))) # (GND)
-- \DataPath|PC[22]~77\ = CARRY((\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(22)) # (!\DataPath|PC[21]~75\))) # (!\DataPath|Mux160~0_combout\ & (\DataPath|PC\(22) & !\DataPath|PC[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(22),
	datad => VCC,
	cin => \DataPath|PC[21]~75\,
	combout => \DataPath|PC[22]~76_combout\,
	cout => \DataPath|PC[22]~77\);

-- Location: FF_X59_Y4_N13
\DataPath|PC[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[22]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(22));

-- Location: LCCOMB_X59_Y4_N14
\DataPath|PC[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[23]~78_combout\ = (\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(23) & (\DataPath|PC[22]~77\ & VCC)) # (!\DataPath|PC\(23) & (!\DataPath|PC[22]~77\)))) # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC\(23) & (!\DataPath|PC[22]~77\)) # 
-- (!\DataPath|PC\(23) & ((\DataPath|PC[22]~77\) # (GND)))))
-- \DataPath|PC[23]~79\ = CARRY((\DataPath|Mux160~0_combout\ & (!\DataPath|PC\(23) & !\DataPath|PC[22]~77\)) # (!\DataPath|Mux160~0_combout\ & ((!\DataPath|PC[22]~77\) # (!\DataPath|PC\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux160~0_combout\,
	datab => \DataPath|PC\(23),
	datad => VCC,
	cin => \DataPath|PC[22]~77\,
	combout => \DataPath|PC[23]~78_combout\,
	cout => \DataPath|PC[23]~79\);

-- Location: FF_X59_Y4_N15
\DataPath|PC[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[23]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(23));

-- Location: LCCOMB_X59_Y4_N16
\DataPath|PC[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[24]~80_combout\ = ((\DataPath|PC\(24) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[23]~79\)))) # (GND)
-- \DataPath|PC[24]~81\ = CARRY((\DataPath|PC\(24) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[23]~79\))) # (!\DataPath|PC\(24) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(24),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[23]~79\,
	combout => \DataPath|PC[24]~80_combout\,
	cout => \DataPath|PC[24]~81\);

-- Location: FF_X59_Y4_N17
\DataPath|PC[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[24]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(24));

-- Location: LCCOMB_X59_Y4_N18
\DataPath|PC[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[25]~82_combout\ = (\DataPath|PC\(25) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[24]~81\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[24]~81\)))) # (!\DataPath|PC\(25) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[24]~81\)) 
-- # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[24]~81\) # (GND)))))
-- \DataPath|PC[25]~83\ = CARRY((\DataPath|PC\(25) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[24]~81\)) # (!\DataPath|PC\(25) & ((!\DataPath|PC[24]~81\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(25),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[24]~81\,
	combout => \DataPath|PC[25]~82_combout\,
	cout => \DataPath|PC[25]~83\);

-- Location: FF_X59_Y4_N19
\DataPath|PC[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[25]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(25));

-- Location: LCCOMB_X59_Y4_N20
\DataPath|PC[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[26]~84_combout\ = ((\DataPath|PC\(26) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[25]~83\)))) # (GND)
-- \DataPath|PC[26]~85\ = CARRY((\DataPath|PC\(26) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[25]~83\))) # (!\DataPath|PC\(26) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(26),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[25]~83\,
	combout => \DataPath|PC[26]~84_combout\,
	cout => \DataPath|PC[26]~85\);

-- Location: FF_X59_Y4_N21
\DataPath|PC[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[26]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(26));

-- Location: LCCOMB_X59_Y4_N22
\DataPath|PC[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[27]~86_combout\ = (\DataPath|PC\(27) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[26]~85\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[26]~85\)))) # (!\DataPath|PC\(27) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[26]~85\)) 
-- # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[26]~85\) # (GND)))))
-- \DataPath|PC[27]~87\ = CARRY((\DataPath|PC\(27) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[26]~85\)) # (!\DataPath|PC\(27) & ((!\DataPath|PC[26]~85\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(27),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[26]~85\,
	combout => \DataPath|PC[27]~86_combout\,
	cout => \DataPath|PC[27]~87\);

-- Location: FF_X59_Y4_N23
\DataPath|PC[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[27]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(27));

-- Location: LCCOMB_X59_Y4_N24
\DataPath|PC[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[28]~88_combout\ = ((\DataPath|PC\(28) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[27]~87\)))) # (GND)
-- \DataPath|PC[28]~89\ = CARRY((\DataPath|PC\(28) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[27]~87\))) # (!\DataPath|PC\(28) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(28),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[27]~87\,
	combout => \DataPath|PC[28]~88_combout\,
	cout => \DataPath|PC[28]~89\);

-- Location: FF_X59_Y4_N25
\DataPath|PC[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[28]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(28));

-- Location: LCCOMB_X59_Y4_N26
\DataPath|PC[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[29]~90_combout\ = (\DataPath|PC\(29) & ((\DataPath|Mux160~0_combout\ & (\DataPath|PC[28]~89\ & VCC)) # (!\DataPath|Mux160~0_combout\ & (!\DataPath|PC[28]~89\)))) # (!\DataPath|PC\(29) & ((\DataPath|Mux160~0_combout\ & (!\DataPath|PC[28]~89\)) 
-- # (!\DataPath|Mux160~0_combout\ & ((\DataPath|PC[28]~89\) # (GND)))))
-- \DataPath|PC[29]~91\ = CARRY((\DataPath|PC\(29) & (!\DataPath|Mux160~0_combout\ & !\DataPath|PC[28]~89\)) # (!\DataPath|PC\(29) & ((!\DataPath|PC[28]~89\) # (!\DataPath|Mux160~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(29),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[28]~89\,
	combout => \DataPath|PC[29]~90_combout\,
	cout => \DataPath|PC[29]~91\);

-- Location: FF_X59_Y4_N27
\DataPath|PC[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[29]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(29));

-- Location: LCCOMB_X59_Y4_N28
\DataPath|PC[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[30]~92_combout\ = ((\DataPath|PC\(30) $ (\DataPath|Mux160~0_combout\ $ (!\DataPath|PC[29]~91\)))) # (GND)
-- \DataPath|PC[30]~93\ = CARRY((\DataPath|PC\(30) & ((\DataPath|Mux160~0_combout\) # (!\DataPath|PC[29]~91\))) # (!\DataPath|PC\(30) & (\DataPath|Mux160~0_combout\ & !\DataPath|PC[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(30),
	datab => \DataPath|Mux160~0_combout\,
	datad => VCC,
	cin => \DataPath|PC[29]~91\,
	combout => \DataPath|PC[30]~92_combout\,
	cout => \DataPath|PC[30]~93\);

-- Location: FF_X59_Y4_N29
\DataPath|PC[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[30]~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(30));

-- Location: LCCOMB_X59_Y4_N30
\DataPath|PC[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[31]~94_combout\ = \DataPath|PC\(31) $ (\DataPath|PC[30]~93\ $ (\DataPath|Mux160~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(31),
	datad => \DataPath|Mux160~0_combout\,
	cin => \DataPath|PC[30]~93\,
	combout => \DataPath|PC[31]~94_combout\);

-- Location: FF_X59_Y4_N31
\DataPath|PC[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|PC[31]~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|PC\(31));

-- Location: LCCOMB_X42_Y1_N22
\InstructionFetch|list~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~5_combout\ = (!\DataPath|PC\(0) & \DataPath|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~5_combout\);

-- Location: LCCOMB_X42_Y1_N0
\InstructionFetch|list~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~6_combout\ = (!\DataPath|PC\(1) & \DataPath|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~6_combout\);

-- Location: FF_X60_Y4_N29
\DataPath|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux127~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(0));

-- Location: LCCOMB_X60_Y4_N26
\DataPath|Mux126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux126~0_combout\ = (\InstructionFetch|list~0_combout\) # ((\InstructionFetch|list~7_combout\ & ((\RAM|Mux30~0_combout\))) # (!\InstructionFetch|list~7_combout\ & (\DataPath|Mux61~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~7_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|Mux61~0_combout\,
	datad => \RAM|Mux30~0_combout\,
	combout => \DataPath|Mux126~0_combout\);

-- Location: LCCOMB_X79_Y4_N28
\DataPath|result[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[1]~feeder_combout\ = \DataPath|Mux126~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux126~0_combout\,
	combout => \DataPath|result[1]~feeder_combout\);

-- Location: FF_X79_Y4_N29
\DataPath|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(1));

-- Location: FF_X60_Y4_N27
\DataPath|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(2));

-- Location: LCCOMB_X60_Y5_N26
\DataPath|Mux124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux124~0_combout\ = (\InstructionFetch|list~0_combout\) # ((\InstructionFetch|list~7_combout\ & ((\RAM|Mux28~0_combout\))) # (!\InstructionFetch|list~7_combout\ & (\DataPath|num1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num1~0_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \RAM|Mux28~0_combout\,
	datad => \InstructionFetch|list~7_combout\,
	combout => \DataPath|Mux124~0_combout\);

-- Location: LCCOMB_X114_Y16_N20
\DataPath|result[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[3]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[3]~feeder_combout\);

-- Location: FF_X114_Y16_N21
\DataPath|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(3));

-- Location: LCCOMB_X74_Y4_N28
\DataPath|result[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[4]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[4]~feeder_combout\);

-- Location: FF_X74_Y4_N29
\DataPath|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(4));

-- Location: LCCOMB_X114_Y16_N14
\DataPath|result[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[5]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[5]~feeder_combout\);

-- Location: FF_X114_Y16_N15
\DataPath|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(5));

-- Location: LCCOMB_X114_Y16_N8
\DataPath|result[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[6]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[6]~feeder_combout\);

-- Location: FF_X114_Y16_N9
\DataPath|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(6));

-- Location: LCCOMB_X114_Y16_N10
\DataPath|result[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[7]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[7]~feeder_combout\);

-- Location: FF_X114_Y16_N11
\DataPath|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(7));

-- Location: LCCOMB_X114_Y16_N16
\DataPath|result[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[8]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[8]~feeder_combout\);

-- Location: FF_X114_Y16_N17
\DataPath|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(8));

-- Location: LCCOMB_X114_Y16_N18
\DataPath|result[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[9]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[9]~feeder_combout\);

-- Location: FF_X114_Y16_N19
\DataPath|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(9));

-- Location: LCCOMB_X114_Y16_N28
\DataPath|result[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[10]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[10]~feeder_combout\);

-- Location: FF_X114_Y16_N29
\DataPath|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(10));

-- Location: LCCOMB_X114_Y16_N30
\DataPath|result[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[11]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[11]~feeder_combout\);

-- Location: FF_X114_Y16_N31
\DataPath|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(11));

-- Location: LCCOMB_X69_Y4_N28
\DataPath|result[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[12]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[12]~feeder_combout\);

-- Location: FF_X69_Y4_N29
\DataPath|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(12));

-- Location: LCCOMB_X74_Y4_N26
\DataPath|result[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[13]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[13]~feeder_combout\);

-- Location: FF_X74_Y4_N27
\DataPath|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(13));

-- Location: LCCOMB_X114_Y16_N12
\DataPath|result[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[14]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[14]~feeder_combout\);

-- Location: FF_X114_Y16_N13
\DataPath|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(14));

-- Location: LCCOMB_X74_Y4_N12
\DataPath|result[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[15]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[15]~feeder_combout\);

-- Location: FF_X74_Y4_N13
\DataPath|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(15));

-- Location: LCCOMB_X74_Y4_N10
\DataPath|result[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[16]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[16]~feeder_combout\);

-- Location: FF_X74_Y4_N11
\DataPath|result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(16));

-- Location: LCCOMB_X114_Y16_N2
\DataPath|result[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[17]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[17]~feeder_combout\);

-- Location: FF_X114_Y16_N3
\DataPath|result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(17));

-- Location: LCCOMB_X114_Y16_N24
\DataPath|result[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[18]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[18]~feeder_combout\);

-- Location: FF_X114_Y16_N25
\DataPath|result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(18));

-- Location: LCCOMB_X74_Y4_N20
\DataPath|result[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[19]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[19]~feeder_combout\);

-- Location: FF_X74_Y4_N21
\DataPath|result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(19));

-- Location: LCCOMB_X114_Y16_N6
\DataPath|result[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[20]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[20]~feeder_combout\);

-- Location: FF_X114_Y16_N7
\DataPath|result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(20));

-- Location: LCCOMB_X74_Y4_N30
\DataPath|result[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[21]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[21]~feeder_combout\);

-- Location: FF_X74_Y4_N31
\DataPath|result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(21));

-- Location: LCCOMB_X69_Y4_N26
\DataPath|result[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[22]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[22]~feeder_combout\);

-- Location: FF_X69_Y4_N27
\DataPath|result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(22));

-- Location: LCCOMB_X74_Y4_N4
\DataPath|result[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[23]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[23]~feeder_combout\);

-- Location: FF_X74_Y4_N5
\DataPath|result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(23));

-- Location: LCCOMB_X114_Y16_N4
\DataPath|result[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[24]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[24]~feeder_combout\);

-- Location: FF_X114_Y16_N5
\DataPath|result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(24));

-- Location: LCCOMB_X114_Y16_N22
\DataPath|result[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[25]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[25]~feeder_combout\);

-- Location: FF_X114_Y16_N23
\DataPath|result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(25));

-- Location: LCCOMB_X74_Y4_N18
\DataPath|result[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[26]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[26]~feeder_combout\);

-- Location: FF_X74_Y4_N19
\DataPath|result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(26));

-- Location: LCCOMB_X114_Y16_N0
\DataPath|result[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[27]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[27]~feeder_combout\);

-- Location: FF_X114_Y16_N1
\DataPath|result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(27));

-- Location: LCCOMB_X114_Y16_N26
\DataPath|result[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[28]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[28]~feeder_combout\);

-- Location: FF_X114_Y16_N27
\DataPath|result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(28));

-- Location: LCCOMB_X74_Y4_N24
\DataPath|result[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[29]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[29]~feeder_combout\);

-- Location: FF_X74_Y4_N25
\DataPath|result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(29));

-- Location: LCCOMB_X74_Y4_N22
\DataPath|result[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[30]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[30]~feeder_combout\);

-- Location: FF_X74_Y4_N23
\DataPath|result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(30));

-- Location: LCCOMB_X74_Y4_N16
\DataPath|result[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|result[31]~feeder_combout\ = \DataPath|Mux124~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux124~0_combout\,
	combout => \DataPath|result[31]~feeder_combout\);

-- Location: FF_X74_Y4_N17
\DataPath|result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|result[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(31));

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(4) <= \PC[4]~output_o\;

ww_PC(5) <= \PC[5]~output_o\;

ww_PC(6) <= \PC[6]~output_o\;

ww_PC(7) <= \PC[7]~output_o\;

ww_PC(8) <= \PC[8]~output_o\;

ww_PC(9) <= \PC[9]~output_o\;

ww_PC(10) <= \PC[10]~output_o\;

ww_PC(11) <= \PC[11]~output_o\;

ww_PC(12) <= \PC[12]~output_o\;

ww_PC(13) <= \PC[13]~output_o\;

ww_PC(14) <= \PC[14]~output_o\;

ww_PC(15) <= \PC[15]~output_o\;

ww_PC(16) <= \PC[16]~output_o\;

ww_PC(17) <= \PC[17]~output_o\;

ww_PC(18) <= \PC[18]~output_o\;

ww_PC(19) <= \PC[19]~output_o\;

ww_PC(20) <= \PC[20]~output_o\;

ww_PC(21) <= \PC[21]~output_o\;

ww_PC(22) <= \PC[22]~output_o\;

ww_PC(23) <= \PC[23]~output_o\;

ww_PC(24) <= \PC[24]~output_o\;

ww_PC(25) <= \PC[25]~output_o\;

ww_PC(26) <= \PC[26]~output_o\;

ww_PC(27) <= \PC[27]~output_o\;

ww_PC(28) <= \PC[28]~output_o\;

ww_PC(29) <= \PC[29]~output_o\;

ww_PC(30) <= \PC[30]~output_o\;

ww_PC(31) <= \PC[31]~output_o\;

ww_alucode(0) <= \alucode[0]~output_o\;

ww_alucode(1) <= \alucode[1]~output_o\;

ww_alucode(2) <= \alucode[2]~output_o\;

ww_alucode(3) <= \alucode[3]~output_o\;

ww_op1(0) <= \op1[0]~output_o\;

ww_op1(1) <= \op1[1]~output_o\;

ww_op1(2) <= \op1[2]~output_o\;

ww_op2(0) <= \op2[0]~output_o\;

ww_op2(1) <= \op2[1]~output_o\;

ww_op2(2) <= \op2[2]~output_o\;

ww_op2(3) <= \op2[3]~output_o\;

ww_op2(4) <= \op2[4]~output_o\;

ww_op2(5) <= \op2[5]~output_o\;

ww_op2(6) <= \op2[6]~output_o\;

ww_op2(7) <= \op2[7]~output_o\;

ww_op2(8) <= \op2[8]~output_o\;

ww_op2(9) <= \op2[9]~output_o\;

ww_op2(10) <= \op2[10]~output_o\;

ww_op2(11) <= \op2[11]~output_o\;

ww_op2(12) <= \op2[12]~output_o\;

ww_op2(13) <= \op2[13]~output_o\;

ww_op2(14) <= \op2[14]~output_o\;

ww_op2(15) <= \op2[15]~output_o\;

ww_op2(16) <= \op2[16]~output_o\;

ww_op2(17) <= \op2[17]~output_o\;

ww_op2(18) <= \op2[18]~output_o\;

ww_op2(19) <= \op2[19]~output_o\;

ww_op2(20) <= \op2[20]~output_o\;

ww_pcControl(0) <= \pcControl[0]~output_o\;

ww_pcControl(1) <= \pcControl[1]~output_o\;

ww_pcControl(2) <= \pcControl[2]~output_o\;

ww_pcControl(3) <= \pcControl[3]~output_o\;

ww_flag <= \flag~output_o\;

ww_flag1 <= \flag1~output_o\;

ww_imControl <= \imControl~output_o\;

ww_writecode <= \writecode~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;

ww_result(14) <= \result[14]~output_o\;

ww_result(15) <= \result[15]~output_o\;

ww_result(16) <= \result[16]~output_o\;

ww_result(17) <= \result[17]~output_o\;

ww_result(18) <= \result[18]~output_o\;

ww_result(19) <= \result[19]~output_o\;

ww_result(20) <= \result[20]~output_o\;

ww_result(21) <= \result[21]~output_o\;

ww_result(22) <= \result[22]~output_o\;

ww_result(23) <= \result[23]~output_o\;

ww_result(24) <= \result[24]~output_o\;

ww_result(25) <= \result[25]~output_o\;

ww_result(26) <= \result[26]~output_o\;

ww_result(27) <= \result[27]~output_o\;

ww_result(28) <= \result[28]~output_o\;

ww_result(29) <= \result[29]~output_o\;

ww_result(30) <= \result[30]~output_o\;

ww_result(31) <= \result[31]~output_o\;

ww_memaddr(0) <= \memaddr[0]~output_o\;

ww_memaddr(1) <= \memaddr[1]~output_o\;

ww_memaddr(2) <= \memaddr[2]~output_o\;

ww_memaddr(3) <= \memaddr[3]~output_o\;

ww_memaddr(4) <= \memaddr[4]~output_o\;

ww_memaddr(5) <= \memaddr[5]~output_o\;

ww_memaddr(6) <= \memaddr[6]~output_o\;

ww_memaddr(7) <= \memaddr[7]~output_o\;

ww_memaddr(8) <= \memaddr[8]~output_o\;

ww_memaddr(9) <= \memaddr[9]~output_o\;

ww_writemem <= \writemem~output_o\;

ww_writememdata(0) <= \writememdata[0]~output_o\;

ww_writememdata(1) <= \writememdata[1]~output_o\;

ww_writememdata(2) <= \writememdata[2]~output_o\;

ww_writememdata(3) <= \writememdata[3]~output_o\;

ww_writememdata(4) <= \writememdata[4]~output_o\;

ww_writememdata(5) <= \writememdata[5]~output_o\;

ww_writememdata(6) <= \writememdata[6]~output_o\;

ww_writememdata(7) <= \writememdata[7]~output_o\;

ww_writememdata(8) <= \writememdata[8]~output_o\;

ww_writememdata(9) <= \writememdata[9]~output_o\;

ww_writememdata(10) <= \writememdata[10]~output_o\;

ww_writememdata(11) <= \writememdata[11]~output_o\;

ww_writememdata(12) <= \writememdata[12]~output_o\;

ww_writememdata(13) <= \writememdata[13]~output_o\;

ww_writememdata(14) <= \writememdata[14]~output_o\;

ww_writememdata(15) <= \writememdata[15]~output_o\;

ww_writememdata(16) <= \writememdata[16]~output_o\;

ww_writememdata(17) <= \writememdata[17]~output_o\;

ww_writememdata(18) <= \writememdata[18]~output_o\;

ww_writememdata(19) <= \writememdata[19]~output_o\;

ww_writememdata(20) <= \writememdata[20]~output_o\;

ww_writememdata(21) <= \writememdata[21]~output_o\;

ww_writememdata(22) <= \writememdata[22]~output_o\;

ww_writememdata(23) <= \writememdata[23]~output_o\;

ww_writememdata(24) <= \writememdata[24]~output_o\;

ww_writememdata(25) <= \writememdata[25]~output_o\;

ww_writememdata(26) <= \writememdata[26]~output_o\;

ww_writememdata(27) <= \writememdata[27]~output_o\;

ww_writememdata(28) <= \writememdata[28]~output_o\;

ww_writememdata(29) <= \writememdata[29]~output_o\;

ww_writememdata(30) <= \writememdata[30]~output_o\;

ww_writememdata(31) <= \writememdata[31]~output_o\;

ww_memresult(0) <= \memresult[0]~output_o\;

ww_memresult(1) <= \memresult[1]~output_o\;

ww_memresult(2) <= \memresult[2]~output_o\;

ww_memresult(3) <= \memresult[3]~output_o\;

ww_memresult(4) <= \memresult[4]~output_o\;

ww_memresult(5) <= \memresult[5]~output_o\;

ww_memresult(6) <= \memresult[6]~output_o\;

ww_memresult(7) <= \memresult[7]~output_o\;

ww_memresult(8) <= \memresult[8]~output_o\;

ww_memresult(9) <= \memresult[9]~output_o\;

ww_memresult(10) <= \memresult[10]~output_o\;

ww_memresult(11) <= \memresult[11]~output_o\;

ww_memresult(12) <= \memresult[12]~output_o\;

ww_memresult(13) <= \memresult[13]~output_o\;

ww_memresult(14) <= \memresult[14]~output_o\;

ww_memresult(15) <= \memresult[15]~output_o\;

ww_memresult(16) <= \memresult[16]~output_o\;

ww_memresult(17) <= \memresult[17]~output_o\;

ww_memresult(18) <= \memresult[18]~output_o\;

ww_memresult(19) <= \memresult[19]~output_o\;

ww_memresult(20) <= \memresult[20]~output_o\;

ww_memresult(21) <= \memresult[21]~output_o\;

ww_memresult(22) <= \memresult[22]~output_o\;

ww_memresult(23) <= \memresult[23]~output_o\;

ww_memresult(24) <= \memresult[24]~output_o\;

ww_memresult(25) <= \memresult[25]~output_o\;

ww_memresult(26) <= \memresult[26]~output_o\;

ww_memresult(27) <= \memresult[27]~output_o\;

ww_memresult(28) <= \memresult[28]~output_o\;

ww_memresult(29) <= \memresult[29]~output_o\;

ww_memresult(30) <= \memresult[30]~output_o\;

ww_memresult(31) <= \memresult[31]~output_o\;
END structure;


