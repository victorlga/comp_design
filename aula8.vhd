library ieee;
use ieee.std_logic_1164.all;

entity aula8 is
  -- Total de bits das entradas e saidas
  generic (dataWidth : natural := 8;
			  addrWidth : natural := 9;
			  instructionWidth : natural := 13;
			  simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 FPGA_RESET_N : in std_logic;
    KEY : in std_logic_vector(3 downto 0);
	 SW : in std_logic_vector(9 downto 0);
	 
	 LEDR : out std_logic_vector(9 downto 0);
	 
	 HEX0: out std_logic_vector(6 downto 0);
	 HEX1: out std_logic_vector(6 downto 0);
	 HEX2: out std_logic_vector(6 downto 0);
	 HEX3: out std_logic_vector(6 downto 0);
	 HEX4: out std_logic_vector(6 downto 0);
	 HEX5: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of aula8 is

  signal ROM_Data : std_logic_vector(instructionWidth - 1 downto 0);
  
  signal Led9 : std_logic;
  signal Led8 : std_logic;
  signal LedV : std_logic_vector(dataWidth-1 downto 0);
  
  signal ROM_Address : std_logic_vector(addrWidth - 1 downto 0);
  
  signal RAM_Data_Out : std_logic_vector(dataWidth - 1 downto 0);
  signal RAM_Data_In : std_logic_vector(dataWidth - 1 downto 0);
  signal Data_In : std_logic_vector(dataWidth - 1 downto 0);
  signal Data_Out : std_logic_vector(dataWidth - 1 downto 0);
  
  signal enableMemRam : std_logic;

  signal Data_Address : std_logic_vector(addrWidth-1 downto 0);
  alias RAM_Address : std_logic_vector(5 downto 0) is Data_Address(5 downto 0);
  
  alias Led98_In : std_logic is RAM_Data_In(0);
  
  signal CLK : std_logic;
  
  signal enableReadMem : std_logic;
  signal enableWriteMem : std_logic;
  
  signal enableLed9 : std_logic;
  signal enableLed8 : std_logic;
  signal enableLedVector : std_logic;
  
  signal encodedHex0 : std_logic_vector(3 downto 0);
  signal enableHex0 : std_logic;

  signal encodedHex1 : std_logic_vector(3 downto 0);
  signal enableHex1 : std_logic;
  
  signal encodedHex2 : std_logic_vector(3 downto 0);
  signal enableHex2 : std_logic;
  
  signal encodedHex3 : std_logic_vector(3 downto 0);
  signal enableHex3 : std_logic;
  
  signal encodedHex4 : std_logic_vector(3 downto 0);
  signal enableHex4 : std_logic;
  
  signal encodedHex5 : std_logic_vector(3 downto 0);
  signal enableHex5 : std_logic;
  
  signal enableKey0 : std_logic;
  signal enableKey1 : std_logic;
  signal enableKey2 : std_logic;
  signal enableKey3 : std_logic;
  signal enableReset : std_logic;
  
  signal enableSW8 : std_logic;
  signal enableSW9 : std_logic;
  signal enableSWVector : std_logic;
  
  signal HEX_Data : std_logic_vector(3 downto 0);
  
  signal clearRead : std_logic;
  signal flipflopKey0_Out : std_logic;
  signal flipflopKey1_Out : std_logic;
  
  signal edgeDet_Key0_Out : std_logic;
  signal edgeDet_Key1_Out : std_logic;
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => CLK);
-- CLK <= CLOCK_50;
end generate;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 8)
          port map (Endereco => ROM_Address,
						  Dado => ROM_Data);
				
RAM1 : entity work.memoriaRAM	  generic map (dataWidth => dataWidth, addrWidth => 6)
				port map (addr => RAM_Address,
							 we => enableWriteMem,
							 re => enableReadMem,
							 habilita => enableMemRam,
							 clk => CLK,
							 dado_in => RAM_Data_In,
							 dado_out => RAM_Data_Out);

DECODER1 : entity work.blockDecoder
				port map (Data_Address => Data_Address,
							 enableWriteMem => enableWriteMem,
							 enableReadMem => enableReadMem,
							 
							 enableMemRam => enableMemRam,
							 
							 enableLed9 => enableLed9,
							 enableLed8 => enableLed8,
							 enableLedVector => enableLedVector,
							 
							 enableHex0 => enableHex0,
							 enableHex1 => enableHex1,
							 enableHex2 => enableHex2,
							 enableHex3 => enableHex3,
							 enableHex4 => enableHex4,
							 enableHex5 => enableHex5,
							 
							 enableSWVector => enableSWVector,
							 enableSW9 => enableSW9,
							 enableSW8 => enableSW8,
							 
							 enableKey0 => enableKey0,
							 enableKey1 => enableKey1,
							 enableKey2 => enableKey2,
							 enableKey3 => enableKey3,
							 enableReset => enableReset,
							 clearRead => clearRead);
							 
CPU : entity work.cpu	generic map (dataWidth => dataWidth, addrWidth => addrWidth, instructionWidth => 13)
				port map (CLK => CLK,
							 RST => (not FPGA_RESET_N),
							 Rd => enableReadMem,
							 Wd => enableWriteMem,
							 ROM_Address => ROM_Address,
							 ROM_Data => ROM_Data,
							 Data_Address => Data_Address,
							 Data_In => Data_In,
							 Data_Out => Data_Out);
							 
FlipFlop9 : entity work.FlipFlop
				port map (DIN => Led98_In,
							 DOUT => Led9,
							 ENABLE => enableLed9,
							 CLK => CLK,
							 RST => '0');

FlipFlop8 : entity work.FlipFlop
				port map (DIN => Led98_In,
							 DOUT => Led8,
							 ENABLE => enableLed8,
							 CLK => CLK,
							 RST => '0');

RegisterVector : entity work.registradorGenerico
				port map (DIN => RAM_Data_In,
							 DOUT => LedV,
							 ENABLE => enableLedVector,
							 CLK => CLK,
							 RST => '0');

RegisterHEX0 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex0,
							 ENABLE => enableHex0,
							 CLK => CLK,
							 RST => '0');							 
							 
HexDisplay0 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex0,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX0);
					  
RegisterHEX1 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex1,
							 ENABLE => enableHex1,
							 CLK => CLK,
							 RST => '0');	
					  
HexDisplay1 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex1,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX1);

RegisterHEX2 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex2,
							 ENABLE => enableHex2,
							 CLK => CLK,
							 RST => '0');				
				
HexDisplay2 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex2,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX2);
	
RegisterHEX3 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex3,
							 ENABLE => enableHex3,
							 CLK => CLK,
							 RST => '0');
	
HexDisplay3 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex3,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX3);
	
RegisterHEX4 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex4,
							 ENABLE => enableHex4,
							 CLK => CLK,
							 RST => '0');
	
HexDisplay4 :  entity work.conversorHex7Seg
        port map(dadoHex => ROM_Address(3 downto 0), --encodedHex4,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX4);

RegisterHEX5 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex5,
							 ENABLE => enableHex5,
							 CLK => CLK,
							 RST => '0');					  
					  
HexDisplay5 :  entity work.conversorHex7Seg
        port map(dadoHex => ROM_Address(7 downto 4),--encodedHex5,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX5);
					  
Buffer3State8 : entity work.buffer_3_state_8portas
			port map(entrada => SW(7 downto 0),
						habilita => enableSWVector,
						saida => Data_In);

detectorKey0: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(0)), saida => edgeDet_Key0_Out);

detectorKey1: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(1)), saida => edgeDet_Key1_Out);
		  
FlipFlop_Key0 : entity work.FlipFlop
				port map (DIN => '1',
							 DOUT => flipflopKey0_Out,
							 ENABLE => '1',
							 CLK => edgeDet_Key0_Out,
							 RST => clearRead);

FlipFlop_Key1 : entity work.FlipFlop
				port map (DIN => '1',
							 DOUT => flipflopKey1_Out,
							 ENABLE => '1',
							 CLK => edgeDet_Key1_Out,
							 RST => clearRead);			 

--key0Tristate8 : entity work.buffer_3_state_8portas
--				port map (entrada => ("0000000" & flipflopKey0_Out),
--							habilita => enableKey0,
--							saida => Data_In);
		
--key1Tristate8 : entity work.buffer_3_state_8portas
--				port map (entrada => ("0000000" & flipflopKey1_Out),
--							habilita => enableKey1,
--							saida => Data_In);

Data_In(0) <= SW(8) when enableSW8 else 'Z';
Data_In(0) <= SW(9) when enableSW9 else 'Z';
Data_In(0) <= flipflopKey0_Out when enableKey0 else 'Z';
Data_In(0) <= flipflopKey1_Out when enableKey1 else 'Z';
Data_In(0) <= (not KEY(2)) when enableKey2 else 'Z';
Data_In(0) <= (not KEY(3)) when enableKey3 else 'Z';
Data_In(0) <= (not FPGA_RESET_N) when enableReset else 'Z';

Data_In <= RAM_Data_Out;
RAM_Data_In <= Data_Out;
HEX_Data <= Data_Out(3 downto 0);

LEDR <= Led9 & Led8 & LedV;

end architecture;