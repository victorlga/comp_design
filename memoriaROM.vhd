library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 8
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is
    -- Define  opcodes que podem ser usados no programa
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant ANND : std_logic_vector(3 downto 0) := "1011";
  constant JSRE : std_logic_vector(3 downto 0) := "1100";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
		tmp(0) := x"4" & "00" & '0' & x"00";	-- LDI REG0 $0                 
		tmp(1) := x"5" & "00" & '0' & x"09";	-- STA REG0 Val0               
		tmp(2) := x"4" & "01" & '0' & x"01";	-- LDI REG1 $1                 
		tmp(3) := x"5" & "01" & '0' & x"0A";	-- STA REG1 Val1               
		tmp(4) := x"4" & "10" & '0' & x"0A";	-- LDI REG2 $10                
		tmp(5) := x"5" & "10" & '0' & x"0B";	-- STA REG2 Val10              
		tmp(6) := x"9" & "00" & '0' & x"AA";	-- JSR @170	
		tmp(7) := x"4" & "11" & '0' & x"09";	-- LDI REG3 $9
		tmp(8) := x"5" & "11" & '0' & x"00";	-- STA REG3 Unid
		tmp(9) := x"5" & "11" & '0' & x"01";	-- STA REG3 Dezen
		tmp(10) := x"5" & "11" & '0' & x"02";	-- STA REG3 Cent
		tmp(11) := x"5" & "11" & '0' & x"03";	-- STA REG3 Mil
		tmp(12) := x"5" & "11" & '0' & x"04";	-- STA REG3 DezMil
		tmp(13) := x"5" & "11" & '0' & x"05";	-- STA REG3 CenMil
		tmp(14) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(15) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(16) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(17) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(18) := x"1" & "00" & '1' & x"60";	-- LDA REG0 Key0               
		tmp(19) := x"5" & "00" & '1' & x"FF";	-- STA REG0 LimpK0             
		tmp(20) := x"B" & "00" & '0' & x"0A";	-- ANND REG0 Val1              
		tmp(21) := x"8" & "00" & '0' & x"0A";	-- CEQ REG0 Val1               
		tmp(22) := x"C" & "00" & '0' & x"26";	-- JSRE @38	
		tmp(23) := x"9" & "00" & '0' & x"68";	-- JSR @104	
		tmp(24) := x"1" & "01" & '1' & x"61";	-- LDA REG1 Key1               
		tmp(25) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(26) := x"B" & "01" & '0' & x"0A";	-- ANND REG1 Val1              
		tmp(27) := x"8" & "01" & '0' & x"0A";	-- CEQ REG1 Val1               
		tmp(28) := x"C" & "00" & '0' & x"79";	-- JSRE @121	
		tmp(29) := x"9" & "00" & '0' & x"C9";	-- JSR @201	
		tmp(30) := x"1" & "10" & '1' & x"64";	-- LDA REG2 RST                
		tmp(31) := x"B" & "10" & '0' & x"0A";	-- ANND REG2 Val1              
		tmp(32) := x"8" & "10" & '0' & x"0A";	-- CEQ REG2 Val1               
		tmp(33) := x"C" & "00" & '0' & x"AA";	-- JSRE @170	
		tmp(34) := x"6" & "00" & '0' & x"11";	-- JMP @17	
		tmp(35) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(36) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(37) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(38) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(39) := x"1" & "01" & '0' & x"3F";	-- LDA REG1 FlagInib           
		tmp(40) := x"8" & "01" & '0' & x"0A";	-- CEQ REG1 Val1               
		tmp(41) := x"7" & "00" & '0' & x"63";	-- JEQ @99	
		tmp(42) := x"1" & "00" & '0' & x"00";	-- LDA REG0 Unid               
		tmp(43) := x"2" & "00" & '0' & x"0A";	-- SOMA REG0 Val1              
		tmp(44) := x"8" & "00" & '0' & x"0B";	-- CEQ REG0 Val10              
		tmp(45) := x"7" & "00" & '0' & x"30";	-- JEQ @48	
		tmp(46) := x"5" & "00" & '0' & x"00";	-- STA REG0 Unid               
		tmp(47) := x"6" & "00" & '0' & x"63";	-- JMP @99	
		tmp(48) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(49) := x"4" & "00" & '0' & x"00";	-- LDI REG0 $0                 
		tmp(50) := x"5" & "00" & '0' & x"00";	-- STA REG0 Unid               
		tmp(51) := x"1" & "01" & '0' & x"01";	-- LDA REG1 Dezen              
		tmp(52) := x"2" & "01" & '0' & x"0A";	-- SOMA REG1 Val1              
		tmp(53) := x"8" & "01" & '0' & x"0B";	-- CEQ REG1 Val10              
		tmp(54) := x"7" & "00" & '0' & x"39";	-- JEQ @57	
		tmp(55) := x"5" & "01" & '0' & x"01";	-- STA REG1 Dezen              
		tmp(56) := x"6" & "00" & '0' & x"63";	-- JMP @99	
		tmp(57) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(58) := x"4" & "01" & '0' & x"00";	-- LDI REG1 $0                 
		tmp(59) := x"5" & "01" & '0' & x"01";	-- STA REG1 Dezen              
		tmp(60) := x"1" & "10" & '0' & x"02";	-- LDA REG2 Cent               
		tmp(61) := x"2" & "10" & '0' & x"0A";	-- SOMA REG2 Val1              
		tmp(62) := x"8" & "10" & '0' & x"0B";	-- CEQ REG2 Val10              
		tmp(63) := x"7" & "00" & '0' & x"42";	-- JEQ @66	
		tmp(64) := x"5" & "10" & '0' & x"02";	-- STA REG2 Cent               
		tmp(65) := x"6" & "00" & '0' & x"63";	-- JMP @99	
		tmp(66) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(67) := x"4" & "10" & '0' & x"00";	-- LDI REG2 $0                 
		tmp(68) := x"5" & "10" & '0' & x"02";	-- STA REG2 Cent               
		tmp(69) := x"1" & "11" & '0' & x"03";	-- LDA REG3 Mil                
		tmp(70) := x"2" & "11" & '0' & x"0A";	-- SOMA REG3 Val1              
		tmp(71) := x"8" & "11" & '0' & x"0B";	-- CEQ REG3 Val10              
		tmp(72) := x"7" & "00" & '0' & x"4B";	-- JEQ @75	
		tmp(73) := x"5" & "11" & '0' & x"03";	-- STA REG3 Mil                
		tmp(74) := x"6" & "00" & '0' & x"63";	-- JMP @99	
		tmp(75) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(76) := x"4" & "11" & '0' & x"00";	-- LDI REG3 $0                 
		tmp(77) := x"5" & "11" & '0' & x"03";	-- STA REG3 Mil                
		tmp(78) := x"1" & "00" & '0' & x"04";	-- LDA REG0 DezMil             
		tmp(79) := x"2" & "00" & '0' & x"0A";	-- SOMA REG0 Val1              
		tmp(80) := x"8" & "00" & '0' & x"0B";	-- CEQ REG0 Val10              
		tmp(81) := x"7" & "00" & '0' & x"54";	-- JEQ @84	
		tmp(82) := x"5" & "00" & '0' & x"04";	-- STA REG0 DezMil             
		tmp(83) := x"6" & "00" & '0' & x"63";	-- JMP @99	
		tmp(84) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(85) := x"4" & "00" & '0' & x"00";	-- LDI REG0 $0                 
		tmp(86) := x"5" & "00" & '0' & x"04";	-- STA REG0 DezMil             
		tmp(87) := x"1" & "01" & '0' & x"05";	-- LDA REG1 CenMil             
		tmp(88) := x"2" & "01" & '0' & x"0A";	-- SOMA REG1 Val1              
		tmp(89) := x"8" & "01" & '0' & x"0B";	-- CEQ REG1 Val10              
		tmp(90) := x"7" & "00" & '0' & x"5D";	-- JEQ @93	
		tmp(91) := x"5" & "01" & '0' & x"05";	-- STA REG1 CenMil             
		tmp(92) := x"6" & "00" & '0' & x"63";	-- JMP @99	
		tmp(93) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(94) := x"4" & "00" & '0' & x"00";	-- LDI REG0 $0                 
		tmp(95) := x"5" & "00" & '0' & x"05";	-- STA REG0 CenMil             
		tmp(96) := x"4" & "10" & '0' & x"01";	-- LDI REG2 $1                 
		tmp(97) := x"5" & "10" & '1' & x"02";	-- STA REG2 LED9               
		tmp(98) := x"5" & "10" & '0' & x"3F";	-- STA REG2 FlagInib           
		tmp(99) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(100) := x"A" & "00" & '0' & x"00";	-- RET                         
		tmp(101) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(102) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(103) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(104) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(105) := x"1" & "00" & '0' & x"00";	-- LDA REG0 Unid               
		tmp(106) := x"5" & "00" & '1' & x"20";	-- STA REG0 HEX0               
		tmp(107) := x"1" & "01" & '0' & x"01";	-- LDA REG1 Dezen              
		tmp(108) := x"5" & "01" & '1' & x"21";	-- STA REG1 HEX1               
		tmp(109) := x"1" & "10" & '0' & x"02";	-- LDA REG2 Cent               
		tmp(110) := x"5" & "10" & '1' & x"22";	-- STA REG2 HEX2               
		tmp(111) := x"1" & "11" & '0' & x"03";	-- LDA REG3 Mil                
		tmp(112) := x"5" & "11" & '1' & x"23";	-- STA REG3 HEX3               
		tmp(113) := x"1" & "00" & '0' & x"04";	-- LDA REG0 DezMil             
		tmp(114) := x"5" & "00" & '1' & x"24";	-- STA REG0 HEX4               
		tmp(115) := x"1" & "01" & '0' & x"05";	-- LDA REG1 CenMil             
		tmp(116) := x"5" & "01" & '1' & x"25";	-- STA REG1 HEX5               
		tmp(117) := x"A" & "00" & '0' & x"00";	-- RET                         
		tmp(118) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(119) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(120) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(121) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(122) := x"1" & "00" & '1' & x"40";	-- LDA REG0 SW                 
		tmp(123) := x"5" & "00" & '0' & x"39";	-- STA REG0 LimU               
		tmp(124) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(125) := x"1" & "01" & '1' & x"61";	-- LDA REG1 Key1               
		tmp(126) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(127) := x"B" & "01" & '0' & x"0A";	-- ANND REG1 Val1              
		tmp(128) := x"8" & "01" & '0' & x"09";	-- CEQ REG1 Val0               
		tmp(129) := x"7" & "00" & '0' & x"7C";	-- JEQ @124	
		tmp(130) := x"1" & "00" & '1' & x"40";	-- LDA REG0 SW                 
		tmp(131) := x"5" & "00" & '0' & x"3A";	-- STA REG0 LimD               
		tmp(132) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(133) := x"1" & "01" & '1' & x"61";	-- LDA REG1 Key1               
		tmp(134) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(135) := x"B" & "01" & '0' & x"0A";	-- ANND REG1 Val1              
		tmp(136) := x"8" & "01" & '0' & x"09";	-- CEQ REG1 Val0               
		tmp(137) := x"7" & "00" & '0' & x"84";	-- JEQ @132	
		tmp(138) := x"1" & "00" & '1' & x"40";	-- LDA REG0 SW                 
		tmp(139) := x"5" & "00" & '0' & x"3B";	-- STA REG0 LimC               
		tmp(140) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(141) := x"1" & "01" & '1' & x"61";	-- LDA REG1 Key1               
		tmp(142) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(143) := x"B" & "01" & '0' & x"0A";	-- ANND REG1 Val1              
		tmp(144) := x"8" & "01" & '0' & x"09";	-- CEQ REG1 Val0               
		tmp(145) := x"7" & "00" & '0' & x"8C";	-- JEQ @140	
		tmp(146) := x"1" & "00" & '1' & x"40";	-- LDA REG0 SW                 
		tmp(147) := x"5" & "00" & '0' & x"3C";	-- STA REG0 LimM               
		tmp(148) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(149) := x"1" & "01" & '1' & x"61";	-- LDA REG1 Key1               
		tmp(150) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(151) := x"B" & "01" & '0' & x"0A";	-- ANND REG1 Val1              
		tmp(152) := x"8" & "01" & '0' & x"09";	-- CEQ REG1 Val0               
		tmp(153) := x"7" & "00" & '0' & x"94";	-- JEQ @148	
		tmp(154) := x"1" & "00" & '1' & x"40";	-- LDA REG0 SW                 
		tmp(155) := x"5" & "00" & '0' & x"3D";	-- STA REG0 LimDM              
		tmp(156) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(157) := x"1" & "01" & '1' & x"61";	-- LDA REG1 Key1               
		tmp(158) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(159) := x"B" & "01" & '0' & x"0A";	-- ANND REG1 Val1              
		tmp(160) := x"8" & "01" & '0' & x"09";	-- CEQ REG1 Val0               
		tmp(161) := x"7" & "00" & '0' & x"9C";	-- JEQ @156	
		tmp(162) := x"1" & "00" & '1' & x"40";	-- LDA REG0 SW                 
		tmp(163) := x"5" & "00" & '0' & x"3E";	-- STA REG0 LimCM              
		tmp(164) := x"1" & "01" & '0' & x"09";	-- LDA REG1 Val0               
		tmp(165) := x"5" & "01" & '0' & x"38";	-- STA REG1 LimNDef             
		tmp(166) := x"A" & "00" & '0' & x"00";	-- RET                         
		tmp(167) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(168) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(169) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(170) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(171) := x"1" & "00" & '0' & x"09";	-- LDA REG0 Val0               
		tmp(172) := x"5" & "00" & '0' & x"39";	-- STA REG0 LimU               
		tmp(173) := x"5" & "00" & '0' & x"3A";	-- STA REG0 LimD               
		tmp(174) := x"5" & "00" & '0' & x"3B";	-- STA REG0 LimC               
		tmp(175) := x"5" & "00" & '0' & x"3C";	-- STA REG0 LimM               
		tmp(176) := x"5" & "00" & '0' & x"3D";	-- STA REG0 LimDM              
		tmp(177) := x"5" & "00" & '0' & x"3E";	-- STA REG0 LimCM              
		tmp(178) := x"5" & "00" & '1' & x"FF";	-- STA REG0 LimpK0             
		tmp(179) := x"5" & "00" & '1' & x"FE";	-- STA REG0 LimpK1             
		tmp(180) := x"5" & "00" & '0' & x"00";	-- STA REG0 Unid               
		tmp(181) := x"5" & "00" & '1' & x"20";	-- STA REG0 HEX0               
		tmp(182) := x"5" & "00" & '0' & x"01";	-- STA REG0 Dezen              
		tmp(183) := x"5" & "00" & '1' & x"21";	-- STA REG0 HEX1               
		tmp(184) := x"5" & "00" & '0' & x"02";	-- STA REG0 Cent               
		tmp(185) := x"5" & "00" & '1' & x"22";	-- STA REG0 HEX2               
		tmp(186) := x"5" & "00" & '0' & x"03";	-- STA REG0 Mil                
		tmp(187) := x"5" & "00" & '1' & x"23";	-- STA REG0 HEX3               
		tmp(188) := x"5" & "00" & '0' & x"04";	-- STA REG0 DezMil             
		tmp(189) := x"5" & "00" & '1' & x"24";	-- STA REG0 HEX4               
		tmp(190) := x"5" & "00" & '0' & x"05";	-- STA REG0 CenMil             
		tmp(191) := x"5" & "00" & '1' & x"25";	-- STA REG0 HEX5               
		tmp(192) := x"5" & "00" & '0' & x"3F";	-- STA REG0 FlagInib           
		tmp(193) := x"5" & "00" & '1' & x"01";	-- STA REG0 LED8               
		tmp(194) := x"5" & "00" & '1' & x"02";	-- STA REG0 LED9               
		tmp(195) := x"1" & "01" & '0' & x"0A";	-- LDA REG1 Val1               
		tmp(196) := x"5" & "01" & '0' & x"38";	-- STA REG1 LimNDef            
		tmp(197) := x"A" & "00" & '0' & x"00";	-- RET                         
		tmp(198) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(199) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(200) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(201) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(202) := x"1" & "01" & '0' & x"38";	-- LDA REG1 LimNDef            
		tmp(203) := x"8" & "01" & '0' & x"0A";	-- CEQ REG1 Val1               
		tmp(204) := x"7" & "00" & '0' & x"EE";	-- JEQ @238	
		tmp(205) := x"1" & "00" & '0' & x"00";	-- LDA REG0 Unid               
		tmp(206) := x"8" & "00" & '0' & x"39";	-- CEQ REG0 LimU               
		tmp(207) := x"7" & "00" & '0' & x"D1";	-- JEQ @209	
		tmp(208) := x"6" & "00" & '0' & x"EE";	-- JMP @238	
		tmp(209) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(210) := x"1" & "00" & '0' & x"01";	-- LDA REG0 Dezen              
		tmp(211) := x"8" & "00" & '0' & x"3A";	-- CEQ REG0 LimD               
		tmp(212) := x"7" & "00" & '0' & x"D6";	-- JEQ @214	
		tmp(213) := x"6" & "00" & '0' & x"EE";	-- JMP @238	
		tmp(214) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(215) := x"1" & "00" & '0' & x"02";	-- LDA REG0 Cent               
		tmp(216) := x"8" & "00" & '0' & x"3B";	-- CEQ REG0 LimC               
		tmp(217) := x"7" & "00" & '0' & x"DB";	-- JEQ @219	
		tmp(218) := x"6" & "00" & '0' & x"EE";	-- JMP @238	
		tmp(219) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(220) := x"1" & "00" & '0' & x"03";	-- LDA REG0 Mil                
		tmp(221) := x"8" & "00" & '0' & x"3C";	-- CEQ REG0 LimM               
		tmp(222) := x"7" & "00" & '0' & x"E0";	-- JEQ @224	
		tmp(223) := x"6" & "00" & '0' & x"EE";	-- JMP @238	
		tmp(224) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(225) := x"1" & "00" & '0' & x"04";	-- LDA REG0 DezMil             
		tmp(226) := x"8" & "00" & '0' & x"3D";	-- CEQ REG0 LimDM              
		tmp(227) := x"7" & "00" & '0' & x"E5";	-- JEQ @229	
		tmp(228) := x"6" & "00" & '0' & x"EE";	-- JMP @238	
		tmp(229) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(230) := x"1" & "00" & '0' & x"05";	-- LDA REG0 CenMil             
		tmp(231) := x"8" & "00" & '0' & x"3E";	-- CEQ REG0 LimCM              
		tmp(232) := x"7" & "00" & '0' & x"EA";	-- JEQ @234	
		tmp(233) := x"6" & "00" & '0' & x"EE";	-- JMP @238	
		tmp(234) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(235) := x"4" & "11" & '0' & x"01";	-- LDI REG3 $1                 
		tmp(236) := x"5" & "11" & '0' & x"3F";	-- STA REG3 FlagInib           
		tmp(237) := x"5" & "11" & '1' & x"01";	-- STA REG3 LED8               
		tmp(238) := x"0" & "00" & '0' & x"00";	-- NOP
		tmp(239) := x"A" & "00" & '0' & x"00";	-- RET                         
               
                 

                 

      return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
