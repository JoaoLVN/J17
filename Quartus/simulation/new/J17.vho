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

-- DATE "06/04/2017 21:24:22"

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
	result : BUFFER std_logic_vector(31 DOWNTO 0);
	PC : BUFFER std_logic_vector(31 DOWNTO 0)
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
-- result[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[14]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[15]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[16]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[17]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[18]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[19]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[20]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[21]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[22]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[23]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[24]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[25]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[26]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[27]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[28]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[29]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[30]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[31]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[31]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \DataPath|PC[1]~35\ : std_logic;
SIGNAL \DataPath|PC[2]~36_combout\ : std_logic;
SIGNAL \DataPath|PC[0]~32_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr7~0_combout\ : std_logic;
SIGNAL \DataPath|PC[0]~33\ : std_logic;
SIGNAL \DataPath|PC[1]~34_combout\ : std_logic;
SIGNAL \InstructionFetch|list~2_combout\ : std_logic;
SIGNAL \InstructionFetch|list~0_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr4~0_combout\ : std_logic;
SIGNAL \DataPath|Decoder1~0_combout\ : std_logic;
SIGNAL \DataPath|regs[0][1]~q\ : std_logic;
SIGNAL \DataPath|num2~38_combout\ : std_logic;
SIGNAL \ControlUnit|Decoder0~0_combout\ : std_logic;
SIGNAL \DataPath|regs[1][1]~q\ : std_logic;
SIGNAL \DataPath|num2~37_combout\ : std_logic;
SIGNAL \ControlUnit|WideOr2~0_combout\ : std_logic;
SIGNAL \DataPath|num2~35_combout\ : std_logic;
SIGNAL \DataPath|writememdata[0]~0_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~4_combout\ : std_logic;
SIGNAL \DataPath|Add3~0_combout\ : std_logic;
SIGNAL \DataPath|Add2~0_combout\ : std_logic;
SIGNAL \DataPath|memaddr~9_combout\ : std_logic;
SIGNAL \DataPath|memaddr[4]~1_combout\ : std_logic;
SIGNAL \RAM|RAM[6][1]~feeder_combout\ : std_logic;
SIGNAL \DataPath|Add2~1\ : std_logic;
SIGNAL \DataPath|Add2~2_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~3_combout\ : std_logic;
SIGNAL \DataPath|Add3~1\ : std_logic;
SIGNAL \DataPath|Add3~2_combout\ : std_logic;
SIGNAL \DataPath|stackPointer[1]~11_combout\ : std_logic;
SIGNAL \DataPath|Add2~3\ : std_logic;
SIGNAL \DataPath|Add2~4_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~2_combout\ : std_logic;
SIGNAL \DataPath|Add3~3\ : std_logic;
SIGNAL \DataPath|Add3~4_combout\ : std_logic;
SIGNAL \DataPath|memaddr~8_combout\ : std_logic;
SIGNAL \DataPath|memaddr~10_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~1_combout\ : std_logic;
SIGNAL \DataPath|Add3~5\ : std_logic;
SIGNAL \DataPath|Add3~6_combout\ : std_logic;
SIGNAL \DataPath|stackPointer[3]~10_combout\ : std_logic;
SIGNAL \DataPath|Add2~5\ : std_logic;
SIGNAL \DataPath|Add2~6_combout\ : std_logic;
SIGNAL \DataPath|memaddr~7_combout\ : std_logic;
SIGNAL \DataPath|writemem~q\ : std_logic;
SIGNAL \DataPath|stackPointer~8_combout\ : std_logic;
SIGNAL \DataPath|Add3~7\ : std_logic;
SIGNAL \DataPath|Add3~8_combout\ : std_logic;
SIGNAL \DataPath|Add2~7\ : std_logic;
SIGNAL \DataPath|Add2~8_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~0_combout\ : std_logic;
SIGNAL \DataPath|Add3~9\ : std_logic;
SIGNAL \DataPath|Add3~10_combout\ : std_logic;
SIGNAL \DataPath|Add2~9\ : std_logic;
SIGNAL \DataPath|Add2~10_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~5_combout\ : std_logic;
SIGNAL \DataPath|Add3~11\ : std_logic;
SIGNAL \DataPath|Add3~12_combout\ : std_logic;
SIGNAL \DataPath|Add2~11\ : std_logic;
SIGNAL \DataPath|Add2~12_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~6_combout\ : std_logic;
SIGNAL \DataPath|Add3~13\ : std_logic;
SIGNAL \DataPath|Add3~14_combout\ : std_logic;
SIGNAL \DataPath|Add2~13\ : std_logic;
SIGNAL \DataPath|Add2~14_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~7_combout\ : std_logic;
SIGNAL \DataPath|Add3~15\ : std_logic;
SIGNAL \DataPath|Add3~16_combout\ : std_logic;
SIGNAL \DataPath|Add2~15\ : std_logic;
SIGNAL \DataPath|Add2~16_combout\ : std_logic;
SIGNAL \DataPath|memaddr~5_combout\ : std_logic;
SIGNAL \DataPath|Add2~17\ : std_logic;
SIGNAL \DataPath|Add2~18_combout\ : std_logic;
SIGNAL \DataPath|stackPointer~9_combout\ : std_logic;
SIGNAL \DataPath|Add3~17\ : std_logic;
SIGNAL \DataPath|Add3~18_combout\ : std_logic;
SIGNAL \DataPath|memaddr~6_combout\ : std_logic;
SIGNAL \RAM|LessThan0~1_combout\ : std_logic;
SIGNAL \DataPath|memaddr~4_combout\ : std_logic;
SIGNAL \DataPath|memaddr~2_combout\ : std_logic;
SIGNAL \DataPath|memaddr~0_combout\ : std_logic;
SIGNAL \DataPath|memaddr~3_combout\ : std_logic;
SIGNAL \RAM|LessThan0~0_combout\ : std_logic;
SIGNAL \RAM|RAM[7][0]~0_combout\ : std_logic;
SIGNAL \RAM|RAM[6][0]~10_combout\ : std_logic;
SIGNAL \RAM|RAM[6][1]~q\ : std_logic;
SIGNAL \RAM|RAM[4][0]~11_combout\ : std_logic;
SIGNAL \RAM|RAM[4][1]~q\ : std_logic;
SIGNAL \DataPath|towrite~16_combout\ : std_logic;
SIGNAL \RAM|RAM[7][0]~12_combout\ : std_logic;
SIGNAL \RAM|RAM[7][1]~q\ : std_logic;
SIGNAL \RAM|RAM[5][1]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][0]~9_combout\ : std_logic;
SIGNAL \RAM|RAM[5][1]~q\ : std_logic;
SIGNAL \DataPath|towrite~17_combout\ : std_logic;
SIGNAL \DataPath|towrite~0_combout\ : std_logic;
SIGNAL \DataPath|towrite~4_combout\ : std_logic;
SIGNAL \DataPath|towrite~1_combout\ : std_logic;
SIGNAL \RAM|Decoder0~0_combout\ : std_logic;
SIGNAL \RAM|RAM[10][0]~2_combout\ : std_logic;
SIGNAL \RAM|RAM[8][0]~7_combout\ : std_logic;
SIGNAL \RAM|RAM[8][1]~q\ : std_logic;
SIGNAL \RAM|RAM[9][1]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][0]~3_combout\ : std_logic;
SIGNAL \RAM|RAM[9][1]~q\ : std_logic;
SIGNAL \DataPath|towrite~13_combout\ : std_logic;
SIGNAL \RAM|RAM[10][0]~8_combout\ : std_logic;
SIGNAL \RAM|RAM[10][1]~q\ : std_logic;
SIGNAL \RAM|RAM[2][1]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][0]~4_combout\ : std_logic;
SIGNAL \RAM|RAM[2][1]~q\ : std_logic;
SIGNAL \RAM|RAM[3][0]~6_combout\ : std_logic;
SIGNAL \RAM|RAM[3][1]~q\ : std_logic;
SIGNAL \RAM|RAM~13_combout\ : std_logic;
SIGNAL \RAM|Decoder0~1_combout\ : std_logic;
SIGNAL \RAM|RAM[1][17]~14_combout\ : std_logic;
SIGNAL \RAM|RAM[1][1]~q\ : std_logic;
SIGNAL \DataPath|towrite~11_combout\ : std_logic;
SIGNAL \DataPath|towrite~12_combout\ : std_logic;
SIGNAL \DataPath|towrite~14_combout\ : std_logic;
SIGNAL \DataPath|Mux127~0_combout\ : std_logic;
SIGNAL \DataPath|Add0~60_combout\ : std_logic;
SIGNAL \DataPath|Add0~190_combout\ : std_logic;
SIGNAL \DataPath|regs[1][0]~q\ : std_logic;
SIGNAL \DataPath|regs[0][0]~q\ : std_logic;
SIGNAL \InstructionFetch|list~1_combout\ : std_logic;
SIGNAL \DataPath|num2~0_combout\ : std_logic;
SIGNAL \DataPath|num2~34_combout\ : std_logic;
SIGNAL \DataPath|writememdata[0]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][0]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][0]~q\ : std_logic;
SIGNAL \RAM|RAM[7][0]~q\ : std_logic;
SIGNAL \RAM|RAM[6][0]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][0]~q\ : std_logic;
SIGNAL \RAM|RAM[4][0]~q\ : std_logic;
SIGNAL \DataPath|towrite~8_combout\ : std_logic;
SIGNAL \DataPath|towrite~9_combout\ : std_logic;
SIGNAL \DataPath|Add0~61_combout\ : std_logic;
SIGNAL \DataPath|Add0~63_cout\ : std_logic;
SIGNAL \DataPath|Add0~64_combout\ : std_logic;
SIGNAL \DataPath|Add0~66_combout\ : std_logic;
SIGNAL \RAM|RAM[9][0]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][0]~q\ : std_logic;
SIGNAL \RAM|RAM[10][0]~q\ : std_logic;
SIGNAL \RAM|RAM[8][0]~q\ : std_logic;
SIGNAL \RAM|RAM[2][0]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][0]~q\ : std_logic;
SIGNAL \RAM|RAM[3][0]~q\ : std_logic;
SIGNAL \RAM|RAM~5_combout\ : std_logic;
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
SIGNAL \RAM|RAM[0][0]~1_combout\ : std_logic;
SIGNAL \RAM|RAM[0][0]~q\ : std_logic;
SIGNAL \DataPath|towrite~2_combout\ : std_logic;
SIGNAL \DataPath|towrite~3_combout\ : std_logic;
SIGNAL \DataPath|towrite~5_combout\ : std_logic;
SIGNAL \DataPath|towrite~6_combout\ : std_logic;
SIGNAL \DataPath|towrite~7_combout\ : std_logic;
SIGNAL \DataPath|towrite~10_combout\ : std_logic;
SIGNAL \DataPath|regs[3][0]~q\ : std_logic;
SIGNAL \DataPath|Mux63~2_combout\ : std_logic;
SIGNAL \DataPath|Mux63~0_combout\ : std_logic;
SIGNAL \DataPath|Mux63~1_combout\ : std_logic;
SIGNAL \DataPath|Mux63~3_combout\ : std_logic;
SIGNAL \DataPath|Add0~65\ : std_logic;
SIGNAL \DataPath|Add0~67_combout\ : std_logic;
SIGNAL \DataPath|Add0~69_combout\ : std_logic;
SIGNAL \DataPath|towrite~15_combout\ : std_logic;
SIGNAL \DataPath|towrite~18_combout\ : std_logic;
SIGNAL \DataPath|regs[3][1]~q\ : std_logic;
SIGNAL \DataPath|Mux62~0_combout\ : std_logic;
SIGNAL \DataPath|Mux62~1_combout\ : std_logic;
SIGNAL \DataPath|writememdata[1]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[0][1]~q\ : std_logic;
SIGNAL \DataPath|regs[1][3]~q\ : std_logic;
SIGNAL \DataPath|num2~2_combout\ : std_logic;
SIGNAL \DataPath|num2~36_combout\ : std_logic;
SIGNAL \RAM|RAM[5][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][3]~q\ : std_logic;
SIGNAL \RAM|RAM[7][3]~q\ : std_logic;
SIGNAL \RAM|RAM[4][3]~q\ : std_logic;
SIGNAL \RAM|RAM[6][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][3]~q\ : std_logic;
SIGNAL \DataPath|towrite~32_combout\ : std_logic;
SIGNAL \DataPath|towrite~33_combout\ : std_logic;
SIGNAL \DataPath|Add0~73_combout\ : std_logic;
SIGNAL \DataPath|regs[1][2]~q\ : std_logic;
SIGNAL \DataPath|regs[3][2]~q\ : std_logic;
SIGNAL \DataPath|Mux61~0_combout\ : std_logic;
SIGNAL \DataPath|Mux61~1_combout\ : std_logic;
SIGNAL \DataPath|writememdata[2]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][2]~q\ : std_logic;
SIGNAL \RAM|RAM[7][2]~q\ : std_logic;
SIGNAL \RAM|RAM[4][2]~q\ : std_logic;
SIGNAL \RAM|RAM[6][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][2]~q\ : std_logic;
SIGNAL \DataPath|towrite~24_combout\ : std_logic;
SIGNAL \DataPath|towrite~25_combout\ : std_logic;
SIGNAL \DataPath|Add0~68\ : std_logic;
SIGNAL \DataPath|Add0~70_combout\ : std_logic;
SIGNAL \DataPath|Add0~72_combout\ : std_logic;
SIGNAL \RAM|RAM[9][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][2]~q\ : std_logic;
SIGNAL \RAM|RAM[10][2]~q\ : std_logic;
SIGNAL \RAM|RAM[8][2]~q\ : std_logic;
SIGNAL \RAM|RAM[2][2]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][2]~q\ : std_logic;
SIGNAL \RAM|RAM[3][2]~q\ : std_logic;
SIGNAL \RAM|RAM[0][2]~q\ : std_logic;
SIGNAL \RAM|RAM~15_combout\ : std_logic;
SIGNAL \RAM|RAM[1][2]~q\ : std_logic;
SIGNAL \DataPath|towrite~19_combout\ : std_logic;
SIGNAL \DataPath|towrite~20_combout\ : std_logic;
SIGNAL \DataPath|towrite~21_combout\ : std_logic;
SIGNAL \DataPath|towrite~22_combout\ : std_logic;
SIGNAL \DataPath|towrite~23_combout\ : std_logic;
SIGNAL \DataPath|towrite~26_combout\ : std_logic;
SIGNAL \DataPath|regs[0][2]~q\ : std_logic;
SIGNAL \DataPath|num2~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~161_combout\ : std_logic;
SIGNAL \DataPath|Add0~71\ : std_logic;
SIGNAL \DataPath|Add0~74_combout\ : std_logic;
SIGNAL \DataPath|Add0~76_combout\ : std_logic;
SIGNAL \RAM|RAM[8][3]~q\ : std_logic;
SIGNAL \RAM|RAM[9][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][3]~q\ : std_logic;
SIGNAL \DataPath|towrite~29_combout\ : std_logic;
SIGNAL \RAM|RAM[10][3]~q\ : std_logic;
SIGNAL \RAM|RAM[2][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][3]~q\ : std_logic;
SIGNAL \RAM|RAM[3][3]~q\ : std_logic;
SIGNAL \RAM|RAM~16_combout\ : std_logic;
SIGNAL \RAM|RAM[1][3]~q\ : std_logic;
SIGNAL \DataPath|towrite~27_combout\ : std_logic;
SIGNAL \DataPath|towrite~28_combout\ : std_logic;
SIGNAL \DataPath|towrite~30_combout\ : std_logic;
SIGNAL \DataPath|towrite~31_combout\ : std_logic;
SIGNAL \DataPath|towrite~34_combout\ : std_logic;
SIGNAL \DataPath|regs[0][3]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[0][3]~q\ : std_logic;
SIGNAL \DataPath|regs[3][3]~q\ : std_logic;
SIGNAL \DataPath|Mux60~0_combout\ : std_logic;
SIGNAL \DataPath|Mux60~1_combout\ : std_logic;
SIGNAL \RAM|RAM[0][3]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[0][3]~q\ : std_logic;
SIGNAL \RAM|comb_4|WideOr6~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr5~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr4~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr3~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr2~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr1~0_combout\ : std_logic;
SIGNAL \RAM|comb_4|WideOr0~0_combout\ : std_logic;
SIGNAL \DataPath|regs[1][4]~q\ : std_logic;
SIGNAL \DataPath|regs[3][4]~q\ : std_logic;
SIGNAL \DataPath|Mux59~0_combout\ : std_logic;
SIGNAL \DataPath|Mux59~1_combout\ : std_logic;
SIGNAL \DataPath|writememdata[4]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][4]~q\ : std_logic;
SIGNAL \RAM|RAM[4][4]~q\ : std_logic;
SIGNAL \DataPath|towrite~40_combout\ : std_logic;
SIGNAL \RAM|RAM[7][4]~q\ : std_logic;
SIGNAL \RAM|RAM[5][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][4]~q\ : std_logic;
SIGNAL \DataPath|towrite~41_combout\ : std_logic;
SIGNAL \RAM|RAM[9][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][4]~q\ : std_logic;
SIGNAL \RAM|RAM[10][4]~q\ : std_logic;
SIGNAL \RAM|RAM[8][4]~q\ : std_logic;
SIGNAL \RAM|RAM[2][4]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][4]~q\ : std_logic;
SIGNAL \RAM|RAM[3][4]~q\ : std_logic;
SIGNAL \RAM|RAM[0][4]~q\ : std_logic;
SIGNAL \RAM|RAM~17_combout\ : std_logic;
SIGNAL \RAM|RAM[1][4]~q\ : std_logic;
SIGNAL \DataPath|towrite~35_combout\ : std_logic;
SIGNAL \DataPath|towrite~36_combout\ : std_logic;
SIGNAL \DataPath|towrite~37_combout\ : std_logic;
SIGNAL \DataPath|towrite~38_combout\ : std_logic;
SIGNAL \DataPath|towrite~39_combout\ : std_logic;
SIGNAL \DataPath|towrite~42_combout\ : std_logic;
SIGNAL \DataPath|regs[0][4]~q\ : std_logic;
SIGNAL \DataPath|num2~3_combout\ : std_logic;
SIGNAL \DataPath|Add0~162_combout\ : std_logic;
SIGNAL \DataPath|Add0~75\ : std_logic;
SIGNAL \DataPath|Add0~77_combout\ : std_logic;
SIGNAL \DataPath|Add0~79_combout\ : std_logic;
SIGNAL \DataPath|writememdata[5]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][5]~q\ : std_logic;
SIGNAL \RAM|RAM[7][5]~q\ : std_logic;
SIGNAL \RAM|RAM[6][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][5]~q\ : std_logic;
SIGNAL \RAM|RAM[4][5]~q\ : std_logic;
SIGNAL \DataPath|towrite~48_combout\ : std_logic;
SIGNAL \DataPath|towrite~49_combout\ : std_logic;
SIGNAL \DataPath|regs[1][5]~q\ : std_logic;
SIGNAL \DataPath|num2~4_combout\ : std_logic;
SIGNAL \RAM|RAM[9][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][5]~q\ : std_logic;
SIGNAL \RAM|RAM[8][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[8][5]~q\ : std_logic;
SIGNAL \DataPath|towrite~45_combout\ : std_logic;
SIGNAL \RAM|RAM[10][5]~q\ : std_logic;
SIGNAL \RAM|RAM[2][5]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][5]~q\ : std_logic;
SIGNAL \RAM|RAM[3][5]~q\ : std_logic;
SIGNAL \RAM|RAM[0][5]~q\ : std_logic;
SIGNAL \RAM|RAM~18_combout\ : std_logic;
SIGNAL \RAM|RAM[1][5]~q\ : std_logic;
SIGNAL \DataPath|towrite~43_combout\ : std_logic;
SIGNAL \DataPath|towrite~44_combout\ : std_logic;
SIGNAL \DataPath|towrite~46_combout\ : std_logic;
SIGNAL \DataPath|towrite~47_combout\ : std_logic;
SIGNAL \DataPath|towrite~50_combout\ : std_logic;
SIGNAL \DataPath|regs[0][5]~q\ : std_logic;
SIGNAL \DataPath|regs[3][5]~q\ : std_logic;
SIGNAL \DataPath|Mux58~0_combout\ : std_logic;
SIGNAL \DataPath|Mux58~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~163_combout\ : std_logic;
SIGNAL \DataPath|Add0~78\ : std_logic;
SIGNAL \DataPath|Add0~80_combout\ : std_logic;
SIGNAL \DataPath|Add0~82_combout\ : std_logic;
SIGNAL \DataPath|regs[1][6]~q\ : std_logic;
SIGNAL \DataPath|regs[3][6]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[3][6]~q\ : std_logic;
SIGNAL \DataPath|Mux57~0_combout\ : std_logic;
SIGNAL \DataPath|Mux57~1_combout\ : std_logic;
SIGNAL \RAM|RAM[5][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][6]~q\ : std_logic;
SIGNAL \RAM|RAM[7][6]~q\ : std_logic;
SIGNAL \RAM|RAM[6][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][6]~q\ : std_logic;
SIGNAL \RAM|RAM[4][6]~q\ : std_logic;
SIGNAL \DataPath|towrite~56_combout\ : std_logic;
SIGNAL \DataPath|towrite~57_combout\ : std_logic;
SIGNAL \RAM|RAM[9][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][6]~q\ : std_logic;
SIGNAL \RAM|RAM[10][6]~q\ : std_logic;
SIGNAL \RAM|RAM[8][6]~q\ : std_logic;
SIGNAL \RAM|RAM[2][6]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][6]~q\ : std_logic;
SIGNAL \RAM|RAM[3][6]~q\ : std_logic;
SIGNAL \RAM|RAM[0][6]~q\ : std_logic;
SIGNAL \RAM|RAM~19_combout\ : std_logic;
SIGNAL \RAM|RAM[1][6]~q\ : std_logic;
SIGNAL \DataPath|towrite~51_combout\ : std_logic;
SIGNAL \DataPath|towrite~52_combout\ : std_logic;
SIGNAL \DataPath|towrite~53_combout\ : std_logic;
SIGNAL \DataPath|towrite~54_combout\ : std_logic;
SIGNAL \DataPath|towrite~55_combout\ : std_logic;
SIGNAL \DataPath|towrite~58_combout\ : std_logic;
SIGNAL \DataPath|regs[0][6]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[0][6]~q\ : std_logic;
SIGNAL \DataPath|num2~6_combout\ : std_logic;
SIGNAL \DataPath|num2~5_combout\ : std_logic;
SIGNAL \DataPath|num2~7_combout\ : std_logic;
SIGNAL \DataPath|Add0~164_combout\ : std_logic;
SIGNAL \DataPath|Add0~81\ : std_logic;
SIGNAL \DataPath|Add0~83_combout\ : std_logic;
SIGNAL \DataPath|Add0~85_combout\ : std_logic;
SIGNAL \RAM|RAM[5][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][7]~q\ : std_logic;
SIGNAL \RAM|RAM[7][7]~q\ : std_logic;
SIGNAL \RAM|RAM[4][7]~q\ : std_logic;
SIGNAL \RAM|RAM[6][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][7]~q\ : std_logic;
SIGNAL \DataPath|towrite~64_combout\ : std_logic;
SIGNAL \DataPath|towrite~65_combout\ : std_logic;
SIGNAL \DataPath|regs[1][7]~q\ : std_logic;
SIGNAL \DataPath|num2~8_combout\ : std_logic;
SIGNAL \RAM|RAM[8][7]~q\ : std_logic;
SIGNAL \RAM|RAM[9][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][7]~q\ : std_logic;
SIGNAL \DataPath|towrite~61_combout\ : std_logic;
SIGNAL \RAM|RAM[10][7]~q\ : std_logic;
SIGNAL \RAM|RAM[2][7]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][7]~q\ : std_logic;
SIGNAL \RAM|RAM[3][7]~q\ : std_logic;
SIGNAL \RAM|RAM[0][7]~q\ : std_logic;
SIGNAL \RAM|RAM~20_combout\ : std_logic;
SIGNAL \RAM|RAM[1][7]~q\ : std_logic;
SIGNAL \DataPath|towrite~59_combout\ : std_logic;
SIGNAL \DataPath|towrite~60_combout\ : std_logic;
SIGNAL \DataPath|towrite~62_combout\ : std_logic;
SIGNAL \DataPath|towrite~63_combout\ : std_logic;
SIGNAL \DataPath|towrite~66_combout\ : std_logic;
SIGNAL \DataPath|regs[0][7]~q\ : std_logic;
SIGNAL \DataPath|regs[3][7]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[3][7]~q\ : std_logic;
SIGNAL \DataPath|Mux56~0_combout\ : std_logic;
SIGNAL \DataPath|Mux56~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~165_combout\ : std_logic;
SIGNAL \DataPath|Add0~84\ : std_logic;
SIGNAL \DataPath|Add0~86_combout\ : std_logic;
SIGNAL \DataPath|Add0~88_combout\ : std_logic;
SIGNAL \RAM|RAM[5][8]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][8]~q\ : std_logic;
SIGNAL \RAM|RAM[7][8]~q\ : std_logic;
SIGNAL \RAM|RAM[6][8]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][8]~q\ : std_logic;
SIGNAL \RAM|RAM[4][8]~q\ : std_logic;
SIGNAL \DataPath|towrite~72_combout\ : std_logic;
SIGNAL \DataPath|towrite~73_combout\ : std_logic;
SIGNAL \DataPath|regs[1][8]~q\ : std_logic;
SIGNAL \DataPath|num2~9_combout\ : std_logic;
SIGNAL \RAM|RAM[9][8]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][8]~q\ : std_logic;
SIGNAL \RAM|RAM[10][8]~q\ : std_logic;
SIGNAL \RAM|RAM[8][8]~q\ : std_logic;
SIGNAL \RAM|RAM[2][8]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][8]~q\ : std_logic;
SIGNAL \RAM|RAM[3][8]~q\ : std_logic;
SIGNAL \RAM|RAM[0][8]~q\ : std_logic;
SIGNAL \RAM|RAM~21_combout\ : std_logic;
SIGNAL \RAM|RAM[1][8]~q\ : std_logic;
SIGNAL \DataPath|towrite~67_combout\ : std_logic;
SIGNAL \DataPath|towrite~68_combout\ : std_logic;
SIGNAL \DataPath|towrite~69_combout\ : std_logic;
SIGNAL \DataPath|towrite~70_combout\ : std_logic;
SIGNAL \DataPath|towrite~71_combout\ : std_logic;
SIGNAL \DataPath|towrite~74_combout\ : std_logic;
SIGNAL \DataPath|regs[0][8]~q\ : std_logic;
SIGNAL \DataPath|regs[3][8]~q\ : std_logic;
SIGNAL \DataPath|Mux55~0_combout\ : std_logic;
SIGNAL \DataPath|Mux55~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~166_combout\ : std_logic;
SIGNAL \DataPath|Add0~87\ : std_logic;
SIGNAL \DataPath|Add0~89_combout\ : std_logic;
SIGNAL \DataPath|Add0~91_combout\ : std_logic;
SIGNAL \DataPath|regs[1][9]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[1][9]~q\ : std_logic;
SIGNAL \DataPath|num2~10_combout\ : std_logic;
SIGNAL \RAM|RAM[4][9]~q\ : std_logic;
SIGNAL \RAM|RAM[6][9]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][9]~q\ : std_logic;
SIGNAL \DataPath|towrite~80_combout\ : std_logic;
SIGNAL \RAM|RAM[7][9]~q\ : std_logic;
SIGNAL \RAM|RAM[5][9]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][9]~q\ : std_logic;
SIGNAL \DataPath|towrite~81_combout\ : std_logic;
SIGNAL \RAM|RAM[9][9]~q\ : std_logic;
SIGNAL \RAM|RAM[8][9]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[8][9]~q\ : std_logic;
SIGNAL \DataPath|towrite~77_combout\ : std_logic;
SIGNAL \RAM|RAM[10][9]~q\ : std_logic;
SIGNAL \RAM|RAM[0][9]~q\ : std_logic;
SIGNAL \RAM|RAM~22_combout\ : std_logic;
SIGNAL \RAM|RAM[1][9]~q\ : std_logic;
SIGNAL \DataPath|towrite~75_combout\ : std_logic;
SIGNAL \RAM|RAM[3][9]~q\ : std_logic;
SIGNAL \RAM|RAM[2][9]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][9]~q\ : std_logic;
SIGNAL \DataPath|towrite~76_combout\ : std_logic;
SIGNAL \DataPath|towrite~78_combout\ : std_logic;
SIGNAL \DataPath|towrite~79_combout\ : std_logic;
SIGNAL \DataPath|towrite~82_combout\ : std_logic;
SIGNAL \DataPath|regs[0][9]~q\ : std_logic;
SIGNAL \DataPath|regs[3][9]~q\ : std_logic;
SIGNAL \DataPath|Mux54~0_combout\ : std_logic;
SIGNAL \DataPath|Mux54~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~167_combout\ : std_logic;
SIGNAL \DataPath|Add0~90\ : std_logic;
SIGNAL \DataPath|Add0~92_combout\ : std_logic;
SIGNAL \DataPath|Add0~94_combout\ : std_logic;
SIGNAL \RAM|RAM[4][10]~q\ : std_logic;
SIGNAL \RAM|RAM[6][10]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][10]~q\ : std_logic;
SIGNAL \DataPath|towrite~88_combout\ : std_logic;
SIGNAL \RAM|RAM[7][10]~q\ : std_logic;
SIGNAL \RAM|RAM[5][10]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][10]~q\ : std_logic;
SIGNAL \DataPath|towrite~89_combout\ : std_logic;
SIGNAL \DataPath|regs[0][10]~q\ : std_logic;
SIGNAL \DataPath|num2~11_combout\ : std_logic;
SIGNAL \RAM|RAM[9][10]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][10]~q\ : std_logic;
SIGNAL \RAM|RAM[10][10]~q\ : std_logic;
SIGNAL \RAM|RAM[8][10]~q\ : std_logic;
SIGNAL \RAM|RAM[2][10]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][10]~q\ : std_logic;
SIGNAL \RAM|RAM[3][10]~q\ : std_logic;
SIGNAL \RAM|RAM[0][10]~q\ : std_logic;
SIGNAL \RAM|RAM~23_combout\ : std_logic;
SIGNAL \RAM|RAM[1][10]~q\ : std_logic;
SIGNAL \DataPath|towrite~83_combout\ : std_logic;
SIGNAL \DataPath|towrite~84_combout\ : std_logic;
SIGNAL \DataPath|towrite~85_combout\ : std_logic;
SIGNAL \DataPath|towrite~86_combout\ : std_logic;
SIGNAL \DataPath|towrite~87_combout\ : std_logic;
SIGNAL \DataPath|towrite~90_combout\ : std_logic;
SIGNAL \DataPath|regs[1][10]~q\ : std_logic;
SIGNAL \DataPath|regs[3][10]~q\ : std_logic;
SIGNAL \DataPath|Mux53~0_combout\ : std_logic;
SIGNAL \DataPath|Mux53~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~168_combout\ : std_logic;
SIGNAL \DataPath|Add0~93\ : std_logic;
SIGNAL \DataPath|Add0~95_combout\ : std_logic;
SIGNAL \DataPath|Add0~97_combout\ : std_logic;
SIGNAL \DataPath|regs[1][11]~q\ : std_logic;
SIGNAL \DataPath|num2~12_combout\ : std_logic;
SIGNAL \RAM|RAM[5][11]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][11]~q\ : std_logic;
SIGNAL \RAM|RAM[7][11]~q\ : std_logic;
SIGNAL \RAM|RAM[4][11]~q\ : std_logic;
SIGNAL \RAM|RAM[6][11]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][11]~q\ : std_logic;
SIGNAL \DataPath|towrite~96_combout\ : std_logic;
SIGNAL \DataPath|towrite~97_combout\ : std_logic;
SIGNAL \RAM|RAM[10][11]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][11]~q\ : std_logic;
SIGNAL \RAM|RAM[8][11]~q\ : std_logic;
SIGNAL \RAM|RAM[9][11]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][11]~q\ : std_logic;
SIGNAL \DataPath|towrite~93_combout\ : std_logic;
SIGNAL \RAM|RAM[2][11]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][11]~q\ : std_logic;
SIGNAL \RAM|RAM[3][11]~q\ : std_logic;
SIGNAL \RAM|RAM[0][11]~q\ : std_logic;
SIGNAL \RAM|RAM~24_combout\ : std_logic;
SIGNAL \RAM|RAM[1][11]~q\ : std_logic;
SIGNAL \DataPath|towrite~91_combout\ : std_logic;
SIGNAL \DataPath|towrite~92_combout\ : std_logic;
SIGNAL \DataPath|towrite~94_combout\ : std_logic;
SIGNAL \DataPath|towrite~95_combout\ : std_logic;
SIGNAL \DataPath|towrite~98_combout\ : std_logic;
SIGNAL \DataPath|regs[0][11]~q\ : std_logic;
SIGNAL \DataPath|regs[3][11]~q\ : std_logic;
SIGNAL \DataPath|Mux52~0_combout\ : std_logic;
SIGNAL \DataPath|Mux52~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~169_combout\ : std_logic;
SIGNAL \DataPath|Add0~96\ : std_logic;
SIGNAL \DataPath|Add0~98_combout\ : std_logic;
SIGNAL \DataPath|Add0~100_combout\ : std_logic;
SIGNAL \RAM|RAM[5][12]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][12]~q\ : std_logic;
SIGNAL \RAM|RAM[7][12]~q\ : std_logic;
SIGNAL \RAM|RAM[4][12]~q\ : std_logic;
SIGNAL \RAM|RAM[6][12]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][12]~q\ : std_logic;
SIGNAL \DataPath|towrite~104_combout\ : std_logic;
SIGNAL \DataPath|towrite~105_combout\ : std_logic;
SIGNAL \DataPath|regs[1][12]~q\ : std_logic;
SIGNAL \DataPath|num2~13_combout\ : std_logic;
SIGNAL \RAM|RAM[9][12]~q\ : std_logic;
SIGNAL \RAM|RAM[10][12]~q\ : std_logic;
SIGNAL \RAM|RAM[8][12]~q\ : std_logic;
SIGNAL \RAM|RAM[0][12]~q\ : std_logic;
SIGNAL \RAM|RAM~25_combout\ : std_logic;
SIGNAL \RAM|RAM[1][12]~q\ : std_logic;
SIGNAL \DataPath|towrite~99_combout\ : std_logic;
SIGNAL \RAM|RAM[3][12]~q\ : std_logic;
SIGNAL \RAM|RAM[2][12]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][12]~q\ : std_logic;
SIGNAL \DataPath|towrite~100_combout\ : std_logic;
SIGNAL \DataPath|towrite~101_combout\ : std_logic;
SIGNAL \DataPath|towrite~102_combout\ : std_logic;
SIGNAL \DataPath|towrite~103_combout\ : std_logic;
SIGNAL \DataPath|towrite~106_combout\ : std_logic;
SIGNAL \DataPath|regs[0][12]~q\ : std_logic;
SIGNAL \DataPath|regs[3][12]~q\ : std_logic;
SIGNAL \DataPath|Mux51~0_combout\ : std_logic;
SIGNAL \DataPath|Mux51~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~170_combout\ : std_logic;
SIGNAL \DataPath|Add0~99\ : std_logic;
SIGNAL \DataPath|Add0~101_combout\ : std_logic;
SIGNAL \DataPath|Add0~103_combout\ : std_logic;
SIGNAL \RAM|RAM[5][13]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][13]~q\ : std_logic;
SIGNAL \RAM|RAM[7][13]~q\ : std_logic;
SIGNAL \RAM|RAM[4][13]~q\ : std_logic;
SIGNAL \RAM|RAM[6][13]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][13]~q\ : std_logic;
SIGNAL \DataPath|towrite~112_combout\ : std_logic;
SIGNAL \DataPath|towrite~113_combout\ : std_logic;
SIGNAL \DataPath|regs[1][13]~q\ : std_logic;
SIGNAL \DataPath|num2~14_combout\ : std_logic;
SIGNAL \RAM|RAM[10][13]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][13]~q\ : std_logic;
SIGNAL \RAM|RAM[9][13]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][13]~q\ : std_logic;
SIGNAL \RAM|RAM[8][13]~q\ : std_logic;
SIGNAL \DataPath|towrite~109_combout\ : std_logic;
SIGNAL \RAM|RAM[0][13]~q\ : std_logic;
SIGNAL \RAM|RAM~26_combout\ : std_logic;
SIGNAL \RAM|RAM[1][13]~q\ : std_logic;
SIGNAL \DataPath|towrite~107_combout\ : std_logic;
SIGNAL \RAM|RAM[3][13]~q\ : std_logic;
SIGNAL \RAM|RAM[2][13]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][13]~q\ : std_logic;
SIGNAL \DataPath|towrite~108_combout\ : std_logic;
SIGNAL \DataPath|towrite~110_combout\ : std_logic;
SIGNAL \DataPath|towrite~111_combout\ : std_logic;
SIGNAL \DataPath|towrite~114_combout\ : std_logic;
SIGNAL \DataPath|regs[0][13]~q\ : std_logic;
SIGNAL \DataPath|regs[3][13]~q\ : std_logic;
SIGNAL \DataPath|Mux50~0_combout\ : std_logic;
SIGNAL \DataPath|Mux50~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~171_combout\ : std_logic;
SIGNAL \DataPath|Add0~102\ : std_logic;
SIGNAL \DataPath|Add0~104_combout\ : std_logic;
SIGNAL \DataPath|Add0~106_combout\ : std_logic;
SIGNAL \DataPath|regs[3][14]~q\ : std_logic;
SIGNAL \DataPath|regs[1][14]~q\ : std_logic;
SIGNAL \DataPath|Mux49~0_combout\ : std_logic;
SIGNAL \DataPath|Mux49~1_combout\ : std_logic;
SIGNAL \DataPath|writememdata[14]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][14]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][14]~q\ : std_logic;
SIGNAL \RAM|RAM[7][14]~q\ : std_logic;
SIGNAL \RAM|RAM[6][14]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][14]~q\ : std_logic;
SIGNAL \RAM|RAM[4][14]~q\ : std_logic;
SIGNAL \DataPath|towrite~120_combout\ : std_logic;
SIGNAL \DataPath|towrite~121_combout\ : std_logic;
SIGNAL \RAM|RAM[10][14]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][14]~q\ : std_logic;
SIGNAL \RAM|RAM[9][14]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][14]~q\ : std_logic;
SIGNAL \RAM|RAM[8][14]~q\ : std_logic;
SIGNAL \RAM|RAM[2][14]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][14]~q\ : std_logic;
SIGNAL \RAM|RAM[3][14]~q\ : std_logic;
SIGNAL \RAM|RAM~27_combout\ : std_logic;
SIGNAL \RAM|RAM[1][14]~q\ : std_logic;
SIGNAL \RAM|RAM[0][14]~q\ : std_logic;
SIGNAL \DataPath|towrite~115_combout\ : std_logic;
SIGNAL \DataPath|towrite~116_combout\ : std_logic;
SIGNAL \DataPath|towrite~117_combout\ : std_logic;
SIGNAL \DataPath|towrite~118_combout\ : std_logic;
SIGNAL \DataPath|towrite~119_combout\ : std_logic;
SIGNAL \DataPath|towrite~122_combout\ : std_logic;
SIGNAL \DataPath|regs[0][14]~q\ : std_logic;
SIGNAL \DataPath|num2~15_combout\ : std_logic;
SIGNAL \DataPath|Add0~172_combout\ : std_logic;
SIGNAL \DataPath|Add0~105\ : std_logic;
SIGNAL \DataPath|Add0~107_combout\ : std_logic;
SIGNAL \DataPath|Add0~109_combout\ : std_logic;
SIGNAL \RAM|RAM[4][15]~q\ : std_logic;
SIGNAL \RAM|RAM[6][15]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][15]~q\ : std_logic;
SIGNAL \DataPath|towrite~128_combout\ : std_logic;
SIGNAL \RAM|RAM[7][15]~q\ : std_logic;
SIGNAL \RAM|RAM[5][15]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][15]~q\ : std_logic;
SIGNAL \DataPath|towrite~129_combout\ : std_logic;
SIGNAL \DataPath|regs[1][15]~q\ : std_logic;
SIGNAL \DataPath|num2~16_combout\ : std_logic;
SIGNAL \RAM|RAM[10][15]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][15]~q\ : std_logic;
SIGNAL \RAM|RAM[8][15]~q\ : std_logic;
SIGNAL \RAM|RAM[9][15]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][15]~q\ : std_logic;
SIGNAL \DataPath|towrite~125_combout\ : std_logic;
SIGNAL \RAM|RAM~28_combout\ : std_logic;
SIGNAL \RAM|RAM[1][15]~q\ : std_logic;
SIGNAL \RAM|RAM[0][15]~q\ : std_logic;
SIGNAL \DataPath|towrite~123_combout\ : std_logic;
SIGNAL \RAM|RAM[3][15]~q\ : std_logic;
SIGNAL \RAM|RAM[2][15]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][15]~q\ : std_logic;
SIGNAL \DataPath|towrite~124_combout\ : std_logic;
SIGNAL \DataPath|towrite~126_combout\ : std_logic;
SIGNAL \DataPath|towrite~127_combout\ : std_logic;
SIGNAL \DataPath|towrite~130_combout\ : std_logic;
SIGNAL \DataPath|regs[0][15]~q\ : std_logic;
SIGNAL \DataPath|regs[3][15]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[3][15]~q\ : std_logic;
SIGNAL \DataPath|Mux48~0_combout\ : std_logic;
SIGNAL \DataPath|Mux48~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~173_combout\ : std_logic;
SIGNAL \DataPath|Add0~108\ : std_logic;
SIGNAL \DataPath|Add0~110_combout\ : std_logic;
SIGNAL \DataPath|Add0~112_combout\ : std_logic;
SIGNAL \DataPath|regs[1][16]~q\ : std_logic;
SIGNAL \DataPath|num2~17_combout\ : std_logic;
SIGNAL \RAM|RAM[6][16]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][16]~q\ : std_logic;
SIGNAL \RAM|RAM[4][16]~q\ : std_logic;
SIGNAL \DataPath|towrite~136_combout\ : std_logic;
SIGNAL \RAM|RAM[7][16]~q\ : std_logic;
SIGNAL \RAM|RAM[5][16]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][16]~q\ : std_logic;
SIGNAL \DataPath|towrite~137_combout\ : std_logic;
SIGNAL \RAM|RAM[10][16]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][16]~q\ : std_logic;
SIGNAL \RAM|RAM[8][16]~q\ : std_logic;
SIGNAL \RAM|RAM[2][16]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][16]~q\ : std_logic;
SIGNAL \RAM|RAM[3][16]~q\ : std_logic;
SIGNAL \RAM|RAM[0][16]~q\ : std_logic;
SIGNAL \RAM|RAM~29_combout\ : std_logic;
SIGNAL \RAM|RAM[1][16]~q\ : std_logic;
SIGNAL \DataPath|towrite~131_combout\ : std_logic;
SIGNAL \DataPath|towrite~132_combout\ : std_logic;
SIGNAL \DataPath|towrite~133_combout\ : std_logic;
SIGNAL \RAM|RAM[9][16]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][16]~q\ : std_logic;
SIGNAL \DataPath|towrite~134_combout\ : std_logic;
SIGNAL \DataPath|towrite~135_combout\ : std_logic;
SIGNAL \DataPath|towrite~138_combout\ : std_logic;
SIGNAL \DataPath|regs[0][16]~q\ : std_logic;
SIGNAL \DataPath|regs[3][16]~q\ : std_logic;
SIGNAL \DataPath|Mux47~0_combout\ : std_logic;
SIGNAL \DataPath|Mux47~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~174_combout\ : std_logic;
SIGNAL \DataPath|Add0~111\ : std_logic;
SIGNAL \DataPath|Add0~113_combout\ : std_logic;
SIGNAL \DataPath|Add0~115_combout\ : std_logic;
SIGNAL \RAM|RAM[5][17]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][17]~q\ : std_logic;
SIGNAL \RAM|RAM[7][17]~q\ : std_logic;
SIGNAL \RAM|RAM[6][17]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][17]~q\ : std_logic;
SIGNAL \RAM|RAM[4][17]~q\ : std_logic;
SIGNAL \DataPath|towrite~144_combout\ : std_logic;
SIGNAL \DataPath|towrite~145_combout\ : std_logic;
SIGNAL \RAM|RAM[9][17]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][17]~q\ : std_logic;
SIGNAL \RAM|RAM[8][17]~q\ : std_logic;
SIGNAL \DataPath|towrite~141_combout\ : std_logic;
SIGNAL \RAM|RAM[10][17]~q\ : std_logic;
SIGNAL \RAM|RAM~30_combout\ : std_logic;
SIGNAL \RAM|RAM[1][17]~q\ : std_logic;
SIGNAL \RAM|RAM[0][17]~q\ : std_logic;
SIGNAL \DataPath|towrite~139_combout\ : std_logic;
SIGNAL \RAM|RAM[3][17]~q\ : std_logic;
SIGNAL \RAM|RAM[2][17]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][17]~q\ : std_logic;
SIGNAL \DataPath|towrite~140_combout\ : std_logic;
SIGNAL \DataPath|towrite~142_combout\ : std_logic;
SIGNAL \DataPath|towrite~143_combout\ : std_logic;
SIGNAL \DataPath|regs[1][17]~q\ : std_logic;
SIGNAL \DataPath|num2~18_combout\ : std_logic;
SIGNAL \DataPath|towrite~146_combout\ : std_logic;
SIGNAL \DataPath|regs[0][17]~q\ : std_logic;
SIGNAL \DataPath|regs[3][17]~q\ : std_logic;
SIGNAL \DataPath|Mux46~0_combout\ : std_logic;
SIGNAL \DataPath|Mux46~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~175_combout\ : std_logic;
SIGNAL \DataPath|Add0~114\ : std_logic;
SIGNAL \DataPath|Add0~116_combout\ : std_logic;
SIGNAL \DataPath|Add0~118_combout\ : std_logic;
SIGNAL \DataPath|regs[1][18]~q\ : std_logic;
SIGNAL \DataPath|num2~19_combout\ : std_logic;
SIGNAL \DataPath|num2~20_combout\ : std_logic;
SIGNAL \RAM|RAM[6][18]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][18]~q\ : std_logic;
SIGNAL \RAM|RAM[4][18]~q\ : std_logic;
SIGNAL \DataPath|towrite~152_combout\ : std_logic;
SIGNAL \RAM|RAM[7][18]~q\ : std_logic;
SIGNAL \RAM|RAM[5][18]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][18]~q\ : std_logic;
SIGNAL \DataPath|towrite~153_combout\ : std_logic;
SIGNAL \RAM|RAM[10][18]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][18]~q\ : std_logic;
SIGNAL \RAM|RAM[9][18]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][18]~q\ : std_logic;
SIGNAL \RAM|RAM[8][18]~q\ : std_logic;
SIGNAL \RAM|RAM[2][18]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][18]~q\ : std_logic;
SIGNAL \RAM|RAM[3][18]~q\ : std_logic;
SIGNAL \RAM|RAM[0][18]~q\ : std_logic;
SIGNAL \RAM|RAM~31_combout\ : std_logic;
SIGNAL \RAM|RAM[1][18]~q\ : std_logic;
SIGNAL \DataPath|towrite~147_combout\ : std_logic;
SIGNAL \DataPath|towrite~148_combout\ : std_logic;
SIGNAL \DataPath|towrite~149_combout\ : std_logic;
SIGNAL \DataPath|towrite~150_combout\ : std_logic;
SIGNAL \DataPath|towrite~151_combout\ : std_logic;
SIGNAL \DataPath|towrite~154_combout\ : std_logic;
SIGNAL \DataPath|regs[0][18]~q\ : std_logic;
SIGNAL \DataPath|regs[3][18]~q\ : std_logic;
SIGNAL \DataPath|Mux45~0_combout\ : std_logic;
SIGNAL \DataPath|Mux45~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~176_combout\ : std_logic;
SIGNAL \DataPath|Add0~117\ : std_logic;
SIGNAL \DataPath|Add0~119_combout\ : std_logic;
SIGNAL \DataPath|Add0~121_combout\ : std_logic;
SIGNAL \DataPath|regs[1][19]~q\ : std_logic;
SIGNAL \DataPath|num2~21_combout\ : std_logic;
SIGNAL \RAM|RAM[6][19]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][19]~q\ : std_logic;
SIGNAL \RAM|RAM[4][19]~q\ : std_logic;
SIGNAL \DataPath|towrite~160_combout\ : std_logic;
SIGNAL \RAM|RAM[7][19]~q\ : std_logic;
SIGNAL \RAM|RAM[5][19]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][19]~q\ : std_logic;
SIGNAL \DataPath|towrite~161_combout\ : std_logic;
SIGNAL \RAM|RAM[8][19]~q\ : std_logic;
SIGNAL \RAM|RAM[9][19]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][19]~q\ : std_logic;
SIGNAL \DataPath|towrite~157_combout\ : std_logic;
SIGNAL \RAM|RAM[10][19]~q\ : std_logic;
SIGNAL \RAM|RAM[2][19]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][19]~q\ : std_logic;
SIGNAL \RAM|RAM[0][19]~q\ : std_logic;
SIGNAL \RAM|RAM~32_combout\ : std_logic;
SIGNAL \RAM|RAM[1][19]~q\ : std_logic;
SIGNAL \DataPath|towrite~155_combout\ : std_logic;
SIGNAL \RAM|RAM[3][19]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[3][19]~q\ : std_logic;
SIGNAL \DataPath|towrite~156_combout\ : std_logic;
SIGNAL \DataPath|towrite~158_combout\ : std_logic;
SIGNAL \DataPath|towrite~159_combout\ : std_logic;
SIGNAL \DataPath|towrite~162_combout\ : std_logic;
SIGNAL \DataPath|regs[0][19]~q\ : std_logic;
SIGNAL \DataPath|regs[3][19]~q\ : std_logic;
SIGNAL \DataPath|Mux44~0_combout\ : std_logic;
SIGNAL \DataPath|Mux44~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~177_combout\ : std_logic;
SIGNAL \DataPath|Add0~120\ : std_logic;
SIGNAL \DataPath|Add0~122_combout\ : std_logic;
SIGNAL \DataPath|Add0~124_combout\ : std_logic;
SIGNAL \DataPath|regs[1][20]~q\ : std_logic;
SIGNAL \DataPath|regs[3][20]~q\ : std_logic;
SIGNAL \DataPath|Mux43~0_combout\ : std_logic;
SIGNAL \DataPath|Mux43~1_combout\ : std_logic;
SIGNAL \RAM|RAM[5][20]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][20]~q\ : std_logic;
SIGNAL \RAM|RAM[7][20]~q\ : std_logic;
SIGNAL \RAM|RAM[6][20]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][20]~q\ : std_logic;
SIGNAL \RAM|RAM[4][20]~q\ : std_logic;
SIGNAL \DataPath|towrite~168_combout\ : std_logic;
SIGNAL \DataPath|towrite~169_combout\ : std_logic;
SIGNAL \RAM|RAM[10][20]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][20]~q\ : std_logic;
SIGNAL \RAM|RAM[9][20]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][20]~q\ : std_logic;
SIGNAL \RAM|RAM[8][20]~q\ : std_logic;
SIGNAL \RAM|RAM[2][20]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][20]~q\ : std_logic;
SIGNAL \RAM|RAM[3][20]~q\ : std_logic;
SIGNAL \RAM|RAM[0][20]~q\ : std_logic;
SIGNAL \RAM|RAM~33_combout\ : std_logic;
SIGNAL \RAM|RAM[1][20]~q\ : std_logic;
SIGNAL \DataPath|towrite~163_combout\ : std_logic;
SIGNAL \DataPath|towrite~164_combout\ : std_logic;
SIGNAL \DataPath|towrite~165_combout\ : std_logic;
SIGNAL \DataPath|towrite~166_combout\ : std_logic;
SIGNAL \DataPath|towrite~167_combout\ : std_logic;
SIGNAL \DataPath|towrite~170_combout\ : std_logic;
SIGNAL \DataPath|regs[0][20]~q\ : std_logic;
SIGNAL \DataPath|num2~22_combout\ : std_logic;
SIGNAL \DataPath|Add0~178_combout\ : std_logic;
SIGNAL \DataPath|Add0~123\ : std_logic;
SIGNAL \DataPath|Add0~125_combout\ : std_logic;
SIGNAL \DataPath|Add0~127_combout\ : std_logic;
SIGNAL \RAM|RAM[4][21]~q\ : std_logic;
SIGNAL \RAM|RAM[6][21]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][21]~q\ : std_logic;
SIGNAL \DataPath|towrite~176_combout\ : std_logic;
SIGNAL \RAM|RAM[7][21]~q\ : std_logic;
SIGNAL \RAM|RAM[5][21]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][21]~q\ : std_logic;
SIGNAL \DataPath|towrite~177_combout\ : std_logic;
SIGNAL \RAM|RAM[10][21]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][21]~q\ : std_logic;
SIGNAL \RAM|RAM[9][21]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][21]~q\ : std_logic;
SIGNAL \RAM|RAM[8][21]~q\ : std_logic;
SIGNAL \DataPath|towrite~173_combout\ : std_logic;
SIGNAL \RAM|RAM[2][21]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][21]~q\ : std_logic;
SIGNAL \RAM|RAM[3][21]~q\ : std_logic;
SIGNAL \RAM|RAM[0][21]~q\ : std_logic;
SIGNAL \RAM|RAM~34_combout\ : std_logic;
SIGNAL \RAM|RAM[1][21]~q\ : std_logic;
SIGNAL \DataPath|towrite~171_combout\ : std_logic;
SIGNAL \DataPath|towrite~172_combout\ : std_logic;
SIGNAL \DataPath|towrite~174_combout\ : std_logic;
SIGNAL \DataPath|towrite~175_combout\ : std_logic;
SIGNAL \DataPath|regs[1][21]~q\ : std_logic;
SIGNAL \DataPath|num2~23_combout\ : std_logic;
SIGNAL \DataPath|towrite~178_combout\ : std_logic;
SIGNAL \DataPath|regs[0][21]~q\ : std_logic;
SIGNAL \DataPath|regs[3][21]~q\ : std_logic;
SIGNAL \DataPath|Mux42~0_combout\ : std_logic;
SIGNAL \DataPath|Mux42~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~179_combout\ : std_logic;
SIGNAL \DataPath|Add0~126\ : std_logic;
SIGNAL \DataPath|Add0~128_combout\ : std_logic;
SIGNAL \DataPath|Add0~130_combout\ : std_logic;
SIGNAL \DataPath|regs[1][22]~q\ : std_logic;
SIGNAL \DataPath|regs[3][22]~q\ : std_logic;
SIGNAL \DataPath|Mux41~0_combout\ : std_logic;
SIGNAL \DataPath|Mux41~1_combout\ : std_logic;
SIGNAL \RAM|RAM[6][22]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][22]~q\ : std_logic;
SIGNAL \RAM|RAM[4][22]~q\ : std_logic;
SIGNAL \DataPath|towrite~184_combout\ : std_logic;
SIGNAL \RAM|RAM[7][22]~q\ : std_logic;
SIGNAL \RAM|RAM[5][22]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][22]~q\ : std_logic;
SIGNAL \DataPath|towrite~185_combout\ : std_logic;
SIGNAL \RAM|RAM[9][22]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][22]~q\ : std_logic;
SIGNAL \RAM|RAM[10][22]~q\ : std_logic;
SIGNAL \RAM|RAM[8][22]~q\ : std_logic;
SIGNAL \RAM|RAM[2][22]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][22]~q\ : std_logic;
SIGNAL \RAM|RAM[3][22]~q\ : std_logic;
SIGNAL \RAM|RAM[0][22]~q\ : std_logic;
SIGNAL \RAM|RAM~35_combout\ : std_logic;
SIGNAL \RAM|RAM[1][22]~q\ : std_logic;
SIGNAL \DataPath|towrite~179_combout\ : std_logic;
SIGNAL \DataPath|towrite~180_combout\ : std_logic;
SIGNAL \DataPath|towrite~181_combout\ : std_logic;
SIGNAL \DataPath|towrite~182_combout\ : std_logic;
SIGNAL \DataPath|towrite~183_combout\ : std_logic;
SIGNAL \DataPath|towrite~186_combout\ : std_logic;
SIGNAL \DataPath|regs[0][22]~q\ : std_logic;
SIGNAL \DataPath|num2~24_combout\ : std_logic;
SIGNAL \DataPath|Add0~180_combout\ : std_logic;
SIGNAL \DataPath|Add0~129\ : std_logic;
SIGNAL \DataPath|Add0~131_combout\ : std_logic;
SIGNAL \DataPath|Add0~133_combout\ : std_logic;
SIGNAL \DataPath|writememdata[23]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][23]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][23]~q\ : std_logic;
SIGNAL \RAM|RAM[7][23]~q\ : std_logic;
SIGNAL \RAM|RAM[6][23]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][23]~q\ : std_logic;
SIGNAL \RAM|RAM[4][23]~q\ : std_logic;
SIGNAL \DataPath|towrite~192_combout\ : std_logic;
SIGNAL \DataPath|towrite~193_combout\ : std_logic;
SIGNAL \RAM|RAM[8][23]~q\ : std_logic;
SIGNAL \RAM|RAM[9][23]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][23]~q\ : std_logic;
SIGNAL \DataPath|towrite~189_combout\ : std_logic;
SIGNAL \RAM|RAM[10][23]~q\ : std_logic;
SIGNAL \RAM|RAM[2][23]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][23]~q\ : std_logic;
SIGNAL \RAM|RAM[3][23]~q\ : std_logic;
SIGNAL \RAM|RAM[0][23]~q\ : std_logic;
SIGNAL \RAM|RAM~36_combout\ : std_logic;
SIGNAL \RAM|RAM[1][23]~q\ : std_logic;
SIGNAL \DataPath|towrite~187_combout\ : std_logic;
SIGNAL \DataPath|towrite~188_combout\ : std_logic;
SIGNAL \DataPath|towrite~190_combout\ : std_logic;
SIGNAL \DataPath|towrite~191_combout\ : std_logic;
SIGNAL \DataPath|regs[0][23]~q\ : std_logic;
SIGNAL \DataPath|num2~25_combout\ : std_logic;
SIGNAL \DataPath|towrite~194_combout\ : std_logic;
SIGNAL \DataPath|regs[1][23]~q\ : std_logic;
SIGNAL \DataPath|regs[3][23]~q\ : std_logic;
SIGNAL \DataPath|Mux40~0_combout\ : std_logic;
SIGNAL \DataPath|Mux40~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~181_combout\ : std_logic;
SIGNAL \DataPath|Add0~132\ : std_logic;
SIGNAL \DataPath|Add0~134_combout\ : std_logic;
SIGNAL \DataPath|Add0~136_combout\ : std_logic;
SIGNAL \DataPath|regs[0][24]~q\ : std_logic;
SIGNAL \DataPath|num2~26_combout\ : std_logic;
SIGNAL \DataPath|writememdata[24]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][24]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][24]~q\ : std_logic;
SIGNAL \RAM|RAM[7][24]~q\ : std_logic;
SIGNAL \RAM|RAM[6][24]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][24]~q\ : std_logic;
SIGNAL \RAM|RAM[4][24]~q\ : std_logic;
SIGNAL \DataPath|towrite~200_combout\ : std_logic;
SIGNAL \DataPath|towrite~201_combout\ : std_logic;
SIGNAL \RAM|RAM[9][24]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][24]~q\ : std_logic;
SIGNAL \RAM|RAM[10][24]~q\ : std_logic;
SIGNAL \RAM|RAM[8][24]~q\ : std_logic;
SIGNAL \RAM|RAM[0][24]~q\ : std_logic;
SIGNAL \RAM|RAM~37_combout\ : std_logic;
SIGNAL \RAM|RAM[1][24]~q\ : std_logic;
SIGNAL \DataPath|towrite~195_combout\ : std_logic;
SIGNAL \RAM|RAM[3][24]~q\ : std_logic;
SIGNAL \RAM|RAM[2][24]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][24]~q\ : std_logic;
SIGNAL \DataPath|towrite~196_combout\ : std_logic;
SIGNAL \DataPath|towrite~197_combout\ : std_logic;
SIGNAL \DataPath|towrite~198_combout\ : std_logic;
SIGNAL \DataPath|towrite~199_combout\ : std_logic;
SIGNAL \DataPath|towrite~202_combout\ : std_logic;
SIGNAL \DataPath|regs[1][24]~q\ : std_logic;
SIGNAL \DataPath|regs[3][24]~q\ : std_logic;
SIGNAL \DataPath|Mux39~0_combout\ : std_logic;
SIGNAL \DataPath|Mux39~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~182_combout\ : std_logic;
SIGNAL \DataPath|Add0~135\ : std_logic;
SIGNAL \DataPath|Add0~137_combout\ : std_logic;
SIGNAL \DataPath|Add0~139_combout\ : std_logic;
SIGNAL \DataPath|regs[1][25]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[1][25]~q\ : std_logic;
SIGNAL \DataPath|num2~27_combout\ : std_logic;
SIGNAL \DataPath|writememdata[25]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][25]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][25]~q\ : std_logic;
SIGNAL \RAM|RAM[7][25]~q\ : std_logic;
SIGNAL \RAM|RAM[4][25]~q\ : std_logic;
SIGNAL \RAM|RAM[6][25]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][25]~q\ : std_logic;
SIGNAL \DataPath|towrite~208_combout\ : std_logic;
SIGNAL \DataPath|towrite~209_combout\ : std_logic;
SIGNAL \RAM|RAM[8][25]~q\ : std_logic;
SIGNAL \RAM|RAM[9][25]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][25]~q\ : std_logic;
SIGNAL \DataPath|towrite~205_combout\ : std_logic;
SIGNAL \RAM|RAM[10][25]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[10][25]~q\ : std_logic;
SIGNAL \RAM|RAM[2][25]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][25]~q\ : std_logic;
SIGNAL \RAM|RAM[3][25]~q\ : std_logic;
SIGNAL \RAM|RAM~38_combout\ : std_logic;
SIGNAL \RAM|RAM[1][25]~q\ : std_logic;
SIGNAL \RAM|RAM[0][25]~q\ : std_logic;
SIGNAL \DataPath|towrite~203_combout\ : std_logic;
SIGNAL \DataPath|towrite~204_combout\ : std_logic;
SIGNAL \DataPath|towrite~206_combout\ : std_logic;
SIGNAL \DataPath|towrite~207_combout\ : std_logic;
SIGNAL \DataPath|towrite~210_combout\ : std_logic;
SIGNAL \DataPath|regs[0][25]~feeder_combout\ : std_logic;
SIGNAL \DataPath|regs[0][25]~q\ : std_logic;
SIGNAL \DataPath|regs[3][25]~q\ : std_logic;
SIGNAL \DataPath|Mux38~0_combout\ : std_logic;
SIGNAL \DataPath|Mux38~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~183_combout\ : std_logic;
SIGNAL \DataPath|Add0~138\ : std_logic;
SIGNAL \DataPath|Add0~140_combout\ : std_logic;
SIGNAL \DataPath|Add0~142_combout\ : std_logic;
SIGNAL \DataPath|regs[1][26]~q\ : std_logic;
SIGNAL \DataPath|num2~28_combout\ : std_logic;
SIGNAL \RAM|RAM[4][26]~q\ : std_logic;
SIGNAL \RAM|RAM[6][26]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][26]~q\ : std_logic;
SIGNAL \DataPath|towrite~216_combout\ : std_logic;
SIGNAL \RAM|RAM[7][26]~q\ : std_logic;
SIGNAL \RAM|RAM[5][26]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][26]~q\ : std_logic;
SIGNAL \DataPath|towrite~217_combout\ : std_logic;
SIGNAL \RAM|RAM[9][26]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][26]~q\ : std_logic;
SIGNAL \RAM|RAM[10][26]~q\ : std_logic;
SIGNAL \RAM|RAM[8][26]~q\ : std_logic;
SIGNAL \RAM|RAM[2][26]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][26]~q\ : std_logic;
SIGNAL \RAM|RAM[3][26]~q\ : std_logic;
SIGNAL \RAM|RAM[0][26]~q\ : std_logic;
SIGNAL \RAM|RAM~39_combout\ : std_logic;
SIGNAL \RAM|RAM[1][26]~q\ : std_logic;
SIGNAL \DataPath|towrite~211_combout\ : std_logic;
SIGNAL \DataPath|towrite~212_combout\ : std_logic;
SIGNAL \DataPath|towrite~213_combout\ : std_logic;
SIGNAL \DataPath|towrite~214_combout\ : std_logic;
SIGNAL \DataPath|towrite~215_combout\ : std_logic;
SIGNAL \DataPath|towrite~218_combout\ : std_logic;
SIGNAL \DataPath|regs[0][26]~q\ : std_logic;
SIGNAL \DataPath|regs[3][26]~q\ : std_logic;
SIGNAL \DataPath|Mux37~0_combout\ : std_logic;
SIGNAL \DataPath|Mux37~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~184_combout\ : std_logic;
SIGNAL \DataPath|Add0~141\ : std_logic;
SIGNAL \DataPath|Add0~143_combout\ : std_logic;
SIGNAL \DataPath|Add0~145_combout\ : std_logic;
SIGNAL \DataPath|regs[1][27]~q\ : std_logic;
SIGNAL \DataPath|num2~29_combout\ : std_logic;
SIGNAL \RAM|RAM[6][27]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][27]~q\ : std_logic;
SIGNAL \RAM|RAM[4][27]~q\ : std_logic;
SIGNAL \DataPath|towrite~224_combout\ : std_logic;
SIGNAL \RAM|RAM[7][27]~q\ : std_logic;
SIGNAL \RAM|RAM[5][27]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][27]~q\ : std_logic;
SIGNAL \DataPath|towrite~225_combout\ : std_logic;
SIGNAL \RAM|RAM[8][27]~q\ : std_logic;
SIGNAL \RAM|RAM[9][27]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][27]~q\ : std_logic;
SIGNAL \DataPath|towrite~221_combout\ : std_logic;
SIGNAL \RAM|RAM[10][27]~q\ : std_logic;
SIGNAL \RAM|RAM[2][27]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][27]~q\ : std_logic;
SIGNAL \RAM|RAM[3][27]~q\ : std_logic;
SIGNAL \RAM|RAM[0][27]~q\ : std_logic;
SIGNAL \RAM|RAM~40_combout\ : std_logic;
SIGNAL \RAM|RAM[1][27]~q\ : std_logic;
SIGNAL \DataPath|towrite~219_combout\ : std_logic;
SIGNAL \DataPath|towrite~220_combout\ : std_logic;
SIGNAL \DataPath|towrite~222_combout\ : std_logic;
SIGNAL \DataPath|towrite~223_combout\ : std_logic;
SIGNAL \DataPath|towrite~226_combout\ : std_logic;
SIGNAL \DataPath|regs[0][27]~q\ : std_logic;
SIGNAL \DataPath|regs[3][27]~q\ : std_logic;
SIGNAL \DataPath|Mux36~0_combout\ : std_logic;
SIGNAL \DataPath|Mux36~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~185_combout\ : std_logic;
SIGNAL \DataPath|Add0~144\ : std_logic;
SIGNAL \DataPath|Add0~146_combout\ : std_logic;
SIGNAL \DataPath|Add0~148_combout\ : std_logic;
SIGNAL \DataPath|writememdata[28]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[4][28]~q\ : std_logic;
SIGNAL \RAM|RAM[6][28]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][28]~q\ : std_logic;
SIGNAL \DataPath|towrite~232_combout\ : std_logic;
SIGNAL \RAM|RAM[7][28]~q\ : std_logic;
SIGNAL \RAM|RAM[5][28]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][28]~q\ : std_logic;
SIGNAL \DataPath|towrite~233_combout\ : std_logic;
SIGNAL \RAM|RAM[9][28]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][28]~q\ : std_logic;
SIGNAL \RAM|RAM[10][28]~q\ : std_logic;
SIGNAL \RAM|RAM[8][28]~q\ : std_logic;
SIGNAL \RAM|RAM[2][28]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][28]~q\ : std_logic;
SIGNAL \RAM|RAM[3][28]~q\ : std_logic;
SIGNAL \RAM|RAM[0][28]~q\ : std_logic;
SIGNAL \RAM|RAM~41_combout\ : std_logic;
SIGNAL \RAM|RAM[1][28]~q\ : std_logic;
SIGNAL \DataPath|towrite~227_combout\ : std_logic;
SIGNAL \DataPath|towrite~228_combout\ : std_logic;
SIGNAL \DataPath|towrite~229_combout\ : std_logic;
SIGNAL \DataPath|towrite~230_combout\ : std_logic;
SIGNAL \DataPath|towrite~231_combout\ : std_logic;
SIGNAL \DataPath|regs[1][28]~q\ : std_logic;
SIGNAL \DataPath|num2~30_combout\ : std_logic;
SIGNAL \DataPath|towrite~234_combout\ : std_logic;
SIGNAL \DataPath|regs[0][28]~q\ : std_logic;
SIGNAL \DataPath|regs[3][28]~q\ : std_logic;
SIGNAL \DataPath|Mux35~0_combout\ : std_logic;
SIGNAL \DataPath|Mux35~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~186_combout\ : std_logic;
SIGNAL \DataPath|Add0~147\ : std_logic;
SIGNAL \DataPath|Add0~149_combout\ : std_logic;
SIGNAL \DataPath|Add0~151_combout\ : std_logic;
SIGNAL \DataPath|regs[1][29]~q\ : std_logic;
SIGNAL \DataPath|num2~31_combout\ : std_logic;
SIGNAL \DataPath|writememdata[29]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[8][29]~q\ : std_logic;
SIGNAL \RAM|RAM[9][29]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][29]~q\ : std_logic;
SIGNAL \DataPath|towrite~237_combout\ : std_logic;
SIGNAL \RAM|RAM[10][29]~q\ : std_logic;
SIGNAL \RAM|RAM[2][29]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][29]~q\ : std_logic;
SIGNAL \RAM|RAM[3][29]~q\ : std_logic;
SIGNAL \RAM|RAM[0][29]~q\ : std_logic;
SIGNAL \RAM|RAM~42_combout\ : std_logic;
SIGNAL \RAM|RAM[1][29]~q\ : std_logic;
SIGNAL \DataPath|towrite~235_combout\ : std_logic;
SIGNAL \DataPath|towrite~236_combout\ : std_logic;
SIGNAL \DataPath|towrite~238_combout\ : std_logic;
SIGNAL \DataPath|towrite~239_combout\ : std_logic;
SIGNAL \RAM|RAM[6][29]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][29]~q\ : std_logic;
SIGNAL \RAM|RAM[4][29]~q\ : std_logic;
SIGNAL \DataPath|towrite~240_combout\ : std_logic;
SIGNAL \RAM|RAM[5][29]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][29]~q\ : std_logic;
SIGNAL \RAM|RAM[7][29]~q\ : std_logic;
SIGNAL \DataPath|towrite~241_combout\ : std_logic;
SIGNAL \DataPath|towrite~242_combout\ : std_logic;
SIGNAL \DataPath|regs[0][29]~q\ : std_logic;
SIGNAL \DataPath|regs[3][29]~q\ : std_logic;
SIGNAL \DataPath|Mux34~0_combout\ : std_logic;
SIGNAL \DataPath|Mux34~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~187_combout\ : std_logic;
SIGNAL \DataPath|Add0~150\ : std_logic;
SIGNAL \DataPath|Add0~152_combout\ : std_logic;
SIGNAL \DataPath|Add0~154_combout\ : std_logic;
SIGNAL \RAM|RAM[4][30]~q\ : std_logic;
SIGNAL \RAM|RAM[6][30]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][30]~q\ : std_logic;
SIGNAL \DataPath|towrite~248_combout\ : std_logic;
SIGNAL \RAM|RAM[7][30]~q\ : std_logic;
SIGNAL \RAM|RAM[5][30]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][30]~q\ : std_logic;
SIGNAL \DataPath|towrite~249_combout\ : std_logic;
SIGNAL \DataPath|regs[1][30]~q\ : std_logic;
SIGNAL \DataPath|num2~32_combout\ : std_logic;
SIGNAL \RAM|RAM[9][30]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][30]~q\ : std_logic;
SIGNAL \RAM|RAM[10][30]~q\ : std_logic;
SIGNAL \RAM|RAM[8][30]~q\ : std_logic;
SIGNAL \RAM|RAM[2][30]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][30]~q\ : std_logic;
SIGNAL \RAM|RAM[3][30]~q\ : std_logic;
SIGNAL \RAM|RAM[0][30]~q\ : std_logic;
SIGNAL \RAM|RAM~43_combout\ : std_logic;
SIGNAL \RAM|RAM[1][30]~q\ : std_logic;
SIGNAL \DataPath|towrite~243_combout\ : std_logic;
SIGNAL \DataPath|towrite~244_combout\ : std_logic;
SIGNAL \DataPath|towrite~245_combout\ : std_logic;
SIGNAL \DataPath|towrite~246_combout\ : std_logic;
SIGNAL \DataPath|towrite~247_combout\ : std_logic;
SIGNAL \DataPath|towrite~250_combout\ : std_logic;
SIGNAL \DataPath|regs[0][30]~q\ : std_logic;
SIGNAL \DataPath|regs[3][30]~q\ : std_logic;
SIGNAL \DataPath|Mux33~0_combout\ : std_logic;
SIGNAL \DataPath|Mux33~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~188_combout\ : std_logic;
SIGNAL \DataPath|Add0~153\ : std_logic;
SIGNAL \DataPath|Add0~155_combout\ : std_logic;
SIGNAL \DataPath|Add0~157_combout\ : std_logic;
SIGNAL \DataPath|regs[1][31]~q\ : std_logic;
SIGNAL \DataPath|num2~33_combout\ : std_logic;
SIGNAL \DataPath|writememdata[31]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][31]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[5][31]~q\ : std_logic;
SIGNAL \RAM|RAM[7][31]~q\ : std_logic;
SIGNAL \RAM|RAM[6][31]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[6][31]~q\ : std_logic;
SIGNAL \RAM|RAM[4][31]~q\ : std_logic;
SIGNAL \DataPath|towrite~256_combout\ : std_logic;
SIGNAL \DataPath|towrite~257_combout\ : std_logic;
SIGNAL \RAM|RAM[9][31]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[9][31]~q\ : std_logic;
SIGNAL \RAM|RAM[8][31]~q\ : std_logic;
SIGNAL \DataPath|towrite~253_combout\ : std_logic;
SIGNAL \RAM|RAM[10][31]~q\ : std_logic;
SIGNAL \RAM|RAM[2][31]~feeder_combout\ : std_logic;
SIGNAL \RAM|RAM[2][31]~q\ : std_logic;
SIGNAL \RAM|RAM[3][31]~q\ : std_logic;
SIGNAL \RAM|RAM[0][31]~q\ : std_logic;
SIGNAL \RAM|RAM~44_combout\ : std_logic;
SIGNAL \RAM|RAM[1][31]~q\ : std_logic;
SIGNAL \DataPath|towrite~251_combout\ : std_logic;
SIGNAL \DataPath|towrite~252_combout\ : std_logic;
SIGNAL \DataPath|towrite~254_combout\ : std_logic;
SIGNAL \DataPath|towrite~255_combout\ : std_logic;
SIGNAL \DataPath|towrite~258_combout\ : std_logic;
SIGNAL \DataPath|regs[0][31]~q\ : std_logic;
SIGNAL \DataPath|regs[3][31]~q\ : std_logic;
SIGNAL \DataPath|Mux32~0_combout\ : std_logic;
SIGNAL \DataPath|Mux32~1_combout\ : std_logic;
SIGNAL \DataPath|Add0~189_combout\ : std_logic;
SIGNAL \DataPath|Add0~156\ : std_logic;
SIGNAL \DataPath|Add0~158_combout\ : std_logic;
SIGNAL \DataPath|Add0~160_combout\ : std_logic;
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
SIGNAL \DataPath|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM|comb_3|q_reg\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \DataPath|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DataPath|writememdata\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DataPath|memaddr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \DataPath|stackPointer\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \RAM|comb_4|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \DataPath|ALT_INV_writemem~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;

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
result <= ww_result;
PC <= ww_PC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\RAM|comb_4|ALT_INV_WideOr6~0_combout\ <= NOT \RAM|comb_4|WideOr6~0_combout\;
\DataPath|ALT_INV_writemem~q\ <= NOT \DataPath|writemem~q\;
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
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
	i => \RAM|comb_4|WideOr3~0_combout\,
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
	i => \RAM|comb_4|WideOr2~0_combout\,
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

-- Location: IOOBUF_X38_Y73_N9
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X38_Y73_N2
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

-- Location: IOOBUF_X58_Y73_N16
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

-- Location: IOOBUF_X81_Y73_N16
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X23_Y73_N9
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

-- Location: IOOBUF_X35_Y73_N16
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X27_Y73_N9
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

-- Location: IOOBUF_X40_Y73_N2
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

-- Location: IOOBUF_X47_Y73_N2
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X47_Y73_N16
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X54_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X27_Y73_N23
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X40_Y73_N9
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X38_Y73_N23
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOOBUF_X33_Y73_N2
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

-- Location: IOOBUF_X35_Y73_N23
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

-- Location: IOOBUF_X29_Y73_N2
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X60_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X72_Y73_N16
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

-- Location: IOOBUF_X81_Y73_N9
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X33_Y73_N9
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X79_Y73_N2
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X81_Y73_N2
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: LCCOMB_X60_Y72_N2
\DataPath|PC[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[1]~34_combout\ = (\DataPath|PC\(1) & (!\DataPath|PC[0]~33\)) # (!\DataPath|PC\(1) & ((\DataPath|PC[0]~33\) # (GND)))
-- \DataPath|PC[1]~35\ = CARRY((!\DataPath|PC[0]~33\) # (!\DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(1),
	datad => VCC,
	cin => \DataPath|PC[0]~33\,
	combout => \DataPath|PC[1]~34_combout\,
	cout => \DataPath|PC[1]~35\);

-- Location: LCCOMB_X60_Y72_N4
\DataPath|PC[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[2]~36_combout\ = (\DataPath|PC\(2) & (\DataPath|PC[1]~35\ $ (GND))) # (!\DataPath|PC\(2) & (!\DataPath|PC[1]~35\ & VCC))
-- \DataPath|PC[2]~37\ = CARRY((\DataPath|PC\(2) & !\DataPath|PC[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(2),
	datad => VCC,
	cin => \DataPath|PC[1]~35\,
	combout => \DataPath|PC[2]~36_combout\,
	cout => \DataPath|PC[2]~37\);

-- Location: FF_X60_Y72_N5
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

-- Location: LCCOMB_X60_Y72_N0
\DataPath|PC[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[0]~32_combout\ = (\ControlUnit|WideOr7~0_combout\ & (\DataPath|PC\(0) & VCC)) # (!\ControlUnit|WideOr7~0_combout\ & (\DataPath|PC\(0) $ (VCC)))
-- \DataPath|PC[0]~33\ = CARRY((!\ControlUnit|WideOr7~0_combout\ & \DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr7~0_combout\,
	datab => \DataPath|PC\(0),
	datad => VCC,
	combout => \DataPath|PC[0]~32_combout\,
	cout => \DataPath|PC[0]~33\);

-- Location: FF_X60_Y72_N1
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

-- Location: LCCOMB_X59_Y72_N16
\ControlUnit|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr7~0_combout\ = (\DataPath|PC\(2) & (!\DataPath|PC\(0) & \DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(1),
	combout => \ControlUnit|WideOr7~0_combout\);

-- Location: FF_X60_Y72_N3
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

-- Location: LCCOMB_X59_Y68_N10
\InstructionFetch|list~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~2_combout\ = (\DataPath|PC\(1) & (\DataPath|PC\(0) & !\DataPath|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~2_combout\);

-- Location: LCCOMB_X59_Y68_N4
\InstructionFetch|list~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~0_combout\ = (\DataPath|PC\(1) & ((\DataPath|PC\(2)) # (!\DataPath|PC\(0)))) # (!\DataPath|PC\(1) & ((\DataPath|PC\(0)) # (!\DataPath|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~0_combout\);

-- Location: LCCOMB_X59_Y68_N0
\ControlUnit|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr4~0_combout\ = ((!\DataPath|PC\(1) & !\DataPath|PC\(0))) # (!\DataPath|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \ControlUnit|WideOr4~0_combout\);

-- Location: LCCOMB_X60_Y70_N6
\DataPath|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Decoder1~0_combout\ = \DataPath|PC\(0) $ (!\DataPath|PC\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \DataPath|Decoder1~0_combout\);

-- Location: FF_X59_Y69_N13
\DataPath|regs[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~18_combout\,
	sload => VCC,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][1]~q\);

-- Location: LCCOMB_X59_Y69_N12
\DataPath|num2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~38_combout\ = (\DataPath|regs[0][1]~q\ & ((\DataPath|PC\(1)) # ((!\DataPath|PC\(2)) # (!\DataPath|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(0),
	datac => \DataPath|regs[0][1]~q\,
	datad => \DataPath|PC\(2),
	combout => \DataPath|num2~38_combout\);

-- Location: LCCOMB_X60_Y70_N8
\ControlUnit|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|Decoder0~0_combout\ = (!\DataPath|PC\(0) & (\DataPath|PC\(2) & !\DataPath|PC\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datad => \DataPath|PC\(1),
	combout => \ControlUnit|Decoder0~0_combout\);

-- Location: FF_X60_Y69_N13
\DataPath|regs[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~18_combout\,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][1]~q\);

-- Location: LCCOMB_X59_Y69_N8
\DataPath|num2~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~37_combout\ = (!\DataPath|PC\(1) & (\DataPath|regs[1][1]~q\ & (\DataPath|PC\(0) & \DataPath|PC\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|regs[1][1]~q\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \DataPath|num2~37_combout\);

-- Location: LCCOMB_X59_Y72_N20
\ControlUnit|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ControlUnit|WideOr2~0_combout\ = (!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(1),
	combout => \ControlUnit|WideOr2~0_combout\);

-- Location: LCCOMB_X59_Y69_N2
\DataPath|num2~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~35_combout\ = (\ControlUnit|WideOr4~0_combout\ & (((\ControlUnit|WideOr2~0_combout\)))) # (!\ControlUnit|WideOr4~0_combout\ & ((\DataPath|num2~38_combout\) # ((\DataPath|num2~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr4~0_combout\,
	datab => \DataPath|num2~38_combout\,
	datac => \DataPath|num2~37_combout\,
	datad => \ControlUnit|WideOr2~0_combout\,
	combout => \DataPath|num2~35_combout\);

-- Location: LCCOMB_X62_Y70_N10
\DataPath|writememdata[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[0]~0_combout\ = (!\DataPath|PC\(2) & (!\DataPath|PC\(1) & \DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|writememdata[0]~0_combout\);

-- Location: LCCOMB_X66_Y70_N10
\DataPath|stackPointer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~4_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~0_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|stackPointer\(0),
	datad => \DataPath|Add2~0_combout\,
	combout => \DataPath|stackPointer~4_combout\);

-- Location: LCCOMB_X67_Y70_N8
\DataPath|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~0_combout\ = (\DataPath|stackPointer~4_combout\ & (\DataPath|writememdata[0]~0_combout\ $ (VCC))) # (!\DataPath|stackPointer~4_combout\ & (\DataPath|writememdata[0]~0_combout\ & VCC))
-- \DataPath|Add3~1\ = CARRY((\DataPath|stackPointer~4_combout\ & \DataPath|writememdata[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~4_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	combout => \DataPath|Add3~0_combout\,
	cout => \DataPath|Add3~1\);

-- Location: FF_X67_Y70_N9
\DataPath|stackPointer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(0));

-- Location: LCCOMB_X66_Y70_N12
\DataPath|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~0_combout\ = \DataPath|stackPointer\(0) $ (VCC)
-- \DataPath|Add2~1\ = CARRY(\DataPath|stackPointer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(0),
	datad => VCC,
	combout => \DataPath|Add2~0_combout\,
	cout => \DataPath|Add2~1\);

-- Location: LCCOMB_X65_Y70_N4
\DataPath|memaddr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~9_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~0_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|stackPointer\(0)))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (\DataPath|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata[0]~0_combout\,
	datab => \DataPath|Add2~0_combout\,
	datac => \DataPath|stackPointer\(0),
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~9_combout\);

-- Location: LCCOMB_X62_Y70_N28
\DataPath|memaddr[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr[4]~1_combout\ = (!\DataPath|PC\(1) & (\DataPath|PC\(2) $ (\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|memaddr[4]~1_combout\);

-- Location: FF_X65_Y70_N5
\DataPath|memaddr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~9_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(0));

-- Location: LCCOMB_X59_Y66_N4
\RAM|RAM[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][1]~feeder_combout\ = \DataPath|writememdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(1),
	combout => \RAM|RAM[6][1]~feeder_combout\);

-- Location: LCCOMB_X66_Y70_N14
\DataPath|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~2_combout\ = (\DataPath|stackPointer\(1) & ((\DataPath|Add2~1\) # (GND))) # (!\DataPath|stackPointer\(1) & (!\DataPath|Add2~1\))
-- \DataPath|Add2~3\ = CARRY((\DataPath|stackPointer\(1)) # (!\DataPath|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(1),
	datad => VCC,
	cin => \DataPath|Add2~1\,
	combout => \DataPath|Add2~2_combout\,
	cout => \DataPath|Add2~3\);

-- Location: LCCOMB_X66_Y70_N8
\DataPath|stackPointer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~3_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~2_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|stackPointer\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|stackPointer\(1),
	datac => \DataPath|Add2~2_combout\,
	combout => \DataPath|stackPointer~3_combout\);

-- Location: LCCOMB_X67_Y70_N10
\DataPath|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~2_combout\ = (\DataPath|stackPointer~3_combout\ & ((\DataPath|writememdata[0]~0_combout\ & (\DataPath|Add3~1\ & VCC)) # (!\DataPath|writememdata[0]~0_combout\ & (!\DataPath|Add3~1\)))) # (!\DataPath|stackPointer~3_combout\ & 
-- ((\DataPath|writememdata[0]~0_combout\ & (!\DataPath|Add3~1\)) # (!\DataPath|writememdata[0]~0_combout\ & ((\DataPath|Add3~1\) # (GND)))))
-- \DataPath|Add3~3\ = CARRY((\DataPath|stackPointer~3_combout\ & (!\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~1\)) # (!\DataPath|stackPointer~3_combout\ & ((!\DataPath|Add3~1\) # (!\DataPath|writememdata[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~3_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~1\,
	combout => \DataPath|Add3~2_combout\,
	cout => \DataPath|Add3~3\);

-- Location: LCCOMB_X67_Y70_N30
\DataPath|stackPointer[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer[1]~11_combout\ = !\DataPath|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Add3~2_combout\,
	combout => \DataPath|stackPointer[1]~11_combout\);

-- Location: FF_X66_Y70_N5
\DataPath|stackPointer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|stackPointer[1]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(1));

-- Location: LCCOMB_X66_Y70_N16
\DataPath|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~4_combout\ = (\DataPath|stackPointer\(2) & (\DataPath|Add2~3\ $ (GND))) # (!\DataPath|stackPointer\(2) & (!\DataPath|Add2~3\ & VCC))
-- \DataPath|Add2~5\ = CARRY((\DataPath|stackPointer\(2) & !\DataPath|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(2),
	datad => VCC,
	cin => \DataPath|Add2~3\,
	combout => \DataPath|Add2~4_combout\,
	cout => \DataPath|Add2~5\);

-- Location: LCCOMB_X67_Y70_N28
\DataPath|stackPointer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~2_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~4_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(2),
	datac => \DataPath|Add2~4_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|stackPointer~2_combout\);

-- Location: LCCOMB_X67_Y70_N12
\DataPath|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~4_combout\ = ((\DataPath|stackPointer~2_combout\ $ (\DataPath|writememdata[0]~0_combout\ $ (!\DataPath|Add3~3\)))) # (GND)
-- \DataPath|Add3~5\ = CARRY((\DataPath|stackPointer~2_combout\ & ((\DataPath|writememdata[0]~0_combout\) # (!\DataPath|Add3~3\))) # (!\DataPath|stackPointer~2_combout\ & (\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~2_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~3\,
	combout => \DataPath|Add3~4_combout\,
	cout => \DataPath|Add3~5\);

-- Location: FF_X67_Y70_N13
\DataPath|stackPointer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(2));

-- Location: LCCOMB_X67_Y70_N4
\DataPath|memaddr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~8_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~4_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(2))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (((\DataPath|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(2),
	datab => \DataPath|writememdata[0]~0_combout\,
	datac => \DataPath|Add2~4_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~8_combout\);

-- Location: FF_X65_Y70_N31
\DataPath|memaddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|memaddr~8_combout\,
	sload => VCC,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(2));

-- Location: LCCOMB_X65_Y70_N6
\DataPath|memaddr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~10_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~2_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|stackPointer\(1))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (((\DataPath|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(1),
	datab => \DataPath|Add2~2_combout\,
	datac => \DataPath|writememdata[0]~0_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~10_combout\);

-- Location: FF_X65_Y70_N7
\DataPath|memaddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~10_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(1));

-- Location: LCCOMB_X66_Y70_N6
\DataPath|stackPointer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~1_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~6_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|stackPointer\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|stackPointer\(3),
	datad => \DataPath|Add2~6_combout\,
	combout => \DataPath|stackPointer~1_combout\);

-- Location: LCCOMB_X67_Y70_N14
\DataPath|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~6_combout\ = (\DataPath|stackPointer~1_combout\ & ((\DataPath|writememdata[0]~0_combout\ & (\DataPath|Add3~5\ & VCC)) # (!\DataPath|writememdata[0]~0_combout\ & (!\DataPath|Add3~5\)))) # (!\DataPath|stackPointer~1_combout\ & 
-- ((\DataPath|writememdata[0]~0_combout\ & (!\DataPath|Add3~5\)) # (!\DataPath|writememdata[0]~0_combout\ & ((\DataPath|Add3~5\) # (GND)))))
-- \DataPath|Add3~7\ = CARRY((\DataPath|stackPointer~1_combout\ & (!\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~5\)) # (!\DataPath|stackPointer~1_combout\ & ((!\DataPath|Add3~5\) # (!\DataPath|writememdata[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~1_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~5\,
	combout => \DataPath|Add3~6_combout\,
	cout => \DataPath|Add3~7\);

-- Location: LCCOMB_X67_Y70_N0
\DataPath|stackPointer[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer[3]~10_combout\ = !\DataPath|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Add3~6_combout\,
	combout => \DataPath|stackPointer[3]~10_combout\);

-- Location: FF_X67_Y70_N1
\DataPath|stackPointer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|stackPointer[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(3));

-- Location: LCCOMB_X66_Y70_N18
\DataPath|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~6_combout\ = (\DataPath|stackPointer\(3) & ((\DataPath|Add2~5\) # (GND))) # (!\DataPath|stackPointer\(3) & (!\DataPath|Add2~5\))
-- \DataPath|Add2~7\ = CARRY((\DataPath|stackPointer\(3)) # (!\DataPath|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(3),
	datad => VCC,
	cin => \DataPath|Add2~5\,
	combout => \DataPath|Add2~6_combout\,
	cout => \DataPath|Add2~7\);

-- Location: LCCOMB_X65_Y70_N28
\DataPath|memaddr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~7_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~6_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((!\DataPath|stackPointer\(3)))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (\DataPath|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata[0]~0_combout\,
	datab => \DataPath|Add2~6_combout\,
	datac => \DataPath|stackPointer\(3),
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~7_combout\);

-- Location: FF_X65_Y70_N29
\DataPath|memaddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~7_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(3));

-- Location: FF_X65_Y70_N25
\DataPath|writemem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writemem~q\);

-- Location: LCCOMB_X66_Y70_N0
\DataPath|stackPointer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~8_combout\ = (\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~16_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|stackPointer\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|Add2~16_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|stackPointer\(8),
	combout => \DataPath|stackPointer~8_combout\);

-- Location: LCCOMB_X67_Y70_N16
\DataPath|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~8_combout\ = ((\DataPath|stackPointer~0_combout\ $ (\DataPath|writememdata[0]~0_combout\ $ (!\DataPath|Add3~7\)))) # (GND)
-- \DataPath|Add3~9\ = CARRY((\DataPath|stackPointer~0_combout\ & ((\DataPath|writememdata[0]~0_combout\) # (!\DataPath|Add3~7\))) # (!\DataPath|stackPointer~0_combout\ & (\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~0_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~7\,
	combout => \DataPath|Add3~8_combout\,
	cout => \DataPath|Add3~9\);

-- Location: FF_X67_Y70_N17
\DataPath|stackPointer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(4));

-- Location: LCCOMB_X66_Y70_N20
\DataPath|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~8_combout\ = (\DataPath|stackPointer\(4) & (\DataPath|Add2~7\ $ (GND))) # (!\DataPath|stackPointer\(4) & (!\DataPath|Add2~7\ & VCC))
-- \DataPath|Add2~9\ = CARRY((\DataPath|stackPointer\(4) & !\DataPath|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(4),
	datad => VCC,
	cin => \DataPath|Add2~7\,
	combout => \DataPath|Add2~8_combout\,
	cout => \DataPath|Add2~9\);

-- Location: LCCOMB_X67_Y70_N6
\DataPath|stackPointer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~0_combout\ = (\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~8_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|stackPointer\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|Add2~8_combout\,
	datac => \DataPath|stackPointer\(4),
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|stackPointer~0_combout\);

-- Location: LCCOMB_X67_Y70_N18
\DataPath|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~10_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\DataPath|stackPointer~5_combout\ & (\DataPath|Add3~9\ & VCC)) # (!\DataPath|stackPointer~5_combout\ & (!\DataPath|Add3~9\)))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- ((\DataPath|stackPointer~5_combout\ & (!\DataPath|Add3~9\)) # (!\DataPath|stackPointer~5_combout\ & ((\DataPath|Add3~9\) # (GND)))))
-- \DataPath|Add3~11\ = CARRY((\DataPath|writememdata[0]~0_combout\ & (!\DataPath|stackPointer~5_combout\ & !\DataPath|Add3~9\)) # (!\DataPath|writememdata[0]~0_combout\ & ((!\DataPath|Add3~9\) # (!\DataPath|stackPointer~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata[0]~0_combout\,
	datab => \DataPath|stackPointer~5_combout\,
	datad => VCC,
	cin => \DataPath|Add3~9\,
	combout => \DataPath|Add3~10_combout\,
	cout => \DataPath|Add3~11\);

-- Location: FF_X67_Y70_N19
\DataPath|stackPointer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(5));

-- Location: LCCOMB_X66_Y70_N22
\DataPath|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~10_combout\ = (\DataPath|stackPointer\(5) & (!\DataPath|Add2~9\)) # (!\DataPath|stackPointer\(5) & ((\DataPath|Add2~9\) # (GND)))
-- \DataPath|Add2~11\ = CARRY((!\DataPath|Add2~9\) # (!\DataPath|stackPointer\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(5),
	datad => VCC,
	cin => \DataPath|Add2~9\,
	combout => \DataPath|Add2~10_combout\,
	cout => \DataPath|Add2~11\);

-- Location: LCCOMB_X66_Y70_N4
\DataPath|stackPointer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~5_combout\ = (\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~10_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|stackPointer\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|Add2~10_combout\,
	datad => \DataPath|stackPointer\(5),
	combout => \DataPath|stackPointer~5_combout\);

-- Location: LCCOMB_X67_Y70_N20
\DataPath|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~12_combout\ = ((\DataPath|stackPointer~6_combout\ $ (\DataPath|writememdata[0]~0_combout\ $ (!\DataPath|Add3~11\)))) # (GND)
-- \DataPath|Add3~13\ = CARRY((\DataPath|stackPointer~6_combout\ & ((\DataPath|writememdata[0]~0_combout\) # (!\DataPath|Add3~11\))) # (!\DataPath|stackPointer~6_combout\ & (\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~6_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~11\,
	combout => \DataPath|Add3~12_combout\,
	cout => \DataPath|Add3~13\);

-- Location: FF_X67_Y70_N21
\DataPath|stackPointer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(6));

-- Location: LCCOMB_X66_Y70_N24
\DataPath|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~12_combout\ = (\DataPath|stackPointer\(6) & (\DataPath|Add2~11\ $ (GND))) # (!\DataPath|stackPointer\(6) & (!\DataPath|Add2~11\ & VCC))
-- \DataPath|Add2~13\ = CARRY((\DataPath|stackPointer\(6) & !\DataPath|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(6),
	datad => VCC,
	cin => \DataPath|Add2~11\,
	combout => \DataPath|Add2~12_combout\,
	cout => \DataPath|Add2~13\);

-- Location: LCCOMB_X65_Y70_N30
\DataPath|stackPointer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~6_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~12_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(6),
	datab => \DataPath|Add2~12_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|stackPointer~6_combout\);

-- Location: LCCOMB_X67_Y70_N22
\DataPath|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~14_combout\ = (\DataPath|stackPointer~7_combout\ & ((\DataPath|writememdata[0]~0_combout\ & (\DataPath|Add3~13\ & VCC)) # (!\DataPath|writememdata[0]~0_combout\ & (!\DataPath|Add3~13\)))) # (!\DataPath|stackPointer~7_combout\ & 
-- ((\DataPath|writememdata[0]~0_combout\ & (!\DataPath|Add3~13\)) # (!\DataPath|writememdata[0]~0_combout\ & ((\DataPath|Add3~13\) # (GND)))))
-- \DataPath|Add3~15\ = CARRY((\DataPath|stackPointer~7_combout\ & (!\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~13\)) # (!\DataPath|stackPointer~7_combout\ & ((!\DataPath|Add3~13\) # (!\DataPath|writememdata[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~7_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~13\,
	combout => \DataPath|Add3~14_combout\,
	cout => \DataPath|Add3~15\);

-- Location: FF_X67_Y70_N23
\DataPath|stackPointer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(7));

-- Location: LCCOMB_X66_Y70_N26
\DataPath|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~14_combout\ = (\DataPath|stackPointer\(7) & (!\DataPath|Add2~13\)) # (!\DataPath|stackPointer\(7) & ((\DataPath|Add2~13\) # (GND)))
-- \DataPath|Add2~15\ = CARRY((!\DataPath|Add2~13\) # (!\DataPath|stackPointer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(7),
	datad => VCC,
	cin => \DataPath|Add2~13\,
	combout => \DataPath|Add2~14_combout\,
	cout => \DataPath|Add2~15\);

-- Location: LCCOMB_X65_Y70_N24
\DataPath|stackPointer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~7_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~14_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|stackPointer\(7),
	datad => \DataPath|Add2~14_combout\,
	combout => \DataPath|stackPointer~7_combout\);

-- Location: LCCOMB_X67_Y70_N24
\DataPath|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~16_combout\ = ((\DataPath|stackPointer~8_combout\ $ (\DataPath|writememdata[0]~0_combout\ $ (!\DataPath|Add3~15\)))) # (GND)
-- \DataPath|Add3~17\ = CARRY((\DataPath|stackPointer~8_combout\ & ((\DataPath|writememdata[0]~0_combout\) # (!\DataPath|Add3~15\))) # (!\DataPath|stackPointer~8_combout\ & (\DataPath|writememdata[0]~0_combout\ & !\DataPath|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer~8_combout\,
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => VCC,
	cin => \DataPath|Add3~15\,
	combout => \DataPath|Add3~16_combout\,
	cout => \DataPath|Add3~17\);

-- Location: FF_X67_Y70_N25
\DataPath|stackPointer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(8));

-- Location: LCCOMB_X66_Y70_N28
\DataPath|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~16_combout\ = (\DataPath|stackPointer\(8) & (\DataPath|Add2~15\ $ (GND))) # (!\DataPath|stackPointer\(8) & (!\DataPath|Add2~15\ & VCC))
-- \DataPath|Add2~17\ = CARRY((\DataPath|stackPointer\(8) & !\DataPath|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|stackPointer\(8),
	datad => VCC,
	cin => \DataPath|Add2~15\,
	combout => \DataPath|Add2~16_combout\,
	cout => \DataPath|Add2~17\);

-- Location: LCCOMB_X65_Y70_N26
\DataPath|memaddr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~5_combout\ = (\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~16_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|writememdata[0]~0_combout\ & ((\DataPath|stackPointer\(8)))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (\DataPath|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|Add2~16_combout\,
	datac => \DataPath|writememdata[0]~0_combout\,
	datad => \DataPath|stackPointer\(8),
	combout => \DataPath|memaddr~5_combout\);

-- Location: FF_X65_Y70_N27
\DataPath|memaddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~5_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(8));

-- Location: LCCOMB_X66_Y70_N30
\DataPath|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add2~18_combout\ = \DataPath|Add2~17\ $ (\DataPath|stackPointer\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|stackPointer\(9),
	cin => \DataPath|Add2~17\,
	combout => \DataPath|Add2~18_combout\);

-- Location: LCCOMB_X66_Y70_N2
\DataPath|stackPointer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|stackPointer~9_combout\ = (\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~18_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|stackPointer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|Add2~18_combout\,
	datad => \DataPath|stackPointer\(9),
	combout => \DataPath|stackPointer~9_combout\);

-- Location: LCCOMB_X67_Y70_N26
\DataPath|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add3~18_combout\ = \DataPath|writememdata[0]~0_combout\ $ (\DataPath|Add3~17\ $ (\DataPath|stackPointer~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writememdata[0]~0_combout\,
	datad => \DataPath|stackPointer~9_combout\,
	cin => \DataPath|Add3~17\,
	combout => \DataPath|Add3~18_combout\);

-- Location: FF_X67_Y70_N27
\DataPath|stackPointer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|stackPointer\(9));

-- Location: LCCOMB_X65_Y70_N0
\DataPath|memaddr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~6_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~18_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(9))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (((\DataPath|Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata[0]~0_combout\,
	datab => \DataPath|stackPointer\(9),
	datac => \DataPath|Add2~18_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~6_combout\);

-- Location: FF_X65_Y70_N1
\DataPath|memaddr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~6_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(9));

-- Location: LCCOMB_X65_Y70_N22
\RAM|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|LessThan0~1_combout\ = (\DataPath|memaddr\(8)) # (\DataPath|memaddr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|memaddr\(8),
	datad => \DataPath|memaddr\(9),
	combout => \RAM|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y70_N12
\DataPath|memaddr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~4_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|Add2~14_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|writememdata[0]~0_combout\ & (\DataPath|stackPointer\(7))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- ((\DataPath|Add2~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|stackPointer\(7),
	datac => \DataPath|writememdata[0]~0_combout\,
	datad => \DataPath|Add2~14_combout\,
	combout => \DataPath|memaddr~4_combout\);

-- Location: FF_X65_Y70_N13
\DataPath|memaddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~4_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(7));

-- Location: LCCOMB_X65_Y70_N16
\DataPath|memaddr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~2_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|Add2~10_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|stackPointer\(5))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (((\DataPath|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(5),
	datab => \DataPath|Add2~10_combout\,
	datac => \DataPath|writememdata[0]~0_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~2_combout\);

-- Location: FF_X65_Y70_N17
\DataPath|memaddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~2_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(5));

-- Location: LCCOMB_X67_Y70_N2
\DataPath|memaddr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~0_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|Add2~8_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|writememdata[0]~0_combout\ & (\DataPath|stackPointer\(4))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- ((\DataPath|Add2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|stackPointer\(4),
	datab => \DataPath|Add2~8_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|writememdata[0]~0_combout\,
	combout => \DataPath|memaddr~0_combout\);

-- Location: FF_X65_Y70_N11
\DataPath|memaddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|memaddr~0_combout\,
	sload => VCC,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(4));

-- Location: LCCOMB_X65_Y70_N2
\DataPath|memaddr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|memaddr~3_combout\ = (\DataPath|writememdata[0]~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add2~12_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & ((\DataPath|stackPointer\(6)))))) # (!\DataPath|writememdata[0]~0_combout\ & 
-- (\DataPath|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata[0]~0_combout\,
	datab => \DataPath|Add2~12_combout\,
	datac => \DataPath|stackPointer\(6),
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|memaddr~3_combout\);

-- Location: FF_X65_Y70_N3
\DataPath|memaddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|memaddr~3_combout\,
	ena => \DataPath|memaddr[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|memaddr\(6));

-- Location: LCCOMB_X65_Y70_N10
\RAM|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|LessThan0~0_combout\ = (\DataPath|memaddr\(7)) # ((\DataPath|memaddr\(5)) # ((\DataPath|memaddr\(4)) # (\DataPath|memaddr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(7),
	datab => \DataPath|memaddr\(5),
	datac => \DataPath|memaddr\(4),
	datad => \DataPath|memaddr\(6),
	combout => \RAM|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y68_N28
\RAM|RAM[7][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[7][0]~0_combout\ = (!\DataPath|memaddr\(3) & (\DataPath|writemem~q\ & (!\RAM|LessThan0~1_combout\ & !\RAM|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(3),
	datab => \DataPath|writemem~q\,
	datac => \RAM|LessThan0~1_combout\,
	datad => \RAM|LessThan0~0_combout\,
	combout => \RAM|RAM[7][0]~0_combout\);

-- Location: LCCOMB_X65_Y68_N8
\RAM|RAM[6][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][0]~10_combout\ = (\DataPath|memaddr\(2) & (!\DataPath|memaddr\(0) & (\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[6][0]~10_combout\);

-- Location: FF_X59_Y66_N5
\RAM|RAM[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][1]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][1]~q\);

-- Location: LCCOMB_X65_Y68_N22
\RAM|RAM[4][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[4][0]~11_combout\ = (\DataPath|memaddr\(2) & (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[4][0]~11_combout\);

-- Location: FF_X59_Y66_N23
\RAM|RAM[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(1),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][1]~q\);

-- Location: LCCOMB_X59_Y66_N22
\DataPath|towrite~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~16_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][1]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][1]~q\,
	datac => \RAM|RAM[4][1]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~16_combout\);

-- Location: LCCOMB_X65_Y68_N0
\RAM|RAM[7][0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[7][0]~12_combout\ = (\DataPath|memaddr\(2) & (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[7][0]~12_combout\);

-- Location: FF_X60_Y66_N19
\RAM|RAM[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(1),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][1]~q\);

-- Location: LCCOMB_X60_Y66_N12
\RAM|RAM[5][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][1]~feeder_combout\ = \DataPath|writememdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(1),
	combout => \RAM|RAM[5][1]~feeder_combout\);

-- Location: LCCOMB_X65_Y68_N6
\RAM|RAM[5][0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][0]~9_combout\ = (\DataPath|memaddr\(2) & (\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[5][0]~9_combout\);

-- Location: FF_X60_Y66_N13
\RAM|RAM[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][1]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][1]~q\);

-- Location: LCCOMB_X60_Y66_N18
\DataPath|towrite~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~17_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~16_combout\ & (\RAM|RAM[7][1]~q\)) # (!\DataPath|towrite~16_combout\ & ((\RAM|RAM[5][1]~q\))))) # (!\DataPath|memaddr\(0) & (\DataPath|towrite~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|towrite~16_combout\,
	datac => \RAM|RAM[7][1]~q\,
	datad => \RAM|RAM[5][1]~q\,
	combout => \DataPath|towrite~17_combout\);

-- Location: LCCOMB_X65_Y70_N8
\DataPath|towrite~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~0_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((!\DataPath|memaddr\(3) & \DataPath|memaddr\(2))))) # (!\ControlUnit|Decoder0~0_combout\ & (\ControlUnit|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|memaddr\(3),
	datac => \DataPath|memaddr\(2),
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|towrite~0_combout\);

-- Location: LCCOMB_X65_Y68_N14
\DataPath|towrite~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~4_combout\ = (\DataPath|memaddr\(1)) # (!\DataPath|memaddr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(3),
	datac => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~4_combout\);

-- Location: LCCOMB_X65_Y68_N16
\DataPath|towrite~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~1_combout\ = (\DataPath|memaddr\(3) & ((\DataPath|memaddr\(1)) # (\DataPath|memaddr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datac => \DataPath|memaddr\(3),
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~1_combout\);

-- Location: LCCOMB_X65_Y70_N18
\RAM|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~0_combout\ = (!\DataPath|memaddr\(8) & (!\DataPath|memaddr\(9) & (!\DataPath|memaddr\(2) & !\RAM|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(8),
	datab => \DataPath|memaddr\(9),
	datac => \DataPath|memaddr\(2),
	datad => \RAM|LessThan0~0_combout\,
	combout => \RAM|Decoder0~0_combout\);

-- Location: LCCOMB_X65_Y70_N20
\RAM|RAM[10][0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][0]~2_combout\ = (\DataPath|writemem~q\ & (\DataPath|memaddr\(3) & \RAM|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writemem~q\,
	datac => \DataPath|memaddr\(3),
	datad => \RAM|Decoder0~0_combout\,
	combout => \RAM|RAM[10][0]~2_combout\);

-- Location: LCCOMB_X65_Y70_N14
\RAM|RAM[8][0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[8][0]~7_combout\ = (!\DataPath|memaddr\(1) & (!\DataPath|memaddr\(0) & \RAM|RAM[10][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datac => \DataPath|memaddr\(0),
	datad => \RAM|RAM[10][0]~2_combout\,
	combout => \RAM|RAM[8][0]~7_combout\);

-- Location: FF_X61_Y68_N17
\RAM|RAM[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(1),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][1]~q\);

-- Location: LCCOMB_X60_Y68_N8
\RAM|RAM[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][1]~feeder_combout\ = \DataPath|writememdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(1),
	combout => \RAM|RAM[9][1]~feeder_combout\);

-- Location: LCCOMB_X61_Y65_N8
\RAM|RAM[9][0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][0]~3_combout\ = (!\DataPath|memaddr\(1) & (\RAM|RAM[10][0]~2_combout\ & \DataPath|memaddr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[10][0]~2_combout\,
	datad => \DataPath|memaddr\(0),
	combout => \RAM|RAM[9][0]~3_combout\);

-- Location: FF_X60_Y68_N9
\RAM|RAM[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][1]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][1]~q\);

-- Location: LCCOMB_X61_Y68_N16
\DataPath|towrite~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~13_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][1]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][1]~q\,
	datad => \RAM|RAM[9][1]~q\,
	combout => \DataPath|towrite~13_combout\);

-- Location: LCCOMB_X60_Y68_N30
\RAM|RAM[10][0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][0]~8_combout\ = (!\DataPath|memaddr\(0) & (\DataPath|memaddr\(1) & \RAM|RAM[10][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datad => \RAM|RAM[10][0]~2_combout\,
	combout => \RAM|RAM[10][0]~8_combout\);

-- Location: FF_X57_Y68_N31
\RAM|RAM[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(1),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][1]~q\);

-- Location: LCCOMB_X67_Y68_N20
\RAM|RAM[2][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][1]~feeder_combout\ = \DataPath|writememdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(1),
	combout => \RAM|RAM[2][1]~feeder_combout\);

-- Location: LCCOMB_X65_Y68_N24
\RAM|RAM[2][0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][0]~4_combout\ = (!\DataPath|memaddr\(2) & (!\DataPath|memaddr\(0) & (\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[2][0]~4_combout\);

-- Location: FF_X67_Y68_N21
\RAM|RAM[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][1]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][1]~q\);

-- Location: LCCOMB_X65_Y68_N20
\RAM|RAM[3][0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[3][0]~6_combout\ = (!\DataPath|memaddr\(2) & (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[3][0]~6_combout\);

-- Location: FF_X66_Y68_N13
\RAM|RAM[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(1),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][1]~q\);

-- Location: LCCOMB_X68_Y68_N20
\RAM|RAM~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~13_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(1),
	combout => \RAM|RAM~13_combout\);

-- Location: LCCOMB_X65_Y68_N10
\RAM|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|Decoder0~1_combout\ = (!\DataPath|memaddr\(3) & (\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & \RAM|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(3),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|Decoder0~0_combout\,
	combout => \RAM|Decoder0~1_combout\);

-- Location: LCCOMB_X65_Y68_N30
\RAM|RAM[1][17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[1][17]~14_combout\ = (\RAM|Decoder0~1_combout\) # (!\DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writemem~q\,
	datad => \RAM|Decoder0~1_combout\,
	combout => \RAM|RAM[1][17]~14_combout\);

-- Location: FF_X68_Y68_N21
\RAM|RAM[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~13_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][1]~q\);

-- Location: LCCOMB_X66_Y68_N10
\DataPath|towrite~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~11_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][1]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][1]~q\,
	datad => \RAM|RAM[1][1]~q\,
	combout => \DataPath|towrite~11_combout\);

-- Location: LCCOMB_X66_Y68_N12
\DataPath|towrite~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~12_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~11_combout\ & ((\RAM|RAM[3][1]~q\))) # (!\DataPath|towrite~11_combout\ & (\RAM|RAM[2][1]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][1]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][1]~q\,
	datad => \DataPath|towrite~11_combout\,
	combout => \DataPath|towrite~12_combout\);

-- Location: LCCOMB_X57_Y68_N30
\DataPath|towrite~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~14_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~13_combout\ & (\RAM|RAM[10][1]~q\)) # (!\DataPath|towrite~13_combout\ & ((\DataPath|towrite~12_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~13_combout\,
	datac => \RAM|RAM[10][1]~q\,
	datad => \DataPath|towrite~12_combout\,
	combout => \DataPath|towrite~14_combout\);

-- Location: LCCOMB_X56_Y69_N24
\DataPath|Mux127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux127~0_combout\ = (\DataPath|PC\(2) & (\DataPath|PC\(0))) # (!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(1),
	combout => \DataPath|Mux127~0_combout\);

-- Location: LCCOMB_X59_Y69_N30
\DataPath|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~60_combout\ = (\DataPath|PC\(1) & (\DataPath|regs[0][1]~q\)) # (!\DataPath|PC\(1) & (((\DataPath|regs[1][1]~q\ & \DataPath|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][1]~q\,
	datab => \DataPath|regs[1][1]~q\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(1),
	combout => \DataPath|Add0~60_combout\);

-- Location: LCCOMB_X58_Y71_N20
\DataPath|Add0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~190_combout\ = (\DataPath|PC\(2) & \DataPath|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|PC\(2),
	datad => \DataPath|Add0~60_combout\,
	combout => \DataPath|Add0~190_combout\);

-- Location: FF_X60_Y69_N9
\DataPath|regs[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~10_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][0]~q\);

-- Location: FF_X61_Y69_N1
\DataPath|regs[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~10_combout\,
	sload => VCC,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][0]~q\);

-- Location: LCCOMB_X59_Y68_N2
\InstructionFetch|list~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \InstructionFetch|list~1_combout\ = (!\DataPath|PC\(1) & (\DataPath|PC\(0) & \DataPath|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \InstructionFetch|list~1_combout\);

-- Location: LCCOMB_X61_Y69_N0
\DataPath|num2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~0_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][0]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr4~0_combout\,
	datab => \DataPath|regs[1][0]~q\,
	datac => \DataPath|regs[0][0]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~0_combout\);

-- Location: LCCOMB_X61_Y69_N30
\DataPath|num2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~34_combout\ = (\DataPath|num2~0_combout\) # ((!\DataPath|PC\(0) & (!\DataPath|PC\(2) & \DataPath|PC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|num2~0_combout\,
	combout => \DataPath|num2~34_combout\);

-- Location: LCCOMB_X58_Y69_N20
\DataPath|writememdata[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[0]~feeder_combout\ = \DataPath|Mux63~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux63~3_combout\,
	combout => \DataPath|writememdata[0]~feeder_combout\);

-- Location: FF_X58_Y69_N21
\DataPath|writememdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[0]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(0));

-- Location: LCCOMB_X62_Y66_N12
\RAM|RAM[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][0]~feeder_combout\ = \DataPath|writememdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(0),
	combout => \RAM|RAM[5][0]~feeder_combout\);

-- Location: FF_X62_Y66_N13
\RAM|RAM[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][0]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][0]~q\);

-- Location: FF_X62_Y66_N7
\RAM|RAM[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(0),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][0]~q\);

-- Location: LCCOMB_X59_Y66_N8
\RAM|RAM[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][0]~feeder_combout\ = \DataPath|writememdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(0),
	combout => \RAM|RAM[6][0]~feeder_combout\);

-- Location: FF_X59_Y66_N9
\RAM|RAM[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][0]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][0]~q\);

-- Location: FF_X59_Y66_N7
\RAM|RAM[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(0),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][0]~q\);

-- Location: LCCOMB_X59_Y66_N6
\DataPath|towrite~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~8_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][0]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][0]~q\,
	datac => \RAM|RAM[4][0]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~8_combout\);

-- Location: LCCOMB_X62_Y66_N6
\DataPath|towrite~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~9_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~8_combout\ & ((\RAM|RAM[7][0]~q\))) # (!\DataPath|towrite~8_combout\ & (\RAM|RAM[5][0]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][0]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][0]~q\,
	datad => \DataPath|towrite~8_combout\,
	combout => \DataPath|towrite~9_combout\);

-- Location: LCCOMB_X61_Y69_N4
\DataPath|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~61_combout\ = (\DataPath|PC\(2) & (((\DataPath|num2~0_combout\)))) # (!\DataPath|PC\(2) & ((\DataPath|PC\(0) & (\DataPath|PC\(1) $ (\DataPath|num2~0_combout\))) # (!\DataPath|PC\(0) & (!\DataPath|PC\(1) & !\DataPath|num2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|num2~0_combout\,
	combout => \DataPath|Add0~61_combout\);

-- Location: LCCOMB_X57_Y71_N16
\DataPath|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~63_cout\ = CARRY((!\DataPath|PC\(0)) # (!\DataPath|PC\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(0),
	datad => VCC,
	cout => \DataPath|Add0~63_cout\);

-- Location: LCCOMB_X57_Y71_N18
\DataPath|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~64_combout\ = (\DataPath|Mux63~3_combout\ & ((\DataPath|Add0~61_combout\ & (\DataPath|Add0~63_cout\ & VCC)) # (!\DataPath|Add0~61_combout\ & (!\DataPath|Add0~63_cout\)))) # (!\DataPath|Mux63~3_combout\ & ((\DataPath|Add0~61_combout\ & 
-- (!\DataPath|Add0~63_cout\)) # (!\DataPath|Add0~61_combout\ & ((\DataPath|Add0~63_cout\) # (GND)))))
-- \DataPath|Add0~65\ = CARRY((\DataPath|Mux63~3_combout\ & (!\DataPath|Add0~61_combout\ & !\DataPath|Add0~63_cout\)) # (!\DataPath|Mux63~3_combout\ & ((!\DataPath|Add0~63_cout\) # (!\DataPath|Add0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux63~3_combout\,
	datab => \DataPath|Add0~61_combout\,
	datad => VCC,
	cin => \DataPath|Add0~63_cout\,
	combout => \DataPath|Add0~64_combout\,
	cout => \DataPath|Add0~65\);

-- Location: LCCOMB_X57_Y71_N4
\DataPath|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~66_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~64_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux63~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux63~3_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~64_combout\,
	combout => \DataPath|Add0~66_combout\);

-- Location: LCCOMB_X62_Y65_N28
\RAM|RAM[9][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][0]~feeder_combout\ = \DataPath|writememdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(0),
	combout => \RAM|RAM[9][0]~feeder_combout\);

-- Location: FF_X62_Y65_N29
\RAM|RAM[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][0]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][0]~q\);

-- Location: FF_X61_Y68_N15
\RAM|RAM[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(0),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][0]~q\);

-- Location: FF_X61_Y68_N21
\RAM|RAM[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(0),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][0]~q\);

-- Location: LCCOMB_X67_Y68_N6
\RAM|RAM[2][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][0]~feeder_combout\ = \DataPath|writememdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(0),
	combout => \RAM|RAM[2][0]~feeder_combout\);

-- Location: FF_X67_Y68_N7
\RAM|RAM[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][0]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][0]~q\);

-- Location: FF_X66_Y68_N25
\RAM|RAM[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(0),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][0]~q\);

-- Location: LCCOMB_X67_Y68_N12
\RAM|RAM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~5_combout\ = (\RAM|Decoder0~1_combout\ & (\DataPath|writememdata\(0))) # (!\RAM|Decoder0~1_combout\ & ((\RAM|RAM[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writememdata\(0),
	datac => \RAM|RAM[1][0]~q\,
	datad => \RAM|Decoder0~1_combout\,
	combout => \RAM|RAM~5_combout\);

-- Location: LCCOMB_X74_Y65_N4
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

-- Location: IOIBUF_X115_Y40_N8
\in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\,
	o => \in~input_o\);

-- Location: FF_X75_Y65_N19
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

-- Location: LCCOMB_X75_Y65_N24
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

-- Location: FF_X75_Y65_N25
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

-- Location: LCCOMB_X75_Y65_N18
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

-- Location: FF_X74_Y65_N5
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

-- Location: LCCOMB_X74_Y65_N6
\RAM|comb_3|q_reg[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[1]~13_combout\ = (\RAM|comb_3|q_reg\(1) & (!\RAM|comb_3|q_reg[0]~12\)) # (!\RAM|comb_3|q_reg\(1) & ((\RAM|comb_3|q_reg[0]~12\) # (GND)))
-- \RAM|comb_3|q_reg[1]~14\ = CARRY((!\RAM|comb_3|q_reg[0]~12\) # (!\RAM|comb_3|q_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(1),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[0]~12\,
	combout => \RAM|comb_3|q_reg[1]~13_combout\,
	cout => \RAM|comb_3|q_reg[1]~14\);

-- Location: FF_X74_Y65_N7
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

-- Location: LCCOMB_X74_Y65_N8
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

-- Location: FF_X74_Y65_N9
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

-- Location: LCCOMB_X74_Y65_N10
\RAM|comb_3|q_reg[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[3]~17_combout\ = (\RAM|comb_3|q_reg\(3) & (!\RAM|comb_3|q_reg[2]~16\)) # (!\RAM|comb_3|q_reg\(3) & ((\RAM|comb_3|q_reg[2]~16\) # (GND)))
-- \RAM|comb_3|q_reg[3]~18\ = CARRY((!\RAM|comb_3|q_reg[2]~16\) # (!\RAM|comb_3|q_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(3),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[2]~16\,
	combout => \RAM|comb_3|q_reg[3]~17_combout\,
	cout => \RAM|comb_3|q_reg[3]~18\);

-- Location: FF_X74_Y65_N11
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

-- Location: LCCOMB_X74_Y65_N12
\RAM|comb_3|q_reg[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[4]~19_combout\ = (\RAM|comb_3|q_reg\(4) & (\RAM|comb_3|q_reg[3]~18\ $ (GND))) # (!\RAM|comb_3|q_reg\(4) & (!\RAM|comb_3|q_reg[3]~18\ & VCC))
-- \RAM|comb_3|q_reg[4]~20\ = CARRY((\RAM|comb_3|q_reg\(4) & !\RAM|comb_3|q_reg[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|comb_3|q_reg\(4),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[3]~18\,
	combout => \RAM|comb_3|q_reg[4]~19_combout\,
	cout => \RAM|comb_3|q_reg[4]~20\);

-- Location: FF_X74_Y65_N13
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

-- Location: LCCOMB_X74_Y65_N14
\RAM|comb_3|q_reg[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[5]~21_combout\ = (\RAM|comb_3|q_reg\(5) & (!\RAM|comb_3|q_reg[4]~20\)) # (!\RAM|comb_3|q_reg\(5) & ((\RAM|comb_3|q_reg[4]~20\) # (GND)))
-- \RAM|comb_3|q_reg[5]~22\ = CARRY((!\RAM|comb_3|q_reg[4]~20\) # (!\RAM|comb_3|q_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(5),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[4]~20\,
	combout => \RAM|comb_3|q_reg[5]~21_combout\,
	cout => \RAM|comb_3|q_reg[5]~22\);

-- Location: FF_X74_Y65_N15
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

-- Location: LCCOMB_X74_Y65_N16
\RAM|comb_3|q_reg[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[6]~23_combout\ = (\RAM|comb_3|q_reg\(6) & (\RAM|comb_3|q_reg[5]~22\ $ (GND))) # (!\RAM|comb_3|q_reg\(6) & (!\RAM|comb_3|q_reg[5]~22\ & VCC))
-- \RAM|comb_3|q_reg[6]~24\ = CARRY((\RAM|comb_3|q_reg\(6) & !\RAM|comb_3|q_reg[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(6),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[5]~22\,
	combout => \RAM|comb_3|q_reg[6]~23_combout\,
	cout => \RAM|comb_3|q_reg[6]~24\);

-- Location: FF_X74_Y65_N17
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

-- Location: LCCOMB_X74_Y65_N18
\RAM|comb_3|q_reg[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[7]~25_combout\ = (\RAM|comb_3|q_reg\(7) & (!\RAM|comb_3|q_reg[6]~24\)) # (!\RAM|comb_3|q_reg\(7) & ((\RAM|comb_3|q_reg[6]~24\) # (GND)))
-- \RAM|comb_3|q_reg[7]~26\ = CARRY((!\RAM|comb_3|q_reg[6]~24\) # (!\RAM|comb_3|q_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(7),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[6]~24\,
	combout => \RAM|comb_3|q_reg[7]~25_combout\,
	cout => \RAM|comb_3|q_reg[7]~26\);

-- Location: FF_X74_Y65_N19
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

-- Location: LCCOMB_X74_Y65_N20
\RAM|comb_3|q_reg[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[8]~27_combout\ = (\RAM|comb_3|q_reg\(8) & (\RAM|comb_3|q_reg[7]~26\ $ (GND))) # (!\RAM|comb_3|q_reg\(8) & (!\RAM|comb_3|q_reg[7]~26\ & VCC))
-- \RAM|comb_3|q_reg[8]~28\ = CARRY((\RAM|comb_3|q_reg\(8) & !\RAM|comb_3|q_reg[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(8),
	datad => VCC,
	cin => \RAM|comb_3|q_reg[7]~26\,
	combout => \RAM|comb_3|q_reg[8]~27_combout\,
	cout => \RAM|comb_3|q_reg[8]~28\);

-- Location: FF_X74_Y65_N21
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

-- Location: LCCOMB_X74_Y65_N22
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

-- Location: FF_X74_Y65_N23
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

-- Location: LCCOMB_X74_Y65_N24
\RAM|comb_3|q_reg[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|q_reg[10]~31_combout\ = \RAM|comb_3|q_reg[9]~30\ $ (!\RAM|comb_3|q_reg\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RAM|comb_3|q_reg\(10),
	cin => \RAM|comb_3|q_reg[9]~30\,
	combout => \RAM|comb_3|q_reg[10]~31_combout\);

-- Location: FF_X74_Y65_N25
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

-- Location: LCCOMB_X74_Y65_N28
\RAM|comb_3|DB_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_3|DB_out~0_combout\ = (\RAM|comb_3|q_reg\(10) & ((\RAM|comb_3|DFF2~q\))) # (!\RAM|comb_3|q_reg\(10) & (\RAM|comb_3|DB_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|comb_3|q_reg\(10),
	datac => \RAM|comb_3|DB_out~q\,
	datad => \RAM|comb_3|DFF2~q\,
	combout => \RAM|comb_3|DB_out~0_combout\);

-- Location: FF_X74_Y65_N29
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

-- Location: FF_X67_Y68_N13
\RAM|RAM[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~5_combout\,
	asdata => \RAM|comb_3|DB_out~q\,
	sload => \DataPath|ALT_INV_writemem~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][0]~q\);

-- Location: LCCOMB_X65_Y68_N26
\RAM|RAM[0][0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[0][0]~1_combout\ = (!\DataPath|memaddr\(2) & (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & \RAM|RAM[7][0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(2),
	datab => \DataPath|memaddr\(0),
	datac => \DataPath|memaddr\(1),
	datad => \RAM|RAM[7][0]~0_combout\,
	combout => \RAM|RAM[0][0]~1_combout\);

-- Location: FF_X66_Y68_N29
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
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][0]~q\);

-- Location: LCCOMB_X66_Y68_N2
\DataPath|towrite~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~2_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & (\RAM|RAM[1][0]~q\)) # (!\DataPath|memaddr\(0) & ((\RAM|RAM[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[1][0]~q\,
	datad => \RAM|RAM[0][0]~q\,
	combout => \DataPath|towrite~2_combout\);

-- Location: LCCOMB_X66_Y68_N24
\DataPath|towrite~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~3_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~2_combout\ & ((\RAM|RAM[3][0]~q\))) # (!\DataPath|towrite~2_combout\ & (\RAM|RAM[2][0]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][0]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][0]~q\,
	datad => \DataPath|towrite~2_combout\,
	combout => \DataPath|towrite~3_combout\);

-- Location: LCCOMB_X61_Y68_N20
\DataPath|towrite~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~5_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~3_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][0]~q\,
	datad => \DataPath|towrite~3_combout\,
	combout => \DataPath|towrite~5_combout\);

-- Location: LCCOMB_X61_Y68_N14
\DataPath|towrite~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~6_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~5_combout\ & ((\RAM|RAM[10][0]~q\))) # (!\DataPath|towrite~5_combout\ & (\RAM|RAM[9][0]~q\)))) # (!\DataPath|towrite~1_combout\ & (((\DataPath|towrite~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][0]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][0]~q\,
	datad => \DataPath|towrite~5_combout\,
	combout => \DataPath|towrite~6_combout\);

-- Location: LCCOMB_X61_Y69_N24
\DataPath|towrite~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~7_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~6_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|Add0~66_combout\,
	datad => \DataPath|towrite~6_combout\,
	combout => \DataPath|towrite~7_combout\);

-- Location: LCCOMB_X61_Y69_N20
\DataPath|towrite~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~10_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~7_combout\ & ((\DataPath|towrite~9_combout\))) # (!\DataPath|towrite~7_combout\ & (\DataPath|num2~34_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~34_combout\,
	datac => \DataPath|towrite~9_combout\,
	datad => \DataPath|towrite~7_combout\,
	combout => \DataPath|towrite~10_combout\);

-- Location: FF_X61_Y69_N21
\DataPath|regs[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~10_combout\,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][0]~q\);

-- Location: LCCOMB_X61_Y69_N14
\DataPath|Mux63~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~2_combout\ = (\DataPath|regs[3][0]~q\ & (!\DataPath|PC\(2) & (\DataPath|PC\(1) & \DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[3][0]~q\,
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Mux63~2_combout\);

-- Location: LCCOMB_X61_Y69_N10
\DataPath|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~0_combout\ = (\DataPath|regs[0][0]~q\ & ((\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (\DataPath|PC\(0)))) # (!\DataPath|PC\(2) & ((!\DataPath|PC\(0)) # (!\DataPath|PC\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][0]~q\,
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Mux63~0_combout\);

-- Location: LCCOMB_X60_Y69_N8
\DataPath|Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~1_combout\ = (\DataPath|regs[1][0]~q\ & ((\DataPath|PC\(2)) # ((!\DataPath|PC\(0)) # (!\DataPath|PC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datac => \DataPath|regs[1][0]~q\,
	datad => \DataPath|PC\(0),
	combout => \DataPath|Mux63~1_combout\);

-- Location: LCCOMB_X58_Y69_N16
\DataPath|Mux63~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux63~3_combout\ = (\DataPath|Mux63~0_combout\) # ((!\InstructionFetch|list~0_combout\ & ((\DataPath|Mux63~2_combout\) # (\DataPath|Mux63~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux63~2_combout\,
	datab => \DataPath|Mux63~0_combout\,
	datac => \DataPath|Mux63~1_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux63~3_combout\);

-- Location: LCCOMB_X57_Y71_N20
\DataPath|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~67_combout\ = ((\DataPath|Add0~190_combout\ $ (\DataPath|Mux62~1_combout\ $ (!\DataPath|Add0~65\)))) # (GND)
-- \DataPath|Add0~68\ = CARRY((\DataPath|Add0~190_combout\ & ((\DataPath|Mux62~1_combout\) # (!\DataPath|Add0~65\))) # (!\DataPath|Add0~190_combout\ & (\DataPath|Mux62~1_combout\ & !\DataPath|Add0~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~190_combout\,
	datab => \DataPath|Mux62~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~65\,
	combout => \DataPath|Add0~67_combout\,
	cout => \DataPath|Add0~68\);

-- Location: LCCOMB_X57_Y71_N10
\DataPath|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~69_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~67_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux62~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux62~1_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~67_combout\,
	combout => \DataPath|Add0~69_combout\);

-- Location: LCCOMB_X57_Y68_N8
\DataPath|towrite~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~15_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~14_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~14_combout\,
	datad => \DataPath|Add0~69_combout\,
	combout => \DataPath|towrite~15_combout\);

-- Location: LCCOMB_X60_Y69_N12
\DataPath|towrite~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~18_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~15_combout\ & ((\DataPath|towrite~17_combout\))) # (!\DataPath|towrite~15_combout\ & (\DataPath|num2~35_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~35_combout\,
	datab => \DataPath|towrite~17_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~15_combout\,
	combout => \DataPath|towrite~18_combout\);

-- Location: FF_X60_Y69_N11
\DataPath|regs[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~18_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][1]~q\);

-- Location: LCCOMB_X60_Y69_N18
\DataPath|Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux62~0_combout\ = (\InstructionFetch|list~0_combout\ & ((\DataPath|regs[0][1]~q\))) # (!\InstructionFetch|list~0_combout\ & (\DataPath|regs[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][1]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datad => \DataPath|regs[0][1]~q\,
	combout => \DataPath|Mux62~0_combout\);

-- Location: LCCOMB_X60_Y69_N10
\DataPath|Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux62~1_combout\ = (\InstructionFetch|list~2_combout\ & (!\InstructionFetch|list~0_combout\ & (\DataPath|regs[3][1]~q\))) # (!\InstructionFetch|list~2_combout\ & (((\DataPath|Mux62~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][1]~q\,
	datad => \DataPath|Mux62~0_combout\,
	combout => \DataPath|Mux62~1_combout\);

-- Location: LCCOMB_X58_Y69_N10
\DataPath|writememdata[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[1]~feeder_combout\ = \DataPath|Mux62~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux62~1_combout\,
	combout => \DataPath|writememdata[1]~feeder_combout\);

-- Location: FF_X58_Y69_N11
\DataPath|writememdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[1]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(1));

-- Location: FF_X66_Y68_N31
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
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][1]~q\);

-- Location: FF_X58_Y68_N27
\DataPath|regs[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~34_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][3]~q\);

-- Location: LCCOMB_X58_Y68_N26
\DataPath|num2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~2_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][3]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~1_combout\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][3]~q\,
	datad => \DataPath|regs[0][3]~q\,
	combout => \DataPath|num2~2_combout\);

-- Location: LCCOMB_X56_Y68_N18
\DataPath|num2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~36_combout\ = (\DataPath|num2~2_combout\) # ((\InstructionFetch|list~2_combout\ & \ControlUnit|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \InstructionFetch|list~2_combout\,
	datac => \ControlUnit|WideOr4~0_combout\,
	datad => \DataPath|num2~2_combout\,
	combout => \DataPath|num2~36_combout\);

-- Location: LCCOMB_X60_Y66_N16
\RAM|RAM[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][3]~feeder_combout\ = \DataPath|writememdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(3),
	combout => \RAM|RAM[5][3]~feeder_combout\);

-- Location: FF_X60_Y66_N17
\RAM|RAM[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][3]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][3]~q\);

-- Location: FF_X60_Y66_N23
\RAM|RAM[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(3),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][3]~q\);

-- Location: FF_X59_Y66_N19
\RAM|RAM[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(3),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][3]~q\);

-- Location: LCCOMB_X59_Y66_N16
\RAM|RAM[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][3]~feeder_combout\ = \DataPath|writememdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(3),
	combout => \RAM|RAM[6][3]~feeder_combout\);

-- Location: FF_X59_Y66_N17
\RAM|RAM[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][3]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][3]~q\);

-- Location: LCCOMB_X59_Y66_N18
\DataPath|towrite~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~32_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0)) # ((\RAM|RAM[6][3]~q\)))) # (!\DataPath|memaddr\(1) & (!\DataPath|memaddr\(0) & (\RAM|RAM[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[4][3]~q\,
	datad => \RAM|RAM[6][3]~q\,
	combout => \DataPath|towrite~32_combout\);

-- Location: LCCOMB_X60_Y66_N22
\DataPath|towrite~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~33_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~32_combout\ & ((\RAM|RAM[7][3]~q\))) # (!\DataPath|towrite~32_combout\ & (\RAM|RAM[5][3]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][3]~q\,
	datac => \RAM|RAM[7][3]~q\,
	datad => \DataPath|towrite~32_combout\,
	combout => \DataPath|towrite~33_combout\);

-- Location: LCCOMB_X58_Y68_N16
\DataPath|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~73_combout\ = \ControlUnit|WideOr2~0_combout\ $ (((\DataPath|num2~2_combout\) # ((\InstructionFetch|list~2_combout\ & \ControlUnit|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~2_combout\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \ControlUnit|WideOr4~0_combout\,
	datad => \ControlUnit|WideOr2~0_combout\,
	combout => \DataPath|Add0~73_combout\);

-- Location: FF_X58_Y68_N1
\DataPath|regs[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~26_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][2]~q\);

-- Location: FF_X58_Y69_N31
\DataPath|regs[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~26_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][2]~q\);

-- Location: LCCOMB_X58_Y69_N30
\DataPath|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux61~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][2]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[1][2]~q\,
	datac => \DataPath|regs[3][2]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux61~0_combout\);

-- Location: LCCOMB_X58_Y69_N0
\DataPath|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux61~1_combout\ = (\DataPath|Mux61~0_combout\) # ((\DataPath|regs[0][2]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][2]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|Mux61~0_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux61~1_combout\);

-- Location: LCCOMB_X58_Y69_N12
\DataPath|writememdata[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[2]~feeder_combout\ = \DataPath|Mux61~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux61~1_combout\,
	combout => \DataPath|writememdata[2]~feeder_combout\);

-- Location: FF_X58_Y69_N13
\DataPath|writememdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[2]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(2));

-- Location: LCCOMB_X60_Y66_N24
\RAM|RAM[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][2]~feeder_combout\ = \DataPath|writememdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(2),
	combout => \RAM|RAM[5][2]~feeder_combout\);

-- Location: FF_X60_Y66_N25
\RAM|RAM[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][2]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][2]~q\);

-- Location: FF_X60_Y66_N15
\RAM|RAM[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(2),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][2]~q\);

-- Location: FF_X59_Y66_N15
\RAM|RAM[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(2),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][2]~q\);

-- Location: LCCOMB_X59_Y66_N12
\RAM|RAM[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][2]~feeder_combout\ = \DataPath|writememdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(2),
	combout => \RAM|RAM[6][2]~feeder_combout\);

-- Location: FF_X59_Y66_N13
\RAM|RAM[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][2]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][2]~q\);

-- Location: LCCOMB_X59_Y66_N14
\DataPath|towrite~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~24_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0)) # ((\RAM|RAM[6][2]~q\)))) # (!\DataPath|memaddr\(1) & (!\DataPath|memaddr\(0) & (\RAM|RAM[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[4][2]~q\,
	datad => \RAM|RAM[6][2]~q\,
	combout => \DataPath|towrite~24_combout\);

-- Location: LCCOMB_X60_Y66_N14
\DataPath|towrite~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~25_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~24_combout\ & ((\RAM|RAM[7][2]~q\))) # (!\DataPath|towrite~24_combout\ & (\RAM|RAM[5][2]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][2]~q\,
	datac => \RAM|RAM[7][2]~q\,
	datad => \DataPath|towrite~24_combout\,
	combout => \DataPath|towrite~25_combout\);

-- Location: LCCOMB_X57_Y71_N22
\DataPath|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~70_combout\ = (\DataPath|Add0~161_combout\ & ((\DataPath|Mux61~1_combout\ & (\DataPath|Add0~68\ & VCC)) # (!\DataPath|Mux61~1_combout\ & (!\DataPath|Add0~68\)))) # (!\DataPath|Add0~161_combout\ & ((\DataPath|Mux61~1_combout\ & 
-- (!\DataPath|Add0~68\)) # (!\DataPath|Mux61~1_combout\ & ((\DataPath|Add0~68\) # (GND)))))
-- \DataPath|Add0~71\ = CARRY((\DataPath|Add0~161_combout\ & (!\DataPath|Mux61~1_combout\ & !\DataPath|Add0~68\)) # (!\DataPath|Add0~161_combout\ & ((!\DataPath|Add0~68\) # (!\DataPath|Mux61~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~161_combout\,
	datab => \DataPath|Mux61~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~68\,
	combout => \DataPath|Add0~70_combout\,
	cout => \DataPath|Add0~71\);

-- Location: LCCOMB_X57_Y71_N12
\DataPath|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~72_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~70_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux61~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~70_combout\,
	datab => \DataPath|Mux61~1_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Mux127~0_combout\,
	combout => \DataPath|Add0~72_combout\);

-- Location: LCCOMB_X60_Y68_N2
\RAM|RAM[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][2]~feeder_combout\ = \DataPath|writememdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(2),
	combout => \RAM|RAM[9][2]~feeder_combout\);

-- Location: FF_X60_Y68_N3
\RAM|RAM[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][2]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][2]~q\);

-- Location: FF_X57_Y68_N3
\RAM|RAM[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(2),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][2]~q\);

-- Location: FF_X61_Y68_N27
\RAM|RAM[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(2),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][2]~q\);

-- Location: LCCOMB_X67_Y68_N2
\RAM|RAM[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][2]~feeder_combout\ = \DataPath|writememdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(2),
	combout => \RAM|RAM[2][2]~feeder_combout\);

-- Location: FF_X67_Y68_N3
\RAM|RAM[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][2]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][2]~q\);

-- Location: FF_X66_Y68_N5
\RAM|RAM[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(2),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][2]~q\);

-- Location: FF_X66_Y68_N9
\RAM|RAM[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(2),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][2]~q\);

-- Location: LCCOMB_X68_Y68_N22
\RAM|RAM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~15_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writemem~q\,
	datad => \DataPath|writememdata\(2),
	combout => \RAM|RAM~15_combout\);

-- Location: FF_X68_Y68_N23
\RAM|RAM[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~15_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][2]~q\);

-- Location: LCCOMB_X66_Y68_N18
\DataPath|towrite~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~19_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][2]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][2]~q\,
	datad => \RAM|RAM[1][2]~q\,
	combout => \DataPath|towrite~19_combout\);

-- Location: LCCOMB_X66_Y68_N4
\DataPath|towrite~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~20_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~19_combout\ & ((\RAM|RAM[3][2]~q\))) # (!\DataPath|towrite~19_combout\ & (\RAM|RAM[2][2]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][2]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][2]~q\,
	datad => \DataPath|towrite~19_combout\,
	combout => \DataPath|towrite~20_combout\);

-- Location: LCCOMB_X61_Y68_N26
\DataPath|towrite~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~21_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~20_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][2]~q\,
	datad => \DataPath|towrite~20_combout\,
	combout => \DataPath|towrite~21_combout\);

-- Location: LCCOMB_X57_Y68_N2
\DataPath|towrite~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~22_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~21_combout\ & ((\RAM|RAM[10][2]~q\))) # (!\DataPath|towrite~21_combout\ & (\RAM|RAM[9][2]~q\)))) # (!\DataPath|towrite~1_combout\ & (((\DataPath|towrite~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][2]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][2]~q\,
	datad => \DataPath|towrite~21_combout\,
	combout => \DataPath|towrite~22_combout\);

-- Location: LCCOMB_X57_Y68_N16
\DataPath|towrite~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~23_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|towrite~0_combout\) # (\DataPath|towrite~22_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add0~72_combout\ & (!\DataPath|towrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|Add0~72_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~22_combout\,
	combout => \DataPath|towrite~23_combout\);

-- Location: LCCOMB_X57_Y68_N0
\DataPath|towrite~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~26_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~23_combout\ & (\DataPath|towrite~25_combout\)) # (!\DataPath|towrite~23_combout\ & ((\DataPath|num2~1_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|towrite~25_combout\,
	datac => \DataPath|num2~1_combout\,
	datad => \DataPath|towrite~23_combout\,
	combout => \DataPath|towrite~26_combout\);

-- Location: FF_X57_Y68_N1
\DataPath|regs[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~26_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][2]~q\);

-- Location: LCCOMB_X58_Y68_N0
\DataPath|num2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~1_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][2]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][2]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][2]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~1_combout\);

-- Location: LCCOMB_X58_Y68_N8
\DataPath|Add0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~161_combout\ = \DataPath|num2~1_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|num2~1_combout\,
	combout => \DataPath|Add0~161_combout\);

-- Location: LCCOMB_X57_Y71_N24
\DataPath|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~74_combout\ = ((\DataPath|Add0~73_combout\ $ (\DataPath|Mux60~1_combout\ $ (!\DataPath|Add0~71\)))) # (GND)
-- \DataPath|Add0~75\ = CARRY((\DataPath|Add0~73_combout\ & ((\DataPath|Mux60~1_combout\) # (!\DataPath|Add0~71\))) # (!\DataPath|Add0~73_combout\ & (\DataPath|Mux60~1_combout\ & !\DataPath|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~73_combout\,
	datab => \DataPath|Mux60~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~71\,
	combout => \DataPath|Add0~74_combout\,
	cout => \DataPath|Add0~75\);

-- Location: LCCOMB_X57_Y71_N2
\DataPath|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~76_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~74_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux60~1_combout\,
	datad => \DataPath|Add0~74_combout\,
	combout => \DataPath|Add0~76_combout\);

-- Location: FF_X61_Y68_N1
\RAM|RAM[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(3),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][3]~q\);

-- Location: LCCOMB_X60_Y68_N20
\RAM|RAM[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][3]~feeder_combout\ = \DataPath|writememdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(3),
	combout => \RAM|RAM[9][3]~feeder_combout\);

-- Location: FF_X60_Y68_N21
\RAM|RAM[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][3]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][3]~q\);

-- Location: LCCOMB_X61_Y68_N0
\DataPath|towrite~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~29_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][3]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][3]~q\,
	datad => \RAM|RAM[9][3]~q\,
	combout => \DataPath|towrite~29_combout\);

-- Location: FF_X57_Y68_N11
\RAM|RAM[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(3),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][3]~q\);

-- Location: LCCOMB_X67_Y66_N4
\RAM|RAM[2][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][3]~feeder_combout\ = \DataPath|writememdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(3),
	combout => \RAM|RAM[2][3]~feeder_combout\);

-- Location: FF_X67_Y66_N5
\RAM|RAM[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][3]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][3]~q\);

-- Location: FF_X66_Y66_N9
\RAM|RAM[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(3),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][3]~q\);

-- Location: LCCOMB_X67_Y66_N30
\RAM|RAM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~16_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writemem~q\,
	datad => \DataPath|writememdata\(3),
	combout => \RAM|RAM~16_combout\);

-- Location: FF_X67_Y66_N31
\RAM|RAM[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~16_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][3]~q\);

-- Location: LCCOMB_X66_Y66_N18
\DataPath|towrite~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~27_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][3]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & ((\RAM|RAM[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[1][3]~q\,
	datad => \RAM|RAM[0][3]~q\,
	combout => \DataPath|towrite~27_combout\);

-- Location: LCCOMB_X66_Y66_N8
\DataPath|towrite~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~28_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~27_combout\ & ((\RAM|RAM[3][3]~q\))) # (!\DataPath|towrite~27_combout\ & (\RAM|RAM[2][3]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][3]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][3]~q\,
	datad => \DataPath|towrite~27_combout\,
	combout => \DataPath|towrite~28_combout\);

-- Location: LCCOMB_X57_Y68_N10
\DataPath|towrite~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~30_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~29_combout\ & (\RAM|RAM[10][3]~q\)) # (!\DataPath|towrite~29_combout\ & ((\DataPath|towrite~28_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~29_combout\,
	datac => \RAM|RAM[10][3]~q\,
	datad => \DataPath|towrite~28_combout\,
	combout => \DataPath|towrite~30_combout\);

-- Location: LCCOMB_X57_Y68_N20
\DataPath|towrite~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~31_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|towrite~0_combout\) # (\DataPath|towrite~30_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add0~76_combout\ & (!\DataPath|towrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|Add0~76_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~30_combout\,
	combout => \DataPath|towrite~31_combout\);

-- Location: LCCOMB_X57_Y68_N26
\DataPath|towrite~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~34_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~31_combout\ & ((\DataPath|towrite~33_combout\))) # (!\DataPath|towrite~31_combout\ & (\DataPath|num2~36_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~36_combout\,
	datac => \DataPath|towrite~33_combout\,
	datad => \DataPath|towrite~31_combout\,
	combout => \DataPath|towrite~34_combout\);

-- Location: LCCOMB_X57_Y68_N18
\DataPath|regs[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[0][3]~feeder_combout\ = \DataPath|towrite~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|towrite~34_combout\,
	combout => \DataPath|regs[0][3]~feeder_combout\);

-- Location: FF_X57_Y68_N19
\DataPath|regs[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[0][3]~feeder_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][3]~q\);

-- Location: FF_X58_Y69_N23
\DataPath|regs[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~34_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][3]~q\);

-- Location: LCCOMB_X58_Y69_N22
\DataPath|Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux60~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][3]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[1][3]~q\,
	datac => \DataPath|regs[3][3]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux60~0_combout\);

-- Location: LCCOMB_X58_Y69_N18
\DataPath|Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux60~1_combout\ = (\DataPath|Mux60~0_combout\) # ((\DataPath|regs[0][3]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][3]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|Mux60~0_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux60~1_combout\);

-- Location: FF_X58_Y69_N19
\DataPath|writememdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux60~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(3));

-- Location: LCCOMB_X66_Y66_N0
\RAM|RAM[0][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[0][3]~feeder_combout\ = \DataPath|writememdata\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(3),
	combout => \RAM|RAM[0][3]~feeder_combout\);

-- Location: FF_X66_Y66_N1
\RAM|RAM[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[0][3]~feeder_combout\,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][3]~q\);

-- Location: LCCOMB_X66_Y68_N8
\RAM|comb_4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr6~0_combout\ = (\RAM|RAM[0][1]~q\ & (!\RAM|RAM[0][3]~q\ & ((!\RAM|RAM[0][0]~q\) # (!\RAM|RAM[0][2]~q\)))) # (!\RAM|RAM[0][1]~q\ & (\RAM|RAM[0][3]~q\ $ ((\RAM|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][1]~q\,
	datab => \RAM|RAM[0][3]~q\,
	datac => \RAM|RAM[0][2]~q\,
	datad => \RAM|RAM[0][0]~q\,
	combout => \RAM|comb_4|WideOr6~0_combout\);

-- Location: LCCOMB_X66_Y68_N30
\RAM|comb_4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr5~0_combout\ = (\RAM|RAM[0][2]~q\ & ((\RAM|RAM[0][3]~q\) # ((\RAM|RAM[0][1]~q\ & \RAM|RAM[0][0]~q\)))) # (!\RAM|RAM[0][2]~q\ & ((\RAM|RAM[0][1]~q\) # ((!\RAM|RAM[0][3]~q\ & \RAM|RAM[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][2]~q\,
	datab => \RAM|RAM[0][3]~q\,
	datac => \RAM|RAM[0][1]~q\,
	datad => \RAM|RAM[0][0]~q\,
	combout => \RAM|comb_4|WideOr5~0_combout\);

-- Location: LCCOMB_X66_Y68_N28
\RAM|comb_4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr4~0_combout\ = (\RAM|RAM[0][0]~q\) # ((\RAM|RAM[0][1]~q\ & (\RAM|RAM[0][3]~q\)) # (!\RAM|RAM[0][1]~q\ & ((\RAM|RAM[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][1]~q\,
	datab => \RAM|RAM[0][3]~q\,
	datac => \RAM|RAM[0][0]~q\,
	datad => \RAM|RAM[0][2]~q\,
	combout => \RAM|comb_4|WideOr4~0_combout\);

-- Location: LCCOMB_X66_Y68_N14
\RAM|comb_4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr3~0_combout\ = (\RAM|RAM[0][1]~q\ & ((\RAM|RAM[0][3]~q\) # ((\RAM|RAM[0][0]~q\ & \RAM|RAM[0][2]~q\)))) # (!\RAM|RAM[0][1]~q\ & (\RAM|RAM[0][2]~q\ $ (((\RAM|RAM[0][0]~q\ & !\RAM|RAM[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][1]~q\,
	datab => \RAM|RAM[0][0]~q\,
	datac => \RAM|RAM[0][2]~q\,
	datad => \RAM|RAM[0][3]~q\,
	combout => \RAM|comb_4|WideOr3~0_combout\);

-- Location: LCCOMB_X66_Y68_N0
\RAM|comb_4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr2~0_combout\ = (\RAM|RAM[0][2]~q\ & (((\RAM|RAM[0][3]~q\)))) # (!\RAM|RAM[0][2]~q\ & (\RAM|RAM[0][1]~q\ & ((\RAM|RAM[0][3]~q\) # (!\RAM|RAM[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][1]~q\,
	datab => \RAM|RAM[0][0]~q\,
	datac => \RAM|RAM[0][2]~q\,
	datad => \RAM|RAM[0][3]~q\,
	combout => \RAM|comb_4|WideOr2~0_combout\);

-- Location: LCCOMB_X66_Y68_N22
\RAM|comb_4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr1~0_combout\ = (\RAM|RAM[0][2]~q\ & ((\RAM|RAM[0][3]~q\) # (\RAM|RAM[0][1]~q\ $ (\RAM|RAM[0][0]~q\)))) # (!\RAM|RAM[0][2]~q\ & (\RAM|RAM[0][1]~q\ & ((\RAM|RAM[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][1]~q\,
	datab => \RAM|RAM[0][0]~q\,
	datac => \RAM|RAM[0][2]~q\,
	datad => \RAM|RAM[0][3]~q\,
	combout => \RAM|comb_4|WideOr1~0_combout\);

-- Location: LCCOMB_X66_Y68_N20
\RAM|comb_4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|comb_4|WideOr0~0_combout\ = (\RAM|RAM[0][1]~q\ & (((\RAM|RAM[0][3]~q\)))) # (!\RAM|RAM[0][1]~q\ & (\RAM|RAM[0][2]~q\ $ (((\RAM|RAM[0][0]~q\ & !\RAM|RAM[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[0][1]~q\,
	datab => \RAM|RAM[0][0]~q\,
	datac => \RAM|RAM[0][2]~q\,
	datad => \RAM|RAM[0][3]~q\,
	combout => \RAM|comb_4|WideOr0~0_combout\);

-- Location: FF_X57_Y71_N5
\DataPath|result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(0));

-- Location: FF_X57_Y71_N11
\DataPath|result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(1));

-- Location: FF_X57_Y71_N13
\DataPath|result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(2));

-- Location: FF_X57_Y71_N3
\DataPath|result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(3));

-- Location: FF_X58_Y68_N19
\DataPath|regs[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~42_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][4]~q\);

-- Location: FF_X59_Y68_N29
\DataPath|regs[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~42_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][4]~q\);

-- Location: LCCOMB_X59_Y68_N28
\DataPath|Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux59~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][4]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][4]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][4]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux59~0_combout\);

-- Location: LCCOMB_X58_Y71_N24
\DataPath|Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux59~1_combout\ = (\DataPath|Mux59~0_combout\) # ((\DataPath|regs[0][4]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][4]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux59~0_combout\,
	combout => \DataPath|Mux59~1_combout\);

-- Location: LCCOMB_X58_Y71_N22
\DataPath|writememdata[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[4]~feeder_combout\ = \DataPath|Mux59~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux59~1_combout\,
	combout => \DataPath|writememdata[4]~feeder_combout\);

-- Location: FF_X58_Y71_N23
\DataPath|writememdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[4]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(4));

-- Location: LCCOMB_X59_Y66_N28
\RAM|RAM[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][4]~feeder_combout\ = \DataPath|writememdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(4),
	combout => \RAM|RAM[6][4]~feeder_combout\);

-- Location: FF_X59_Y66_N29
\RAM|RAM[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][4]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][4]~q\);

-- Location: FF_X59_Y66_N31
\RAM|RAM[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(4),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][4]~q\);

-- Location: LCCOMB_X59_Y66_N30
\DataPath|towrite~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~40_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][4]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][4]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][4]~q\,
	datac => \RAM|RAM[4][4]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~40_combout\);

-- Location: FF_X59_Y65_N19
\RAM|RAM[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(4),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][4]~q\);

-- Location: LCCOMB_X59_Y65_N28
\RAM|RAM[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][4]~feeder_combout\ = \DataPath|writememdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(4),
	combout => \RAM|RAM[5][4]~feeder_combout\);

-- Location: FF_X59_Y65_N29
\RAM|RAM[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][4]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][4]~q\);

-- Location: LCCOMB_X59_Y65_N18
\DataPath|towrite~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~41_combout\ = (\DataPath|towrite~40_combout\ & (((\RAM|RAM[7][4]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~40_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~40_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][4]~q\,
	datad => \RAM|RAM[5][4]~q\,
	combout => \DataPath|towrite~41_combout\);

-- Location: LCCOMB_X60_Y68_N10
\RAM|RAM[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][4]~feeder_combout\ = \DataPath|writememdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(4),
	combout => \RAM|RAM[9][4]~feeder_combout\);

-- Location: FF_X60_Y68_N11
\RAM|RAM[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][4]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][4]~q\);

-- Location: FF_X60_Y68_N29
\RAM|RAM[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(4),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][4]~q\);

-- Location: FF_X61_Y68_N3
\RAM|RAM[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(4),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][4]~q\);

-- Location: LCCOMB_X67_Y68_N4
\RAM|RAM[2][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][4]~feeder_combout\ = \DataPath|writememdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(4),
	combout => \RAM|RAM[2][4]~feeder_combout\);

-- Location: FF_X67_Y68_N5
\RAM|RAM[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][4]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][4]~q\);

-- Location: FF_X66_Y68_N17
\RAM|RAM[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(4),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][4]~q\);

-- Location: FF_X66_Y68_N7
\RAM|RAM[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(4),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][4]~q\);

-- Location: LCCOMB_X68_Y68_N12
\RAM|RAM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~17_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(4),
	combout => \RAM|RAM~17_combout\);

-- Location: FF_X68_Y68_N13
\RAM|RAM[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~17_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][4]~q\);

-- Location: LCCOMB_X66_Y68_N6
\DataPath|towrite~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~35_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][4]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][4]~q\,
	datad => \RAM|RAM[1][4]~q\,
	combout => \DataPath|towrite~35_combout\);

-- Location: LCCOMB_X66_Y68_N16
\DataPath|towrite~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~36_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~35_combout\ & ((\RAM|RAM[3][4]~q\))) # (!\DataPath|towrite~35_combout\ & (\RAM|RAM[2][4]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][4]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][4]~q\,
	datad => \DataPath|towrite~35_combout\,
	combout => \DataPath|towrite~36_combout\);

-- Location: LCCOMB_X61_Y68_N2
\DataPath|towrite~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~37_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~36_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][4]~q\,
	datad => \DataPath|towrite~36_combout\,
	combout => \DataPath|towrite~37_combout\);

-- Location: LCCOMB_X60_Y68_N28
\DataPath|towrite~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~38_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~37_combout\ & ((\RAM|RAM[10][4]~q\))) # (!\DataPath|towrite~37_combout\ & (\RAM|RAM[9][4]~q\)))) # (!\DataPath|towrite~1_combout\ & (((\DataPath|towrite~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][4]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][4]~q\,
	datad => \DataPath|towrite~37_combout\,
	combout => \DataPath|towrite~38_combout\);

-- Location: LCCOMB_X59_Y68_N12
\DataPath|towrite~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~39_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~38_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|Add0~79_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|towrite~38_combout\,
	combout => \DataPath|towrite~39_combout\);

-- Location: LCCOMB_X59_Y68_N30
\DataPath|towrite~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~42_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~39_combout\ & (\DataPath|towrite~41_combout\)) # (!\DataPath|towrite~39_combout\ & ((\DataPath|num2~3_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|towrite~41_combout\,
	datac => \DataPath|num2~3_combout\,
	datad => \DataPath|towrite~39_combout\,
	combout => \DataPath|towrite~42_combout\);

-- Location: FF_X59_Y68_N31
\DataPath|regs[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~42_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][4]~q\);

-- Location: LCCOMB_X58_Y68_N18
\DataPath|num2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~3_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][4]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][4]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][4]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~3_combout\);

-- Location: LCCOMB_X58_Y68_N2
\DataPath|Add0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~162_combout\ = \DataPath|num2~3_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~3_combout\,
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Add0~162_combout\);

-- Location: LCCOMB_X57_Y71_N26
\DataPath|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~77_combout\ = (\DataPath|Add0~162_combout\ & ((\DataPath|Mux59~1_combout\ & (\DataPath|Add0~75\ & VCC)) # (!\DataPath|Mux59~1_combout\ & (!\DataPath|Add0~75\)))) # (!\DataPath|Add0~162_combout\ & ((\DataPath|Mux59~1_combout\ & 
-- (!\DataPath|Add0~75\)) # (!\DataPath|Mux59~1_combout\ & ((\DataPath|Add0~75\) # (GND)))))
-- \DataPath|Add0~78\ = CARRY((\DataPath|Add0~162_combout\ & (!\DataPath|Mux59~1_combout\ & !\DataPath|Add0~75\)) # (!\DataPath|Add0~162_combout\ & ((!\DataPath|Add0~75\) # (!\DataPath|Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~162_combout\,
	datab => \DataPath|Mux59~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~75\,
	combout => \DataPath|Add0~77_combout\,
	cout => \DataPath|Add0~78\);

-- Location: LCCOMB_X57_Y71_N8
\DataPath|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~79_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~77_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux59~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~77_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Mux59~1_combout\,
	combout => \DataPath|Add0~79_combout\);

-- Location: FF_X57_Y71_N9
\DataPath|result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(4));

-- Location: LCCOMB_X58_Y67_N16
\DataPath|writememdata[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[5]~feeder_combout\ = \DataPath|Mux58~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux58~1_combout\,
	combout => \DataPath|writememdata[5]~feeder_combout\);

-- Location: FF_X58_Y67_N17
\DataPath|writememdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[5]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(5));

-- Location: LCCOMB_X60_Y66_N20
\RAM|RAM[5][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][5]~feeder_combout\ = \DataPath|writememdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(5),
	combout => \RAM|RAM[5][5]~feeder_combout\);

-- Location: FF_X60_Y66_N21
\RAM|RAM[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][5]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][5]~q\);

-- Location: FF_X60_Y66_N7
\RAM|RAM[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(5),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][5]~q\);

-- Location: LCCOMB_X59_Y66_N0
\RAM|RAM[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][5]~feeder_combout\ = \DataPath|writememdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(5),
	combout => \RAM|RAM[6][5]~feeder_combout\);

-- Location: FF_X59_Y66_N1
\RAM|RAM[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][5]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][5]~q\);

-- Location: FF_X59_Y66_N3
\RAM|RAM[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(5),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][5]~q\);

-- Location: LCCOMB_X59_Y66_N2
\DataPath|towrite~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~48_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][5]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][5]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][5]~q\,
	datac => \RAM|RAM[4][5]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~48_combout\);

-- Location: LCCOMB_X60_Y66_N6
\DataPath|towrite~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~49_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~48_combout\ & ((\RAM|RAM[7][5]~q\))) # (!\DataPath|towrite~48_combout\ & (\RAM|RAM[5][5]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][5]~q\,
	datac => \RAM|RAM[7][5]~q\,
	datad => \DataPath|towrite~48_combout\,
	combout => \DataPath|towrite~49_combout\);

-- Location: FF_X58_Y68_N5
\DataPath|regs[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~50_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][5]~q\);

-- Location: LCCOMB_X58_Y68_N4
\DataPath|num2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~4_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][5]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~1_combout\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][5]~q\,
	datad => \DataPath|regs[0][5]~q\,
	combout => \DataPath|num2~4_combout\);

-- Location: LCCOMB_X62_Y65_N30
\RAM|RAM[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][5]~feeder_combout\ = \DataPath|writememdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(5),
	combout => \RAM|RAM[9][5]~feeder_combout\);

-- Location: FF_X62_Y65_N31
\RAM|RAM[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][5]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][5]~q\);

-- Location: LCCOMB_X63_Y68_N24
\RAM|RAM[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[8][5]~feeder_combout\ = \DataPath|writememdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(5),
	combout => \RAM|RAM[8][5]~feeder_combout\);

-- Location: FF_X63_Y68_N25
\RAM|RAM[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[8][5]~feeder_combout\,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][5]~q\);

-- Location: LCCOMB_X62_Y68_N0
\DataPath|towrite~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~45_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~4_combout\) # ((\RAM|RAM[9][5]~q\)))) # (!\DataPath|towrite~1_combout\ & (!\DataPath|towrite~4_combout\ & ((\RAM|RAM[8][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~1_combout\,
	datab => \DataPath|towrite~4_combout\,
	datac => \RAM|RAM[9][5]~q\,
	datad => \RAM|RAM[8][5]~q\,
	combout => \DataPath|towrite~45_combout\);

-- Location: FF_X57_Y68_N29
\RAM|RAM[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(5),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][5]~q\);

-- Location: LCCOMB_X63_Y67_N24
\RAM|RAM[2][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][5]~feeder_combout\ = \DataPath|writememdata\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(5),
	combout => \RAM|RAM[2][5]~feeder_combout\);

-- Location: FF_X63_Y67_N25
\RAM|RAM[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][5]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][5]~q\);

-- Location: FF_X65_Y67_N23
\RAM|RAM[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(5),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][5]~q\);

-- Location: FF_X65_Y67_N25
\RAM|RAM[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(5),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][5]~q\);

-- Location: LCCOMB_X66_Y67_N4
\RAM|RAM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~18_combout\ = (\DataPath|writememdata\(5) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata\(5),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~18_combout\);

-- Location: FF_X66_Y67_N5
\RAM|RAM[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~18_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][5]~q\);

-- Location: LCCOMB_X65_Y67_N24
\DataPath|towrite~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~43_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][5]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][5]~q\,
	datad => \RAM|RAM[1][5]~q\,
	combout => \DataPath|towrite~43_combout\);

-- Location: LCCOMB_X65_Y67_N22
\DataPath|towrite~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~44_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~43_combout\ & ((\RAM|RAM[3][5]~q\))) # (!\DataPath|towrite~43_combout\ & (\RAM|RAM[2][5]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][5]~q\,
	datac => \RAM|RAM[3][5]~q\,
	datad => \DataPath|towrite~43_combout\,
	combout => \DataPath|towrite~44_combout\);

-- Location: LCCOMB_X57_Y68_N28
\DataPath|towrite~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~46_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~45_combout\ & (\RAM|RAM[10][5]~q\)) # (!\DataPath|towrite~45_combout\ & ((\DataPath|towrite~44_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~45_combout\,
	datac => \RAM|RAM[10][5]~q\,
	datad => \DataPath|towrite~44_combout\,
	combout => \DataPath|towrite~46_combout\);

-- Location: LCCOMB_X58_Y68_N14
\DataPath|towrite~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~47_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~46_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|Add0~82_combout\,
	datad => \DataPath|towrite~46_combout\,
	combout => \DataPath|towrite~47_combout\);

-- Location: LCCOMB_X59_Y68_N14
\DataPath|towrite~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~50_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~47_combout\ & (\DataPath|towrite~49_combout\)) # (!\DataPath|towrite~47_combout\ & ((\DataPath|num2~4_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|towrite~49_combout\,
	datac => \DataPath|num2~4_combout\,
	datad => \DataPath|towrite~47_combout\,
	combout => \DataPath|towrite~50_combout\);

-- Location: FF_X59_Y68_N15
\DataPath|regs[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~50_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][5]~q\);

-- Location: FF_X59_Y68_N25
\DataPath|regs[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~50_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][5]~q\);

-- Location: LCCOMB_X59_Y68_N24
\DataPath|Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux58~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][5]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][5]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][5]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux58~0_combout\);

-- Location: LCCOMB_X59_Y68_N16
\DataPath|Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux58~1_combout\ = (\DataPath|Mux58~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\InstructionFetch|list~0_combout\ & \DataPath|regs[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[0][5]~q\,
	datad => \DataPath|Mux58~0_combout\,
	combout => \DataPath|Mux58~1_combout\);

-- Location: LCCOMB_X58_Y68_N20
\DataPath|Add0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~163_combout\ = \DataPath|num2~4_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~4_combout\,
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Add0~163_combout\);

-- Location: LCCOMB_X57_Y71_N28
\DataPath|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~80_combout\ = ((\DataPath|Add0~163_combout\ $ (\DataPath|Mux58~1_combout\ $ (!\DataPath|Add0~78\)))) # (GND)
-- \DataPath|Add0~81\ = CARRY((\DataPath|Add0~163_combout\ & ((\DataPath|Mux58~1_combout\) # (!\DataPath|Add0~78\))) # (!\DataPath|Add0~163_combout\ & (\DataPath|Mux58~1_combout\ & !\DataPath|Add0~78\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~163_combout\,
	datab => \DataPath|Mux58~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~78\,
	combout => \DataPath|Add0~80_combout\,
	cout => \DataPath|Add0~81\);

-- Location: LCCOMB_X57_Y71_N14
\DataPath|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~82_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~80_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux58~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux58~1_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~80_combout\,
	combout => \DataPath|Add0~82_combout\);

-- Location: FF_X57_Y71_N15
\DataPath|result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(5));

-- Location: FF_X58_Y68_N23
\DataPath|regs[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~58_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][6]~q\);

-- Location: LCCOMB_X56_Y68_N24
\DataPath|regs[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[3][6]~feeder_combout\ = \DataPath|towrite~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~58_combout\,
	combout => \DataPath|regs[3][6]~feeder_combout\);

-- Location: FF_X56_Y68_N25
\DataPath|regs[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[3][6]~feeder_combout\,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][6]~q\);

-- Location: LCCOMB_X58_Y68_N28
\DataPath|Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux57~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][6]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][6]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|regs[3][6]~q\,
	combout => \DataPath|Mux57~0_combout\);

-- Location: LCCOMB_X58_Y68_N10
\DataPath|Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux57~1_combout\ = (\DataPath|Mux57~0_combout\) # ((\InstructionFetch|list~0_combout\ & (\DataPath|regs[0][6]~q\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[0][6]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux57~0_combout\,
	combout => \DataPath|Mux57~1_combout\);

-- Location: FF_X58_Y68_N11
\DataPath|writememdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux57~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(6));

-- Location: LCCOMB_X60_Y66_N28
\RAM|RAM[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][6]~feeder_combout\ = \DataPath|writememdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(6),
	combout => \RAM|RAM[5][6]~feeder_combout\);

-- Location: FF_X60_Y66_N29
\RAM|RAM[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][6]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][6]~q\);

-- Location: FF_X60_Y66_N27
\RAM|RAM[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(6),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][6]~q\);

-- Location: LCCOMB_X59_Y66_N24
\RAM|RAM[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][6]~feeder_combout\ = \DataPath|writememdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(6),
	combout => \RAM|RAM[6][6]~feeder_combout\);

-- Location: FF_X59_Y66_N25
\RAM|RAM[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][6]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][6]~q\);

-- Location: FF_X59_Y66_N11
\RAM|RAM[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(6),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][6]~q\);

-- Location: LCCOMB_X59_Y66_N10
\DataPath|towrite~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~56_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][6]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][6]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][6]~q\,
	datac => \RAM|RAM[4][6]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~56_combout\);

-- Location: LCCOMB_X60_Y66_N26
\DataPath|towrite~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~57_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~56_combout\ & ((\RAM|RAM[7][6]~q\))) # (!\DataPath|towrite~56_combout\ & (\RAM|RAM[5][6]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][6]~q\,
	datac => \RAM|RAM[7][6]~q\,
	datad => \DataPath|towrite~56_combout\,
	combout => \DataPath|towrite~57_combout\);

-- Location: LCCOMB_X58_Y65_N12
\RAM|RAM[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][6]~feeder_combout\ = \DataPath|writememdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(6),
	combout => \RAM|RAM[9][6]~feeder_combout\);

-- Location: FF_X58_Y65_N13
\RAM|RAM[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][6]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][6]~q\);

-- Location: FF_X57_Y68_N23
\RAM|RAM[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(6),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][6]~q\);

-- Location: FF_X60_Y67_N1
\RAM|RAM[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(6),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][6]~q\);

-- Location: LCCOMB_X63_Y67_N6
\RAM|RAM[2][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][6]~feeder_combout\ = \DataPath|writememdata\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(6),
	combout => \RAM|RAM[2][6]~feeder_combout\);

-- Location: FF_X63_Y67_N7
\RAM|RAM[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][6]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][6]~q\);

-- Location: FF_X65_Y67_N19
\RAM|RAM[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(6),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][6]~q\);

-- Location: FF_X65_Y67_N1
\RAM|RAM[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(6),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][6]~q\);

-- Location: LCCOMB_X66_Y67_N6
\RAM|RAM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~19_combout\ = (\DataPath|writememdata\(6) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(6),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~19_combout\);

-- Location: FF_X66_Y67_N7
\RAM|RAM[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~19_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][6]~q\);

-- Location: LCCOMB_X65_Y67_N0
\DataPath|towrite~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~51_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][6]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][6]~q\,
	datad => \RAM|RAM[1][6]~q\,
	combout => \DataPath|towrite~51_combout\);

-- Location: LCCOMB_X65_Y67_N18
\DataPath|towrite~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~52_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~51_combout\ & ((\RAM|RAM[3][6]~q\))) # (!\DataPath|towrite~51_combout\ & (\RAM|RAM[2][6]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][6]~q\,
	datac => \RAM|RAM[3][6]~q\,
	datad => \DataPath|towrite~51_combout\,
	combout => \DataPath|towrite~52_combout\);

-- Location: LCCOMB_X60_Y67_N0
\DataPath|towrite~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~53_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~52_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][6]~q\,
	datad => \DataPath|towrite~52_combout\,
	combout => \DataPath|towrite~53_combout\);

-- Location: LCCOMB_X57_Y68_N22
\DataPath|towrite~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~54_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~53_combout\ & ((\RAM|RAM[10][6]~q\))) # (!\DataPath|towrite~53_combout\ & (\RAM|RAM[9][6]~q\)))) # (!\DataPath|towrite~1_combout\ & (((\DataPath|towrite~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][6]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][6]~q\,
	datad => \DataPath|towrite~53_combout\,
	combout => \DataPath|towrite~54_combout\);

-- Location: LCCOMB_X57_Y68_N12
\DataPath|towrite~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~55_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~54_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~54_combout\,
	datad => \DataPath|Add0~85_combout\,
	combout => \DataPath|towrite~55_combout\);

-- Location: LCCOMB_X57_Y68_N6
\DataPath|towrite~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~58_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~55_combout\ & ((\DataPath|towrite~57_combout\))) # (!\DataPath|towrite~55_combout\ & (\DataPath|num2~7_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~7_combout\,
	datac => \DataPath|towrite~57_combout\,
	datad => \DataPath|towrite~55_combout\,
	combout => \DataPath|towrite~58_combout\);

-- Location: LCCOMB_X57_Y68_N4
\DataPath|regs[0][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[0][6]~feeder_combout\ = \DataPath|towrite~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~58_combout\,
	combout => \DataPath|regs[0][6]~feeder_combout\);

-- Location: FF_X57_Y68_N5
\DataPath|regs[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[0][6]~feeder_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][6]~q\);

-- Location: LCCOMB_X58_Y68_N12
\DataPath|num2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~6_combout\ = (\DataPath|PC\(1) & (\DataPath|regs[0][6]~q\)) # (!\DataPath|PC\(1) & ((\DataPath|regs[0][6]~q\ & ((\DataPath|PC\(2)) # (\DataPath|PC\(0)))) # (!\DataPath|regs[0][6]~q\ & (\DataPath|PC\(2) & \DataPath|PC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|regs[0][6]~q\,
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(0),
	combout => \DataPath|num2~6_combout\);

-- Location: LCCOMB_X59_Y72_N26
\DataPath|num2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~5_combout\ = (\DataPath|PC\(1)) # (\DataPath|PC\(2) $ (\DataPath|PC\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(1),
	combout => \DataPath|num2~5_combout\);

-- Location: LCCOMB_X58_Y68_N22
\DataPath|num2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~7_combout\ = (\DataPath|num2~6_combout\ & (!\ControlUnit|WideOr4~0_combout\ & ((\DataPath|regs[1][6]~q\) # (\DataPath|num2~5_combout\)))) # (!\DataPath|num2~6_combout\ & (((!\DataPath|num2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~6_combout\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][6]~q\,
	datad => \DataPath|num2~5_combout\,
	combout => \DataPath|num2~7_combout\);

-- Location: LCCOMB_X57_Y71_N6
\DataPath|Add0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~164_combout\ = \DataPath|num2~7_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(0),
	datac => \DataPath|PC\(1),
	datad => \DataPath|num2~7_combout\,
	combout => \DataPath|Add0~164_combout\);

-- Location: LCCOMB_X57_Y71_N30
\DataPath|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~83_combout\ = (\DataPath|Add0~164_combout\ & ((\DataPath|Mux57~1_combout\ & (\DataPath|Add0~81\ & VCC)) # (!\DataPath|Mux57~1_combout\ & (!\DataPath|Add0~81\)))) # (!\DataPath|Add0~164_combout\ & ((\DataPath|Mux57~1_combout\ & 
-- (!\DataPath|Add0~81\)) # (!\DataPath|Mux57~1_combout\ & ((\DataPath|Add0~81\) # (GND)))))
-- \DataPath|Add0~84\ = CARRY((\DataPath|Add0~164_combout\ & (!\DataPath|Mux57~1_combout\ & !\DataPath|Add0~81\)) # (!\DataPath|Add0~164_combout\ & ((!\DataPath|Add0~81\) # (!\DataPath|Mux57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~164_combout\,
	datab => \DataPath|Mux57~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~81\,
	combout => \DataPath|Add0~83_combout\,
	cout => \DataPath|Add0~84\);

-- Location: LCCOMB_X57_Y71_N0
\DataPath|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~85_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~83_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux57~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~83_combout\,
	datab => \ControlUnit|WideOr2~0_combout\,
	datac => \DataPath|Mux57~1_combout\,
	datad => \DataPath|Mux127~0_combout\,
	combout => \DataPath|Add0~85_combout\);

-- Location: FF_X57_Y71_N1
\DataPath|result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(6));

-- Location: FF_X58_Y70_N7
\DataPath|writememdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux56~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(7));

-- Location: LCCOMB_X60_Y66_N0
\RAM|RAM[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][7]~feeder_combout\ = \DataPath|writememdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(7),
	combout => \RAM|RAM[5][7]~feeder_combout\);

-- Location: FF_X60_Y66_N1
\RAM|RAM[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][7]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][7]~q\);

-- Location: FF_X60_Y66_N3
\RAM|RAM[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(7),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][7]~q\);

-- Location: FF_X61_Y66_N27
\RAM|RAM[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(7),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][7]~q\);

-- Location: LCCOMB_X61_Y66_N12
\RAM|RAM[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][7]~feeder_combout\ = \DataPath|writememdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(7),
	combout => \RAM|RAM[6][7]~feeder_combout\);

-- Location: FF_X61_Y66_N13
\RAM|RAM[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][7]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][7]~q\);

-- Location: LCCOMB_X61_Y66_N26
\DataPath|towrite~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~64_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][7]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][7]~q\,
	datad => \RAM|RAM[6][7]~q\,
	combout => \DataPath|towrite~64_combout\);

-- Location: LCCOMB_X60_Y66_N2
\DataPath|towrite~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~65_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~64_combout\ & ((\RAM|RAM[7][7]~q\))) # (!\DataPath|towrite~64_combout\ & (\RAM|RAM[5][7]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][7]~q\,
	datac => \RAM|RAM[7][7]~q\,
	datad => \DataPath|towrite~64_combout\,
	combout => \DataPath|towrite~65_combout\);

-- Location: FF_X62_Y68_N9
\DataPath|regs[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~66_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][7]~q\);

-- Location: LCCOMB_X62_Y68_N8
\DataPath|num2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~8_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][7]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][7]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][7]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~8_combout\);

-- Location: FF_X61_Y68_N13
\RAM|RAM[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(7),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][7]~q\);

-- Location: LCCOMB_X65_Y65_N12
\RAM|RAM[9][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][7]~feeder_combout\ = \DataPath|writememdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(7),
	combout => \RAM|RAM[9][7]~feeder_combout\);

-- Location: FF_X65_Y65_N13
\RAM|RAM[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][7]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][7]~q\);

-- Location: LCCOMB_X61_Y68_N12
\DataPath|towrite~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~61_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][7]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][7]~q\,
	datad => \RAM|RAM[9][7]~q\,
	combout => \DataPath|towrite~61_combout\);

-- Location: FF_X61_Y68_N11
\RAM|RAM[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(7),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][7]~q\);

-- Location: LCCOMB_X63_Y67_N20
\RAM|RAM[2][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][7]~feeder_combout\ = \DataPath|writememdata\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(7),
	combout => \RAM|RAM[2][7]~feeder_combout\);

-- Location: FF_X63_Y67_N21
\RAM|RAM[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][7]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][7]~q\);

-- Location: FF_X65_Y67_N31
\RAM|RAM[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(7),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][7]~q\);

-- Location: FF_X65_Y67_N29
\RAM|RAM[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(7),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][7]~q\);

-- Location: LCCOMB_X66_Y67_N16
\RAM|RAM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~20_combout\ = (\DataPath|writememdata\(7) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writememdata\(7),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~20_combout\);

-- Location: FF_X66_Y67_N17
\RAM|RAM[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~20_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][7]~q\);

-- Location: LCCOMB_X65_Y67_N28
\DataPath|towrite~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~59_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][7]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][7]~q\,
	datad => \RAM|RAM[1][7]~q\,
	combout => \DataPath|towrite~59_combout\);

-- Location: LCCOMB_X65_Y67_N30
\DataPath|towrite~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~60_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~59_combout\ & ((\RAM|RAM[3][7]~q\))) # (!\DataPath|towrite~59_combout\ & (\RAM|RAM[2][7]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][7]~q\,
	datac => \RAM|RAM[3][7]~q\,
	datad => \DataPath|towrite~59_combout\,
	combout => \DataPath|towrite~60_combout\);

-- Location: LCCOMB_X61_Y68_N10
\DataPath|towrite~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~62_combout\ = (\DataPath|towrite~61_combout\ & (((\RAM|RAM[10][7]~q\)) # (!\DataPath|towrite~4_combout\))) # (!\DataPath|towrite~61_combout\ & (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~61_combout\,
	datab => \DataPath|towrite~4_combout\,
	datac => \RAM|RAM[10][7]~q\,
	datad => \DataPath|towrite~60_combout\,
	combout => \DataPath|towrite~62_combout\);

-- Location: LCCOMB_X62_Y68_N2
\DataPath|towrite~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~63_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~62_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & (\DataPath|Add0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|Add0~88_combout\,
	datad => \DataPath|towrite~62_combout\,
	combout => \DataPath|towrite~63_combout\);

-- Location: LCCOMB_X62_Y68_N26
\DataPath|towrite~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~66_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~63_combout\ & (\DataPath|towrite~65_combout\)) # (!\DataPath|towrite~63_combout\ & ((\DataPath|num2~8_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~65_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|num2~8_combout\,
	datad => \DataPath|towrite~63_combout\,
	combout => \DataPath|towrite~66_combout\);

-- Location: FF_X62_Y68_N27
\DataPath|regs[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~66_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][7]~q\);

-- Location: LCCOMB_X59_Y70_N4
\DataPath|regs[3][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[3][7]~feeder_combout\ = \DataPath|towrite~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~66_combout\,
	combout => \DataPath|regs[3][7]~feeder_combout\);

-- Location: FF_X59_Y70_N5
\DataPath|regs[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[3][7]~feeder_combout\,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][7]~q\);

-- Location: LCCOMB_X58_Y70_N8
\DataPath|Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux56~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & (\DataPath|regs[3][7]~q\)) # (!\InstructionFetch|list~2_combout\ & ((\DataPath|regs[1][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[3][7]~q\,
	datab => \DataPath|regs[1][7]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux56~0_combout\);

-- Location: LCCOMB_X58_Y70_N6
\DataPath|Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux56~1_combout\ = (\DataPath|Mux56~0_combout\) # ((\DataPath|regs[0][7]~q\ & (!\InstructionFetch|list~2_combout\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][7]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|Mux56~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux56~1_combout\);

-- Location: LCCOMB_X57_Y68_N24
\DataPath|Add0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~165_combout\ = \DataPath|num2~8_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|num2~8_combout\,
	combout => \DataPath|Add0~165_combout\);

-- Location: LCCOMB_X57_Y70_N0
\DataPath|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~86_combout\ = ((\DataPath|Mux56~1_combout\ $ (\DataPath|Add0~165_combout\ $ (!\DataPath|Add0~84\)))) # (GND)
-- \DataPath|Add0~87\ = CARRY((\DataPath|Mux56~1_combout\ & ((\DataPath|Add0~165_combout\) # (!\DataPath|Add0~84\))) # (!\DataPath|Mux56~1_combout\ & (\DataPath|Add0~165_combout\ & !\DataPath|Add0~84\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux56~1_combout\,
	datab => \DataPath|Add0~165_combout\,
	datad => VCC,
	cin => \DataPath|Add0~84\,
	combout => \DataPath|Add0~86_combout\,
	cout => \DataPath|Add0~87\);

-- Location: LCCOMB_X56_Y70_N16
\DataPath|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~88_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~86_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux56~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~86_combout\,
	datad => \DataPath|Mux56~1_combout\,
	combout => \DataPath|Add0~88_combout\);

-- Location: FF_X56_Y70_N17
\DataPath|result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(7));

-- Location: FF_X58_Y68_N25
\DataPath|writememdata[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux55~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(8));

-- Location: LCCOMB_X60_Y66_N4
\RAM|RAM[5][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][8]~feeder_combout\ = \DataPath|writememdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(8),
	combout => \RAM|RAM[5][8]~feeder_combout\);

-- Location: FF_X60_Y66_N5
\RAM|RAM[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][8]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][8]~q\);

-- Location: FF_X60_Y66_N11
\RAM|RAM[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(8),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][8]~q\);

-- Location: LCCOMB_X61_Y66_N4
\RAM|RAM[6][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][8]~feeder_combout\ = \DataPath|writememdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(8),
	combout => \RAM|RAM[6][8]~feeder_combout\);

-- Location: FF_X61_Y66_N5
\RAM|RAM[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][8]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][8]~q\);

-- Location: FF_X61_Y66_N7
\RAM|RAM[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(8),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][8]~q\);

-- Location: LCCOMB_X61_Y66_N6
\DataPath|towrite~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~72_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][8]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][8]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][8]~q\,
	datac => \RAM|RAM[4][8]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~72_combout\);

-- Location: LCCOMB_X60_Y66_N10
\DataPath|towrite~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~73_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~72_combout\ & ((\RAM|RAM[7][8]~q\))) # (!\DataPath|towrite~72_combout\ & (\RAM|RAM[5][8]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][8]~q\,
	datac => \RAM|RAM[7][8]~q\,
	datad => \DataPath|towrite~72_combout\,
	combout => \DataPath|towrite~73_combout\);

-- Location: FF_X58_Y68_N7
\DataPath|regs[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~74_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][8]~q\);

-- Location: LCCOMB_X58_Y68_N6
\DataPath|num2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~9_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][8]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~1_combout\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][8]~q\,
	datad => \DataPath|regs[0][8]~q\,
	combout => \DataPath|num2~9_combout\);

-- Location: LCCOMB_X60_Y68_N18
\RAM|RAM[9][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][8]~feeder_combout\ = \DataPath|writememdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(8),
	combout => \RAM|RAM[9][8]~feeder_combout\);

-- Location: FF_X60_Y68_N19
\RAM|RAM[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][8]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][8]~q\);

-- Location: FF_X60_Y68_N5
\RAM|RAM[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(8),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][8]~q\);

-- Location: FF_X61_Y68_N29
\RAM|RAM[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(8),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][8]~q\);

-- Location: LCCOMB_X63_Y67_N2
\RAM|RAM[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][8]~feeder_combout\ = \DataPath|writememdata\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(8),
	combout => \RAM|RAM[2][8]~feeder_combout\);

-- Location: FF_X63_Y67_N3
\RAM|RAM[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][8]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][8]~q\);

-- Location: FF_X65_Y67_N7
\RAM|RAM[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(8),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][8]~q\);

-- Location: FF_X65_Y67_N13
\RAM|RAM[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(8),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][8]~q\);

-- Location: LCCOMB_X66_Y67_N22
\RAM|RAM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~21_combout\ = (\DataPath|writememdata\(8) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writememdata\(8),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~21_combout\);

-- Location: FF_X66_Y67_N23
\RAM|RAM[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~21_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][8]~q\);

-- Location: LCCOMB_X65_Y67_N12
\DataPath|towrite~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~67_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][8]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][8]~q\,
	datad => \RAM|RAM[1][8]~q\,
	combout => \DataPath|towrite~67_combout\);

-- Location: LCCOMB_X65_Y67_N6
\DataPath|towrite~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~68_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~67_combout\ & ((\RAM|RAM[3][8]~q\))) # (!\DataPath|towrite~67_combout\ & (\RAM|RAM[2][8]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][8]~q\,
	datac => \RAM|RAM[3][8]~q\,
	datad => \DataPath|towrite~67_combout\,
	combout => \DataPath|towrite~68_combout\);

-- Location: LCCOMB_X61_Y68_N28
\DataPath|towrite~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~69_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~68_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][8]~q\,
	datad => \DataPath|towrite~68_combout\,
	combout => \DataPath|towrite~69_combout\);

-- Location: LCCOMB_X60_Y68_N4
\DataPath|towrite~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~70_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~69_combout\ & ((\RAM|RAM[10][8]~q\))) # (!\DataPath|towrite~69_combout\ & (\RAM|RAM[9][8]~q\)))) # (!\DataPath|towrite~1_combout\ & (((\DataPath|towrite~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~1_combout\,
	datab => \RAM|RAM[9][8]~q\,
	datac => \RAM|RAM[10][8]~q\,
	datad => \DataPath|towrite~69_combout\,
	combout => \DataPath|towrite~70_combout\);

-- Location: LCCOMB_X59_Y68_N18
\DataPath|towrite~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~71_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~70_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|Add0~91_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|towrite~70_combout\,
	combout => \DataPath|towrite~71_combout\);

-- Location: LCCOMB_X59_Y68_N8
\DataPath|towrite~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~74_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~71_combout\ & (\DataPath|towrite~73_combout\)) # (!\DataPath|towrite~71_combout\ & ((\DataPath|num2~9_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|towrite~73_combout\,
	datac => \DataPath|num2~9_combout\,
	datad => \DataPath|towrite~71_combout\,
	combout => \DataPath|towrite~74_combout\);

-- Location: FF_X59_Y68_N9
\DataPath|regs[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~74_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][8]~q\);

-- Location: FF_X59_Y68_N5
\DataPath|regs[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~74_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][8]~q\);

-- Location: LCCOMB_X59_Y68_N22
\DataPath|Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux55~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][8]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][8]~q\,
	datab => \DataPath|regs[3][8]~q\,
	datac => \InstructionFetch|list~0_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux55~0_combout\);

-- Location: LCCOMB_X58_Y68_N24
\DataPath|Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux55~1_combout\ = (\DataPath|Mux55~0_combout\) # ((\InstructionFetch|list~0_combout\ & (\DataPath|regs[0][8]~q\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[0][8]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux55~0_combout\,
	combout => \DataPath|Mux55~1_combout\);

-- Location: LCCOMB_X58_Y68_N30
\DataPath|Add0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~166_combout\ = \DataPath|num2~9_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(0),
	datac => \DataPath|PC\(2),
	datad => \DataPath|num2~9_combout\,
	combout => \DataPath|Add0~166_combout\);

-- Location: LCCOMB_X57_Y70_N2
\DataPath|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~89_combout\ = (\DataPath|Add0~166_combout\ & ((\DataPath|Mux55~1_combout\ & (\DataPath|Add0~87\ & VCC)) # (!\DataPath|Mux55~1_combout\ & (!\DataPath|Add0~87\)))) # (!\DataPath|Add0~166_combout\ & ((\DataPath|Mux55~1_combout\ & 
-- (!\DataPath|Add0~87\)) # (!\DataPath|Mux55~1_combout\ & ((\DataPath|Add0~87\) # (GND)))))
-- \DataPath|Add0~90\ = CARRY((\DataPath|Add0~166_combout\ & (!\DataPath|Mux55~1_combout\ & !\DataPath|Add0~87\)) # (!\DataPath|Add0~166_combout\ & ((!\DataPath|Add0~87\) # (!\DataPath|Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~166_combout\,
	datab => \DataPath|Mux55~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~87\,
	combout => \DataPath|Add0~89_combout\,
	cout => \DataPath|Add0~90\);

-- Location: LCCOMB_X56_Y70_N18
\DataPath|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~91_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~89_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux55~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux55~1_combout\,
	datad => \DataPath|Add0~89_combout\,
	combout => \DataPath|Add0~91_combout\);

-- Location: FF_X56_Y70_N19
\DataPath|result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(8));

-- Location: LCCOMB_X62_Y68_N16
\DataPath|regs[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[1][9]~feeder_combout\ = \DataPath|towrite~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~82_combout\,
	combout => \DataPath|regs[1][9]~feeder_combout\);

-- Location: FF_X62_Y68_N17
\DataPath|regs[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[1][9]~feeder_combout\,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][9]~q\);

-- Location: LCCOMB_X62_Y68_N12
\DataPath|num2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~10_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][9]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][9]~q\,
	datab => \DataPath|regs[1][9]~q\,
	datac => \InstructionFetch|list~1_combout\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~10_combout\);

-- Location: FF_X58_Y69_N25
\DataPath|writememdata[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux54~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(9));

-- Location: FF_X61_Y66_N15
\RAM|RAM[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(9),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][9]~q\);

-- Location: LCCOMB_X61_Y66_N16
\RAM|RAM[6][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][9]~feeder_combout\ = \DataPath|writememdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(9),
	combout => \RAM|RAM[6][9]~feeder_combout\);

-- Location: FF_X61_Y66_N17
\RAM|RAM[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][9]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][9]~q\);

-- Location: LCCOMB_X61_Y66_N14
\DataPath|towrite~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~80_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][9]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][9]~q\,
	datad => \RAM|RAM[6][9]~q\,
	combout => \DataPath|towrite~80_combout\);

-- Location: FF_X62_Y66_N15
\RAM|RAM[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(9),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][9]~q\);

-- Location: LCCOMB_X62_Y66_N28
\RAM|RAM[5][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][9]~feeder_combout\ = \DataPath|writememdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(9),
	combout => \RAM|RAM[5][9]~feeder_combout\);

-- Location: FF_X62_Y66_N29
\RAM|RAM[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][9]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][9]~q\);

-- Location: LCCOMB_X62_Y66_N14
\DataPath|towrite~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~81_combout\ = (\DataPath|towrite~80_combout\ & (((\RAM|RAM[7][9]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~80_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~80_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][9]~q\,
	datad => \RAM|RAM[5][9]~q\,
	combout => \DataPath|towrite~81_combout\);

-- Location: FF_X61_Y67_N1
\RAM|RAM[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(9),
	sload => VCC,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][9]~q\);

-- Location: LCCOMB_X62_Y67_N28
\RAM|RAM[8][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[8][9]~feeder_combout\ = \DataPath|writememdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(9),
	combout => \RAM|RAM[8][9]~feeder_combout\);

-- Location: FF_X62_Y67_N29
\RAM|RAM[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[8][9]~feeder_combout\,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][9]~q\);

-- Location: LCCOMB_X61_Y67_N0
\DataPath|towrite~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~77_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & (\RAM|RAM[9][9]~q\)) # (!\DataPath|towrite~1_combout\ & ((\RAM|RAM[8][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[9][9]~q\,
	datad => \RAM|RAM[8][9]~q\,
	combout => \DataPath|towrite~77_combout\);

-- Location: FF_X61_Y67_N11
\RAM|RAM[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(9),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][9]~q\);

-- Location: FF_X65_Y67_N5
\RAM|RAM[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(9),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][9]~q\);

-- Location: LCCOMB_X66_Y67_N24
\RAM|RAM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~22_combout\ = (\DataPath|writememdata\(9) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writememdata\(9),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~22_combout\);

-- Location: FF_X66_Y67_N25
\RAM|RAM[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~22_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][9]~q\);

-- Location: LCCOMB_X65_Y67_N4
\DataPath|towrite~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~75_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][9]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][9]~q\,
	datad => \RAM|RAM[1][9]~q\,
	combout => \DataPath|towrite~75_combout\);

-- Location: FF_X65_Y67_N27
\RAM|RAM[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(9),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][9]~q\);

-- Location: LCCOMB_X67_Y67_N24
\RAM|RAM[2][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][9]~feeder_combout\ = \DataPath|writememdata\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(9),
	combout => \RAM|RAM[2][9]~feeder_combout\);

-- Location: FF_X67_Y67_N25
\RAM|RAM[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][9]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][9]~q\);

-- Location: LCCOMB_X65_Y67_N26
\DataPath|towrite~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~76_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~75_combout\ & (\RAM|RAM[3][9]~q\)) # (!\DataPath|towrite~75_combout\ & ((\RAM|RAM[2][9]~q\))))) # (!\DataPath|memaddr\(1) & (\DataPath|towrite~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|towrite~75_combout\,
	datac => \RAM|RAM[3][9]~q\,
	datad => \RAM|RAM[2][9]~q\,
	combout => \DataPath|towrite~76_combout\);

-- Location: LCCOMB_X61_Y67_N10
\DataPath|towrite~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~78_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~77_combout\ & (\RAM|RAM[10][9]~q\)) # (!\DataPath|towrite~77_combout\ & ((\DataPath|towrite~76_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~77_combout\,
	datac => \RAM|RAM[10][9]~q\,
	datad => \DataPath|towrite~76_combout\,
	combout => \DataPath|towrite~78_combout\);

-- Location: LCCOMB_X62_Y68_N20
\DataPath|towrite~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~79_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~78_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~94_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~78_combout\,
	datad => \ControlUnit|Decoder0~0_combout\,
	combout => \DataPath|towrite~79_combout\);

-- Location: LCCOMB_X62_Y68_N10
\DataPath|towrite~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~82_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~79_combout\ & ((\DataPath|towrite~81_combout\))) # (!\DataPath|towrite~79_combout\ & (\DataPath|num2~10_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~10_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~81_combout\,
	datad => \DataPath|towrite~79_combout\,
	combout => \DataPath|towrite~82_combout\);

-- Location: FF_X62_Y68_N11
\DataPath|regs[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~82_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][9]~q\);

-- Location: FF_X59_Y68_N7
\DataPath|regs[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~82_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][9]~q\);

-- Location: LCCOMB_X59_Y68_N6
\DataPath|Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux54~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & (\DataPath|regs[3][9]~q\)) # (!\InstructionFetch|list~2_combout\ & ((\DataPath|regs[1][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][9]~q\,
	datad => \DataPath|regs[1][9]~q\,
	combout => \DataPath|Mux54~0_combout\);

-- Location: LCCOMB_X58_Y69_N24
\DataPath|Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux54~1_combout\ = (\DataPath|Mux54~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][9]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[0][9]~q\,
	datac => \DataPath|Mux54~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux54~1_combout\);

-- Location: LCCOMB_X62_Y70_N16
\DataPath|Add0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~167_combout\ = \DataPath|num2~10_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(2),
	datad => \DataPath|num2~10_combout\,
	combout => \DataPath|Add0~167_combout\);

-- Location: LCCOMB_X57_Y70_N4
\DataPath|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~92_combout\ = ((\DataPath|Mux54~1_combout\ $ (\DataPath|Add0~167_combout\ $ (!\DataPath|Add0~90\)))) # (GND)
-- \DataPath|Add0~93\ = CARRY((\DataPath|Mux54~1_combout\ & ((\DataPath|Add0~167_combout\) # (!\DataPath|Add0~90\))) # (!\DataPath|Mux54~1_combout\ & (\DataPath|Add0~167_combout\ & !\DataPath|Add0~90\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux54~1_combout\,
	datab => \DataPath|Add0~167_combout\,
	datad => VCC,
	cin => \DataPath|Add0~90\,
	combout => \DataPath|Add0~92_combout\,
	cout => \DataPath|Add0~93\);

-- Location: LCCOMB_X56_Y70_N4
\DataPath|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~94_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~92_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux54~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux54~1_combout\,
	datac => \DataPath|Mux127~0_combout\,
	datad => \DataPath|Add0~92_combout\,
	combout => \DataPath|Add0~94_combout\);

-- Location: FF_X56_Y70_N5
\DataPath|result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(9));

-- Location: FF_X58_Y69_N3
\DataPath|writememdata[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux53~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(10));

-- Location: FF_X61_Y66_N31
\RAM|RAM[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][10]~q\);

-- Location: LCCOMB_X61_Y66_N24
\RAM|RAM[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][10]~feeder_combout\ = \DataPath|writememdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(10),
	combout => \RAM|RAM[6][10]~feeder_combout\);

-- Location: FF_X61_Y66_N25
\RAM|RAM[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][10]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][10]~q\);

-- Location: LCCOMB_X61_Y66_N30
\DataPath|towrite~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~88_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][10]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][10]~q\,
	datad => \RAM|RAM[6][10]~q\,
	combout => \DataPath|towrite~88_combout\);

-- Location: FF_X61_Y65_N15
\RAM|RAM[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][10]~q\);

-- Location: LCCOMB_X61_Y65_N16
\RAM|RAM[5][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][10]~feeder_combout\ = \DataPath|writememdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(10),
	combout => \RAM|RAM[5][10]~feeder_combout\);

-- Location: FF_X61_Y65_N17
\RAM|RAM[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][10]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][10]~q\);

-- Location: LCCOMB_X61_Y65_N14
\DataPath|towrite~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~89_combout\ = (\DataPath|towrite~88_combout\ & (((\RAM|RAM[7][10]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~88_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~88_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][10]~q\,
	datad => \RAM|RAM[5][10]~q\,
	combout => \DataPath|towrite~89_combout\);

-- Location: FF_X62_Y68_N5
\DataPath|regs[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~90_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][10]~q\);

-- Location: LCCOMB_X62_Y68_N14
\DataPath|num2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~11_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][10]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][10]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][10]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~11_combout\);

-- Location: LCCOMB_X62_Y65_N4
\RAM|RAM[9][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][10]~feeder_combout\ = \DataPath|writememdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(10),
	combout => \RAM|RAM[9][10]~feeder_combout\);

-- Location: FF_X62_Y65_N5
\RAM|RAM[9][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][10]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][10]~q\);

-- Location: FF_X61_Y68_N9
\RAM|RAM[10][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][10]~q\);

-- Location: FF_X61_Y68_N7
\RAM|RAM[8][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][10]~q\);

-- Location: LCCOMB_X63_Y67_N0
\RAM|RAM[2][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][10]~feeder_combout\ = \DataPath|writememdata\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(10),
	combout => \RAM|RAM[2][10]~feeder_combout\);

-- Location: FF_X63_Y67_N1
\RAM|RAM[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][10]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][10]~q\);

-- Location: FF_X65_Y67_N11
\RAM|RAM[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][10]~q\);

-- Location: FF_X65_Y67_N21
\RAM|RAM[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(10),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][10]~q\);

-- Location: LCCOMB_X66_Y67_N2
\RAM|RAM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~23_combout\ = (\DataPath|writememdata\(10) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(10),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~23_combout\);

-- Location: FF_X66_Y67_N3
\RAM|RAM[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~23_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][10]~q\);

-- Location: LCCOMB_X65_Y67_N20
\DataPath|towrite~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~83_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][10]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][10]~q\,
	datad => \RAM|RAM[1][10]~q\,
	combout => \DataPath|towrite~83_combout\);

-- Location: LCCOMB_X65_Y67_N10
\DataPath|towrite~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~84_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~83_combout\ & ((\RAM|RAM[3][10]~q\))) # (!\DataPath|towrite~83_combout\ & (\RAM|RAM[2][10]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][10]~q\,
	datac => \RAM|RAM[3][10]~q\,
	datad => \DataPath|towrite~83_combout\,
	combout => \DataPath|towrite~84_combout\);

-- Location: LCCOMB_X61_Y68_N6
\DataPath|towrite~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~85_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~84_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][10]~q\,
	datad => \DataPath|towrite~84_combout\,
	combout => \DataPath|towrite~85_combout\);

-- Location: LCCOMB_X61_Y68_N8
\DataPath|towrite~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~86_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~85_combout\ & ((\RAM|RAM[10][10]~q\))) # (!\DataPath|towrite~85_combout\ & (\RAM|RAM[9][10]~q\)))) # (!\DataPath|towrite~1_combout\ & (((\DataPath|towrite~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][10]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][10]~q\,
	datad => \DataPath|towrite~85_combout\,
	combout => \DataPath|towrite~86_combout\);

-- Location: LCCOMB_X62_Y68_N18
\DataPath|towrite~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~87_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~86_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & (\DataPath|Add0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|Add0~97_combout\,
	datad => \DataPath|towrite~86_combout\,
	combout => \DataPath|towrite~87_combout\);

-- Location: LCCOMB_X62_Y68_N4
\DataPath|towrite~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~90_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~87_combout\ & (\DataPath|towrite~89_combout\)) # (!\DataPath|towrite~87_combout\ & ((\DataPath|num2~11_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~89_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|num2~11_combout\,
	datad => \DataPath|towrite~87_combout\,
	combout => \DataPath|towrite~90_combout\);

-- Location: FF_X62_Y68_N15
\DataPath|regs[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~90_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][10]~q\);

-- Location: FF_X59_Y68_N21
\DataPath|regs[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~90_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][10]~q\);

-- Location: LCCOMB_X59_Y68_N20
\DataPath|Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux53~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][10]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][10]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][10]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux53~0_combout\);

-- Location: LCCOMB_X58_Y69_N2
\DataPath|Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux53~1_combout\ = (\DataPath|Mux53~0_combout\) # ((\InstructionFetch|list~0_combout\ & (\DataPath|regs[0][10]~q\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|Mux53~0_combout\,
	datac => \DataPath|regs[0][10]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux53~1_combout\);

-- Location: LCCOMB_X61_Y70_N16
\DataPath|Add0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~168_combout\ = \DataPath|num2~11_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datac => \DataPath|num2~11_combout\,
	datad => \DataPath|PC\(2),
	combout => \DataPath|Add0~168_combout\);

-- Location: LCCOMB_X57_Y70_N6
\DataPath|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~95_combout\ = (\DataPath|Add0~168_combout\ & ((\DataPath|Mux53~1_combout\ & (\DataPath|Add0~93\ & VCC)) # (!\DataPath|Mux53~1_combout\ & (!\DataPath|Add0~93\)))) # (!\DataPath|Add0~168_combout\ & ((\DataPath|Mux53~1_combout\ & 
-- (!\DataPath|Add0~93\)) # (!\DataPath|Mux53~1_combout\ & ((\DataPath|Add0~93\) # (GND)))))
-- \DataPath|Add0~96\ = CARRY((\DataPath|Add0~168_combout\ & (!\DataPath|Mux53~1_combout\ & !\DataPath|Add0~93\)) # (!\DataPath|Add0~168_combout\ & ((!\DataPath|Add0~93\) # (!\DataPath|Mux53~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~168_combout\,
	datab => \DataPath|Mux53~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~93\,
	combout => \DataPath|Add0~95_combout\,
	cout => \DataPath|Add0~96\);

-- Location: LCCOMB_X56_Y70_N10
\DataPath|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~97_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~95_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux53~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux53~1_combout\,
	datad => \DataPath|Add0~95_combout\,
	combout => \DataPath|Add0~97_combout\);

-- Location: FF_X56_Y70_N11
\DataPath|result[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(10));

-- Location: FF_X60_Y69_N21
\DataPath|regs[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~98_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][11]~q\);

-- Location: LCCOMB_X60_Y69_N20
\DataPath|num2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~12_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][11]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][11]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][11]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~12_combout\);

-- Location: FF_X58_Y69_N9
\DataPath|writememdata[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux52~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(11));

-- Location: LCCOMB_X59_Y65_N12
\RAM|RAM[5][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][11]~feeder_combout\ = \DataPath|writememdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(11),
	combout => \RAM|RAM[5][11]~feeder_combout\);

-- Location: FF_X59_Y65_N13
\RAM|RAM[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][11]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][11]~q\);

-- Location: FF_X59_Y69_N23
\RAM|RAM[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(11),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][11]~q\);

-- Location: FF_X61_Y66_N3
\RAM|RAM[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(11),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][11]~q\);

-- Location: LCCOMB_X61_Y66_N0
\RAM|RAM[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][11]~feeder_combout\ = \DataPath|writememdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(11),
	combout => \RAM|RAM[6][11]~feeder_combout\);

-- Location: FF_X61_Y66_N1
\RAM|RAM[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][11]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][11]~q\);

-- Location: LCCOMB_X61_Y66_N2
\DataPath|towrite~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~96_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][11]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][11]~q\,
	datad => \RAM|RAM[6][11]~q\,
	combout => \DataPath|towrite~96_combout\);

-- Location: LCCOMB_X59_Y69_N22
\DataPath|towrite~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~97_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~96_combout\ & ((\RAM|RAM[7][11]~q\))) # (!\DataPath|towrite~96_combout\ & (\RAM|RAM[5][11]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][11]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][11]~q\,
	datad => \DataPath|towrite~96_combout\,
	combout => \DataPath|towrite~97_combout\);

-- Location: LCCOMB_X61_Y67_N18
\RAM|RAM[10][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][11]~feeder_combout\ = \DataPath|writememdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(11),
	combout => \RAM|RAM[10][11]~feeder_combout\);

-- Location: FF_X61_Y67_N19
\RAM|RAM[10][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][11]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][11]~q\);

-- Location: FF_X60_Y67_N27
\RAM|RAM[8][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(11),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][11]~q\);

-- Location: LCCOMB_X61_Y67_N28
\RAM|RAM[9][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][11]~feeder_combout\ = \DataPath|writememdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(11),
	combout => \RAM|RAM[9][11]~feeder_combout\);

-- Location: FF_X61_Y67_N29
\RAM|RAM[9][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][11]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][11]~q\);

-- Location: LCCOMB_X60_Y67_N26
\DataPath|towrite~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~93_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][11]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][11]~q\,
	datad => \RAM|RAM[9][11]~q\,
	combout => \DataPath|towrite~93_combout\);

-- Location: LCCOMB_X63_Y67_N14
\RAM|RAM[2][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][11]~feeder_combout\ = \DataPath|writememdata\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(11),
	combout => \RAM|RAM[2][11]~feeder_combout\);

-- Location: FF_X63_Y67_N15
\RAM|RAM[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][11]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][11]~q\);

-- Location: FF_X65_Y67_N15
\RAM|RAM[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(11),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][11]~q\);

-- Location: FF_X65_Y67_N9
\RAM|RAM[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(11),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][11]~q\);

-- Location: LCCOMB_X66_Y67_N28
\RAM|RAM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~24_combout\ = (\DataPath|writememdata\(11) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writememdata\(11),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~24_combout\);

-- Location: FF_X66_Y67_N29
\RAM|RAM[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~24_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][11]~q\);

-- Location: LCCOMB_X65_Y67_N8
\DataPath|towrite~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~91_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][11]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][11]~q\,
	datad => \RAM|RAM[1][11]~q\,
	combout => \DataPath|towrite~91_combout\);

-- Location: LCCOMB_X65_Y67_N14
\DataPath|towrite~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~92_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~91_combout\ & ((\RAM|RAM[3][11]~q\))) # (!\DataPath|towrite~91_combout\ & (\RAM|RAM[2][11]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][11]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][11]~q\,
	datad => \DataPath|towrite~91_combout\,
	combout => \DataPath|towrite~92_combout\);

-- Location: LCCOMB_X60_Y67_N4
\DataPath|towrite~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~94_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~93_combout\ & (\RAM|RAM[10][11]~q\)) # (!\DataPath|towrite~93_combout\ & ((\DataPath|towrite~92_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (((\DataPath|towrite~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[10][11]~q\,
	datab => \DataPath|towrite~4_combout\,
	datac => \DataPath|towrite~93_combout\,
	datad => \DataPath|towrite~92_combout\,
	combout => \DataPath|towrite~94_combout\);

-- Location: LCCOMB_X59_Y69_N28
\DataPath|towrite~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~95_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~94_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~100_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|towrite~94_combout\,
	combout => \DataPath|towrite~95_combout\);

-- Location: LCCOMB_X59_Y69_N16
\DataPath|towrite~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~98_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~95_combout\ & ((\DataPath|towrite~97_combout\))) # (!\DataPath|towrite~95_combout\ & (\DataPath|num2~12_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~12_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~97_combout\,
	datad => \DataPath|towrite~95_combout\,
	combout => \DataPath|towrite~98_combout\);

-- Location: FF_X59_Y69_N17
\DataPath|regs[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~98_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][11]~q\);

-- Location: FF_X60_Y69_N19
\DataPath|regs[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~98_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][11]~q\);

-- Location: LCCOMB_X59_Y69_N10
\DataPath|Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux52~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][11]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][11]~q\,
	datab => \DataPath|regs[3][11]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux52~0_combout\);

-- Location: LCCOMB_X58_Y69_N8
\DataPath|Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux52~1_combout\ = (\DataPath|Mux52~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][11]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[0][11]~q\,
	datac => \DataPath|Mux52~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux52~1_combout\);

-- Location: LCCOMB_X60_Y69_N2
\DataPath|Add0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~169_combout\ = \DataPath|num2~12_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|num2~12_combout\,
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Add0~169_combout\);

-- Location: LCCOMB_X57_Y70_N8
\DataPath|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~98_combout\ = ((\DataPath|Add0~169_combout\ $ (\DataPath|Mux52~1_combout\ $ (!\DataPath|Add0~96\)))) # (GND)
-- \DataPath|Add0~99\ = CARRY((\DataPath|Add0~169_combout\ & ((\DataPath|Mux52~1_combout\) # (!\DataPath|Add0~96\))) # (!\DataPath|Add0~169_combout\ & (\DataPath|Mux52~1_combout\ & !\DataPath|Add0~96\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~169_combout\,
	datab => \DataPath|Mux52~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~96\,
	combout => \DataPath|Add0~98_combout\,
	cout => \DataPath|Add0~99\);

-- Location: LCCOMB_X56_Y69_N28
\DataPath|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~100_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~98_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux52~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux52~1_combout\,
	datad => \DataPath|Add0~98_combout\,
	combout => \DataPath|Add0~100_combout\);

-- Location: FF_X56_Y69_N29
\DataPath|result[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(11));

-- Location: FF_X60_Y70_N7
\DataPath|writememdata[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|Mux51~1_combout\,
	sload => VCC,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(12));

-- Location: LCCOMB_X60_Y66_N8
\RAM|RAM[5][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][12]~feeder_combout\ = \DataPath|writememdata\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(12),
	combout => \RAM|RAM[5][12]~feeder_combout\);

-- Location: FF_X60_Y66_N9
\RAM|RAM[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][12]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][12]~q\);

-- Location: FF_X60_Y66_N31
\RAM|RAM[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][12]~q\);

-- Location: FF_X61_Y66_N23
\RAM|RAM[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][12]~q\);

-- Location: LCCOMB_X61_Y66_N28
\RAM|RAM[6][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][12]~feeder_combout\ = \DataPath|writememdata\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(12),
	combout => \RAM|RAM[6][12]~feeder_combout\);

-- Location: FF_X61_Y66_N29
\RAM|RAM[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][12]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][12]~q\);

-- Location: LCCOMB_X61_Y66_N22
\DataPath|towrite~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~104_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][12]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][12]~q\,
	datad => \RAM|RAM[6][12]~q\,
	combout => \DataPath|towrite~104_combout\);

-- Location: LCCOMB_X60_Y66_N30
\DataPath|towrite~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~105_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~104_combout\ & ((\RAM|RAM[7][12]~q\))) # (!\DataPath|towrite~104_combout\ & (\RAM|RAM[5][12]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[5][12]~q\,
	datac => \RAM|RAM[7][12]~q\,
	datad => \DataPath|towrite~104_combout\,
	combout => \DataPath|towrite~105_combout\);

-- Location: FF_X58_Y70_N25
\DataPath|regs[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~106_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][12]~q\);

-- Location: LCCOMB_X58_Y70_N24
\DataPath|num2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~13_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][12]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr4~0_combout\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][12]~q\,
	datad => \DataPath|regs[0][12]~q\,
	combout => \DataPath|num2~13_combout\);

-- Location: FF_X60_Y68_N31
\RAM|RAM[9][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][12]~q\);

-- Location: FF_X60_Y68_N25
\RAM|RAM[10][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][12]~q\);

-- Location: FF_X60_Y67_N23
\RAM|RAM[8][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][12]~q\);

-- Location: FF_X65_Y67_N17
\RAM|RAM[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][12]~q\);

-- Location: LCCOMB_X66_Y67_N18
\RAM|RAM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~25_combout\ = (\DataPath|writememdata\(12) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(12),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~25_combout\);

-- Location: FF_X66_Y67_N19
\RAM|RAM[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~25_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][12]~q\);

-- Location: LCCOMB_X65_Y67_N16
\DataPath|towrite~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~99_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][12]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][12]~q\,
	datad => \RAM|RAM[1][12]~q\,
	combout => \DataPath|towrite~99_combout\);

-- Location: FF_X65_Y67_N3
\RAM|RAM[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(12),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][12]~q\);

-- Location: LCCOMB_X67_Y67_N14
\RAM|RAM[2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][12]~feeder_combout\ = \DataPath|writememdata\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(12),
	combout => \RAM|RAM[2][12]~feeder_combout\);

-- Location: FF_X67_Y67_N15
\RAM|RAM[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][12]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][12]~q\);

-- Location: LCCOMB_X65_Y67_N2
\DataPath|towrite~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~100_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~99_combout\ & (\RAM|RAM[3][12]~q\)) # (!\DataPath|towrite~99_combout\ & ((\RAM|RAM[2][12]~q\))))) # (!\DataPath|memaddr\(1) & (\DataPath|towrite~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|towrite~99_combout\,
	datac => \RAM|RAM[3][12]~q\,
	datad => \RAM|RAM[2][12]~q\,
	combout => \DataPath|towrite~100_combout\);

-- Location: LCCOMB_X60_Y67_N22
\DataPath|towrite~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~101_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~100_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][12]~q\,
	datad => \DataPath|towrite~100_combout\,
	combout => \DataPath|towrite~101_combout\);

-- Location: LCCOMB_X60_Y68_N24
\DataPath|towrite~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~102_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~101_combout\ & ((\RAM|RAM[10][12]~q\))) # (!\DataPath|towrite~101_combout\ & (\RAM|RAM[9][12]~q\)))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][12]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][12]~q\,
	datad => \DataPath|towrite~101_combout\,
	combout => \DataPath|towrite~102_combout\);

-- Location: LCCOMB_X59_Y70_N6
\DataPath|towrite~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~103_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~102_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & (\DataPath|Add0~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|Add0~103_combout\,
	datad => \DataPath|towrite~102_combout\,
	combout => \DataPath|towrite~103_combout\);

-- Location: LCCOMB_X59_Y70_N12
\DataPath|towrite~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~106_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~103_combout\ & (\DataPath|towrite~105_combout\)) # (!\DataPath|towrite~103_combout\ & ((\DataPath|num2~13_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~105_combout\,
	datab => \DataPath|num2~13_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~103_combout\,
	combout => \DataPath|towrite~106_combout\);

-- Location: FF_X59_Y70_N13
\DataPath|regs[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~106_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][12]~q\);

-- Location: FF_X59_Y70_N15
\DataPath|regs[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~106_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][12]~q\);

-- Location: LCCOMB_X59_Y70_N14
\DataPath|Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux51~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][12]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][12]~q\,
	datac => \DataPath|regs[3][12]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux51~0_combout\);

-- Location: LCCOMB_X59_Y70_N10
\DataPath|Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux51~1_combout\ = (\DataPath|Mux51~0_combout\) # ((\DataPath|regs[0][12]~q\ & (!\InstructionFetch|list~2_combout\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][12]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|Mux51~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux51~1_combout\);

-- Location: LCCOMB_X58_Y70_N28
\DataPath|Add0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~170_combout\ = \DataPath|num2~13_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|num2~13_combout\,
	combout => \DataPath|Add0~170_combout\);

-- Location: LCCOMB_X57_Y70_N10
\DataPath|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~101_combout\ = (\DataPath|Mux51~1_combout\ & ((\DataPath|Add0~170_combout\ & (\DataPath|Add0~99\ & VCC)) # (!\DataPath|Add0~170_combout\ & (!\DataPath|Add0~99\)))) # (!\DataPath|Mux51~1_combout\ & ((\DataPath|Add0~170_combout\ & 
-- (!\DataPath|Add0~99\)) # (!\DataPath|Add0~170_combout\ & ((\DataPath|Add0~99\) # (GND)))))
-- \DataPath|Add0~102\ = CARRY((\DataPath|Mux51~1_combout\ & (!\DataPath|Add0~170_combout\ & !\DataPath|Add0~99\)) # (!\DataPath|Mux51~1_combout\ & ((!\DataPath|Add0~99\) # (!\DataPath|Add0~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux51~1_combout\,
	datab => \DataPath|Add0~170_combout\,
	datad => VCC,
	cin => \DataPath|Add0~99\,
	combout => \DataPath|Add0~101_combout\,
	cout => \DataPath|Add0~102\);

-- Location: LCCOMB_X56_Y70_N20
\DataPath|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~103_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~101_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux51~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux51~1_combout\,
	datac => \DataPath|Add0~101_combout\,
	datad => \DataPath|Mux127~0_combout\,
	combout => \DataPath|Add0~103_combout\);

-- Location: FF_X56_Y70_N21
\DataPath|result[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(12));

-- Location: FF_X58_Y70_N21
\DataPath|writememdata[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux50~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(13));

-- Location: LCCOMB_X62_Y66_N0
\RAM|RAM[5][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][13]~feeder_combout\ = \DataPath|writememdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(13),
	combout => \RAM|RAM[5][13]~feeder_combout\);

-- Location: FF_X62_Y66_N1
\RAM|RAM[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][13]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][13]~q\);

-- Location: FF_X62_Y66_N3
\RAM|RAM[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(13),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][13]~q\);

-- Location: FF_X61_Y66_N19
\RAM|RAM[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(13),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][13]~q\);

-- Location: LCCOMB_X61_Y66_N8
\RAM|RAM[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][13]~feeder_combout\ = \DataPath|writememdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(13),
	combout => \RAM|RAM[6][13]~feeder_combout\);

-- Location: FF_X61_Y66_N9
\RAM|RAM[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][13]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][13]~q\);

-- Location: LCCOMB_X61_Y66_N18
\DataPath|towrite~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~112_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][13]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][13]~q\,
	datad => \RAM|RAM[6][13]~q\,
	combout => \DataPath|towrite~112_combout\);

-- Location: LCCOMB_X62_Y66_N2
\DataPath|towrite~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~113_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~112_combout\ & ((\RAM|RAM[7][13]~q\))) # (!\DataPath|towrite~112_combout\ & (\RAM|RAM[5][13]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][13]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][13]~q\,
	datad => \DataPath|towrite~112_combout\,
	combout => \DataPath|towrite~113_combout\);

-- Location: FF_X58_Y70_N23
\DataPath|regs[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~114_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][13]~q\);

-- Location: LCCOMB_X58_Y70_N22
\DataPath|num2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~14_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][13]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr4~0_combout\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][13]~q\,
	datad => \DataPath|regs[0][13]~q\,
	combout => \DataPath|num2~14_combout\);

-- Location: LCCOMB_X61_Y67_N14
\RAM|RAM[10][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][13]~feeder_combout\ = \DataPath|writememdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(13),
	combout => \RAM|RAM[10][13]~feeder_combout\);

-- Location: FF_X61_Y67_N15
\RAM|RAM[10][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][13]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][13]~q\);

-- Location: LCCOMB_X61_Y67_N12
\RAM|RAM[9][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][13]~feeder_combout\ = \DataPath|writememdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(13),
	combout => \RAM|RAM[9][13]~feeder_combout\);

-- Location: FF_X61_Y67_N13
\RAM|RAM[9][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][13]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][13]~q\);

-- Location: FF_X62_Y67_N5
\RAM|RAM[8][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(13),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][13]~q\);

-- Location: LCCOMB_X62_Y67_N4
\DataPath|towrite~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~109_combout\ = (\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][13]~q\) # ((\DataPath|towrite~4_combout\)))) # (!\DataPath|towrite~1_combout\ & (((\RAM|RAM[8][13]~q\ & !\DataPath|towrite~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][13]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][13]~q\,
	datad => \DataPath|towrite~4_combout\,
	combout => \DataPath|towrite~109_combout\);

-- Location: FF_X59_Y67_N3
\RAM|RAM[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(13),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][13]~q\);

-- Location: LCCOMB_X59_Y67_N20
\RAM|RAM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~26_combout\ = (\DataPath|writememdata\(13) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(13),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~26_combout\);

-- Location: FF_X59_Y67_N21
\RAM|RAM[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~26_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][13]~q\);

-- Location: LCCOMB_X59_Y67_N2
\DataPath|towrite~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~107_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][13]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][13]~q\,
	datad => \RAM|RAM[1][13]~q\,
	combout => \DataPath|towrite~107_combout\);

-- Location: FF_X62_Y67_N11
\RAM|RAM[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(13),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][13]~q\);

-- Location: LCCOMB_X63_Y67_N28
\RAM|RAM[2][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][13]~feeder_combout\ = \DataPath|writememdata\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(13),
	combout => \RAM|RAM[2][13]~feeder_combout\);

-- Location: FF_X63_Y67_N29
\RAM|RAM[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][13]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][13]~q\);

-- Location: LCCOMB_X62_Y67_N10
\DataPath|towrite~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~108_combout\ = (\DataPath|towrite~107_combout\ & (((\RAM|RAM[3][13]~q\)) # (!\DataPath|memaddr\(1)))) # (!\DataPath|towrite~107_combout\ & (\DataPath|memaddr\(1) & ((\RAM|RAM[2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~107_combout\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][13]~q\,
	datad => \RAM|RAM[2][13]~q\,
	combout => \DataPath|towrite~108_combout\);

-- Location: LCCOMB_X62_Y67_N30
\DataPath|towrite~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~110_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~109_combout\ & (\RAM|RAM[10][13]~q\)) # (!\DataPath|towrite~109_combout\ & ((\DataPath|towrite~108_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (((\DataPath|towrite~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[10][13]~q\,
	datab => \DataPath|towrite~4_combout\,
	datac => \DataPath|towrite~109_combout\,
	datad => \DataPath|towrite~108_combout\,
	combout => \DataPath|towrite~110_combout\);

-- Location: LCCOMB_X59_Y70_N24
\DataPath|towrite~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~111_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|towrite~0_combout\) # (\DataPath|towrite~110_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add0~106_combout\ & (!\DataPath|towrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|Add0~106_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~110_combout\,
	combout => \DataPath|towrite~111_combout\);

-- Location: LCCOMB_X59_Y70_N30
\DataPath|towrite~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~114_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~111_combout\ & (\DataPath|towrite~113_combout\)) # (!\DataPath|towrite~111_combout\ & ((\DataPath|num2~14_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~113_combout\,
	datab => \DataPath|num2~14_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~111_combout\,
	combout => \DataPath|towrite~114_combout\);

-- Location: FF_X59_Y70_N31
\DataPath|regs[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~114_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][13]~q\);

-- Location: FF_X59_Y70_N29
\DataPath|regs[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~114_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][13]~q\);

-- Location: LCCOMB_X59_Y70_N28
\DataPath|Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux50~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][13]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][13]~q\,
	datac => \DataPath|regs[3][13]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux50~0_combout\);

-- Location: LCCOMB_X58_Y70_N20
\DataPath|Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux50~1_combout\ = (\DataPath|Mux50~0_combout\) # ((\InstructionFetch|list~0_combout\ & (\DataPath|regs[0][13]~q\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[0][13]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux50~0_combout\,
	combout => \DataPath|Mux50~1_combout\);

-- Location: LCCOMB_X58_Y70_N26
\DataPath|Add0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~171_combout\ = \DataPath|num2~14_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~14_combout\,
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Add0~171_combout\);

-- Location: LCCOMB_X57_Y70_N12
\DataPath|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~104_combout\ = ((\DataPath|Mux50~1_combout\ $ (\DataPath|Add0~171_combout\ $ (!\DataPath|Add0~102\)))) # (GND)
-- \DataPath|Add0~105\ = CARRY((\DataPath|Mux50~1_combout\ & ((\DataPath|Add0~171_combout\) # (!\DataPath|Add0~102\))) # (!\DataPath|Mux50~1_combout\ & (\DataPath|Add0~171_combout\ & !\DataPath|Add0~102\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux50~1_combout\,
	datab => \DataPath|Add0~171_combout\,
	datad => VCC,
	cin => \DataPath|Add0~102\,
	combout => \DataPath|Add0~104_combout\,
	cout => \DataPath|Add0~105\);

-- Location: LCCOMB_X56_Y70_N6
\DataPath|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~106_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~104_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~104_combout\,
	datad => \DataPath|Mux50~1_combout\,
	combout => \DataPath|Add0~106_combout\);

-- Location: FF_X56_Y70_N7
\DataPath|result[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(13));

-- Location: FF_X59_Y70_N17
\DataPath|regs[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~122_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][14]~q\);

-- Location: FF_X60_Y70_N17
\DataPath|regs[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~122_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][14]~q\);

-- Location: LCCOMB_X59_Y70_N16
\DataPath|Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux49~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & (\DataPath|regs[3][14]~q\)) # (!\InstructionFetch|list~2_combout\ & ((\DataPath|regs[1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][14]~q\,
	datad => \DataPath|regs[1][14]~q\,
	combout => \DataPath|Mux49~0_combout\);

-- Location: LCCOMB_X59_Y70_N20
\DataPath|Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux49~1_combout\ = (\DataPath|Mux49~0_combout\) # ((\InstructionFetch|list~0_combout\ & (!\InstructionFetch|list~2_combout\ & \DataPath|regs[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[0][14]~q\,
	datad => \DataPath|Mux49~0_combout\,
	combout => \DataPath|Mux49~1_combout\);

-- Location: LCCOMB_X58_Y70_N18
\DataPath|writememdata[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[14]~feeder_combout\ = \DataPath|Mux49~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux49~1_combout\,
	combout => \DataPath|writememdata[14]~feeder_combout\);

-- Location: FF_X58_Y70_N19
\DataPath|writememdata[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[14]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(14));

-- Location: LCCOMB_X62_Y66_N16
\RAM|RAM[5][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][14]~feeder_combout\ = \DataPath|writememdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(14),
	combout => \RAM|RAM[5][14]~feeder_combout\);

-- Location: FF_X62_Y66_N17
\RAM|RAM[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][14]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][14]~q\);

-- Location: FF_X62_Y66_N23
\RAM|RAM[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(14),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][14]~q\);

-- Location: LCCOMB_X63_Y66_N4
\RAM|RAM[6][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][14]~feeder_combout\ = \DataPath|writememdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(14),
	combout => \RAM|RAM[6][14]~feeder_combout\);

-- Location: FF_X63_Y66_N5
\RAM|RAM[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][14]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][14]~q\);

-- Location: FF_X63_Y66_N27
\RAM|RAM[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(14),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][14]~q\);

-- Location: LCCOMB_X63_Y66_N26
\DataPath|towrite~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~120_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][14]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][14]~q\,
	datac => \RAM|RAM[4][14]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~120_combout\);

-- Location: LCCOMB_X62_Y66_N22
\DataPath|towrite~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~121_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~120_combout\ & ((\RAM|RAM[7][14]~q\))) # (!\DataPath|towrite~120_combout\ & (\RAM|RAM[5][14]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][14]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][14]~q\,
	datad => \DataPath|towrite~120_combout\,
	combout => \DataPath|towrite~121_combout\);

-- Location: LCCOMB_X60_Y68_N16
\RAM|RAM[10][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][14]~feeder_combout\ = \DataPath|writememdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(14),
	combout => \RAM|RAM[10][14]~feeder_combout\);

-- Location: FF_X60_Y68_N17
\RAM|RAM[10][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][14]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][14]~q\);

-- Location: LCCOMB_X60_Y68_N22
\RAM|RAM[9][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][14]~feeder_combout\ = \DataPath|writememdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(14),
	combout => \RAM|RAM[9][14]~feeder_combout\);

-- Location: FF_X60_Y68_N23
\RAM|RAM[9][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][14]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][14]~q\);

-- Location: FF_X60_Y67_N3
\RAM|RAM[8][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(14),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][14]~q\);

-- Location: LCCOMB_X63_Y67_N10
\RAM|RAM[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][14]~feeder_combout\ = \DataPath|writememdata\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(14),
	combout => \RAM|RAM[2][14]~feeder_combout\);

-- Location: FF_X63_Y67_N11
\RAM|RAM[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][14]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][14]~q\);

-- Location: FF_X60_Y67_N17
\RAM|RAM[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(14),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][14]~q\);

-- Location: LCCOMB_X59_Y67_N16
\RAM|RAM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~27_combout\ = (\DataPath|writememdata\(14) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(14),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~27_combout\);

-- Location: FF_X59_Y67_N17
\RAM|RAM[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~27_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][14]~q\);

-- Location: FF_X59_Y67_N23
\RAM|RAM[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(14),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][14]~q\);

-- Location: LCCOMB_X59_Y67_N22
\DataPath|towrite~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~115_combout\ = (\DataPath|memaddr\(1) & (((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & (\RAM|RAM[1][14]~q\)) # (!\DataPath|memaddr\(0) & ((\RAM|RAM[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[1][14]~q\,
	datac => \RAM|RAM[0][14]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~115_combout\);

-- Location: LCCOMB_X60_Y67_N16
\DataPath|towrite~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~116_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~115_combout\ & ((\RAM|RAM[3][14]~q\))) # (!\DataPath|towrite~115_combout\ & (\RAM|RAM[2][14]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][14]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][14]~q\,
	datad => \DataPath|towrite~115_combout\,
	combout => \DataPath|towrite~116_combout\);

-- Location: LCCOMB_X60_Y67_N2
\DataPath|towrite~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~117_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~116_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][14]~q\,
	datad => \DataPath|towrite~116_combout\,
	combout => \DataPath|towrite~117_combout\);

-- Location: LCCOMB_X59_Y70_N2
\DataPath|towrite~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~118_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~117_combout\ & (\RAM|RAM[10][14]~q\)) # (!\DataPath|towrite~117_combout\ & ((\RAM|RAM[9][14]~q\))))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~1_combout\,
	datab => \RAM|RAM[10][14]~q\,
	datac => \RAM|RAM[9][14]~q\,
	datad => \DataPath|towrite~117_combout\,
	combout => \DataPath|towrite~118_combout\);

-- Location: LCCOMB_X59_Y70_N0
\DataPath|towrite~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~119_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~118_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & (\DataPath|Add0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|Add0~109_combout\,
	datad => \DataPath|towrite~118_combout\,
	combout => \DataPath|towrite~119_combout\);

-- Location: LCCOMB_X59_Y70_N26
\DataPath|towrite~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~122_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~119_combout\ & ((\DataPath|towrite~121_combout\))) # (!\DataPath|towrite~119_combout\ & (\DataPath|num2~15_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~15_combout\,
	datab => \DataPath|towrite~121_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~119_combout\,
	combout => \DataPath|towrite~122_combout\);

-- Location: FF_X59_Y70_N27
\DataPath|regs[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~122_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][14]~q\);

-- Location: LCCOMB_X60_Y70_N16
\DataPath|num2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~15_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][14]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][14]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][14]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~15_combout\);

-- Location: LCCOMB_X60_Y70_N4
\DataPath|Add0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~172_combout\ = \DataPath|num2~15_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~15_combout\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \DataPath|Add0~172_combout\);

-- Location: LCCOMB_X57_Y70_N14
\DataPath|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~107_combout\ = (\DataPath|Add0~172_combout\ & ((\DataPath|Mux49~1_combout\ & (\DataPath|Add0~105\ & VCC)) # (!\DataPath|Mux49~1_combout\ & (!\DataPath|Add0~105\)))) # (!\DataPath|Add0~172_combout\ & ((\DataPath|Mux49~1_combout\ & 
-- (!\DataPath|Add0~105\)) # (!\DataPath|Mux49~1_combout\ & ((\DataPath|Add0~105\) # (GND)))))
-- \DataPath|Add0~108\ = CARRY((\DataPath|Add0~172_combout\ & (!\DataPath|Mux49~1_combout\ & !\DataPath|Add0~105\)) # (!\DataPath|Add0~172_combout\ & ((!\DataPath|Add0~105\) # (!\DataPath|Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~172_combout\,
	datab => \DataPath|Mux49~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~105\,
	combout => \DataPath|Add0~107_combout\,
	cout => \DataPath|Add0~108\);

-- Location: LCCOMB_X56_Y70_N0
\DataPath|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~109_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~107_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux49~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~107_combout\,
	datad => \DataPath|Mux49~1_combout\,
	combout => \DataPath|Add0~109_combout\);

-- Location: FF_X56_Y70_N1
\DataPath|result[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(14));

-- Location: FF_X58_Y70_N3
\DataPath|writememdata[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux48~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(15));

-- Location: FF_X63_Y66_N31
\RAM|RAM[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(15),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][15]~q\);

-- Location: LCCOMB_X63_Y66_N12
\RAM|RAM[6][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][15]~feeder_combout\ = \DataPath|writememdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(15),
	combout => \RAM|RAM[6][15]~feeder_combout\);

-- Location: FF_X63_Y66_N13
\RAM|RAM[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][15]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][15]~q\);

-- Location: LCCOMB_X63_Y66_N30
\DataPath|towrite~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~128_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0)) # ((\RAM|RAM[6][15]~q\)))) # (!\DataPath|memaddr\(1) & (!\DataPath|memaddr\(0) & (\RAM|RAM[4][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[4][15]~q\,
	datad => \RAM|RAM[6][15]~q\,
	combout => \DataPath|towrite~128_combout\);

-- Location: FF_X62_Y66_N27
\RAM|RAM[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(15),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][15]~q\);

-- Location: LCCOMB_X62_Y66_N8
\RAM|RAM[5][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][15]~feeder_combout\ = \DataPath|writememdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(15),
	combout => \RAM|RAM[5][15]~feeder_combout\);

-- Location: FF_X62_Y66_N9
\RAM|RAM[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][15]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][15]~q\);

-- Location: LCCOMB_X62_Y66_N26
\DataPath|towrite~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~129_combout\ = (\DataPath|towrite~128_combout\ & (((\RAM|RAM[7][15]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~128_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~128_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][15]~q\,
	datad => \RAM|RAM[5][15]~q\,
	combout => \DataPath|towrite~129_combout\);

-- Location: FF_X58_Y70_N11
\DataPath|regs[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~130_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][15]~q\);

-- Location: LCCOMB_X58_Y70_N10
\DataPath|num2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~16_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & (\DataPath|regs[1][15]~q\)) # (!\InstructionFetch|list~1_combout\ & ((\DataPath|regs[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr4~0_combout\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][15]~q\,
	datad => \DataPath|regs[0][15]~q\,
	combout => \DataPath|num2~16_combout\);

-- Location: LCCOMB_X61_Y67_N6
\RAM|RAM[10][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][15]~feeder_combout\ = \DataPath|writememdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(15),
	combout => \RAM|RAM[10][15]~feeder_combout\);

-- Location: FF_X61_Y67_N7
\RAM|RAM[10][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][15]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][15]~q\);

-- Location: FF_X60_Y67_N15
\RAM|RAM[8][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(15),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][15]~q\);

-- Location: LCCOMB_X61_Y67_N24
\RAM|RAM[9][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][15]~feeder_combout\ = \DataPath|writememdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(15),
	combout => \RAM|RAM[9][15]~feeder_combout\);

-- Location: FF_X61_Y67_N25
\RAM|RAM[9][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][15]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][15]~q\);

-- Location: LCCOMB_X60_Y67_N14
\DataPath|towrite~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~125_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][15]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][15]~q\,
	datad => \RAM|RAM[9][15]~q\,
	combout => \DataPath|towrite~125_combout\);

-- Location: LCCOMB_X59_Y67_N8
\RAM|RAM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~28_combout\ = (\DataPath|writememdata\(15) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(15),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~28_combout\);

-- Location: FF_X59_Y67_N9
\RAM|RAM[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~28_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][15]~q\);

-- Location: FF_X59_Y67_N27
\RAM|RAM[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(15),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][15]~q\);

-- Location: LCCOMB_X59_Y67_N26
\DataPath|towrite~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~123_combout\ = (\DataPath|memaddr\(1) & (((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & (\RAM|RAM[1][15]~q\)) # (!\DataPath|memaddr\(0) & ((\RAM|RAM[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[1][15]~q\,
	datac => \RAM|RAM[0][15]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~123_combout\);

-- Location: FF_X60_Y67_N25
\RAM|RAM[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(15),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][15]~q\);

-- Location: LCCOMB_X63_Y67_N8
\RAM|RAM[2][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][15]~feeder_combout\ = \DataPath|writememdata\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(15),
	combout => \RAM|RAM[2][15]~feeder_combout\);

-- Location: FF_X63_Y67_N9
\RAM|RAM[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][15]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][15]~q\);

-- Location: LCCOMB_X60_Y67_N24
\DataPath|towrite~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~124_combout\ = (\DataPath|towrite~123_combout\ & (((\RAM|RAM[3][15]~q\)) # (!\DataPath|memaddr\(1)))) # (!\DataPath|towrite~123_combout\ & (\DataPath|memaddr\(1) & ((\RAM|RAM[2][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~123_combout\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][15]~q\,
	datad => \RAM|RAM[2][15]~q\,
	combout => \DataPath|towrite~124_combout\);

-- Location: LCCOMB_X60_Y67_N12
\DataPath|towrite~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~126_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~125_combout\ & (\RAM|RAM[10][15]~q\)) # (!\DataPath|towrite~125_combout\ & ((\DataPath|towrite~124_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (((\DataPath|towrite~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[10][15]~q\,
	datab => \DataPath|towrite~4_combout\,
	datac => \DataPath|towrite~125_combout\,
	datad => \DataPath|towrite~124_combout\,
	combout => \DataPath|towrite~126_combout\);

-- Location: LCCOMB_X59_Y70_N18
\DataPath|towrite~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~127_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~126_combout\) # ((\DataPath|towrite~0_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (((!\DataPath|towrite~0_combout\ & \DataPath|Add0~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~126_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|Add0~112_combout\,
	combout => \DataPath|towrite~127_combout\);

-- Location: LCCOMB_X59_Y70_N8
\DataPath|towrite~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~130_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~127_combout\ & (\DataPath|towrite~129_combout\)) # (!\DataPath|towrite~127_combout\ & ((\DataPath|num2~16_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~129_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|num2~16_combout\,
	datad => \DataPath|towrite~127_combout\,
	combout => \DataPath|towrite~130_combout\);

-- Location: FF_X59_Y70_N9
\DataPath|regs[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~130_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][15]~q\);

-- Location: LCCOMB_X59_Y70_N22
\DataPath|regs[3][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[3][15]~feeder_combout\ = \DataPath|towrite~130_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|towrite~130_combout\,
	combout => \DataPath|regs[3][15]~feeder_combout\);

-- Location: FF_X59_Y70_N23
\DataPath|regs[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[3][15]~feeder_combout\,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][15]~q\);

-- Location: LCCOMB_X58_Y70_N12
\DataPath|Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux48~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][15]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][15]~q\,
	datab => \DataPath|regs[3][15]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux48~0_combout\);

-- Location: LCCOMB_X58_Y70_N2
\DataPath|Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux48~1_combout\ = (\DataPath|Mux48~0_combout\) # ((\DataPath|regs[0][15]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][15]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux48~0_combout\,
	combout => \DataPath|Mux48~1_combout\);

-- Location: LCCOMB_X58_Y70_N16
\DataPath|Add0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~173_combout\ = \DataPath|num2~16_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~16_combout\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \DataPath|Add0~173_combout\);

-- Location: LCCOMB_X57_Y70_N16
\DataPath|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~110_combout\ = ((\DataPath|Mux48~1_combout\ $ (\DataPath|Add0~173_combout\ $ (!\DataPath|Add0~108\)))) # (GND)
-- \DataPath|Add0~111\ = CARRY((\DataPath|Mux48~1_combout\ & ((\DataPath|Add0~173_combout\) # (!\DataPath|Add0~108\))) # (!\DataPath|Mux48~1_combout\ & (\DataPath|Add0~173_combout\ & !\DataPath|Add0~108\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux48~1_combout\,
	datab => \DataPath|Add0~173_combout\,
	datad => VCC,
	cin => \DataPath|Add0~108\,
	combout => \DataPath|Add0~110_combout\,
	cout => \DataPath|Add0~111\);

-- Location: LCCOMB_X56_Y70_N22
\DataPath|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~112_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~110_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux48~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux48~1_combout\,
	datad => \DataPath|Add0~110_combout\,
	combout => \DataPath|Add0~112_combout\);

-- Location: FF_X56_Y70_N23
\DataPath|result[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(15));

-- Location: FF_X60_Y70_N19
\DataPath|regs[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~138_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][16]~q\);

-- Location: LCCOMB_X60_Y70_N18
\DataPath|num2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~17_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][16]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][16]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][16]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~17_combout\);

-- Location: FF_X58_Y70_N5
\DataPath|writememdata[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux47~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(16));

-- Location: LCCOMB_X63_Y66_N0
\RAM|RAM[6][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][16]~feeder_combout\ = \DataPath|writememdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(16),
	combout => \RAM|RAM[6][16]~feeder_combout\);

-- Location: FF_X63_Y66_N1
\RAM|RAM[6][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][16]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][16]~q\);

-- Location: FF_X63_Y66_N7
\RAM|RAM[4][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(16),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][16]~q\);

-- Location: LCCOMB_X63_Y66_N6
\DataPath|towrite~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~136_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][16]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][16]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][16]~q\,
	datac => \RAM|RAM[4][16]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~136_combout\);

-- Location: FF_X62_Y66_N19
\RAM|RAM[7][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(16),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][16]~q\);

-- Location: LCCOMB_X62_Y66_N24
\RAM|RAM[5][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][16]~feeder_combout\ = \DataPath|writememdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(16),
	combout => \RAM|RAM[5][16]~feeder_combout\);

-- Location: FF_X62_Y66_N25
\RAM|RAM[5][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][16]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][16]~q\);

-- Location: LCCOMB_X62_Y66_N18
\DataPath|towrite~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~137_combout\ = (\DataPath|towrite~136_combout\ & (((\RAM|RAM[7][16]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~136_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~136_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][16]~q\,
	datad => \RAM|RAM[5][16]~q\,
	combout => \DataPath|towrite~137_combout\);

-- Location: LCCOMB_X61_Y67_N2
\RAM|RAM[10][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][16]~feeder_combout\ = \DataPath|writememdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(16),
	combout => \RAM|RAM[10][16]~feeder_combout\);

-- Location: FF_X61_Y67_N3
\RAM|RAM[10][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][16]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][16]~q\);

-- Location: FF_X60_Y67_N9
\RAM|RAM[8][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(16),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][16]~q\);

-- Location: LCCOMB_X63_Y67_N22
\RAM|RAM[2][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][16]~feeder_combout\ = \DataPath|writememdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(16),
	combout => \RAM|RAM[2][16]~feeder_combout\);

-- Location: FF_X63_Y67_N23
\RAM|RAM[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][16]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][16]~q\);

-- Location: FF_X60_Y67_N19
\RAM|RAM[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(16),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][16]~q\);

-- Location: FF_X59_Y67_N31
\RAM|RAM[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(16),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][16]~q\);

-- Location: LCCOMB_X59_Y67_N0
\RAM|RAM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~29_combout\ = (\DataPath|writememdata\(16) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(16),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~29_combout\);

-- Location: FF_X59_Y67_N1
\RAM|RAM[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~29_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][16]~q\);

-- Location: LCCOMB_X59_Y67_N30
\DataPath|towrite~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~131_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][16]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][16]~q\,
	datad => \RAM|RAM[1][16]~q\,
	combout => \DataPath|towrite~131_combout\);

-- Location: LCCOMB_X60_Y67_N18
\DataPath|towrite~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~132_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~131_combout\ & ((\RAM|RAM[3][16]~q\))) # (!\DataPath|towrite~131_combout\ & (\RAM|RAM[2][16]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][16]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][16]~q\,
	datad => \DataPath|towrite~131_combout\,
	combout => \DataPath|towrite~132_combout\);

-- Location: LCCOMB_X60_Y67_N8
\DataPath|towrite~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~133_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~132_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][16]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][16]~q\,
	datad => \DataPath|towrite~132_combout\,
	combout => \DataPath|towrite~133_combout\);

-- Location: LCCOMB_X61_Y67_N8
\RAM|RAM[9][16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][16]~feeder_combout\ = \DataPath|writememdata\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(16),
	combout => \RAM|RAM[9][16]~feeder_combout\);

-- Location: FF_X61_Y67_N9
\RAM|RAM[9][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][16]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][16]~q\);

-- Location: LCCOMB_X60_Y67_N10
\DataPath|towrite~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~134_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~133_combout\ & (\RAM|RAM[10][16]~q\)) # (!\DataPath|towrite~133_combout\ & ((\RAM|RAM[9][16]~q\))))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[10][16]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \DataPath|towrite~133_combout\,
	datad => \RAM|RAM[9][16]~q\,
	combout => \DataPath|towrite~134_combout\);

-- Location: LCCOMB_X61_Y70_N24
\DataPath|towrite~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~135_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~134_combout\) # ((\DataPath|towrite~0_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (((!\DataPath|towrite~0_combout\ & \DataPath|Add0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~134_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|Add0~115_combout\,
	combout => \DataPath|towrite~135_combout\);

-- Location: LCCOMB_X61_Y70_N6
\DataPath|towrite~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~138_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~135_combout\ & ((\DataPath|towrite~137_combout\))) # (!\DataPath|towrite~135_combout\ & (\DataPath|num2~17_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~17_combout\,
	datab => \DataPath|towrite~137_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~135_combout\,
	combout => \DataPath|towrite~138_combout\);

-- Location: FF_X61_Y70_N7
\DataPath|regs[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~138_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][16]~q\);

-- Location: FF_X61_Y70_N9
\DataPath|regs[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~138_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][16]~q\);

-- Location: LCCOMB_X61_Y70_N8
\DataPath|Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux47~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][16]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][16]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][16]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][16]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux47~0_combout\);

-- Location: LCCOMB_X58_Y70_N4
\DataPath|Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux47~1_combout\ = (\DataPath|Mux47~0_combout\) # ((\DataPath|regs[0][16]~q\ & (!\InstructionFetch|list~2_combout\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][16]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|Mux47~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux47~1_combout\);

-- Location: LCCOMB_X60_Y70_N10
\DataPath|Add0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~174_combout\ = \DataPath|num2~17_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|num2~17_combout\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(1),
	combout => \DataPath|Add0~174_combout\);

-- Location: LCCOMB_X57_Y70_N18
\DataPath|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~113_combout\ = (\DataPath|Mux47~1_combout\ & ((\DataPath|Add0~174_combout\ & (\DataPath|Add0~111\ & VCC)) # (!\DataPath|Add0~174_combout\ & (!\DataPath|Add0~111\)))) # (!\DataPath|Mux47~1_combout\ & ((\DataPath|Add0~174_combout\ & 
-- (!\DataPath|Add0~111\)) # (!\DataPath|Add0~174_combout\ & ((\DataPath|Add0~111\) # (GND)))))
-- \DataPath|Add0~114\ = CARRY((\DataPath|Mux47~1_combout\ & (!\DataPath|Add0~174_combout\ & !\DataPath|Add0~111\)) # (!\DataPath|Mux47~1_combout\ & ((!\DataPath|Add0~111\) # (!\DataPath|Add0~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux47~1_combout\,
	datab => \DataPath|Add0~174_combout\,
	datad => VCC,
	cin => \DataPath|Add0~111\,
	combout => \DataPath|Add0~113_combout\,
	cout => \DataPath|Add0~114\);

-- Location: LCCOMB_X56_Y70_N24
\DataPath|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~115_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~113_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~113_combout\,
	datad => \DataPath|Mux47~1_combout\,
	combout => \DataPath|Add0~115_combout\);

-- Location: FF_X56_Y70_N25
\DataPath|result[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(16));

-- Location: FF_X60_Y70_N15
\DataPath|writememdata[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux46~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(17));

-- Location: LCCOMB_X63_Y65_N10
\RAM|RAM[5][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][17]~feeder_combout\ = \DataPath|writememdata\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(17),
	combout => \RAM|RAM[5][17]~feeder_combout\);

-- Location: FF_X63_Y65_N11
\RAM|RAM[5][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][17]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][17]~q\);

-- Location: FF_X62_Y66_N5
\RAM|RAM[7][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(17),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][17]~q\);

-- Location: LCCOMB_X63_Y66_N8
\RAM|RAM[6][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][17]~feeder_combout\ = \DataPath|writememdata\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(17),
	combout => \RAM|RAM[6][17]~feeder_combout\);

-- Location: FF_X63_Y66_N9
\RAM|RAM[6][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][17]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][17]~q\);

-- Location: FF_X63_Y66_N23
\RAM|RAM[4][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(17),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][17]~q\);

-- Location: LCCOMB_X63_Y66_N22
\DataPath|towrite~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~144_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][17]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][17]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][17]~q\,
	datac => \RAM|RAM[4][17]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~144_combout\);

-- Location: LCCOMB_X62_Y66_N4
\DataPath|towrite~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~145_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~144_combout\ & ((\RAM|RAM[7][17]~q\))) # (!\DataPath|towrite~144_combout\ & (\RAM|RAM[5][17]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][17]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][17]~q\,
	datad => \DataPath|towrite~144_combout\,
	combout => \DataPath|towrite~145_combout\);

-- Location: LCCOMB_X62_Y65_N10
\RAM|RAM[9][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][17]~feeder_combout\ = \DataPath|writememdata\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(17),
	combout => \RAM|RAM[9][17]~feeder_combout\);

-- Location: FF_X62_Y65_N11
\RAM|RAM[9][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][17]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][17]~q\);

-- Location: FF_X62_Y67_N21
\RAM|RAM[8][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(17),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][17]~q\);

-- Location: LCCOMB_X62_Y67_N20
\DataPath|towrite~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~141_combout\ = (\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][17]~q\) # ((\DataPath|towrite~4_combout\)))) # (!\DataPath|towrite~1_combout\ & (((\RAM|RAM[8][17]~q\ & !\DataPath|towrite~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][17]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][17]~q\,
	datad => \DataPath|towrite~4_combout\,
	combout => \DataPath|towrite~141_combout\);

-- Location: FF_X61_Y67_N5
\RAM|RAM[10][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(17),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][17]~q\);

-- Location: LCCOMB_X59_Y67_N4
\RAM|RAM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~30_combout\ = (\DataPath|writememdata\(17) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(17),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~30_combout\);

-- Location: FF_X59_Y67_N5
\RAM|RAM[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~30_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][17]~q\);

-- Location: FF_X59_Y67_N15
\RAM|RAM[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(17),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][17]~q\);

-- Location: LCCOMB_X59_Y67_N14
\DataPath|towrite~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~139_combout\ = (\DataPath|memaddr\(1) & (((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & (\RAM|RAM[1][17]~q\)) # (!\DataPath|memaddr\(0) & ((\RAM|RAM[0][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[1][17]~q\,
	datac => \RAM|RAM[0][17]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~139_combout\);

-- Location: FF_X60_Y67_N21
\RAM|RAM[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(17),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][17]~q\);

-- Location: LCCOMB_X63_Y65_N12
\RAM|RAM[2][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][17]~feeder_combout\ = \DataPath|writememdata\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(17),
	combout => \RAM|RAM[2][17]~feeder_combout\);

-- Location: FF_X63_Y65_N13
\RAM|RAM[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][17]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][17]~q\);

-- Location: LCCOMB_X60_Y67_N20
\DataPath|towrite~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~140_combout\ = (\DataPath|towrite~139_combout\ & (((\RAM|RAM[3][17]~q\)) # (!\DataPath|memaddr\(1)))) # (!\DataPath|towrite~139_combout\ & (\DataPath|memaddr\(1) & ((\RAM|RAM[2][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~139_combout\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][17]~q\,
	datad => \RAM|RAM[2][17]~q\,
	combout => \DataPath|towrite~140_combout\);

-- Location: LCCOMB_X61_Y67_N4
\DataPath|towrite~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~142_combout\ = (\DataPath|towrite~141_combout\ & (((\RAM|RAM[10][17]~q\)) # (!\DataPath|towrite~4_combout\))) # (!\DataPath|towrite~141_combout\ & (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~141_combout\,
	datab => \DataPath|towrite~4_combout\,
	datac => \RAM|RAM[10][17]~q\,
	datad => \DataPath|towrite~140_combout\,
	combout => \DataPath|towrite~142_combout\);

-- Location: LCCOMB_X61_Y70_N2
\DataPath|towrite~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~143_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|towrite~0_combout\) # (\DataPath|towrite~142_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add0~118_combout\ & (!\DataPath|towrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~118_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~142_combout\,
	combout => \DataPath|towrite~143_combout\);

-- Location: FF_X60_Y70_N25
\DataPath|regs[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~146_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][17]~q\);

-- Location: LCCOMB_X60_Y70_N24
\DataPath|num2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~18_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][17]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][17]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][17]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~18_combout\);

-- Location: LCCOMB_X61_Y70_N18
\DataPath|towrite~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~146_combout\ = (\DataPath|towrite~143_combout\ & ((\DataPath|towrite~145_combout\) # ((!\DataPath|towrite~0_combout\)))) # (!\DataPath|towrite~143_combout\ & (((\DataPath|towrite~0_combout\ & \DataPath|num2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~145_combout\,
	datab => \DataPath|towrite~143_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|num2~18_combout\,
	combout => \DataPath|towrite~146_combout\);

-- Location: FF_X61_Y70_N19
\DataPath|regs[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~146_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][17]~q\);

-- Location: FF_X61_Y70_N5
\DataPath|regs[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~146_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][17]~q\);

-- Location: LCCOMB_X61_Y70_N4
\DataPath|Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux46~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & (\DataPath|regs[3][17]~q\)) # (!\InstructionFetch|list~2_combout\ & ((\DataPath|regs[1][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][17]~q\,
	datad => \DataPath|regs[1][17]~q\,
	combout => \DataPath|Mux46~0_combout\);

-- Location: LCCOMB_X60_Y70_N14
\DataPath|Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux46~1_combout\ = (\DataPath|Mux46~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][17]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[0][17]~q\,
	datac => \InstructionFetch|list~0_combout\,
	datad => \DataPath|Mux46~0_combout\,
	combout => \DataPath|Mux46~1_combout\);

-- Location: LCCOMB_X60_Y70_N0
\DataPath|Add0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~175_combout\ = \DataPath|num2~18_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~18_combout\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \DataPath|Add0~175_combout\);

-- Location: LCCOMB_X57_Y70_N20
\DataPath|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~116_combout\ = ((\DataPath|Mux46~1_combout\ $ (\DataPath|Add0~175_combout\ $ (!\DataPath|Add0~114\)))) # (GND)
-- \DataPath|Add0~117\ = CARRY((\DataPath|Mux46~1_combout\ & ((\DataPath|Add0~175_combout\) # (!\DataPath|Add0~114\))) # (!\DataPath|Mux46~1_combout\ & (\DataPath|Add0~175_combout\ & !\DataPath|Add0~114\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux46~1_combout\,
	datab => \DataPath|Add0~175_combout\,
	datad => VCC,
	cin => \DataPath|Add0~114\,
	combout => \DataPath|Add0~116_combout\,
	cout => \DataPath|Add0~117\);

-- Location: LCCOMB_X56_Y70_N26
\DataPath|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~118_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~116_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux46~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~116_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Mux46~1_combout\,
	combout => \DataPath|Add0~118_combout\);

-- Location: FF_X56_Y70_N27
\DataPath|result[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~118_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(17));

-- Location: FF_X60_Y69_N15
\DataPath|regs[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~154_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][18]~q\);

-- Location: LCCOMB_X60_Y69_N14
\DataPath|num2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~19_combout\ = (\DataPath|PC\(2) & (!\DataPath|PC\(1) & (\DataPath|regs[1][18]~q\ & \DataPath|PC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(2),
	datab => \DataPath|PC\(1),
	datac => \DataPath|regs[1][18]~q\,
	datad => \DataPath|PC\(0),
	combout => \DataPath|num2~19_combout\);

-- Location: LCCOMB_X61_Y69_N22
\DataPath|num2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~20_combout\ = (\DataPath|num2~19_combout\) # ((\DataPath|PC\(2) & (\DataPath|PC\(1) & \DataPath|regs[0][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~19_combout\,
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|regs[0][18]~q\,
	combout => \DataPath|num2~20_combout\);

-- Location: FF_X58_Y69_N27
\DataPath|writememdata[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux45~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(18));

-- Location: LCCOMB_X63_Y66_N16
\RAM|RAM[6][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][18]~feeder_combout\ = \DataPath|writememdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(18),
	combout => \RAM|RAM[6][18]~feeder_combout\);

-- Location: FF_X63_Y66_N17
\RAM|RAM[6][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][18]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][18]~q\);

-- Location: FF_X63_Y66_N11
\RAM|RAM[4][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(18),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][18]~q\);

-- Location: LCCOMB_X63_Y66_N10
\DataPath|towrite~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~152_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][18]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][18]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][18]~q\,
	datac => \RAM|RAM[4][18]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~152_combout\);

-- Location: FF_X65_Y66_N19
\RAM|RAM[7][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(18),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][18]~q\);

-- Location: LCCOMB_X65_Y66_N28
\RAM|RAM[5][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][18]~feeder_combout\ = \DataPath|writememdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(18),
	combout => \RAM|RAM[5][18]~feeder_combout\);

-- Location: FF_X65_Y66_N29
\RAM|RAM[5][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][18]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][18]~q\);

-- Location: LCCOMB_X65_Y66_N18
\DataPath|towrite~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~153_combout\ = (\DataPath|towrite~152_combout\ & (((\RAM|RAM[7][18]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~152_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~152_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][18]~q\,
	datad => \RAM|RAM[5][18]~q\,
	combout => \DataPath|towrite~153_combout\);

-- Location: LCCOMB_X61_Y67_N20
\RAM|RAM[10][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][18]~feeder_combout\ = \DataPath|writememdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(18),
	combout => \RAM|RAM[10][18]~feeder_combout\);

-- Location: FF_X61_Y67_N21
\RAM|RAM[10][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][18]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][18]~q\);

-- Location: LCCOMB_X61_Y67_N22
\RAM|RAM[9][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][18]~feeder_combout\ = \DataPath|writememdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(18),
	combout => \RAM|RAM[9][18]~feeder_combout\);

-- Location: FF_X61_Y67_N23
\RAM|RAM[9][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][18]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][18]~q\);

-- Location: FF_X60_Y67_N29
\RAM|RAM[8][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(18),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][18]~q\);

-- Location: LCCOMB_X63_Y67_N4
\RAM|RAM[2][18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][18]~feeder_combout\ = \DataPath|writememdata\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(18),
	combout => \RAM|RAM[2][18]~feeder_combout\);

-- Location: FF_X63_Y67_N5
\RAM|RAM[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][18]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][18]~q\);

-- Location: FF_X60_Y67_N7
\RAM|RAM[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(18),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][18]~q\);

-- Location: FF_X59_Y67_N19
\RAM|RAM[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(18),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][18]~q\);

-- Location: LCCOMB_X59_Y67_N24
\RAM|RAM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~31_combout\ = (\DataPath|writememdata\(18) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(18),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~31_combout\);

-- Location: FF_X59_Y67_N25
\RAM|RAM[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~31_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][18]~q\);

-- Location: LCCOMB_X59_Y67_N18
\DataPath|towrite~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~147_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][18]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][18]~q\,
	datad => \RAM|RAM[1][18]~q\,
	combout => \DataPath|towrite~147_combout\);

-- Location: LCCOMB_X60_Y67_N6
\DataPath|towrite~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~148_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~147_combout\ & ((\RAM|RAM[3][18]~q\))) # (!\DataPath|towrite~147_combout\ & (\RAM|RAM[2][18]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][18]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][18]~q\,
	datad => \DataPath|towrite~147_combout\,
	combout => \DataPath|towrite~148_combout\);

-- Location: LCCOMB_X60_Y67_N28
\DataPath|towrite~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~149_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~148_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][18]~q\,
	datad => \DataPath|towrite~148_combout\,
	combout => \DataPath|towrite~149_combout\);

-- Location: LCCOMB_X60_Y67_N30
\DataPath|towrite~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~150_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~149_combout\ & (\RAM|RAM[10][18]~q\)) # (!\DataPath|towrite~149_combout\ & ((\RAM|RAM[9][18]~q\))))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[10][18]~q\,
	datab => \RAM|RAM[9][18]~q\,
	datac => \DataPath|towrite~1_combout\,
	datad => \DataPath|towrite~149_combout\,
	combout => \DataPath|towrite~150_combout\);

-- Location: LCCOMB_X61_Y69_N18
\DataPath|towrite~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~151_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~150_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~150_combout\,
	datad => \DataPath|Add0~121_combout\,
	combout => \DataPath|towrite~151_combout\);

-- Location: LCCOMB_X61_Y69_N12
\DataPath|towrite~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~154_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~151_combout\ & ((\DataPath|towrite~153_combout\))) # (!\DataPath|towrite~151_combout\ & (\DataPath|num2~20_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~20_combout\,
	datac => \DataPath|towrite~153_combout\,
	datad => \DataPath|towrite~151_combout\,
	combout => \DataPath|towrite~154_combout\);

-- Location: FF_X61_Y69_N13
\DataPath|regs[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~154_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][18]~q\);

-- Location: FF_X61_Y69_N3
\DataPath|regs[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~154_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][18]~q\);

-- Location: LCCOMB_X61_Y69_N2
\DataPath|Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux45~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][18]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][18]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][18]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux45~0_combout\);

-- Location: LCCOMB_X58_Y69_N26
\DataPath|Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux45~1_combout\ = (\DataPath|Mux45~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][18]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[0][18]~q\,
	datac => \DataPath|Mux45~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux45~1_combout\);

-- Location: LCCOMB_X61_Y70_N26
\DataPath|Add0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~176_combout\ = \DataPath|num2~20_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|num2~20_combout\,
	datad => \DataPath|PC\(1),
	combout => \DataPath|Add0~176_combout\);

-- Location: LCCOMB_X57_Y70_N22
\DataPath|Add0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~119_combout\ = (\DataPath|Add0~176_combout\ & ((\DataPath|Mux45~1_combout\ & (\DataPath|Add0~117\ & VCC)) # (!\DataPath|Mux45~1_combout\ & (!\DataPath|Add0~117\)))) # (!\DataPath|Add0~176_combout\ & ((\DataPath|Mux45~1_combout\ & 
-- (!\DataPath|Add0~117\)) # (!\DataPath|Mux45~1_combout\ & ((\DataPath|Add0~117\) # (GND)))))
-- \DataPath|Add0~120\ = CARRY((\DataPath|Add0~176_combout\ & (!\DataPath|Mux45~1_combout\ & !\DataPath|Add0~117\)) # (!\DataPath|Add0~176_combout\ & ((!\DataPath|Add0~117\) # (!\DataPath|Mux45~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~176_combout\,
	datab => \DataPath|Mux45~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~117\,
	combout => \DataPath|Add0~119_combout\,
	cout => \DataPath|Add0~120\);

-- Location: LCCOMB_X56_Y70_N8
\DataPath|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~121_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~119_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux45~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux45~1_combout\,
	datad => \DataPath|Add0~119_combout\,
	combout => \DataPath|Add0~121_combout\);

-- Location: FF_X56_Y70_N9
\DataPath|result[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(18));

-- Location: FF_X60_Y70_N13
\DataPath|regs[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~162_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][19]~q\);

-- Location: LCCOMB_X60_Y70_N12
\DataPath|num2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~21_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][19]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][19]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][19]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~21_combout\);

-- Location: FF_X60_Y70_N23
\DataPath|writememdata[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux44~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(19));

-- Location: LCCOMB_X63_Y66_N24
\RAM|RAM[6][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][19]~feeder_combout\ = \DataPath|writememdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(19),
	combout => \RAM|RAM[6][19]~feeder_combout\);

-- Location: FF_X63_Y66_N25
\RAM|RAM[6][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][19]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][19]~q\);

-- Location: FF_X63_Y66_N3
\RAM|RAM[4][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(19),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][19]~q\);

-- Location: LCCOMB_X63_Y66_N2
\DataPath|towrite~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~160_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][19]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][19]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][19]~q\,
	datac => \RAM|RAM[4][19]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~160_combout\);

-- Location: FF_X62_Y66_N11
\RAM|RAM[7][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(19),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][19]~q\);

-- Location: LCCOMB_X63_Y65_N18
\RAM|RAM[5][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][19]~feeder_combout\ = \DataPath|writememdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(19),
	combout => \RAM|RAM[5][19]~feeder_combout\);

-- Location: FF_X63_Y65_N19
\RAM|RAM[5][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][19]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][19]~q\);

-- Location: LCCOMB_X62_Y66_N10
\DataPath|towrite~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~161_combout\ = (\DataPath|towrite~160_combout\ & (((\RAM|RAM[7][19]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~160_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~160_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][19]~q\,
	datad => \RAM|RAM[5][19]~q\,
	combout => \DataPath|towrite~161_combout\);

-- Location: FF_X61_Y68_N23
\RAM|RAM[8][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(19),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][19]~q\);

-- Location: LCCOMB_X62_Y65_N16
\RAM|RAM[9][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][19]~feeder_combout\ = \DataPath|writememdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(19),
	combout => \RAM|RAM[9][19]~feeder_combout\);

-- Location: FF_X62_Y65_N17
\RAM|RAM[9][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][19]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][19]~q\);

-- Location: LCCOMB_X61_Y68_N22
\DataPath|towrite~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~157_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][19]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][19]~q\,
	datad => \RAM|RAM[9][19]~q\,
	combout => \DataPath|towrite~157_combout\);

-- Location: FF_X61_Y68_N25
\RAM|RAM[10][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(19),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][19]~q\);

-- Location: LCCOMB_X63_Y65_N4
\RAM|RAM[2][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][19]~feeder_combout\ = \DataPath|writememdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(19),
	combout => \RAM|RAM[2][19]~feeder_combout\);

-- Location: FF_X63_Y65_N5
\RAM|RAM[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][19]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][19]~q\);

-- Location: FF_X59_Y67_N7
\RAM|RAM[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(19),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][19]~q\);

-- Location: LCCOMB_X59_Y67_N28
\RAM|RAM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~32_combout\ = (\DataPath|writememdata\(19) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(19),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~32_combout\);

-- Location: FF_X59_Y67_N29
\RAM|RAM[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~32_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][19]~q\);

-- Location: LCCOMB_X59_Y67_N6
\DataPath|towrite~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~155_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][19]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][19]~q\,
	datad => \RAM|RAM[1][19]~q\,
	combout => \DataPath|towrite~155_combout\);

-- Location: LCCOMB_X63_Y68_N22
\RAM|RAM[3][19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[3][19]~feeder_combout\ = \DataPath|writememdata\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(19),
	combout => \RAM|RAM[3][19]~feeder_combout\);

-- Location: FF_X63_Y68_N23
\RAM|RAM[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[3][19]~feeder_combout\,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][19]~q\);

-- Location: LCCOMB_X62_Y68_N28
\DataPath|towrite~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~156_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~155_combout\ & ((\RAM|RAM[3][19]~q\))) # (!\DataPath|towrite~155_combout\ & (\RAM|RAM[2][19]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][19]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \DataPath|towrite~155_combout\,
	datad => \RAM|RAM[3][19]~q\,
	combout => \DataPath|towrite~156_combout\);

-- Location: LCCOMB_X61_Y68_N24
\DataPath|towrite~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~158_combout\ = (\DataPath|towrite~157_combout\ & (((\RAM|RAM[10][19]~q\)) # (!\DataPath|towrite~4_combout\))) # (!\DataPath|towrite~157_combout\ & (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~157_combout\,
	datab => \DataPath|towrite~4_combout\,
	datac => \RAM|RAM[10][19]~q\,
	datad => \DataPath|towrite~156_combout\,
	combout => \DataPath|towrite~158_combout\);

-- Location: LCCOMB_X61_Y70_N20
\DataPath|towrite~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~159_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~158_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~158_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|Add0~124_combout\,
	combout => \DataPath|towrite~159_combout\);

-- Location: LCCOMB_X61_Y70_N10
\DataPath|towrite~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~162_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~159_combout\ & ((\DataPath|towrite~161_combout\))) # (!\DataPath|towrite~159_combout\ & (\DataPath|num2~21_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~21_combout\,
	datab => \DataPath|towrite~161_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~159_combout\,
	combout => \DataPath|towrite~162_combout\);

-- Location: FF_X61_Y70_N11
\DataPath|regs[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~162_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][19]~q\);

-- Location: FF_X61_Y70_N13
\DataPath|regs[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~162_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][19]~q\);

-- Location: LCCOMB_X61_Y70_N12
\DataPath|Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux44~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][19]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][19]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][19]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][19]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux44~0_combout\);

-- Location: LCCOMB_X60_Y70_N22
\DataPath|Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux44~1_combout\ = (\DataPath|Mux44~0_combout\) # ((\DataPath|regs[0][19]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][19]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|Mux44~0_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux44~1_combout\);

-- Location: LCCOMB_X60_Y70_N30
\DataPath|Add0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~177_combout\ = \DataPath|num2~21_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|num2~21_combout\,
	combout => \DataPath|Add0~177_combout\);

-- Location: LCCOMB_X57_Y70_N24
\DataPath|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~122_combout\ = ((\DataPath|Add0~177_combout\ $ (\DataPath|Mux44~1_combout\ $ (!\DataPath|Add0~120\)))) # (GND)
-- \DataPath|Add0~123\ = CARRY((\DataPath|Add0~177_combout\ & ((\DataPath|Mux44~1_combout\) # (!\DataPath|Add0~120\))) # (!\DataPath|Add0~177_combout\ & (\DataPath|Mux44~1_combout\ & !\DataPath|Add0~120\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~177_combout\,
	datab => \DataPath|Mux44~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~120\,
	combout => \DataPath|Add0~122_combout\,
	cout => \DataPath|Add0~123\);

-- Location: LCCOMB_X56_Y70_N14
\DataPath|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~124_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~122_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux44~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux44~1_combout\,
	datad => \DataPath|Add0~122_combout\,
	combout => \DataPath|Add0~124_combout\);

-- Location: FF_X56_Y70_N15
\DataPath|result[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(19));

-- Location: FF_X60_Y69_N29
\DataPath|regs[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~170_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][20]~q\);

-- Location: FF_X61_Y69_N9
\DataPath|regs[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~170_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][20]~q\);

-- Location: LCCOMB_X61_Y69_N8
\DataPath|Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux43~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][20]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][20]~q\,
	datac => \DataPath|regs[3][20]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux43~0_combout\);

-- Location: LCCOMB_X60_Y70_N28
\DataPath|Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux43~1_combout\ = (\DataPath|Mux43~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\InstructionFetch|list~0_combout\ & \DataPath|regs[0][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[0][20]~q\,
	datad => \DataPath|Mux43~0_combout\,
	combout => \DataPath|Mux43~1_combout\);

-- Location: FF_X60_Y70_N29
\DataPath|writememdata[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux43~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(20));

-- Location: LCCOMB_X63_Y65_N2
\RAM|RAM[5][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][20]~feeder_combout\ = \DataPath|writememdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(20),
	combout => \RAM|RAM[5][20]~feeder_combout\);

-- Location: FF_X63_Y65_N3
\RAM|RAM[5][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][20]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][20]~q\);

-- Location: FF_X62_Y65_N13
\RAM|RAM[7][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(20),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][20]~q\);

-- Location: LCCOMB_X63_Y66_N28
\RAM|RAM[6][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][20]~feeder_combout\ = \DataPath|writememdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(20),
	combout => \RAM|RAM[6][20]~feeder_combout\);

-- Location: FF_X63_Y66_N29
\RAM|RAM[6][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][20]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][20]~q\);

-- Location: FF_X63_Y66_N19
\RAM|RAM[4][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(20),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][20]~q\);

-- Location: LCCOMB_X63_Y66_N18
\DataPath|towrite~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~168_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][20]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][20]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][20]~q\,
	datac => \RAM|RAM[4][20]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~168_combout\);

-- Location: LCCOMB_X62_Y65_N12
\DataPath|towrite~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~169_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~168_combout\ & ((\RAM|RAM[7][20]~q\))) # (!\DataPath|towrite~168_combout\ & (\RAM|RAM[5][20]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][20]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][20]~q\,
	datad => \DataPath|towrite~168_combout\,
	combout => \DataPath|towrite~169_combout\);

-- Location: LCCOMB_X60_Y68_N26
\RAM|RAM[10][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][20]~feeder_combout\ = \DataPath|writememdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(20),
	combout => \RAM|RAM[10][20]~feeder_combout\);

-- Location: FF_X60_Y68_N27
\RAM|RAM[10][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][20]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][20]~q\);

-- Location: LCCOMB_X62_Y65_N14
\RAM|RAM[9][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][20]~feeder_combout\ = \DataPath|writememdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(20),
	combout => \RAM|RAM[9][20]~feeder_combout\);

-- Location: FF_X62_Y65_N15
\RAM|RAM[9][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][20]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][20]~q\);

-- Location: FF_X63_Y68_N19
\RAM|RAM[8][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(20),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][20]~q\);

-- Location: LCCOMB_X63_Y65_N16
\RAM|RAM[2][20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][20]~feeder_combout\ = \DataPath|writememdata\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(20),
	combout => \RAM|RAM[2][20]~feeder_combout\);

-- Location: FF_X63_Y65_N17
\RAM|RAM[2][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][20]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][20]~q\);

-- Location: FF_X63_Y68_N29
\RAM|RAM[3][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(20),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][20]~q\);

-- Location: FF_X59_Y67_N11
\RAM|RAM[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(20),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][20]~q\);

-- Location: LCCOMB_X59_Y67_N12
\RAM|RAM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~33_combout\ = (\DataPath|writememdata\(20) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(20),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~33_combout\);

-- Location: FF_X59_Y67_N13
\RAM|RAM[1][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~33_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][20]~q\);

-- Location: LCCOMB_X59_Y67_N10
\DataPath|towrite~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~163_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][20]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][20]~q\,
	datad => \RAM|RAM[1][20]~q\,
	combout => \DataPath|towrite~163_combout\);

-- Location: LCCOMB_X63_Y68_N28
\DataPath|towrite~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~164_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~163_combout\ & ((\RAM|RAM[3][20]~q\))) # (!\DataPath|towrite~163_combout\ & (\RAM|RAM[2][20]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][20]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][20]~q\,
	datad => \DataPath|towrite~163_combout\,
	combout => \DataPath|towrite~164_combout\);

-- Location: LCCOMB_X63_Y68_N18
\DataPath|towrite~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~165_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~164_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][20]~q\,
	datad => \DataPath|towrite~164_combout\,
	combout => \DataPath|towrite~165_combout\);

-- Location: LCCOMB_X62_Y68_N6
\DataPath|towrite~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~166_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~165_combout\ & (\RAM|RAM[10][20]~q\)) # (!\DataPath|towrite~165_combout\ & ((\RAM|RAM[9][20]~q\))))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~1_combout\,
	datab => \RAM|RAM[10][20]~q\,
	datac => \RAM|RAM[9][20]~q\,
	datad => \DataPath|towrite~165_combout\,
	combout => \DataPath|towrite~166_combout\);

-- Location: LCCOMB_X61_Y69_N28
\DataPath|towrite~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~167_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~166_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|Add0~127_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|towrite~166_combout\,
	combout => \DataPath|towrite~167_combout\);

-- Location: LCCOMB_X61_Y69_N26
\DataPath|towrite~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~170_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~167_combout\ & ((\DataPath|towrite~169_combout\))) # (!\DataPath|towrite~167_combout\ & (\DataPath|num2~22_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~22_combout\,
	datac => \DataPath|towrite~169_combout\,
	datad => \DataPath|towrite~167_combout\,
	combout => \DataPath|towrite~170_combout\);

-- Location: FF_X61_Y69_N27
\DataPath|regs[0][20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~170_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][20]~q\);

-- Location: LCCOMB_X60_Y69_N28
\DataPath|num2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~22_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][20]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][20]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][20]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][20]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~22_combout\);

-- Location: LCCOMB_X61_Y69_N6
\DataPath|Add0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~178_combout\ = \DataPath|num2~22_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|num2~22_combout\,
	combout => \DataPath|Add0~178_combout\);

-- Location: LCCOMB_X57_Y70_N26
\DataPath|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~125_combout\ = (\DataPath|Add0~178_combout\ & ((\DataPath|Mux43~1_combout\ & (\DataPath|Add0~123\ & VCC)) # (!\DataPath|Mux43~1_combout\ & (!\DataPath|Add0~123\)))) # (!\DataPath|Add0~178_combout\ & ((\DataPath|Mux43~1_combout\ & 
-- (!\DataPath|Add0~123\)) # (!\DataPath|Mux43~1_combout\ & ((\DataPath|Add0~123\) # (GND)))))
-- \DataPath|Add0~126\ = CARRY((\DataPath|Add0~178_combout\ & (!\DataPath|Mux43~1_combout\ & !\DataPath|Add0~123\)) # (!\DataPath|Add0~178_combout\ & ((!\DataPath|Add0~123\) # (!\DataPath|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~178_combout\,
	datab => \DataPath|Mux43~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~123\,
	combout => \DataPath|Add0~125_combout\,
	cout => \DataPath|Add0~126\);

-- Location: LCCOMB_X56_Y70_N12
\DataPath|Add0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~127_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~125_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~125_combout\,
	datad => \DataPath|Mux43~1_combout\,
	combout => \DataPath|Add0~127_combout\);

-- Location: FF_X56_Y70_N13
\DataPath|result[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(20));

-- Location: FF_X58_Y70_N15
\DataPath|writememdata[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux42~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(21));

-- Location: FF_X60_Y65_N11
\RAM|RAM[4][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(21),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][21]~q\);

-- Location: LCCOMB_X60_Y65_N28
\RAM|RAM[6][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][21]~feeder_combout\ = \DataPath|writememdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(21),
	combout => \RAM|RAM[6][21]~feeder_combout\);

-- Location: FF_X60_Y65_N29
\RAM|RAM[6][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][21]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][21]~q\);

-- Location: LCCOMB_X60_Y65_N10
\DataPath|towrite~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~176_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][21]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][21]~q\,
	datad => \RAM|RAM[6][21]~q\,
	combout => \DataPath|towrite~176_combout\);

-- Location: FF_X61_Y65_N11
\RAM|RAM[7][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(21),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][21]~q\);

-- Location: LCCOMB_X61_Y65_N20
\RAM|RAM[5][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][21]~feeder_combout\ = \DataPath|writememdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(21),
	combout => \RAM|RAM[5][21]~feeder_combout\);

-- Location: FF_X61_Y65_N21
\RAM|RAM[5][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][21]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][21]~q\);

-- Location: LCCOMB_X61_Y65_N10
\DataPath|towrite~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~177_combout\ = (\DataPath|towrite~176_combout\ & (((\RAM|RAM[7][21]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~176_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~176_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][21]~q\,
	datad => \RAM|RAM[5][21]~q\,
	combout => \DataPath|towrite~177_combout\);

-- Location: LCCOMB_X61_Y67_N26
\RAM|RAM[10][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][21]~feeder_combout\ = \DataPath|writememdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(21),
	combout => \RAM|RAM[10][21]~feeder_combout\);

-- Location: FF_X61_Y67_N27
\RAM|RAM[10][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][21]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][21]~q\);

-- Location: LCCOMB_X62_Y65_N22
\RAM|RAM[9][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][21]~feeder_combout\ = \DataPath|writememdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(21),
	combout => \RAM|RAM[9][21]~feeder_combout\);

-- Location: FF_X62_Y65_N23
\RAM|RAM[9][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][21]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][21]~q\);

-- Location: FF_X62_Y67_N9
\RAM|RAM[8][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(21),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][21]~q\);

-- Location: LCCOMB_X62_Y67_N8
\DataPath|towrite~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~173_combout\ = (\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][21]~q\) # ((\DataPath|towrite~4_combout\)))) # (!\DataPath|towrite~1_combout\ & (((\RAM|RAM[8][21]~q\ & !\DataPath|towrite~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][21]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][21]~q\,
	datad => \DataPath|towrite~4_combout\,
	combout => \DataPath|towrite~173_combout\);

-- Location: LCCOMB_X63_Y67_N30
\RAM|RAM[2][21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][21]~feeder_combout\ = \DataPath|writememdata\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(21),
	combout => \RAM|RAM[2][21]~feeder_combout\);

-- Location: FF_X63_Y67_N31
\RAM|RAM[2][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][21]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][21]~q\);

-- Location: FF_X62_Y67_N3
\RAM|RAM[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(21),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][21]~q\);

-- Location: FF_X63_Y69_N3
\RAM|RAM[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(21),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][21]~q\);

-- Location: LCCOMB_X63_Y69_N28
\RAM|RAM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~34_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(21),
	combout => \RAM|RAM~34_combout\);

-- Location: FF_X63_Y69_N29
\RAM|RAM[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~34_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][21]~q\);

-- Location: LCCOMB_X63_Y69_N2
\DataPath|towrite~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~171_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][21]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][21]~q\,
	datad => \RAM|RAM[1][21]~q\,
	combout => \DataPath|towrite~171_combout\);

-- Location: LCCOMB_X62_Y67_N2
\DataPath|towrite~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~172_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~171_combout\ & ((\RAM|RAM[3][21]~q\))) # (!\DataPath|towrite~171_combout\ & (\RAM|RAM[2][21]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][21]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][21]~q\,
	datad => \DataPath|towrite~171_combout\,
	combout => \DataPath|towrite~172_combout\);

-- Location: LCCOMB_X62_Y67_N26
\DataPath|towrite~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~174_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~173_combout\ & (\RAM|RAM[10][21]~q\)) # (!\DataPath|towrite~173_combout\ & ((\DataPath|towrite~172_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (((\DataPath|towrite~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[10][21]~q\,
	datab => \DataPath|towrite~4_combout\,
	datac => \DataPath|towrite~173_combout\,
	datad => \DataPath|towrite~172_combout\,
	combout => \DataPath|towrite~174_combout\);

-- Location: LCCOMB_X61_Y70_N14
\DataPath|towrite~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~175_combout\ = (\ControlUnit|Decoder0~0_combout\ & (((\DataPath|towrite~0_combout\) # (\DataPath|towrite~174_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (\DataPath|Add0~130_combout\ & (!\DataPath|towrite~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~130_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~174_combout\,
	combout => \DataPath|towrite~175_combout\);

-- Location: FF_X60_Y70_N27
\DataPath|regs[1][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~178_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][21]~q\);

-- Location: LCCOMB_X60_Y70_N26
\DataPath|num2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~23_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][21]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][21]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][21]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~23_combout\);

-- Location: LCCOMB_X61_Y70_N22
\DataPath|towrite~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~178_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~175_combout\ & (\DataPath|towrite~177_combout\)) # (!\DataPath|towrite~175_combout\ & ((\DataPath|num2~23_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~177_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~175_combout\,
	datad => \DataPath|num2~23_combout\,
	combout => \DataPath|towrite~178_combout\);

-- Location: FF_X61_Y70_N23
\DataPath|regs[0][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~178_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][21]~q\);

-- Location: FF_X61_Y70_N29
\DataPath|regs[3][21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~178_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][21]~q\);

-- Location: LCCOMB_X61_Y70_N28
\DataPath|Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux42~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][21]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][21]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][21]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][21]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux42~0_combout\);

-- Location: LCCOMB_X58_Y70_N14
\DataPath|Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux42~1_combout\ = (\DataPath|Mux42~0_combout\) # ((\DataPath|regs[0][21]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][21]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux42~0_combout\,
	combout => \DataPath|Mux42~1_combout\);

-- Location: LCCOMB_X60_Y70_N20
\DataPath|Add0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~179_combout\ = \DataPath|num2~23_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datac => \DataPath|num2~23_combout\,
	datad => \DataPath|PC\(2),
	combout => \DataPath|Add0~179_combout\);

-- Location: LCCOMB_X57_Y70_N28
\DataPath|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~128_combout\ = ((\DataPath|Add0~179_combout\ $ (\DataPath|Mux42~1_combout\ $ (!\DataPath|Add0~126\)))) # (GND)
-- \DataPath|Add0~129\ = CARRY((\DataPath|Add0~179_combout\ & ((\DataPath|Mux42~1_combout\) # (!\DataPath|Add0~126\))) # (!\DataPath|Add0~179_combout\ & (\DataPath|Mux42~1_combout\ & !\DataPath|Add0~126\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~179_combout\,
	datab => \DataPath|Mux42~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~126\,
	combout => \DataPath|Add0~128_combout\,
	cout => \DataPath|Add0~129\);

-- Location: LCCOMB_X56_Y70_N30
\DataPath|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~130_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~128_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Mux42~1_combout\,
	datad => \DataPath|Add0~128_combout\,
	combout => \DataPath|Add0~130_combout\);

-- Location: FF_X56_Y70_N31
\DataPath|result[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(21));

-- Location: FF_X60_Y69_N1
\DataPath|regs[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~186_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][22]~q\);

-- Location: FF_X60_Y69_N27
\DataPath|regs[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~186_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][22]~q\);

-- Location: LCCOMB_X60_Y69_N26
\DataPath|Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux41~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][22]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[1][22]~q\,
	datac => \DataPath|regs[3][22]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux41~0_combout\);

-- Location: LCCOMB_X60_Y69_N22
\DataPath|Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux41~1_combout\ = (\DataPath|Mux41~0_combout\) # ((\DataPath|regs[0][22]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][22]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|Mux41~0_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux41~1_combout\);

-- Location: FF_X60_Y70_N9
\DataPath|writememdata[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|Mux41~1_combout\,
	sload => VCC,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(22));

-- Location: LCCOMB_X60_Y65_N0
\RAM|RAM[6][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][22]~feeder_combout\ = \DataPath|writememdata\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(22),
	combout => \RAM|RAM[6][22]~feeder_combout\);

-- Location: FF_X60_Y65_N1
\RAM|RAM[6][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][22]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][22]~q\);

-- Location: FF_X60_Y65_N7
\RAM|RAM[4][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(22),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][22]~q\);

-- Location: LCCOMB_X60_Y65_N6
\DataPath|towrite~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~184_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][22]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][22]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][22]~q\,
	datac => \RAM|RAM[4][22]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~184_combout\);

-- Location: FF_X59_Y65_N17
\RAM|RAM[7][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(22),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][22]~q\);

-- Location: LCCOMB_X59_Y65_N10
\RAM|RAM[5][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][22]~feeder_combout\ = \DataPath|writememdata\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(22),
	combout => \RAM|RAM[5][22]~feeder_combout\);

-- Location: FF_X59_Y65_N11
\RAM|RAM[5][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][22]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][22]~q\);

-- Location: LCCOMB_X59_Y65_N16
\DataPath|towrite~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~185_combout\ = (\DataPath|towrite~184_combout\ & (((\RAM|RAM[7][22]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~184_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~184_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][22]~q\,
	datad => \RAM|RAM[5][22]~q\,
	combout => \DataPath|towrite~185_combout\);

-- Location: LCCOMB_X60_Y68_N0
\RAM|RAM[9][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][22]~feeder_combout\ = \DataPath|writememdata\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(22),
	combout => \RAM|RAM[9][22]~feeder_combout\);

-- Location: FF_X60_Y68_N1
\RAM|RAM[9][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][22]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][22]~q\);

-- Location: FF_X60_Y68_N15
\RAM|RAM[10][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(22),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][22]~q\);

-- Location: FF_X63_Y68_N7
\RAM|RAM[8][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(22),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][22]~q\);

-- Location: LCCOMB_X67_Y68_N22
\RAM|RAM[2][22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][22]~feeder_combout\ = \DataPath|writememdata\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(22),
	combout => \RAM|RAM[2][22]~feeder_combout\);

-- Location: FF_X67_Y68_N23
\RAM|RAM[2][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][22]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][22]~q\);

-- Location: FF_X63_Y68_N17
\RAM|RAM[3][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(22),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][22]~q\);

-- Location: FF_X63_Y69_N23
\RAM|RAM[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(22),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][22]~q\);

-- Location: LCCOMB_X63_Y69_N24
\RAM|RAM~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~35_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(22),
	combout => \RAM|RAM~35_combout\);

-- Location: FF_X63_Y69_N25
\RAM|RAM[1][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~35_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][22]~q\);

-- Location: LCCOMB_X63_Y69_N22
\DataPath|towrite~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~179_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][22]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][22]~q\,
	datad => \RAM|RAM[1][22]~q\,
	combout => \DataPath|towrite~179_combout\);

-- Location: LCCOMB_X63_Y68_N16
\DataPath|towrite~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~180_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~179_combout\ & ((\RAM|RAM[3][22]~q\))) # (!\DataPath|towrite~179_combout\ & (\RAM|RAM[2][22]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~179_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][22]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][22]~q\,
	datad => \DataPath|towrite~179_combout\,
	combout => \DataPath|towrite~180_combout\);

-- Location: LCCOMB_X63_Y68_N6
\DataPath|towrite~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~181_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~180_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][22]~q\,
	datad => \DataPath|towrite~180_combout\,
	combout => \DataPath|towrite~181_combout\);

-- Location: LCCOMB_X60_Y68_N14
\DataPath|towrite~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~182_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~181_combout\ & ((\RAM|RAM[10][22]~q\))) # (!\DataPath|towrite~181_combout\ & (\RAM|RAM[9][22]~q\)))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][22]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][22]~q\,
	datad => \DataPath|towrite~181_combout\,
	combout => \DataPath|towrite~182_combout\);

-- Location: LCCOMB_X59_Y69_N20
\DataPath|towrite~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~183_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~182_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~133_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~182_combout\,
	datad => \DataPath|Add0~133_combout\,
	combout => \DataPath|towrite~183_combout\);

-- Location: LCCOMB_X59_Y69_N6
\DataPath|towrite~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~186_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~183_combout\ & ((\DataPath|towrite~185_combout\))) # (!\DataPath|towrite~183_combout\ & (\DataPath|num2~24_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~24_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~185_combout\,
	datad => \DataPath|towrite~183_combout\,
	combout => \DataPath|towrite~186_combout\);

-- Location: FF_X59_Y69_N7
\DataPath|regs[0][22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~186_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][22]~q\);

-- Location: LCCOMB_X60_Y69_N0
\DataPath|num2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~24_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][22]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][22]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][22]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][22]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~24_combout\);

-- Location: LCCOMB_X60_Y70_N2
\DataPath|Add0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~180_combout\ = \DataPath|num2~24_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~24_combout\,
	datac => \DataPath|PC\(0),
	datad => \DataPath|PC\(2),
	combout => \DataPath|Add0~180_combout\);

-- Location: LCCOMB_X57_Y70_N30
\DataPath|Add0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~131_combout\ = (\DataPath|Add0~180_combout\ & ((\DataPath|Mux41~1_combout\ & (\DataPath|Add0~129\ & VCC)) # (!\DataPath|Mux41~1_combout\ & (!\DataPath|Add0~129\)))) # (!\DataPath|Add0~180_combout\ & ((\DataPath|Mux41~1_combout\ & 
-- (!\DataPath|Add0~129\)) # (!\DataPath|Mux41~1_combout\ & ((\DataPath|Add0~129\) # (GND)))))
-- \DataPath|Add0~132\ = CARRY((\DataPath|Add0~180_combout\ & (!\DataPath|Mux41~1_combout\ & !\DataPath|Add0~129\)) # (!\DataPath|Add0~180_combout\ & ((!\DataPath|Add0~129\) # (!\DataPath|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~180_combout\,
	datab => \DataPath|Mux41~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~129\,
	combout => \DataPath|Add0~131_combout\,
	cout => \DataPath|Add0~132\);

-- Location: LCCOMB_X56_Y70_N28
\DataPath|Add0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~133_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~131_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~131_combout\,
	datad => \DataPath|Mux41~1_combout\,
	combout => \DataPath|Add0~133_combout\);

-- Location: FF_X56_Y70_N29
\DataPath|result[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~133_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(22));

-- Location: LCCOMB_X58_Y69_N28
\DataPath|writememdata[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[23]~feeder_combout\ = \DataPath|Mux40~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux40~1_combout\,
	combout => \DataPath|writememdata[23]~feeder_combout\);

-- Location: FF_X58_Y69_N29
\DataPath|writememdata[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[23]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(23));

-- Location: LCCOMB_X59_Y65_N6
\RAM|RAM[5][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][23]~feeder_combout\ = \DataPath|writememdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(23),
	combout => \RAM|RAM[5][23]~feeder_combout\);

-- Location: FF_X59_Y65_N7
\RAM|RAM[5][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][23]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][23]~q\);

-- Location: FF_X59_Y65_N1
\RAM|RAM[7][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(23),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][23]~q\);

-- Location: LCCOMB_X60_Y65_N4
\RAM|RAM[6][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][23]~feeder_combout\ = \DataPath|writememdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(23),
	combout => \RAM|RAM[6][23]~feeder_combout\);

-- Location: FF_X60_Y65_N5
\RAM|RAM[6][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][23]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][23]~q\);

-- Location: FF_X60_Y65_N27
\RAM|RAM[4][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(23),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][23]~q\);

-- Location: LCCOMB_X60_Y65_N26
\DataPath|towrite~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~192_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][23]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][23]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][23]~q\,
	datac => \RAM|RAM[4][23]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~192_combout\);

-- Location: LCCOMB_X59_Y65_N0
\DataPath|towrite~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~193_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~192_combout\ & ((\RAM|RAM[7][23]~q\))) # (!\DataPath|towrite~192_combout\ & (\RAM|RAM[5][23]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][23]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][23]~q\,
	datad => \DataPath|towrite~192_combout\,
	combout => \DataPath|towrite~193_combout\);

-- Location: FF_X63_Y68_N3
\RAM|RAM[8][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(23),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][23]~q\);

-- Location: LCCOMB_X62_Y65_N20
\RAM|RAM[9][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][23]~feeder_combout\ = \DataPath|writememdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(23),
	combout => \RAM|RAM[9][23]~feeder_combout\);

-- Location: FF_X62_Y65_N21
\RAM|RAM[9][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][23]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][23]~q\);

-- Location: LCCOMB_X63_Y68_N2
\DataPath|towrite~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~189_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][23]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][23]~q\,
	datad => \RAM|RAM[9][23]~q\,
	combout => \DataPath|towrite~189_combout\);

-- Location: FF_X62_Y69_N25
\RAM|RAM[10][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(23),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][23]~q\);

-- Location: LCCOMB_X63_Y67_N16
\RAM|RAM[2][23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][23]~feeder_combout\ = \DataPath|writememdata\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(23),
	combout => \RAM|RAM[2][23]~feeder_combout\);

-- Location: FF_X63_Y67_N17
\RAM|RAM[2][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][23]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][23]~q\);

-- Location: FF_X63_Y68_N1
\RAM|RAM[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(23),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][23]~q\);

-- Location: FF_X63_Y69_N15
\RAM|RAM[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(23),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][23]~q\);

-- Location: LCCOMB_X63_Y69_N16
\RAM|RAM~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~36_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(23),
	combout => \RAM|RAM~36_combout\);

-- Location: FF_X63_Y69_N17
\RAM|RAM[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~36_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][23]~q\);

-- Location: LCCOMB_X63_Y69_N14
\DataPath|towrite~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~187_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][23]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][23]~q\,
	datad => \RAM|RAM[1][23]~q\,
	combout => \DataPath|towrite~187_combout\);

-- Location: LCCOMB_X63_Y68_N0
\DataPath|towrite~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~188_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~187_combout\ & ((\RAM|RAM[3][23]~q\))) # (!\DataPath|towrite~187_combout\ & (\RAM|RAM[2][23]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][23]~q\,
	datac => \RAM|RAM[3][23]~q\,
	datad => \DataPath|towrite~187_combout\,
	combout => \DataPath|towrite~188_combout\);

-- Location: LCCOMB_X62_Y69_N24
\DataPath|towrite~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~190_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~189_combout\ & (\RAM|RAM[10][23]~q\)) # (!\DataPath|towrite~189_combout\ & ((\DataPath|towrite~188_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~189_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~189_combout\,
	datac => \RAM|RAM[10][23]~q\,
	datad => \DataPath|towrite~188_combout\,
	combout => \DataPath|towrite~190_combout\);

-- Location: LCCOMB_X59_Y69_N26
\DataPath|towrite~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~191_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~190_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~136_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~136_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|towrite~190_combout\,
	combout => \DataPath|towrite~191_combout\);

-- Location: FF_X59_Y69_N25
\DataPath|regs[0][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~194_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][23]~q\);

-- Location: LCCOMB_X60_Y69_N30
\DataPath|num2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~25_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][23]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][23]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][23]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~25_combout\);

-- Location: LCCOMB_X59_Y69_N24
\DataPath|towrite~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~194_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~191_combout\ & (\DataPath|towrite~193_combout\)) # (!\DataPath|towrite~191_combout\ & ((\DataPath|num2~25_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~193_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~191_combout\,
	datad => \DataPath|num2~25_combout\,
	combout => \DataPath|towrite~194_combout\);

-- Location: FF_X60_Y69_N31
\DataPath|regs[1][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~194_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][23]~q\);

-- Location: FF_X60_Y69_N5
\DataPath|regs[3][23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~194_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][23]~q\);

-- Location: LCCOMB_X60_Y69_N4
\DataPath|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux40~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][23]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][23]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][23]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][23]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux40~0_combout\);

-- Location: LCCOMB_X59_Y69_N18
\DataPath|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux40~1_combout\ = (\DataPath|Mux40~0_combout\) # ((\DataPath|regs[0][23]~q\ & (!\InstructionFetch|list~2_combout\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux40~0_combout\,
	datab => \DataPath|regs[0][23]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux40~1_combout\);

-- Location: LCCOMB_X56_Y69_N10
\DataPath|Add0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~181_combout\ = \DataPath|num2~25_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|num2~25_combout\,
	combout => \DataPath|Add0~181_combout\);

-- Location: LCCOMB_X57_Y69_N0
\DataPath|Add0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~134_combout\ = ((\DataPath|Mux40~1_combout\ $ (\DataPath|Add0~181_combout\ $ (!\DataPath|Add0~132\)))) # (GND)
-- \DataPath|Add0~135\ = CARRY((\DataPath|Mux40~1_combout\ & ((\DataPath|Add0~181_combout\) # (!\DataPath|Add0~132\))) # (!\DataPath|Mux40~1_combout\ & (\DataPath|Add0~181_combout\ & !\DataPath|Add0~132\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux40~1_combout\,
	datab => \DataPath|Add0~181_combout\,
	datad => VCC,
	cin => \DataPath|Add0~132\,
	combout => \DataPath|Add0~134_combout\,
	cout => \DataPath|Add0~135\);

-- Location: LCCOMB_X56_Y69_N18
\DataPath|Add0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~136_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & (\DataPath|Add0~134_combout\)) # (!\DataPath|Mux127~0_combout\ & ((\DataPath|Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~134_combout\,
	datad => \DataPath|Mux40~1_combout\,
	combout => \DataPath|Add0~136_combout\);

-- Location: FF_X56_Y69_N19
\DataPath|result[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(23));

-- Location: FF_X59_Y69_N5
\DataPath|regs[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~202_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][24]~q\);

-- Location: LCCOMB_X60_Y69_N6
\DataPath|num2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~26_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][24]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][24]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][24]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~26_combout\);

-- Location: LCCOMB_X58_Y69_N14
\DataPath|writememdata[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[24]~feeder_combout\ = \DataPath|Mux39~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|Mux39~1_combout\,
	combout => \DataPath|writememdata[24]~feeder_combout\);

-- Location: FF_X58_Y69_N15
\DataPath|writememdata[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[24]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(24));

-- Location: LCCOMB_X59_Y65_N22
\RAM|RAM[5][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][24]~feeder_combout\ = \DataPath|writememdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(24),
	combout => \RAM|RAM[5][24]~feeder_combout\);

-- Location: FF_X59_Y65_N23
\RAM|RAM[5][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][24]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][24]~q\);

-- Location: FF_X59_Y65_N5
\RAM|RAM[7][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(24),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][24]~q\);

-- Location: LCCOMB_X60_Y65_N20
\RAM|RAM[6][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][24]~feeder_combout\ = \DataPath|writememdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(24),
	combout => \RAM|RAM[6][24]~feeder_combout\);

-- Location: FF_X60_Y65_N21
\RAM|RAM[6][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][24]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][24]~q\);

-- Location: FF_X60_Y65_N19
\RAM|RAM[4][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(24),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][24]~q\);

-- Location: LCCOMB_X60_Y65_N18
\DataPath|towrite~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~200_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][24]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][24]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][24]~q\,
	datac => \RAM|RAM[4][24]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~200_combout\);

-- Location: LCCOMB_X59_Y65_N4
\DataPath|towrite~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~201_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~200_combout\ & ((\RAM|RAM[7][24]~q\))) # (!\DataPath|towrite~200_combout\ & (\RAM|RAM[5][24]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][24]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][24]~q\,
	datad => \DataPath|towrite~200_combout\,
	combout => \DataPath|towrite~201_combout\);

-- Location: LCCOMB_X60_Y68_N12
\RAM|RAM[9][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][24]~feeder_combout\ = \DataPath|writememdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(24),
	combout => \RAM|RAM[9][24]~feeder_combout\);

-- Location: FF_X60_Y68_N13
\RAM|RAM[9][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][24]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][24]~q\);

-- Location: FF_X60_Y68_N7
\RAM|RAM[10][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(24),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][24]~q\);

-- Location: FF_X63_Y68_N15
\RAM|RAM[8][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(24),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][24]~q\);

-- Location: FF_X63_Y69_N31
\RAM|RAM[0][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(24),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][24]~q\);

-- Location: LCCOMB_X63_Y69_N20
\RAM|RAM~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~37_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(24),
	combout => \RAM|RAM~37_combout\);

-- Location: FF_X63_Y69_N21
\RAM|RAM[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~37_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][24]~q\);

-- Location: LCCOMB_X63_Y69_N30
\DataPath|towrite~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~195_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][24]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][24]~q\,
	datad => \RAM|RAM[1][24]~q\,
	combout => \DataPath|towrite~195_combout\);

-- Location: FF_X63_Y68_N13
\RAM|RAM[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(24),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][24]~q\);

-- Location: LCCOMB_X67_Y68_N16
\RAM|RAM[2][24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][24]~feeder_combout\ = \DataPath|writememdata\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(24),
	combout => \RAM|RAM[2][24]~feeder_combout\);

-- Location: FF_X67_Y68_N17
\RAM|RAM[2][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][24]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][24]~q\);

-- Location: LCCOMB_X63_Y68_N12
\DataPath|towrite~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~196_combout\ = (\DataPath|towrite~195_combout\ & (((\RAM|RAM[3][24]~q\)) # (!\DataPath|memaddr\(1)))) # (!\DataPath|towrite~195_combout\ & (\DataPath|memaddr\(1) & ((\RAM|RAM[2][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~195_combout\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][24]~q\,
	datad => \RAM|RAM[2][24]~q\,
	combout => \DataPath|towrite~196_combout\);

-- Location: LCCOMB_X63_Y68_N14
\DataPath|towrite~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~197_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~196_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][24]~q\,
	datad => \DataPath|towrite~196_combout\,
	combout => \DataPath|towrite~197_combout\);

-- Location: LCCOMB_X60_Y68_N6
\DataPath|towrite~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~198_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~197_combout\ & ((\RAM|RAM[10][24]~q\))) # (!\DataPath|towrite~197_combout\ & (\RAM|RAM[9][24]~q\)))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][24]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][24]~q\,
	datad => \DataPath|towrite~197_combout\,
	combout => \DataPath|towrite~198_combout\);

-- Location: LCCOMB_X59_Y69_N0
\DataPath|towrite~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~199_combout\ = (\DataPath|towrite~0_combout\ & (((\ControlUnit|Decoder0~0_combout\)))) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~198_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|Add0~139_combout\,
	datac => \ControlUnit|Decoder0~0_combout\,
	datad => \DataPath|towrite~198_combout\,
	combout => \DataPath|towrite~199_combout\);

-- Location: LCCOMB_X59_Y69_N4
\DataPath|towrite~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~202_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~199_combout\ & ((\DataPath|towrite~201_combout\))) # (!\DataPath|towrite~199_combout\ & (\DataPath|num2~26_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~26_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~201_combout\,
	datad => \DataPath|towrite~199_combout\,
	combout => \DataPath|towrite~202_combout\);

-- Location: FF_X60_Y69_N7
\DataPath|regs[1][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~202_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][24]~q\);

-- Location: FF_X60_Y69_N17
\DataPath|regs[3][24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~202_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][24]~q\);

-- Location: LCCOMB_X60_Y69_N16
\DataPath|Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux39~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][24]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][24]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][24]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][24]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux39~0_combout\);

-- Location: LCCOMB_X61_Y69_N16
\DataPath|Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux39~1_combout\ = (\DataPath|Mux39~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][24]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|Mux39~0_combout\,
	datac => \DataPath|regs[0][24]~q\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux39~1_combout\);

-- Location: LCCOMB_X59_Y69_N14
\DataPath|Add0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~182_combout\ = \DataPath|num2~26_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|num2~26_combout\,
	combout => \DataPath|Add0~182_combout\);

-- Location: LCCOMB_X57_Y69_N2
\DataPath|Add0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~137_combout\ = (\DataPath|Mux39~1_combout\ & ((\DataPath|Add0~182_combout\ & (\DataPath|Add0~135\ & VCC)) # (!\DataPath|Add0~182_combout\ & (!\DataPath|Add0~135\)))) # (!\DataPath|Mux39~1_combout\ & ((\DataPath|Add0~182_combout\ & 
-- (!\DataPath|Add0~135\)) # (!\DataPath|Add0~182_combout\ & ((\DataPath|Add0~135\) # (GND)))))
-- \DataPath|Add0~138\ = CARRY((\DataPath|Mux39~1_combout\ & (!\DataPath|Add0~182_combout\ & !\DataPath|Add0~135\)) # (!\DataPath|Mux39~1_combout\ & ((!\DataPath|Add0~135\) # (!\DataPath|Add0~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux39~1_combout\,
	datab => \DataPath|Add0~182_combout\,
	datad => VCC,
	cin => \DataPath|Add0~135\,
	combout => \DataPath|Add0~137_combout\,
	cout => \DataPath|Add0~138\);

-- Location: LCCOMB_X57_Y69_N30
\DataPath|Add0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~139_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~137_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux39~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux39~1_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~137_combout\,
	combout => \DataPath|Add0~139_combout\);

-- Location: FF_X57_Y69_N31
\DataPath|result[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~139_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(24));

-- Location: LCCOMB_X62_Y70_N12
\DataPath|regs[1][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[1][25]~feeder_combout\ = \DataPath|towrite~210_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~210_combout\,
	combout => \DataPath|regs[1][25]~feeder_combout\);

-- Location: FF_X62_Y70_N13
\DataPath|regs[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[1][25]~feeder_combout\,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][25]~q\);

-- Location: LCCOMB_X62_Y70_N18
\DataPath|num2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~27_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][25]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][25]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \ControlUnit|WideOr4~0_combout\,
	datad => \DataPath|regs[1][25]~q\,
	combout => \DataPath|num2~27_combout\);

-- Location: LCCOMB_X62_Y70_N24
\DataPath|writememdata[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[25]~feeder_combout\ = \DataPath|Mux38~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux38~1_combout\,
	combout => \DataPath|writememdata[25]~feeder_combout\);

-- Location: FF_X62_Y70_N25
\DataPath|writememdata[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[25]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(25));

-- Location: LCCOMB_X61_Y65_N12
\RAM|RAM[5][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][25]~feeder_combout\ = \DataPath|writememdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(25),
	combout => \RAM|RAM[5][25]~feeder_combout\);

-- Location: FF_X61_Y65_N13
\RAM|RAM[5][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][25]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][25]~q\);

-- Location: FF_X61_Y65_N31
\RAM|RAM[7][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(25),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][25]~q\);

-- Location: FF_X60_Y65_N31
\RAM|RAM[4][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(25),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][25]~q\);

-- Location: LCCOMB_X60_Y65_N16
\RAM|RAM[6][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][25]~feeder_combout\ = \DataPath|writememdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(25),
	combout => \RAM|RAM[6][25]~feeder_combout\);

-- Location: FF_X60_Y65_N17
\RAM|RAM[6][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][25]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][25]~q\);

-- Location: LCCOMB_X60_Y65_N30
\DataPath|towrite~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~208_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][25]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][25]~q\,
	datad => \RAM|RAM[6][25]~q\,
	combout => \DataPath|towrite~208_combout\);

-- Location: LCCOMB_X61_Y65_N30
\DataPath|towrite~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~209_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~208_combout\ & ((\RAM|RAM[7][25]~q\))) # (!\DataPath|towrite~208_combout\ & (\RAM|RAM[5][25]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][25]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][25]~q\,
	datad => \DataPath|towrite~208_combout\,
	combout => \DataPath|towrite~209_combout\);

-- Location: FF_X62_Y67_N23
\RAM|RAM[8][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(25),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][25]~q\);

-- Location: LCCOMB_X62_Y65_N6
\RAM|RAM[9][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][25]~feeder_combout\ = \DataPath|writememdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(25),
	combout => \RAM|RAM[9][25]~feeder_combout\);

-- Location: FF_X62_Y65_N7
\RAM|RAM[9][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][25]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][25]~q\);

-- Location: LCCOMB_X62_Y67_N22
\DataPath|towrite~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~205_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][25]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][25]~q\,
	datad => \RAM|RAM[9][25]~q\,
	combout => \DataPath|towrite~205_combout\);

-- Location: LCCOMB_X61_Y67_N16
\RAM|RAM[10][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[10][25]~feeder_combout\ = \DataPath|writememdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(25),
	combout => \RAM|RAM[10][25]~feeder_combout\);

-- Location: FF_X61_Y67_N17
\RAM|RAM[10][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[10][25]~feeder_combout\,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][25]~q\);

-- Location: LCCOMB_X63_Y67_N18
\RAM|RAM[2][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][25]~feeder_combout\ = \DataPath|writememdata\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(25),
	combout => \RAM|RAM[2][25]~feeder_combout\);

-- Location: FF_X63_Y67_N19
\RAM|RAM[2][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][25]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][25]~q\);

-- Location: FF_X62_Y67_N13
\RAM|RAM[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(25),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][25]~q\);

-- Location: LCCOMB_X63_Y69_N4
\RAM|RAM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~38_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(25),
	combout => \RAM|RAM~38_combout\);

-- Location: FF_X63_Y69_N5
\RAM|RAM[1][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~38_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][25]~q\);

-- Location: FF_X63_Y69_N27
\RAM|RAM[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(25),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][25]~q\);

-- Location: LCCOMB_X63_Y69_N26
\DataPath|towrite~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~203_combout\ = (\DataPath|memaddr\(0) & ((\RAM|RAM[1][25]~q\) # ((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & (((\RAM|RAM[0][25]~q\ & !\DataPath|memaddr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[1][25]~q\,
	datac => \RAM|RAM[0][25]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~203_combout\);

-- Location: LCCOMB_X62_Y67_N12
\DataPath|towrite~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~204_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~203_combout\ & ((\RAM|RAM[3][25]~q\))) # (!\DataPath|towrite~203_combout\ & (\RAM|RAM[2][25]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][25]~q\,
	datac => \RAM|RAM[3][25]~q\,
	datad => \DataPath|towrite~203_combout\,
	combout => \DataPath|towrite~204_combout\);

-- Location: LCCOMB_X62_Y67_N16
\DataPath|towrite~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~206_combout\ = (\DataPath|towrite~205_combout\ & (((\RAM|RAM[10][25]~q\)) # (!\DataPath|towrite~4_combout\))) # (!\DataPath|towrite~205_combout\ & (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~205_combout\,
	datab => \DataPath|towrite~4_combout\,
	datac => \RAM|RAM[10][25]~q\,
	datad => \DataPath|towrite~204_combout\,
	combout => \DataPath|towrite~206_combout\);

-- Location: LCCOMB_X63_Y70_N10
\DataPath|towrite~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~207_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~206_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~206_combout\,
	datad => \DataPath|Add0~142_combout\,
	combout => \DataPath|towrite~207_combout\);

-- Location: LCCOMB_X63_Y70_N16
\DataPath|towrite~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~210_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~207_combout\ & ((\DataPath|towrite~209_combout\))) # (!\DataPath|towrite~207_combout\ & (\DataPath|num2~27_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~27_combout\,
	datac => \DataPath|towrite~209_combout\,
	datad => \DataPath|towrite~207_combout\,
	combout => \DataPath|towrite~210_combout\);

-- Location: LCCOMB_X63_Y70_N6
\DataPath|regs[0][25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|regs[0][25]~feeder_combout\ = \DataPath|towrite~210_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|towrite~210_combout\,
	combout => \DataPath|regs[0][25]~feeder_combout\);

-- Location: FF_X63_Y70_N7
\DataPath|regs[0][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|regs[0][25]~feeder_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][25]~q\);

-- Location: FF_X63_Y70_N29
\DataPath|regs[3][25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~210_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][25]~q\);

-- Location: LCCOMB_X63_Y70_N28
\DataPath|Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux38~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][25]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][25]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][25]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][25]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux38~0_combout\);

-- Location: LCCOMB_X63_Y70_N20
\DataPath|Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux38~1_combout\ = (\DataPath|Mux38~0_combout\) # ((\DataPath|regs[0][25]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][25]~q\,
	datab => \DataPath|Mux38~0_combout\,
	datac => \InstructionFetch|list~0_combout\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux38~1_combout\);

-- Location: LCCOMB_X58_Y70_N30
\DataPath|Add0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~183_combout\ = \DataPath|num2~27_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(1),
	datad => \DataPath|num2~27_combout\,
	combout => \DataPath|Add0~183_combout\);

-- Location: LCCOMB_X57_Y69_N4
\DataPath|Add0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~140_combout\ = ((\DataPath|Mux38~1_combout\ $ (\DataPath|Add0~183_combout\ $ (!\DataPath|Add0~138\)))) # (GND)
-- \DataPath|Add0~141\ = CARRY((\DataPath|Mux38~1_combout\ & ((\DataPath|Add0~183_combout\) # (!\DataPath|Add0~138\))) # (!\DataPath|Mux38~1_combout\ & (\DataPath|Add0~183_combout\ & !\DataPath|Add0~138\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux38~1_combout\,
	datab => \DataPath|Add0~183_combout\,
	datad => VCC,
	cin => \DataPath|Add0~138\,
	combout => \DataPath|Add0~140_combout\,
	cout => \DataPath|Add0~141\);

-- Location: LCCOMB_X56_Y70_N2
\DataPath|Add0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~142_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~140_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux38~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|WideOr2~0_combout\,
	datab => \DataPath|Mux38~1_combout\,
	datac => \DataPath|Mux127~0_combout\,
	datad => \DataPath|Add0~140_combout\,
	combout => \DataPath|Add0~142_combout\);

-- Location: FF_X56_Y70_N3
\DataPath|result[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(25));

-- Location: FF_X62_Y68_N23
\DataPath|regs[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~218_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][26]~q\);

-- Location: LCCOMB_X62_Y68_N22
\DataPath|num2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~28_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][26]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][26]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][26]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~28_combout\);

-- Location: FF_X58_Y70_N1
\DataPath|writememdata[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux37~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(26));

-- Location: FF_X60_Y65_N23
\RAM|RAM[4][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(26),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][26]~q\);

-- Location: LCCOMB_X60_Y65_N12
\RAM|RAM[6][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][26]~feeder_combout\ = \DataPath|writememdata\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(26),
	combout => \RAM|RAM[6][26]~feeder_combout\);

-- Location: FF_X60_Y65_N13
\RAM|RAM[6][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][26]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][26]~q\);

-- Location: LCCOMB_X60_Y65_N22
\DataPath|towrite~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~216_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][26]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][26]~q\,
	datad => \RAM|RAM[6][26]~q\,
	combout => \DataPath|towrite~216_combout\);

-- Location: FF_X61_Y65_N3
\RAM|RAM[7][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(26),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][26]~q\);

-- Location: LCCOMB_X61_Y65_N28
\RAM|RAM[5][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][26]~feeder_combout\ = \DataPath|writememdata\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(26),
	combout => \RAM|RAM[5][26]~feeder_combout\);

-- Location: FF_X61_Y65_N29
\RAM|RAM[5][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][26]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][26]~q\);

-- Location: LCCOMB_X61_Y65_N2
\DataPath|towrite~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~217_combout\ = (\DataPath|towrite~216_combout\ & (((\RAM|RAM[7][26]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~216_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~216_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][26]~q\,
	datad => \RAM|RAM[5][26]~q\,
	combout => \DataPath|towrite~217_combout\);

-- Location: LCCOMB_X62_Y65_N8
\RAM|RAM[9][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][26]~feeder_combout\ = \DataPath|writememdata\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(26),
	combout => \RAM|RAM[9][26]~feeder_combout\);

-- Location: FF_X62_Y65_N9
\RAM|RAM[9][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][26]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][26]~q\);

-- Location: FF_X62_Y69_N19
\RAM|RAM[10][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(26),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][26]~q\);

-- Location: FF_X63_Y68_N31
\RAM|RAM[8][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(26),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][26]~q\);

-- Location: LCCOMB_X67_Y68_N14
\RAM|RAM[2][26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][26]~feeder_combout\ = \DataPath|writememdata\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(26),
	combout => \RAM|RAM[2][26]~feeder_combout\);

-- Location: FF_X67_Y68_N15
\RAM|RAM[2][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][26]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][26]~q\);

-- Location: FF_X63_Y68_N21
\RAM|RAM[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(26),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][26]~q\);

-- Location: FF_X63_Y69_N11
\RAM|RAM[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(26),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][26]~q\);

-- Location: LCCOMB_X63_Y69_N12
\RAM|RAM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~39_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(26),
	combout => \RAM|RAM~39_combout\);

-- Location: FF_X63_Y69_N13
\RAM|RAM[1][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~39_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][26]~q\);

-- Location: LCCOMB_X63_Y69_N10
\DataPath|towrite~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~211_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][26]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][26]~q\,
	datad => \RAM|RAM[1][26]~q\,
	combout => \DataPath|towrite~211_combout\);

-- Location: LCCOMB_X63_Y68_N20
\DataPath|towrite~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~212_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~211_combout\ & ((\RAM|RAM[3][26]~q\))) # (!\DataPath|towrite~211_combout\ & (\RAM|RAM[2][26]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~211_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][26]~q\,
	datac => \RAM|RAM[3][26]~q\,
	datad => \DataPath|towrite~211_combout\,
	combout => \DataPath|towrite~212_combout\);

-- Location: LCCOMB_X63_Y68_N30
\DataPath|towrite~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~213_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~212_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][26]~q\,
	datad => \DataPath|towrite~212_combout\,
	combout => \DataPath|towrite~213_combout\);

-- Location: LCCOMB_X62_Y69_N18
\DataPath|towrite~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~214_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~213_combout\ & ((\RAM|RAM[10][26]~q\))) # (!\DataPath|towrite~213_combout\ & (\RAM|RAM[9][26]~q\)))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~1_combout\,
	datab => \RAM|RAM[9][26]~q\,
	datac => \RAM|RAM[10][26]~q\,
	datad => \DataPath|towrite~213_combout\,
	combout => \DataPath|towrite~214_combout\);

-- Location: LCCOMB_X62_Y69_N16
\DataPath|towrite~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~215_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~214_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & (\DataPath|Add0~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|Add0~145_combout\,
	datad => \DataPath|towrite~214_combout\,
	combout => \DataPath|towrite~215_combout\);

-- Location: LCCOMB_X62_Y69_N12
\DataPath|towrite~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~218_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~215_combout\ & ((\DataPath|towrite~217_combout\))) # (!\DataPath|towrite~215_combout\ & (\DataPath|num2~28_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~28_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~217_combout\,
	datad => \DataPath|towrite~215_combout\,
	combout => \DataPath|towrite~218_combout\);

-- Location: FF_X62_Y69_N13
\DataPath|regs[0][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~218_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][26]~q\);

-- Location: FF_X59_Y68_N27
\DataPath|regs[3][26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~218_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][26]~q\);

-- Location: LCCOMB_X59_Y68_N26
\DataPath|Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux37~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][26]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][26]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[1][26]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \DataPath|regs[3][26]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux37~0_combout\);

-- Location: LCCOMB_X58_Y70_N0
\DataPath|Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux37~1_combout\ = (\DataPath|Mux37~0_combout\) # ((\DataPath|regs[0][26]~q\ & (!\InstructionFetch|list~2_combout\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][26]~q\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|Mux37~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux37~1_combout\);

-- Location: LCCOMB_X62_Y69_N22
\DataPath|Add0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~184_combout\ = \DataPath|num2~28_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|num2~28_combout\,
	combout => \DataPath|Add0~184_combout\);

-- Location: LCCOMB_X57_Y69_N6
\DataPath|Add0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~143_combout\ = (\DataPath|Mux37~1_combout\ & ((\DataPath|Add0~184_combout\ & (\DataPath|Add0~141\ & VCC)) # (!\DataPath|Add0~184_combout\ & (!\DataPath|Add0~141\)))) # (!\DataPath|Mux37~1_combout\ & ((\DataPath|Add0~184_combout\ & 
-- (!\DataPath|Add0~141\)) # (!\DataPath|Add0~184_combout\ & ((\DataPath|Add0~141\) # (GND)))))
-- \DataPath|Add0~144\ = CARRY((\DataPath|Mux37~1_combout\ & (!\DataPath|Add0~184_combout\ & !\DataPath|Add0~141\)) # (!\DataPath|Mux37~1_combout\ & ((!\DataPath|Add0~141\) # (!\DataPath|Add0~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux37~1_combout\,
	datab => \DataPath|Add0~184_combout\,
	datad => VCC,
	cin => \DataPath|Add0~141\,
	combout => \DataPath|Add0~143_combout\,
	cout => \DataPath|Add0~144\);

-- Location: LCCOMB_X57_Y69_N28
\DataPath|Add0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~145_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~143_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux37~1_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~143_combout\,
	combout => \DataPath|Add0~145_combout\);

-- Location: FF_X57_Y69_N29
\DataPath|result[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(26));

-- Location: FF_X60_Y69_N25
\DataPath|regs[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~226_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][27]~q\);

-- Location: LCCOMB_X60_Y69_N24
\DataPath|num2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~29_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][27]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][27]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][27]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~29_combout\);

-- Location: FF_X58_Y69_N7
\DataPath|writememdata[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Mux36~1_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(27));

-- Location: LCCOMB_X60_Y65_N8
\RAM|RAM[6][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][27]~feeder_combout\ = \DataPath|writememdata\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(27),
	combout => \RAM|RAM[6][27]~feeder_combout\);

-- Location: FF_X60_Y65_N9
\RAM|RAM[6][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][27]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][27]~q\);

-- Location: FF_X60_Y65_N15
\RAM|RAM[4][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(27),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][27]~q\);

-- Location: LCCOMB_X60_Y65_N14
\DataPath|towrite~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~224_combout\ = (\DataPath|memaddr\(0) & (((\DataPath|memaddr\(1))))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & (\RAM|RAM[6][27]~q\)) # (!\DataPath|memaddr\(1) & ((\RAM|RAM[4][27]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \RAM|RAM[6][27]~q\,
	datac => \RAM|RAM[4][27]~q\,
	datad => \DataPath|memaddr\(1),
	combout => \DataPath|towrite~224_combout\);

-- Location: FF_X61_Y65_N7
\RAM|RAM[7][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(27),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][27]~q\);

-- Location: LCCOMB_X61_Y65_N0
\RAM|RAM[5][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][27]~feeder_combout\ = \DataPath|writememdata\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(27),
	combout => \RAM|RAM[5][27]~feeder_combout\);

-- Location: FF_X61_Y65_N1
\RAM|RAM[5][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][27]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][27]~q\);

-- Location: LCCOMB_X61_Y65_N6
\DataPath|towrite~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~225_combout\ = (\DataPath|towrite~224_combout\ & (((\RAM|RAM[7][27]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~224_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~224_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][27]~q\,
	datad => \RAM|RAM[5][27]~q\,
	combout => \DataPath|towrite~225_combout\);

-- Location: FF_X62_Y67_N19
\RAM|RAM[8][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(27),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][27]~q\);

-- Location: LCCOMB_X62_Y65_N26
\RAM|RAM[9][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][27]~feeder_combout\ = \DataPath|writememdata\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(27),
	combout => \RAM|RAM[9][27]~feeder_combout\);

-- Location: FF_X62_Y65_N27
\RAM|RAM[9][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][27]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][27]~q\);

-- Location: LCCOMB_X62_Y67_N18
\DataPath|towrite~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~221_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][27]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][27]~q\,
	datad => \RAM|RAM[9][27]~q\,
	combout => \DataPath|towrite~221_combout\);

-- Location: FF_X62_Y69_N31
\RAM|RAM[10][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(27),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][27]~q\);

-- Location: LCCOMB_X67_Y69_N16
\RAM|RAM[2][27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][27]~feeder_combout\ = \DataPath|writememdata\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(27),
	combout => \RAM|RAM[2][27]~feeder_combout\);

-- Location: FF_X67_Y69_N17
\RAM|RAM[2][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][27]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][27]~q\);

-- Location: FF_X67_Y69_N3
\RAM|RAM[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(27),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][27]~q\);

-- Location: FF_X63_Y69_N7
\RAM|RAM[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(27),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][27]~q\);

-- Location: LCCOMB_X63_Y69_N8
\RAM|RAM~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~40_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(27),
	combout => \RAM|RAM~40_combout\);

-- Location: FF_X63_Y69_N9
\RAM|RAM[1][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~40_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][27]~q\);

-- Location: LCCOMB_X63_Y69_N6
\DataPath|towrite~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~219_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][27]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][27]~q\,
	datad => \RAM|RAM[1][27]~q\,
	combout => \DataPath|towrite~219_combout\);

-- Location: LCCOMB_X67_Y69_N2
\DataPath|towrite~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~220_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~219_combout\ & ((\RAM|RAM[3][27]~q\))) # (!\DataPath|towrite~219_combout\ & (\RAM|RAM[2][27]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][27]~q\,
	datac => \RAM|RAM[3][27]~q\,
	datad => \DataPath|towrite~219_combout\,
	combout => \DataPath|towrite~220_combout\);

-- Location: LCCOMB_X62_Y69_N30
\DataPath|towrite~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~222_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~221_combout\ & (\RAM|RAM[10][27]~q\)) # (!\DataPath|towrite~221_combout\ & ((\DataPath|towrite~220_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~221_combout\,
	datac => \RAM|RAM[10][27]~q\,
	datad => \DataPath|towrite~220_combout\,
	combout => \DataPath|towrite~222_combout\);

-- Location: LCCOMB_X62_Y69_N0
\DataPath|towrite~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~223_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~222_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & ((\DataPath|Add0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~222_combout\,
	datad => \DataPath|Add0~148_combout\,
	combout => \DataPath|towrite~223_combout\);

-- Location: LCCOMB_X62_Y69_N6
\DataPath|towrite~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~226_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~223_combout\ & ((\DataPath|towrite~225_combout\))) # (!\DataPath|towrite~223_combout\ & (\DataPath|num2~29_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~29_combout\,
	datac => \DataPath|towrite~225_combout\,
	datad => \DataPath|towrite~223_combout\,
	combout => \DataPath|towrite~226_combout\);

-- Location: FF_X62_Y69_N7
\DataPath|regs[0][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~226_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][27]~q\);

-- Location: FF_X58_Y69_N5
\DataPath|regs[3][27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~226_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][27]~q\);

-- Location: LCCOMB_X58_Y69_N4
\DataPath|Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux36~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][27]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][27]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][27]~q\,
	datac => \DataPath|regs[3][27]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux36~0_combout\);

-- Location: LCCOMB_X58_Y69_N6
\DataPath|Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux36~1_combout\ = (\DataPath|Mux36~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][27]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[0][27]~q\,
	datac => \DataPath|Mux36~0_combout\,
	datad => \InstructionFetch|list~0_combout\,
	combout => \DataPath|Mux36~1_combout\);

-- Location: LCCOMB_X56_Y69_N4
\DataPath|Add0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~185_combout\ = \DataPath|num2~29_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(2),
	datac => \DataPath|num2~29_combout\,
	datad => \DataPath|PC\(1),
	combout => \DataPath|Add0~185_combout\);

-- Location: LCCOMB_X57_Y69_N8
\DataPath|Add0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~146_combout\ = ((\DataPath|Mux36~1_combout\ $ (\DataPath|Add0~185_combout\ $ (!\DataPath|Add0~144\)))) # (GND)
-- \DataPath|Add0~147\ = CARRY((\DataPath|Mux36~1_combout\ & ((\DataPath|Add0~185_combout\) # (!\DataPath|Add0~144\))) # (!\DataPath|Mux36~1_combout\ & (\DataPath|Add0~185_combout\ & !\DataPath|Add0~144\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux36~1_combout\,
	datab => \DataPath|Add0~185_combout\,
	datad => VCC,
	cin => \DataPath|Add0~144\,
	combout => \DataPath|Add0~146_combout\,
	cout => \DataPath|Add0~147\);

-- Location: LCCOMB_X57_Y69_N22
\DataPath|Add0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~148_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~146_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux36~1_combout\,
	datab => \ControlUnit|WideOr2~0_combout\,
	datac => \DataPath|Add0~146_combout\,
	datad => \DataPath|Mux127~0_combout\,
	combout => \DataPath|Add0~148_combout\);

-- Location: FF_X57_Y69_N23
\DataPath|result[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~148_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(27));

-- Location: LCCOMB_X62_Y70_N26
\DataPath|writememdata[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[28]~feeder_combout\ = \DataPath|Mux35~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux35~1_combout\,
	combout => \DataPath|writememdata[28]~feeder_combout\);

-- Location: FF_X62_Y70_N27
\DataPath|writememdata[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[28]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(28));

-- Location: FF_X60_Y65_N3
\RAM|RAM[4][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(28),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][28]~q\);

-- Location: LCCOMB_X60_Y65_N24
\RAM|RAM[6][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][28]~feeder_combout\ = \DataPath|writememdata\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(28),
	combout => \RAM|RAM[6][28]~feeder_combout\);

-- Location: FF_X60_Y65_N25
\RAM|RAM[6][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][28]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][28]~q\);

-- Location: LCCOMB_X60_Y65_N2
\DataPath|towrite~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~232_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][28]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][28]~q\,
	datad => \RAM|RAM[6][28]~q\,
	combout => \DataPath|towrite~232_combout\);

-- Location: FF_X61_Y65_N27
\RAM|RAM[7][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(28),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][28]~q\);

-- Location: LCCOMB_X61_Y65_N24
\RAM|RAM[5][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][28]~feeder_combout\ = \DataPath|writememdata\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(28),
	combout => \RAM|RAM[5][28]~feeder_combout\);

-- Location: FF_X61_Y65_N25
\RAM|RAM[5][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][28]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][28]~q\);

-- Location: LCCOMB_X61_Y65_N26
\DataPath|towrite~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~233_combout\ = (\DataPath|towrite~232_combout\ & (((\RAM|RAM[7][28]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~232_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~232_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][28]~q\,
	datad => \RAM|RAM[5][28]~q\,
	combout => \DataPath|towrite~233_combout\);

-- Location: LCCOMB_X62_Y65_N24
\RAM|RAM[9][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][28]~feeder_combout\ = \DataPath|writememdata\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(28),
	combout => \RAM|RAM[9][28]~feeder_combout\);

-- Location: FF_X62_Y65_N25
\RAM|RAM[9][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][28]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][28]~q\);

-- Location: FF_X62_Y69_N15
\RAM|RAM[10][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(28),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][28]~q\);

-- Location: FF_X62_Y67_N15
\RAM|RAM[8][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(28),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][28]~q\);

-- Location: LCCOMB_X63_Y67_N12
\RAM|RAM[2][28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][28]~feeder_combout\ = \DataPath|writememdata\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(28),
	combout => \RAM|RAM[2][28]~feeder_combout\);

-- Location: FF_X63_Y67_N13
\RAM|RAM[2][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][28]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][28]~q\);

-- Location: FF_X62_Y67_N1
\RAM|RAM[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(28),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][28]~q\);

-- Location: FF_X63_Y69_N19
\RAM|RAM[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(28),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][28]~q\);

-- Location: LCCOMB_X63_Y69_N0
\RAM|RAM~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~41_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(28),
	combout => \RAM|RAM~41_combout\);

-- Location: FF_X63_Y69_N1
\RAM|RAM[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~41_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][28]~q\);

-- Location: LCCOMB_X63_Y69_N18
\DataPath|towrite~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~227_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][28]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][28]~q\,
	datad => \RAM|RAM[1][28]~q\,
	combout => \DataPath|towrite~227_combout\);

-- Location: LCCOMB_X62_Y67_N0
\DataPath|towrite~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~228_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~227_combout\ & ((\RAM|RAM[3][28]~q\))) # (!\DataPath|towrite~227_combout\ & (\RAM|RAM[2][28]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][28]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][28]~q\,
	datad => \DataPath|towrite~227_combout\,
	combout => \DataPath|towrite~228_combout\);

-- Location: LCCOMB_X62_Y67_N14
\DataPath|towrite~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~229_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~228_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][28]~q\,
	datad => \DataPath|towrite~228_combout\,
	combout => \DataPath|towrite~229_combout\);

-- Location: LCCOMB_X62_Y69_N14
\DataPath|towrite~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~230_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~229_combout\ & ((\RAM|RAM[10][28]~q\))) # (!\DataPath|towrite~229_combout\ & (\RAM|RAM[9][28]~q\)))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~1_combout\,
	datab => \RAM|RAM[9][28]~q\,
	datac => \RAM|RAM[10][28]~q\,
	datad => \DataPath|towrite~229_combout\,
	combout => \DataPath|towrite~230_combout\);

-- Location: LCCOMB_X62_Y69_N4
\DataPath|towrite~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~231_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~230_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & ((\DataPath|Add0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~230_combout\,
	datad => \DataPath|Add0~151_combout\,
	combout => \DataPath|towrite~231_combout\);

-- Location: FF_X62_Y70_N5
\DataPath|regs[1][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~234_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][28]~q\);

-- Location: LCCOMB_X62_Y70_N4
\DataPath|num2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~30_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][28]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][28]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][28]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~30_combout\);

-- Location: LCCOMB_X62_Y69_N20
\DataPath|towrite~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~234_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~231_combout\ & (\DataPath|towrite~233_combout\)) # (!\DataPath|towrite~231_combout\ & ((\DataPath|num2~30_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~231_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~233_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~231_combout\,
	datad => \DataPath|num2~30_combout\,
	combout => \DataPath|towrite~234_combout\);

-- Location: FF_X62_Y69_N21
\DataPath|regs[0][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~234_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][28]~q\);

-- Location: FF_X63_Y70_N3
\DataPath|regs[3][28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~234_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][28]~q\);

-- Location: LCCOMB_X63_Y70_N2
\DataPath|Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux35~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][28]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][28]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][28]~q\,
	datac => \DataPath|regs[3][28]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux35~0_combout\);

-- Location: LCCOMB_X62_Y70_N30
\DataPath|Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux35~1_combout\ = (\DataPath|Mux35~0_combout\) # ((\DataPath|regs[0][28]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][28]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux35~0_combout\,
	combout => \DataPath|Mux35~1_combout\);

-- Location: LCCOMB_X62_Y69_N28
\DataPath|Add0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~186_combout\ = \DataPath|num2~30_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|num2~30_combout\,
	combout => \DataPath|Add0~186_combout\);

-- Location: LCCOMB_X57_Y69_N10
\DataPath|Add0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~149_combout\ = (\DataPath|Add0~186_combout\ & ((\DataPath|Mux35~1_combout\ & (\DataPath|Add0~147\ & VCC)) # (!\DataPath|Mux35~1_combout\ & (!\DataPath|Add0~147\)))) # (!\DataPath|Add0~186_combout\ & ((\DataPath|Mux35~1_combout\ & 
-- (!\DataPath|Add0~147\)) # (!\DataPath|Mux35~1_combout\ & ((\DataPath|Add0~147\) # (GND)))))
-- \DataPath|Add0~150\ = CARRY((\DataPath|Add0~186_combout\ & (!\DataPath|Mux35~1_combout\ & !\DataPath|Add0~147\)) # (!\DataPath|Add0~186_combout\ & ((!\DataPath|Add0~147\) # (!\DataPath|Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~186_combout\,
	datab => \DataPath|Mux35~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~147\,
	combout => \DataPath|Add0~149_combout\,
	cout => \DataPath|Add0~150\);

-- Location: LCCOMB_X57_Y69_N20
\DataPath|Add0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~151_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~149_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux127~0_combout\,
	datab => \ControlUnit|WideOr2~0_combout\,
	datac => \DataPath|Mux35~1_combout\,
	datad => \DataPath|Add0~149_combout\,
	combout => \DataPath|Add0~151_combout\);

-- Location: FF_X57_Y69_N21
\DataPath|result[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~151_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(28));

-- Location: FF_X62_Y70_N29
\DataPath|regs[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~242_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][29]~q\);

-- Location: LCCOMB_X62_Y70_N20
\DataPath|num2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~31_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][29]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][29]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \ControlUnit|WideOr4~0_combout\,
	datad => \DataPath|regs[1][29]~q\,
	combout => \DataPath|num2~31_combout\);

-- Location: LCCOMB_X62_Y70_N0
\DataPath|writememdata[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[29]~feeder_combout\ = \DataPath|Mux34~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux34~1_combout\,
	combout => \DataPath|writememdata[29]~feeder_combout\);

-- Location: FF_X62_Y70_N1
\DataPath|writememdata[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[29]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(29));

-- Location: FF_X63_Y68_N9
\RAM|RAM[8][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(29),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][29]~q\);

-- Location: LCCOMB_X62_Y65_N18
\RAM|RAM[9][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][29]~feeder_combout\ = \DataPath|writememdata\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(29),
	combout => \RAM|RAM[9][29]~feeder_combout\);

-- Location: FF_X62_Y65_N19
\RAM|RAM[9][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][29]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][29]~q\);

-- Location: LCCOMB_X63_Y68_N8
\DataPath|towrite~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~237_combout\ = (\DataPath|towrite~4_combout\ & (\DataPath|towrite~1_combout\)) # (!\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][29]~q\))) # (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][29]~q\,
	datad => \RAM|RAM[9][29]~q\,
	combout => \DataPath|towrite~237_combout\);

-- Location: FF_X62_Y69_N3
\RAM|RAM[10][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(29),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][29]~q\);

-- Location: LCCOMB_X67_Y69_N28
\RAM|RAM[2][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][29]~feeder_combout\ = \DataPath|writememdata\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(29),
	combout => \RAM|RAM[2][29]~feeder_combout\);

-- Location: FF_X67_Y69_N29
\RAM|RAM[2][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][29]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][29]~q\);

-- Location: FF_X67_Y69_N15
\RAM|RAM[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(29),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][29]~q\);

-- Location: FF_X66_Y67_N15
\RAM|RAM[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(29),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][29]~q\);

-- Location: LCCOMB_X66_Y67_N20
\RAM|RAM~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~42_combout\ = (\DataPath|writememdata\(29) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(29),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~42_combout\);

-- Location: FF_X66_Y67_N21
\RAM|RAM[1][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~42_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][29]~q\);

-- Location: LCCOMB_X66_Y67_N14
\DataPath|towrite~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~235_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][29]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][29]~q\,
	datad => \RAM|RAM[1][29]~q\,
	combout => \DataPath|towrite~235_combout\);

-- Location: LCCOMB_X67_Y69_N14
\DataPath|towrite~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~236_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~235_combout\ & ((\RAM|RAM[3][29]~q\))) # (!\DataPath|towrite~235_combout\ & (\RAM|RAM[2][29]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][29]~q\,
	datac => \RAM|RAM[3][29]~q\,
	datad => \DataPath|towrite~235_combout\,
	combout => \DataPath|towrite~236_combout\);

-- Location: LCCOMB_X62_Y69_N2
\DataPath|towrite~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~238_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~237_combout\ & (\RAM|RAM[10][29]~q\)) # (!\DataPath|towrite~237_combout\ & ((\DataPath|towrite~236_combout\))))) # (!\DataPath|towrite~4_combout\ & 
-- (\DataPath|towrite~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~237_combout\,
	datac => \RAM|RAM[10][29]~q\,
	datad => \DataPath|towrite~236_combout\,
	combout => \DataPath|towrite~238_combout\);

-- Location: LCCOMB_X62_Y69_N8
\DataPath|towrite~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~239_combout\ = (\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~0_combout\) # ((\DataPath|towrite~238_combout\)))) # (!\ControlUnit|Decoder0~0_combout\ & (!\DataPath|towrite~0_combout\ & (\DataPath|Add0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ControlUnit|Decoder0~0_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|Add0~154_combout\,
	datad => \DataPath|towrite~238_combout\,
	combout => \DataPath|towrite~239_combout\);

-- Location: LCCOMB_X59_Y66_N20
\RAM|RAM[6][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][29]~feeder_combout\ = \DataPath|writememdata\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(29),
	combout => \RAM|RAM[6][29]~feeder_combout\);

-- Location: FF_X59_Y66_N21
\RAM|RAM[6][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][29]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][29]~q\);

-- Location: FF_X59_Y66_N27
\RAM|RAM[4][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(29),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][29]~q\);

-- Location: LCCOMB_X59_Y66_N26
\DataPath|towrite~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~240_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][29]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][29]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][29]~q\,
	datac => \RAM|RAM[4][29]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~240_combout\);

-- Location: LCCOMB_X61_Y65_N4
\RAM|RAM[5][29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][29]~feeder_combout\ = \DataPath|writememdata\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(29),
	combout => \RAM|RAM[5][29]~feeder_combout\);

-- Location: FF_X61_Y65_N5
\RAM|RAM[5][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][29]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][29]~q\);

-- Location: FF_X61_Y65_N19
\RAM|RAM[7][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(29),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][29]~q\);

-- Location: LCCOMB_X61_Y65_N18
\DataPath|towrite~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~241_combout\ = (\DataPath|towrite~240_combout\ & (((\RAM|RAM[7][29]~q\) # (!\DataPath|memaddr\(0))))) # (!\DataPath|towrite~240_combout\ & (\RAM|RAM[5][29]~q\ & ((\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~240_combout\,
	datab => \RAM|RAM[5][29]~q\,
	datac => \RAM|RAM[7][29]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~241_combout\);

-- Location: LCCOMB_X62_Y69_N10
\DataPath|towrite~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~242_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~239_combout\ & ((\DataPath|towrite~241_combout\))) # (!\DataPath|towrite~239_combout\ & (\DataPath|num2~31_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|num2~31_combout\,
	datab => \DataPath|towrite~0_combout\,
	datac => \DataPath|towrite~239_combout\,
	datad => \DataPath|towrite~241_combout\,
	combout => \DataPath|towrite~242_combout\);

-- Location: FF_X62_Y69_N11
\DataPath|regs[0][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~242_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][29]~q\);

-- Location: FF_X63_Y70_N25
\DataPath|regs[3][29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~242_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][29]~q\);

-- Location: LCCOMB_X63_Y70_N24
\DataPath|Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux34~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][29]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][29]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][29]~q\,
	datac => \DataPath|regs[3][29]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux34~0_combout\);

-- Location: LCCOMB_X62_Y70_N14
\DataPath|Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux34~1_combout\ = (\DataPath|Mux34~0_combout\) # ((\DataPath|regs[0][29]~q\ & (\InstructionFetch|list~0_combout\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][29]~q\,
	datab => \InstructionFetch|list~0_combout\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux34~0_combout\,
	combout => \DataPath|Mux34~1_combout\);

-- Location: LCCOMB_X62_Y69_N26
\DataPath|Add0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~187_combout\ = \DataPath|num2~31_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|PC\(2),
	datac => \DataPath|PC\(0),
	datad => \DataPath|num2~31_combout\,
	combout => \DataPath|Add0~187_combout\);

-- Location: LCCOMB_X57_Y69_N12
\DataPath|Add0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~152_combout\ = ((\DataPath|Add0~187_combout\ $ (\DataPath|Mux34~1_combout\ $ (!\DataPath|Add0~150\)))) # (GND)
-- \DataPath|Add0~153\ = CARRY((\DataPath|Add0~187_combout\ & ((\DataPath|Mux34~1_combout\) # (!\DataPath|Add0~150\))) # (!\DataPath|Add0~187_combout\ & (\DataPath|Mux34~1_combout\ & !\DataPath|Add0~150\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~187_combout\,
	datab => \DataPath|Mux34~1_combout\,
	datad => VCC,
	cin => \DataPath|Add0~150\,
	combout => \DataPath|Add0~152_combout\,
	cout => \DataPath|Add0~153\);

-- Location: LCCOMB_X57_Y69_N26
\DataPath|Add0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~154_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~152_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux127~0_combout\,
	datab => \DataPath|Mux34~1_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~152_combout\,
	combout => \DataPath|Add0~154_combout\);

-- Location: FF_X57_Y69_N27
\DataPath|result[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~154_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(29));

-- Location: FF_X62_Y70_N11
\DataPath|writememdata[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|Mux33~1_combout\,
	sload => VCC,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(30));

-- Location: FF_X61_Y66_N11
\RAM|RAM[4][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(30),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][30]~q\);

-- Location: LCCOMB_X61_Y66_N20
\RAM|RAM[6][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][30]~feeder_combout\ = \DataPath|writememdata\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(30),
	combout => \RAM|RAM[6][30]~feeder_combout\);

-- Location: FF_X61_Y66_N21
\RAM|RAM[6][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][30]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][30]~q\);

-- Location: LCCOMB_X61_Y66_N10
\DataPath|towrite~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~248_combout\ = (\DataPath|memaddr\(0) & (\DataPath|memaddr\(1))) # (!\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1) & ((\RAM|RAM[6][30]~q\))) # (!\DataPath|memaddr\(1) & (\RAM|RAM[4][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[4][30]~q\,
	datad => \RAM|RAM[6][30]~q\,
	combout => \DataPath|towrite~248_combout\);

-- Location: FF_X62_Y66_N31
\RAM|RAM[7][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(30),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][30]~q\);

-- Location: LCCOMB_X62_Y66_N20
\RAM|RAM[5][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][30]~feeder_combout\ = \DataPath|writememdata\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(30),
	combout => \RAM|RAM[5][30]~feeder_combout\);

-- Location: FF_X62_Y66_N21
\RAM|RAM[5][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][30]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][30]~q\);

-- Location: LCCOMB_X62_Y66_N30
\DataPath|towrite~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~249_combout\ = (\DataPath|towrite~248_combout\ & (((\RAM|RAM[7][30]~q\)) # (!\DataPath|memaddr\(0)))) # (!\DataPath|towrite~248_combout\ & (\DataPath|memaddr\(0) & ((\RAM|RAM[5][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~248_combout\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][30]~q\,
	datad => \RAM|RAM[5][30]~q\,
	combout => \DataPath|towrite~249_combout\);

-- Location: FF_X62_Y68_N25
\DataPath|regs[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~250_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][30]~q\);

-- Location: LCCOMB_X62_Y68_N24
\DataPath|num2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~32_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][30]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][30]~q\,
	datab => \InstructionFetch|list~1_combout\,
	datac => \DataPath|regs[1][30]~q\,
	datad => \ControlUnit|WideOr4~0_combout\,
	combout => \DataPath|num2~32_combout\);

-- Location: LCCOMB_X62_Y65_N0
\RAM|RAM[9][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][30]~feeder_combout\ = \DataPath|writememdata\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(30),
	combout => \RAM|RAM[9][30]~feeder_combout\);

-- Location: FF_X62_Y65_N1
\RAM|RAM[9][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][30]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][30]~q\);

-- Location: FF_X61_Y68_N5
\RAM|RAM[10][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(30),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][30]~q\);

-- Location: FF_X61_Y68_N19
\RAM|RAM[8][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(30),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][30]~q\);

-- Location: LCCOMB_X67_Y68_N0
\RAM|RAM[2][30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][30]~feeder_combout\ = \DataPath|writememdata\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(30),
	combout => \RAM|RAM[2][30]~feeder_combout\);

-- Location: FF_X67_Y68_N1
\RAM|RAM[2][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][30]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][30]~q\);

-- Location: FF_X65_Y68_N19
\RAM|RAM[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(30),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][30]~q\);

-- Location: FF_X65_Y68_N13
\RAM|RAM[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(30),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][30]~q\);

-- Location: LCCOMB_X68_Y68_N14
\RAM|RAM~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~43_combout\ = (\DataPath|writemem~q\ & \DataPath|writememdata\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|writemem~q\,
	datac => \DataPath|writememdata\(30),
	combout => \RAM|RAM~43_combout\);

-- Location: FF_X68_Y68_N15
\RAM|RAM[1][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~43_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][30]~q\);

-- Location: LCCOMB_X65_Y68_N12
\DataPath|towrite~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~243_combout\ = (\DataPath|memaddr\(1) & (\DataPath|memaddr\(0))) # (!\DataPath|memaddr\(1) & ((\DataPath|memaddr\(0) & ((\RAM|RAM[1][30]~q\))) # (!\DataPath|memaddr\(0) & (\RAM|RAM[0][30]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[0][30]~q\,
	datad => \RAM|RAM[1][30]~q\,
	combout => \DataPath|towrite~243_combout\);

-- Location: LCCOMB_X65_Y68_N18
\DataPath|towrite~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~244_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~243_combout\ & ((\RAM|RAM[3][30]~q\))) # (!\DataPath|towrite~243_combout\ & (\RAM|RAM[2][30]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[2][30]~q\,
	datac => \RAM|RAM[3][30]~q\,
	datad => \DataPath|towrite~243_combout\,
	combout => \DataPath|towrite~244_combout\);

-- Location: LCCOMB_X61_Y68_N18
\DataPath|towrite~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~245_combout\ = (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~1_combout\) # ((\DataPath|towrite~244_combout\)))) # (!\DataPath|towrite~4_combout\ & (!\DataPath|towrite~1_combout\ & (\RAM|RAM[8][30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~4_combout\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][30]~q\,
	datad => \DataPath|towrite~244_combout\,
	combout => \DataPath|towrite~245_combout\);

-- Location: LCCOMB_X61_Y68_N4
\DataPath|towrite~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~246_combout\ = (\DataPath|towrite~1_combout\ & ((\DataPath|towrite~245_combout\ & ((\RAM|RAM[10][30]~q\))) # (!\DataPath|towrite~245_combout\ & (\RAM|RAM[9][30]~q\)))) # (!\DataPath|towrite~1_combout\ & 
-- (((\DataPath|towrite~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][30]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[10][30]~q\,
	datad => \DataPath|towrite~245_combout\,
	combout => \DataPath|towrite~246_combout\);

-- Location: LCCOMB_X61_Y68_N30
\DataPath|towrite~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~247_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & (\DataPath|towrite~246_combout\)) # (!\ControlUnit|Decoder0~0_combout\ & 
-- ((\DataPath|Add0~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|towrite~246_combout\,
	datad => \DataPath|Add0~157_combout\,
	combout => \DataPath|towrite~247_combout\);

-- Location: LCCOMB_X62_Y68_N30
\DataPath|towrite~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~250_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~247_combout\ & (\DataPath|towrite~249_combout\)) # (!\DataPath|towrite~247_combout\ & ((\DataPath|num2~32_combout\))))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~249_combout\,
	datab => \DataPath|num2~32_combout\,
	datac => \DataPath|towrite~0_combout\,
	datad => \DataPath|towrite~247_combout\,
	combout => \DataPath|towrite~250_combout\);

-- Location: FF_X62_Y68_N31
\DataPath|regs[0][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~250_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][30]~q\);

-- Location: FF_X61_Y70_N1
\DataPath|regs[3][30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~250_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][30]~q\);

-- Location: LCCOMB_X61_Y70_N0
\DataPath|Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux33~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & (\DataPath|regs[3][30]~q\)) # (!\InstructionFetch|list~2_combout\ & ((\DataPath|regs[1][30]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \InstructionFetch|list~2_combout\,
	datac => \DataPath|regs[3][30]~q\,
	datad => \DataPath|regs[1][30]~q\,
	combout => \DataPath|Mux33~0_combout\);

-- Location: LCCOMB_X61_Y70_N30
\DataPath|Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux33~1_combout\ = (\DataPath|Mux33~0_combout\) # ((\InstructionFetch|list~0_combout\ & (\DataPath|regs[0][30]~q\ & !\InstructionFetch|list~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[0][30]~q\,
	datac => \InstructionFetch|list~2_combout\,
	datad => \DataPath|Mux33~0_combout\,
	combout => \DataPath|Mux33~1_combout\);

-- Location: LCCOMB_X57_Y68_N14
\DataPath|Add0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~188_combout\ = \DataPath|num2~32_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(1),
	datab => \DataPath|num2~32_combout\,
	datac => \DataPath|PC\(2),
	datad => \DataPath|PC\(0),
	combout => \DataPath|Add0~188_combout\);

-- Location: LCCOMB_X57_Y69_N14
\DataPath|Add0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~155_combout\ = (\DataPath|Mux33~1_combout\ & ((\DataPath|Add0~188_combout\ & (\DataPath|Add0~153\ & VCC)) # (!\DataPath|Add0~188_combout\ & (!\DataPath|Add0~153\)))) # (!\DataPath|Mux33~1_combout\ & ((\DataPath|Add0~188_combout\ & 
-- (!\DataPath|Add0~153\)) # (!\DataPath|Add0~188_combout\ & ((\DataPath|Add0~153\) # (GND)))))
-- \DataPath|Add0~156\ = CARRY((\DataPath|Mux33~1_combout\ & (!\DataPath|Add0~188_combout\ & !\DataPath|Add0~153\)) # (!\DataPath|Mux33~1_combout\ & ((!\DataPath|Add0~153\) # (!\DataPath|Add0~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux33~1_combout\,
	datab => \DataPath|Add0~188_combout\,
	datad => VCC,
	cin => \DataPath|Add0~153\,
	combout => \DataPath|Add0~155_combout\,
	cout => \DataPath|Add0~156\);

-- Location: LCCOMB_X57_Y69_N24
\DataPath|Add0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~157_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~155_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux33~1_combout\,
	datab => \DataPath|Mux127~0_combout\,
	datac => \DataPath|Add0~155_combout\,
	datad => \ControlUnit|WideOr2~0_combout\,
	combout => \DataPath|Add0~157_combout\);

-- Location: FF_X57_Y69_N25
\DataPath|result[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(30));

-- Location: FF_X62_Y70_N7
\DataPath|regs[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~258_combout\,
	sload => VCC,
	ena => \ControlUnit|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[1][31]~q\);

-- Location: LCCOMB_X62_Y70_N6
\DataPath|num2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|num2~33_combout\ = (!\ControlUnit|WideOr4~0_combout\ & ((\InstructionFetch|list~1_combout\ & ((\DataPath|regs[1][31]~q\))) # (!\InstructionFetch|list~1_combout\ & (\DataPath|regs[0][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|regs[0][31]~q\,
	datab => \ControlUnit|WideOr4~0_combout\,
	datac => \DataPath|regs[1][31]~q\,
	datad => \InstructionFetch|list~1_combout\,
	combout => \DataPath|num2~33_combout\);

-- Location: LCCOMB_X62_Y70_N2
\DataPath|writememdata[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|writememdata[31]~feeder_combout\ = \DataPath|Mux32~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|Mux32~1_combout\,
	combout => \DataPath|writememdata[31]~feeder_combout\);

-- Location: FF_X62_Y70_N3
\DataPath|writememdata[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|writememdata[31]~feeder_combout\,
	ena => \DataPath|writememdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|writememdata\(31));

-- Location: LCCOMB_X65_Y66_N12
\RAM|RAM[5][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[5][31]~feeder_combout\ = \DataPath|writememdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(31),
	combout => \RAM|RAM[5][31]~feeder_combout\);

-- Location: FF_X65_Y66_N13
\RAM|RAM[5][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[5][31]~feeder_combout\,
	ena => \RAM|RAM[5][0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[5][31]~q\);

-- Location: FF_X65_Y66_N11
\RAM|RAM[7][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(31),
	sload => VCC,
	ena => \RAM|RAM[7][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[7][31]~q\);

-- Location: LCCOMB_X63_Y66_N20
\RAM|RAM[6][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[6][31]~feeder_combout\ = \DataPath|writememdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(31),
	combout => \RAM|RAM[6][31]~feeder_combout\);

-- Location: FF_X63_Y66_N21
\RAM|RAM[6][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[6][31]~feeder_combout\,
	ena => \RAM|RAM[6][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[6][31]~q\);

-- Location: FF_X63_Y66_N15
\RAM|RAM[4][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(31),
	sload => VCC,
	ena => \RAM|RAM[4][0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[4][31]~q\);

-- Location: LCCOMB_X63_Y66_N14
\DataPath|towrite~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~256_combout\ = (\DataPath|memaddr\(1) & ((\RAM|RAM[6][31]~q\) # ((\DataPath|memaddr\(0))))) # (!\DataPath|memaddr\(1) & (((\RAM|RAM[4][31]~q\ & !\DataPath|memaddr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(1),
	datab => \RAM|RAM[6][31]~q\,
	datac => \RAM|RAM[4][31]~q\,
	datad => \DataPath|memaddr\(0),
	combout => \DataPath|towrite~256_combout\);

-- Location: LCCOMB_X65_Y66_N10
\DataPath|towrite~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~257_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|towrite~256_combout\ & ((\RAM|RAM[7][31]~q\))) # (!\DataPath|towrite~256_combout\ & (\RAM|RAM[5][31]~q\)))) # (!\DataPath|memaddr\(0) & (((\DataPath|towrite~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[5][31]~q\,
	datab => \DataPath|memaddr\(0),
	datac => \RAM|RAM[7][31]~q\,
	datad => \DataPath|towrite~256_combout\,
	combout => \DataPath|towrite~257_combout\);

-- Location: LCCOMB_X62_Y65_N2
\RAM|RAM[9][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[9][31]~feeder_combout\ = \DataPath|writememdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(31),
	combout => \RAM|RAM[9][31]~feeder_combout\);

-- Location: FF_X62_Y65_N3
\RAM|RAM[9][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[9][31]~feeder_combout\,
	ena => \RAM|RAM[9][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[9][31]~q\);

-- Location: FF_X62_Y67_N7
\RAM|RAM[8][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(31),
	sload => VCC,
	ena => \RAM|RAM[8][0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[8][31]~q\);

-- Location: LCCOMB_X62_Y67_N6
\DataPath|towrite~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~253_combout\ = (\DataPath|towrite~1_combout\ & ((\RAM|RAM[9][31]~q\) # ((\DataPath|towrite~4_combout\)))) # (!\DataPath|towrite~1_combout\ & (((\RAM|RAM[8][31]~q\ & !\DataPath|towrite~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[9][31]~q\,
	datab => \DataPath|towrite~1_combout\,
	datac => \RAM|RAM[8][31]~q\,
	datad => \DataPath|towrite~4_combout\,
	combout => \DataPath|towrite~253_combout\);

-- Location: FF_X61_Y67_N31
\RAM|RAM[10][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(31),
	sload => VCC,
	ena => \RAM|RAM[10][0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[10][31]~q\);

-- Location: LCCOMB_X63_Y67_N26
\RAM|RAM[2][31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM[2][31]~feeder_combout\ = \DataPath|writememdata\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DataPath|writememdata\(31),
	combout => \RAM|RAM[2][31]~feeder_combout\);

-- Location: FF_X63_Y67_N27
\RAM|RAM[2][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM[2][31]~feeder_combout\,
	ena => \RAM|RAM[2][0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[2][31]~q\);

-- Location: FF_X62_Y67_N25
\RAM|RAM[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(31),
	sload => VCC,
	ena => \RAM|RAM[3][0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[3][31]~q\);

-- Location: FF_X66_Y67_N31
\RAM|RAM[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \DataPath|writememdata\(31),
	sload => VCC,
	ena => \RAM|RAM[0][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[0][31]~q\);

-- Location: LCCOMB_X66_Y67_N12
\RAM|RAM~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|RAM~44_combout\ = (\DataPath|writememdata\(31) & \DataPath|writemem~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DataPath|writememdata\(31),
	datad => \DataPath|writemem~q\,
	combout => \RAM|RAM~44_combout\);

-- Location: FF_X66_Y67_N13
\RAM|RAM[1][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \RAM|RAM~44_combout\,
	ena => \RAM|RAM[1][17]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM[1][31]~q\);

-- Location: LCCOMB_X66_Y67_N30
\DataPath|towrite~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~251_combout\ = (\DataPath|memaddr\(0) & ((\DataPath|memaddr\(1)) # ((\RAM|RAM[1][31]~q\)))) # (!\DataPath|memaddr\(0) & (!\DataPath|memaddr\(1) & (\RAM|RAM[0][31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|memaddr\(0),
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[0][31]~q\,
	datad => \RAM|RAM[1][31]~q\,
	combout => \DataPath|towrite~251_combout\);

-- Location: LCCOMB_X62_Y67_N24
\DataPath|towrite~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~252_combout\ = (\DataPath|memaddr\(1) & ((\DataPath|towrite~251_combout\ & ((\RAM|RAM[3][31]~q\))) # (!\DataPath|towrite~251_combout\ & (\RAM|RAM[2][31]~q\)))) # (!\DataPath|memaddr\(1) & (((\DataPath|towrite~251_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM[2][31]~q\,
	datab => \DataPath|memaddr\(1),
	datac => \RAM|RAM[3][31]~q\,
	datad => \DataPath|towrite~251_combout\,
	combout => \DataPath|towrite~252_combout\);

-- Location: LCCOMB_X61_Y67_N30
\DataPath|towrite~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~254_combout\ = (\DataPath|towrite~253_combout\ & (((\RAM|RAM[10][31]~q\)) # (!\DataPath|towrite~4_combout\))) # (!\DataPath|towrite~253_combout\ & (\DataPath|towrite~4_combout\ & ((\DataPath|towrite~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~253_combout\,
	datab => \DataPath|towrite~4_combout\,
	datac => \RAM|RAM[10][31]~q\,
	datad => \DataPath|towrite~252_combout\,
	combout => \DataPath|towrite~254_combout\);

-- Location: LCCOMB_X63_Y70_N18
\DataPath|towrite~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~255_combout\ = (\DataPath|towrite~0_combout\ & (\ControlUnit|Decoder0~0_combout\)) # (!\DataPath|towrite~0_combout\ & ((\ControlUnit|Decoder0~0_combout\ & ((\DataPath|towrite~254_combout\))) # (!\ControlUnit|Decoder0~0_combout\ & 
-- (\DataPath|Add0~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \ControlUnit|Decoder0~0_combout\,
	datac => \DataPath|Add0~160_combout\,
	datad => \DataPath|towrite~254_combout\,
	combout => \DataPath|towrite~255_combout\);

-- Location: LCCOMB_X63_Y70_N8
\DataPath|towrite~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|towrite~258_combout\ = (\DataPath|towrite~0_combout\ & ((\DataPath|towrite~255_combout\ & ((\DataPath|towrite~257_combout\))) # (!\DataPath|towrite~255_combout\ & (\DataPath|num2~33_combout\)))) # (!\DataPath|towrite~0_combout\ & 
-- (((\DataPath|towrite~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|towrite~0_combout\,
	datab => \DataPath|num2~33_combout\,
	datac => \DataPath|towrite~257_combout\,
	datad => \DataPath|towrite~255_combout\,
	combout => \DataPath|towrite~258_combout\);

-- Location: FF_X63_Y70_N9
\DataPath|regs[0][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|towrite~258_combout\,
	ena => \DataPath|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[0][31]~q\);

-- Location: FF_X63_Y70_N23
\DataPath|regs[3][31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \DataPath|towrite~258_combout\,
	sload => VCC,
	ena => \InstructionFetch|list~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|regs[3][31]~q\);

-- Location: LCCOMB_X63_Y70_N22
\DataPath|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux32~0_combout\ = (!\InstructionFetch|list~0_combout\ & ((\InstructionFetch|list~2_combout\ & ((\DataPath|regs[3][31]~q\))) # (!\InstructionFetch|list~2_combout\ & (\DataPath|regs[1][31]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~0_combout\,
	datab => \DataPath|regs[1][31]~q\,
	datac => \DataPath|regs[3][31]~q\,
	datad => \InstructionFetch|list~2_combout\,
	combout => \DataPath|Mux32~0_combout\);

-- Location: LCCOMB_X62_Y70_N8
\DataPath|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Mux32~1_combout\ = (\DataPath|Mux32~0_combout\) # ((!\InstructionFetch|list~2_combout\ & (\DataPath|regs[0][31]~q\ & \InstructionFetch|list~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \InstructionFetch|list~2_combout\,
	datab => \DataPath|regs[0][31]~q\,
	datac => \InstructionFetch|list~0_combout\,
	datad => \DataPath|Mux32~0_combout\,
	combout => \DataPath|Mux32~1_combout\);

-- Location: LCCOMB_X62_Y70_N22
\DataPath|Add0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~189_combout\ = \DataPath|num2~33_combout\ $ (((!\DataPath|PC\(2) & ((\DataPath|PC\(1)) # (!\DataPath|PC\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(0),
	datab => \DataPath|PC\(1),
	datac => \DataPath|PC\(2),
	datad => \DataPath|num2~33_combout\,
	combout => \DataPath|Add0~189_combout\);

-- Location: LCCOMB_X57_Y69_N16
\DataPath|Add0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~158_combout\ = \DataPath|Add0~189_combout\ $ (\DataPath|Add0~156\ $ (!\DataPath|Mux32~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Add0~189_combout\,
	datad => \DataPath|Mux32~1_combout\,
	cin => \DataPath|Add0~156\,
	combout => \DataPath|Add0~158_combout\);

-- Location: LCCOMB_X57_Y69_N18
\DataPath|Add0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|Add0~160_combout\ = (\ControlUnit|WideOr2~0_combout\) # ((\DataPath|Mux127~0_combout\ & ((\DataPath|Add0~158_combout\))) # (!\DataPath|Mux127~0_combout\ & (\DataPath|Mux32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|Mux127~0_combout\,
	datab => \DataPath|Mux32~1_combout\,
	datac => \ControlUnit|WideOr2~0_combout\,
	datad => \DataPath|Add0~158_combout\,
	combout => \DataPath|Add0~160_combout\);

-- Location: FF_X57_Y69_N19
\DataPath|result[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DataPath|Add0~160_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DataPath|result\(31));

-- Location: LCCOMB_X60_Y72_N6
\DataPath|PC[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[3]~38_combout\ = (\DataPath|PC\(3) & (!\DataPath|PC[2]~37\)) # (!\DataPath|PC\(3) & ((\DataPath|PC[2]~37\) # (GND)))
-- \DataPath|PC[3]~39\ = CARRY((!\DataPath|PC[2]~37\) # (!\DataPath|PC\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(3),
	datad => VCC,
	cin => \DataPath|PC[2]~37\,
	combout => \DataPath|PC[3]~38_combout\,
	cout => \DataPath|PC[3]~39\);

-- Location: FF_X60_Y72_N7
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

-- Location: LCCOMB_X60_Y72_N8
\DataPath|PC[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[4]~40_combout\ = (\DataPath|PC\(4) & (\DataPath|PC[3]~39\ $ (GND))) # (!\DataPath|PC\(4) & (!\DataPath|PC[3]~39\ & VCC))
-- \DataPath|PC[4]~41\ = CARRY((\DataPath|PC\(4) & !\DataPath|PC[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(4),
	datad => VCC,
	cin => \DataPath|PC[3]~39\,
	combout => \DataPath|PC[4]~40_combout\,
	cout => \DataPath|PC[4]~41\);

-- Location: FF_X60_Y72_N9
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

-- Location: LCCOMB_X60_Y72_N10
\DataPath|PC[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[5]~42_combout\ = (\DataPath|PC\(5) & (!\DataPath|PC[4]~41\)) # (!\DataPath|PC\(5) & ((\DataPath|PC[4]~41\) # (GND)))
-- \DataPath|PC[5]~43\ = CARRY((!\DataPath|PC[4]~41\) # (!\DataPath|PC\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(5),
	datad => VCC,
	cin => \DataPath|PC[4]~41\,
	combout => \DataPath|PC[5]~42_combout\,
	cout => \DataPath|PC[5]~43\);

-- Location: FF_X60_Y72_N11
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

-- Location: LCCOMB_X60_Y72_N12
\DataPath|PC[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[6]~44_combout\ = (\DataPath|PC\(6) & (\DataPath|PC[5]~43\ $ (GND))) # (!\DataPath|PC\(6) & (!\DataPath|PC[5]~43\ & VCC))
-- \DataPath|PC[6]~45\ = CARRY((\DataPath|PC\(6) & !\DataPath|PC[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(6),
	datad => VCC,
	cin => \DataPath|PC[5]~43\,
	combout => \DataPath|PC[6]~44_combout\,
	cout => \DataPath|PC[6]~45\);

-- Location: FF_X60_Y72_N13
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

-- Location: LCCOMB_X60_Y72_N14
\DataPath|PC[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[7]~46_combout\ = (\DataPath|PC\(7) & (!\DataPath|PC[6]~45\)) # (!\DataPath|PC\(7) & ((\DataPath|PC[6]~45\) # (GND)))
-- \DataPath|PC[7]~47\ = CARRY((!\DataPath|PC[6]~45\) # (!\DataPath|PC\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(7),
	datad => VCC,
	cin => \DataPath|PC[6]~45\,
	combout => \DataPath|PC[7]~46_combout\,
	cout => \DataPath|PC[7]~47\);

-- Location: FF_X60_Y72_N15
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

-- Location: LCCOMB_X60_Y72_N16
\DataPath|PC[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[8]~48_combout\ = (\DataPath|PC\(8) & (\DataPath|PC[7]~47\ $ (GND))) # (!\DataPath|PC\(8) & (!\DataPath|PC[7]~47\ & VCC))
-- \DataPath|PC[8]~49\ = CARRY((\DataPath|PC\(8) & !\DataPath|PC[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(8),
	datad => VCC,
	cin => \DataPath|PC[7]~47\,
	combout => \DataPath|PC[8]~48_combout\,
	cout => \DataPath|PC[8]~49\);

-- Location: FF_X60_Y72_N17
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

-- Location: LCCOMB_X60_Y72_N18
\DataPath|PC[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[9]~50_combout\ = (\DataPath|PC\(9) & (!\DataPath|PC[8]~49\)) # (!\DataPath|PC\(9) & ((\DataPath|PC[8]~49\) # (GND)))
-- \DataPath|PC[9]~51\ = CARRY((!\DataPath|PC[8]~49\) # (!\DataPath|PC\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(9),
	datad => VCC,
	cin => \DataPath|PC[8]~49\,
	combout => \DataPath|PC[9]~50_combout\,
	cout => \DataPath|PC[9]~51\);

-- Location: FF_X60_Y72_N19
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

-- Location: LCCOMB_X60_Y72_N20
\DataPath|PC[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[10]~52_combout\ = (\DataPath|PC\(10) & (\DataPath|PC[9]~51\ $ (GND))) # (!\DataPath|PC\(10) & (!\DataPath|PC[9]~51\ & VCC))
-- \DataPath|PC[10]~53\ = CARRY((\DataPath|PC\(10) & !\DataPath|PC[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(10),
	datad => VCC,
	cin => \DataPath|PC[9]~51\,
	combout => \DataPath|PC[10]~52_combout\,
	cout => \DataPath|PC[10]~53\);

-- Location: FF_X60_Y72_N21
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

-- Location: LCCOMB_X60_Y72_N22
\DataPath|PC[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[11]~54_combout\ = (\DataPath|PC\(11) & (!\DataPath|PC[10]~53\)) # (!\DataPath|PC\(11) & ((\DataPath|PC[10]~53\) # (GND)))
-- \DataPath|PC[11]~55\ = CARRY((!\DataPath|PC[10]~53\) # (!\DataPath|PC\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(11),
	datad => VCC,
	cin => \DataPath|PC[10]~53\,
	combout => \DataPath|PC[11]~54_combout\,
	cout => \DataPath|PC[11]~55\);

-- Location: FF_X60_Y72_N23
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

-- Location: LCCOMB_X60_Y72_N24
\DataPath|PC[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[12]~56_combout\ = (\DataPath|PC\(12) & (\DataPath|PC[11]~55\ $ (GND))) # (!\DataPath|PC\(12) & (!\DataPath|PC[11]~55\ & VCC))
-- \DataPath|PC[12]~57\ = CARRY((\DataPath|PC\(12) & !\DataPath|PC[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(12),
	datad => VCC,
	cin => \DataPath|PC[11]~55\,
	combout => \DataPath|PC[12]~56_combout\,
	cout => \DataPath|PC[12]~57\);

-- Location: FF_X60_Y72_N25
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

-- Location: LCCOMB_X60_Y72_N26
\DataPath|PC[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[13]~58_combout\ = (\DataPath|PC\(13) & (!\DataPath|PC[12]~57\)) # (!\DataPath|PC\(13) & ((\DataPath|PC[12]~57\) # (GND)))
-- \DataPath|PC[13]~59\ = CARRY((!\DataPath|PC[12]~57\) # (!\DataPath|PC\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(13),
	datad => VCC,
	cin => \DataPath|PC[12]~57\,
	combout => \DataPath|PC[13]~58_combout\,
	cout => \DataPath|PC[13]~59\);

-- Location: FF_X60_Y72_N27
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

-- Location: LCCOMB_X60_Y72_N28
\DataPath|PC[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[14]~60_combout\ = (\DataPath|PC\(14) & (\DataPath|PC[13]~59\ $ (GND))) # (!\DataPath|PC\(14) & (!\DataPath|PC[13]~59\ & VCC))
-- \DataPath|PC[14]~61\ = CARRY((\DataPath|PC\(14) & !\DataPath|PC[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(14),
	datad => VCC,
	cin => \DataPath|PC[13]~59\,
	combout => \DataPath|PC[14]~60_combout\,
	cout => \DataPath|PC[14]~61\);

-- Location: FF_X60_Y72_N29
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

-- Location: LCCOMB_X60_Y72_N30
\DataPath|PC[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[15]~62_combout\ = (\DataPath|PC\(15) & (!\DataPath|PC[14]~61\)) # (!\DataPath|PC\(15) & ((\DataPath|PC[14]~61\) # (GND)))
-- \DataPath|PC[15]~63\ = CARRY((!\DataPath|PC[14]~61\) # (!\DataPath|PC\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(15),
	datad => VCC,
	cin => \DataPath|PC[14]~61\,
	combout => \DataPath|PC[15]~62_combout\,
	cout => \DataPath|PC[15]~63\);

-- Location: FF_X60_Y72_N31
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

-- Location: LCCOMB_X60_Y71_N0
\DataPath|PC[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[16]~64_combout\ = (\DataPath|PC\(16) & (\DataPath|PC[15]~63\ $ (GND))) # (!\DataPath|PC\(16) & (!\DataPath|PC[15]~63\ & VCC))
-- \DataPath|PC[16]~65\ = CARRY((\DataPath|PC\(16) & !\DataPath|PC[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(16),
	datad => VCC,
	cin => \DataPath|PC[15]~63\,
	combout => \DataPath|PC[16]~64_combout\,
	cout => \DataPath|PC[16]~65\);

-- Location: FF_X60_Y71_N1
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

-- Location: LCCOMB_X60_Y71_N2
\DataPath|PC[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[17]~66_combout\ = (\DataPath|PC\(17) & (!\DataPath|PC[16]~65\)) # (!\DataPath|PC\(17) & ((\DataPath|PC[16]~65\) # (GND)))
-- \DataPath|PC[17]~67\ = CARRY((!\DataPath|PC[16]~65\) # (!\DataPath|PC\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(17),
	datad => VCC,
	cin => \DataPath|PC[16]~65\,
	combout => \DataPath|PC[17]~66_combout\,
	cout => \DataPath|PC[17]~67\);

-- Location: FF_X60_Y71_N3
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

-- Location: LCCOMB_X60_Y71_N4
\DataPath|PC[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[18]~68_combout\ = (\DataPath|PC\(18) & (\DataPath|PC[17]~67\ $ (GND))) # (!\DataPath|PC\(18) & (!\DataPath|PC[17]~67\ & VCC))
-- \DataPath|PC[18]~69\ = CARRY((\DataPath|PC\(18) & !\DataPath|PC[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(18),
	datad => VCC,
	cin => \DataPath|PC[17]~67\,
	combout => \DataPath|PC[18]~68_combout\,
	cout => \DataPath|PC[18]~69\);

-- Location: FF_X60_Y71_N5
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

-- Location: LCCOMB_X60_Y71_N6
\DataPath|PC[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[19]~70_combout\ = (\DataPath|PC\(19) & (!\DataPath|PC[18]~69\)) # (!\DataPath|PC\(19) & ((\DataPath|PC[18]~69\) # (GND)))
-- \DataPath|PC[19]~71\ = CARRY((!\DataPath|PC[18]~69\) # (!\DataPath|PC\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(19),
	datad => VCC,
	cin => \DataPath|PC[18]~69\,
	combout => \DataPath|PC[19]~70_combout\,
	cout => \DataPath|PC[19]~71\);

-- Location: FF_X60_Y71_N7
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

-- Location: LCCOMB_X60_Y71_N8
\DataPath|PC[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[20]~72_combout\ = (\DataPath|PC\(20) & (\DataPath|PC[19]~71\ $ (GND))) # (!\DataPath|PC\(20) & (!\DataPath|PC[19]~71\ & VCC))
-- \DataPath|PC[20]~73\ = CARRY((\DataPath|PC\(20) & !\DataPath|PC[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(20),
	datad => VCC,
	cin => \DataPath|PC[19]~71\,
	combout => \DataPath|PC[20]~72_combout\,
	cout => \DataPath|PC[20]~73\);

-- Location: FF_X60_Y71_N9
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

-- Location: LCCOMB_X60_Y71_N10
\DataPath|PC[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[21]~74_combout\ = (\DataPath|PC\(21) & (!\DataPath|PC[20]~73\)) # (!\DataPath|PC\(21) & ((\DataPath|PC[20]~73\) # (GND)))
-- \DataPath|PC[21]~75\ = CARRY((!\DataPath|PC[20]~73\) # (!\DataPath|PC\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(21),
	datad => VCC,
	cin => \DataPath|PC[20]~73\,
	combout => \DataPath|PC[21]~74_combout\,
	cout => \DataPath|PC[21]~75\);

-- Location: FF_X60_Y71_N11
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

-- Location: LCCOMB_X60_Y71_N12
\DataPath|PC[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[22]~76_combout\ = (\DataPath|PC\(22) & (\DataPath|PC[21]~75\ $ (GND))) # (!\DataPath|PC\(22) & (!\DataPath|PC[21]~75\ & VCC))
-- \DataPath|PC[22]~77\ = CARRY((\DataPath|PC\(22) & !\DataPath|PC[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(22),
	datad => VCC,
	cin => \DataPath|PC[21]~75\,
	combout => \DataPath|PC[22]~76_combout\,
	cout => \DataPath|PC[22]~77\);

-- Location: FF_X60_Y71_N13
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

-- Location: LCCOMB_X60_Y71_N14
\DataPath|PC[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[23]~78_combout\ = (\DataPath|PC\(23) & (!\DataPath|PC[22]~77\)) # (!\DataPath|PC\(23) & ((\DataPath|PC[22]~77\) # (GND)))
-- \DataPath|PC[23]~79\ = CARRY((!\DataPath|PC[22]~77\) # (!\DataPath|PC\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(23),
	datad => VCC,
	cin => \DataPath|PC[22]~77\,
	combout => \DataPath|PC[23]~78_combout\,
	cout => \DataPath|PC[23]~79\);

-- Location: FF_X60_Y71_N15
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

-- Location: LCCOMB_X60_Y71_N16
\DataPath|PC[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[24]~80_combout\ = (\DataPath|PC\(24) & (\DataPath|PC[23]~79\ $ (GND))) # (!\DataPath|PC\(24) & (!\DataPath|PC[23]~79\ & VCC))
-- \DataPath|PC[24]~81\ = CARRY((\DataPath|PC\(24) & !\DataPath|PC[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(24),
	datad => VCC,
	cin => \DataPath|PC[23]~79\,
	combout => \DataPath|PC[24]~80_combout\,
	cout => \DataPath|PC[24]~81\);

-- Location: FF_X60_Y71_N17
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

-- Location: LCCOMB_X60_Y71_N18
\DataPath|PC[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[25]~82_combout\ = (\DataPath|PC\(25) & (!\DataPath|PC[24]~81\)) # (!\DataPath|PC\(25) & ((\DataPath|PC[24]~81\) # (GND)))
-- \DataPath|PC[25]~83\ = CARRY((!\DataPath|PC[24]~81\) # (!\DataPath|PC\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(25),
	datad => VCC,
	cin => \DataPath|PC[24]~81\,
	combout => \DataPath|PC[25]~82_combout\,
	cout => \DataPath|PC[25]~83\);

-- Location: FF_X60_Y71_N19
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

-- Location: LCCOMB_X60_Y71_N20
\DataPath|PC[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[26]~84_combout\ = (\DataPath|PC\(26) & (\DataPath|PC[25]~83\ $ (GND))) # (!\DataPath|PC\(26) & (!\DataPath|PC[25]~83\ & VCC))
-- \DataPath|PC[26]~85\ = CARRY((\DataPath|PC\(26) & !\DataPath|PC[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(26),
	datad => VCC,
	cin => \DataPath|PC[25]~83\,
	combout => \DataPath|PC[26]~84_combout\,
	cout => \DataPath|PC[26]~85\);

-- Location: FF_X60_Y71_N21
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

-- Location: LCCOMB_X60_Y71_N22
\DataPath|PC[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[27]~86_combout\ = (\DataPath|PC\(27) & (!\DataPath|PC[26]~85\)) # (!\DataPath|PC\(27) & ((\DataPath|PC[26]~85\) # (GND)))
-- \DataPath|PC[27]~87\ = CARRY((!\DataPath|PC[26]~85\) # (!\DataPath|PC\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(27),
	datad => VCC,
	cin => \DataPath|PC[26]~85\,
	combout => \DataPath|PC[27]~86_combout\,
	cout => \DataPath|PC[27]~87\);

-- Location: FF_X60_Y71_N23
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

-- Location: LCCOMB_X60_Y71_N24
\DataPath|PC[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[28]~88_combout\ = (\DataPath|PC\(28) & (\DataPath|PC[27]~87\ $ (GND))) # (!\DataPath|PC\(28) & (!\DataPath|PC[27]~87\ & VCC))
-- \DataPath|PC[28]~89\ = CARRY((\DataPath|PC\(28) & !\DataPath|PC[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(28),
	datad => VCC,
	cin => \DataPath|PC[27]~87\,
	combout => \DataPath|PC[28]~88_combout\,
	cout => \DataPath|PC[28]~89\);

-- Location: FF_X60_Y71_N25
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

-- Location: LCCOMB_X60_Y71_N26
\DataPath|PC[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[29]~90_combout\ = (\DataPath|PC\(29) & (!\DataPath|PC[28]~89\)) # (!\DataPath|PC\(29) & ((\DataPath|PC[28]~89\) # (GND)))
-- \DataPath|PC[29]~91\ = CARRY((!\DataPath|PC[28]~89\) # (!\DataPath|PC\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(29),
	datad => VCC,
	cin => \DataPath|PC[28]~89\,
	combout => \DataPath|PC[29]~90_combout\,
	cout => \DataPath|PC[29]~91\);

-- Location: FF_X60_Y71_N27
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

-- Location: LCCOMB_X60_Y71_N28
\DataPath|PC[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[30]~92_combout\ = (\DataPath|PC\(30) & (\DataPath|PC[29]~91\ $ (GND))) # (!\DataPath|PC\(30) & (!\DataPath|PC[29]~91\ & VCC))
-- \DataPath|PC[30]~93\ = CARRY((\DataPath|PC\(30) & !\DataPath|PC[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DataPath|PC\(30),
	datad => VCC,
	cin => \DataPath|PC[29]~91\,
	combout => \DataPath|PC[30]~92_combout\,
	cout => \DataPath|PC[30]~93\);

-- Location: FF_X60_Y71_N29
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

-- Location: LCCOMB_X60_Y71_N30
\DataPath|PC[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \DataPath|PC[31]~94_combout\ = \DataPath|PC\(31) $ (\DataPath|PC[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DataPath|PC\(31),
	cin => \DataPath|PC[30]~93\,
	combout => \DataPath|PC[31]~94_combout\);

-- Location: FF_X60_Y71_N31
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

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

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
END structure;


