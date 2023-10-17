library ieee;
use ieee.std_logic_1164.all;

entity projeto1 is
  -- Total de bits dos dados, dos  enderecos e das instrucoes
  generic ( dataWidth : natural := 8;
		    addrWidth : natural := 9;
		    instructionWidth : natural := 15;
		    simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic; -- clock de 50 MHz
	FPGA_RESET_N : in std_logic; -- botão de reset
    KEY : in std_logic_vector(3 downto 0); -- 4 botões
	SW : in std_logic_vector(9 downto 0); -- 10 chaves
	 
	LEDR : out std_logic_vector(9 downto 0); -- 10 leds
	--ROM_DataOUT : out std_logic_vector(instructionWidth - 1 downto 0);
	
	--encodedHex0OUT : out std_logic_vector(3 downto 0);
	--encodedHex1OUT : out std_logic_vector(3 downto 0);
	--encodedHex2OUT : out std_logic_vector(3 downto 0);
	--encodedHex3OUT : out std_logic_vector(3 downto 0);
	--encodedHex4OUT : out std_logic_vector(3 downto 0);
	--encodedHex5OUT : out std_logic_vector(3 downto 0);
	--HEX_DataOUT : out std_logic_vector(3 downto 0);
	--Data_OutOUT : out std_logic_vector(dataWidth - 1 downto 0);
	--Data_InOUT : out std_logic_vector(dataWidth - 1 downto 0);
	
	-- 6 displays de 7 segmentos
	--ROM_AddressOUT : out std_logic_vector(addrWidth - 1 downto 0);
	HEX0: out std_logic_vector(6 downto 0);
	HEX1: out std_logic_vector(6 downto 0);
	HEX2: out std_logic_vector(6 downto 0);
	HEX3: out std_logic_vector(6 downto 0);
	HEX4: out std_logic_vector(6 downto 0);
	HEX5: out std_logic_vector(6 downto 0)
	--enableLed9OUT : out std_logic;
	--		enableLed8OUT : out std_logic;
	--		enableLedVectorOUT : out std_logic;
	--		
	--		enableMemRamOUT : out std_logic;file:///home/victor/insper/6-sem/descomp/projeto1/Waveform.vwf

	--		
	--		enableHEX0OUT : out std_logic;
	--		enableHEX1OUT : out std_logic;
	--		enableHEX2OUT : out std_logic;
	--		enableHEX3OUT : out std_logic;
	--		enableHEX4OUT : out std_logic;
	--		enableHEX5OUT : out std_logic;
	--		
	--		enableSWVectorOUT : out std_logic;
	--		enableSW8OUT : out std_logic;
	--		enableSW9OUT : out std_logic;
	--		
	--		enableKey0OUT : out std_logic;
	--		enableKey1OUT : out std_logic;
	--		enableKey2OUT : out std_logic;
	--		enableKey3OUT : out std_logic;
	--		enableResetOUT : out std_logic;
	--		clearReadKey0OUT : out std_logic;
	--		clearReadKey1OUT : out std_logic
	--Bloco_Reg_Out : out std_logic_vector (dataWidth-1 downto 0)
	--key0_OUT : out std_logic;
  );
end entity;


architecture arquitetura of projeto1 is

  signal ROM_Data : std_logic_vector(instructionWidth - 1 downto 0); -- Instrução que sai da ROM
  
  signal Led9 : std_logic; -- Led9, Led8 e LedV são os leds da placa.
  signal Led8 : std_logic; -- Serão usados para mostrar o valor de LEDR.
  signal LedV : std_logic_vector(dataWidth-1 downto 0);
  signal Bloco_Reg_In : std_logic_vector(dataWidth-1 downto 0);
  
  signal ROM_Address : std_logic_vector(addrWidth - 1 downto 0); -- Endereço da ROM
  
  signal RAM_Data_Out : std_logic_vector(dataWidth - 1 downto 0); -- Dado que sai da RAM
  signal RAM_Data_In : std_logic_vector(dataWidth - 1 downto 0); -- Dado que entra na RAM
  signal Data_In : std_logic_vector(dataWidth - 1 downto 0); -- Dado que entra na CPU
  signal Data_Out : std_logic_vector(dataWidth - 1 downto 0); -- Dado que sai da CPU
  
  signal enableMemRam : std_logic; -- Habilita a leitura ou escrita na memória RAM

  signal Data_Address : std_logic_vector(addrWidth-1 downto 0); -- Endereço dos blocos de memória a ser decodificado
  alias RAM_Address : std_logic_vector(5 downto 0) is Data_Address(5 downto 0); -- Endereço da RAM decodificada pelo blocoDecoder
  
  alias Led98_In : std_logic is RAM_Data_In(0);
  
  signal CLK : std_logic; -- Clock que será usado na CPU
  
  signal enableReadMem : std_logic; -- Habilita a leitura da memória RAM
  signal enableWriteMem : std_logic; -- Habilita a escrita na memória RAM
  
  signal enableLed9 : std_logic; -- Habilita o Led9
  signal enableLed8 : std_logic; -- Habilita o Led8
  signal enableLedVector : std_logic; -- Habilita o LedV
  
  signal encodedHex0 : std_logic_vector(3 downto 0); -- Valor que vai ser mostrado no display 0
  signal enableHex0 : std_logic; -- Habilita o display 0

  signal encodedHex1 : std_logic_vector(3 downto 0); -- Valor que vai ser mostrado no display 1
  signal enableHex1 : std_logic; -- Habilita o display 1
  
  signal encodedHex2 : std_logic_vector(3 downto 0); -- Valor que vai ser mostrado no display 2
  signal enableHex2 : std_logic; -- Habilita o display 2
  
  signal encodedHex3 : std_logic_vector(3 downto 0); -- Valor que vai ser mostrado no display 3
  signal enableHex3 : std_logic; -- Habilita o display 3
  
  signal encodedHex4 : std_logic_vector(3 downto 0); -- Valor que vai ser mostrado no display 4
  signal enableHex4 : std_logic; -- Habilita o display 4
  
  signal encodedHex5 : std_logic_vector(3 downto 0); -- Valor que vai ser mostrado no display 5
  signal enableHex5 : std_logic; -- Habilita o display 5
  
  signal enableKey0 : std_logic; -- Habilita o botão 0
  signal enableKey1 : std_logic; -- Habilita o botão 1
  signal enableKey2 : std_logic; -- Habilita o botão 2
  signal enableKey3 : std_logic; -- Habilita o botão 3
  signal enableReset : std_logic; -- Habilita o botão de reset
  
  signal enableSW8 : std_logic; -- Habilita a chave 8
  signal enableSW9 : std_logic; -- Habilita a chave 9
  signal enableSWVector : std_logic; -- Habilita o vetor de chaves
  
  signal HEX_Data : std_logic_vector(3 downto 0); -- Dado que vai ser mostrado nos displays de 7 segmentos
  
  signal clearReadKey0 : std_logic; -- Sinal que limpa o flipflop_key0
  signal clearReadKey1 : std_logic; -- Sinal que limpa o flipflop_key1
  
  signal flipflopKey0_Out : std_logic; -- Sinal que sai do flipflop do botão 0
  signal flipflopKey1_Out : std_logic; -- Sinal que sai do flipflop do botão 1
  
  signal edgeDet_Key0_Out : std_logic; -- Sinal que sai do edgeDetector do botão 0
  signal edgeDet_Key1_Out : std_logic; -- Sinal que sai do edgeDetector do botão 1
  
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
	CLK <= KEY(3); -- Para simular, o clock é o botão 0
else generate
	detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => CLK);
	--CLK <= CLOCK_50;
end generate;


-- Memoria ROM
ROM1 : entity work.memoriaROM   generic map (dataWidth => instructionWidth, addrWidth => addrWidth)
          port map (Endereco => ROM_Address,
						  Dado => ROM_Data);

-- Memoria RAM
RAM1 : entity work.memoriaRAM	  generic map (dataWidth => dataWidth, addrWidth => 6)
				port map (addr => RAM_Address,
							 we => enableWriteMem,
							 re => enableReadMem,
							 habilita => enableMemRam,
							 clk => CLK,
							 dado_in => RAM_Data_In,
							 dado_out => RAM_Data_Out);

-- Decodificador de blocos de endereços
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
							 clearReadKey0 => clearReadKey0,
							 clearReadKey1 => clearReadKey1);

-- CPU com a ULA, program counters, decoder de instruções, desvio de intruções e bloco de registradores
CPU : entity work.cpu	generic map (dataWidth => dataWidth, addrWidth => addrWidth, instructionWidth => instructionWidth)
				port map (CLK => CLK,
							 RST => '0',
							 Rd => enableReadMem,
							 Wd => enableWriteMem,
							 ROM_Address => ROM_Address,
							 ROM_Data => ROM_Data,
							 Data_Address => Data_Address,
							 Data_In => Data_In,
							 Data_Out => Data_Out,--);
							 Bloco_Reg_In => Bloco_Reg_In);

-- FlipFlops para guardar valor do led9
FlipFlop9 : entity work.FlipFlop
				port map (DIN => Led98_In,
							 DOUT => Led9,
							 ENABLE => enableLed9,
							 CLK => CLK,
							 RST => '0');

-- FlipFlops para guardar valor do led8
FlipFlop8 : entity work.FlipFlop
				port map (DIN => Led98_In,
							 DOUT => Led8,
							 ENABLE => enableLed8,
							 CLK => CLK,
							 RST => '0');

-- Registrador para guardar valor do vetor de leds
RegisterVector : entity work.registradorGenerico
				port map (DIN => Bloco_Reg_In,--RAM_Data_In,
							 DOUT => LedV,
							 ENABLE => '1',--enableLedVector,
							 CLK => CLK,
							 RST => '0');

-- Registrador para guardar valor do display0 de 7 segmentos
RegisterHEX0 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex0,
							 ENABLE => enableHex0,
							 CLK => CLK,
							 RST => '0');							 

-- Conversor de hexadecimal para 7 segmentos para o display0
HexDisplay0 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex0,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX0);

-- Registrador para guardar valor do display1 de 7 segmentos
RegisterHEX1 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex1,
							 ENABLE => enableHex1,
							 CLK => CLK,
							 RST => '0');	

-- Conversor de hexadecimal para 7 segmentos para o display1
HexDisplay1 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex1,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX1);

-- Registrador para guardar valor do display2 de 7 segmentos
RegisterHEX2 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex2,
							 ENABLE => enableHex2,
							 CLK => CLK,
							 RST => '0');				

-- Conversor de hexadecimal para 7 segmentos para o display2
HexDisplay2 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex2,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX2);

-- Registrador para guardar valor do display3 de 7 segmentos
RegisterHEX3 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex3,
							 ENABLE => enableHex3,
							 CLK => CLK,
							 RST => '0');

-- Conversor de hexadecimal para 7 segmentos para o display3
HexDisplay3 :  entity work.conversorHex7Seg
        port map(dadoHex => encodedHex3,
					  apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX3);

-- Registrador para guardar valor do display4 de 7 segmentos
RegisterHEX4 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex4,
							 ENABLE => enableHex4,
							 CLK => CLK,
							 RST => '0');

-- Conversor de hexadecimal para 7 segmentos para o display4
HexDisplay4 :  entity work.conversorHex7Seg
        port map(dadoHex => ROM_Address(3 downto 0), 
					  --dadoHex => encodedHex4,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX4);

-- Registrador para guardar valor do display5 de 7 segmentos
RegisterHEX5 : entity work.registradorGenerico generic map (larguraDados => 4)
				port map (DIN => HEX_Data,
							 DOUT => encodedHex5,
							 ENABLE => enableHex5,
							 CLK => CLK,
							 RST => '0');					  
					  
-- Conversor de hexadecimal para 7 segmentos para o display5
HexDisplay5 :  entity work.conversorHex7Seg
        port map(dadoHex => ROM_Address(7 downto 4),
					  --dadoHex => encodedHex5,
                 apaga => '0',
                 negativo => '0',
                 overFlow => '0',
                 saida7seg => HEX5);
					  
-- Habilitador da leitura das chaves de 0 a 7. Guarda valor em Data_In, entrada de dados da CPU
Buffer3State8 : entity work.buffer_3_state_8portas
			port map(entrada => SW(7 downto 0),
						habilita => enableSWVector,
						saida => Data_In);

-- Detecta borda de subida no botão 0
detectorKey0: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(0)), saida => edgeDet_Key0_Out);

-- Detecta borda de subida no botão 1
detectorKey1: work.edgeDetector(bordaSubida)
        port map (clk => CLK, entrada => (not KEY(1)), saida => edgeDet_Key1_Out);
		  
-- FlipFlops para guardar valor do botão 0
FlipFlop_Key0 : entity work.FlipFlop
				port map (DIN => '1',
							 DOUT => flipflopKey0_Out,
							 ENABLE => '1',
							 CLK => edgeDet_Key0_Out,
							 RST => clearReadKey0);

-- FlipFlops para guardar valor do botão 1
FlipFlop_Key1 : entity work.FlipFlop
				port map (DIN => '1',
							 DOUT => flipflopKey1_Out,
							 ENABLE => '1',
							 CLK => edgeDet_Key1_Out,
							 RST => clearReadKey1);		 

-- Preenche o valor de Data_In com a saída dos componentes 
-- que são mapeados pelos blocos de memória. Data_In é recebe
-- a saída do componente no bloco e endereço codificado por
-- Data_Address.
Data_In(0) <= SW(8) when enableSW8 else 'Z';
Data_In(0) <= SW(9) when enableSW9 else 'Z';
Data_In(0) <= (not KEY(0)) when enableKey0 else 'Z';
--Data_In(0) <= flipflopKey0_Out when enableKey0 else 'Z';
Data_In(0) <= (not KEY(1)) when enableKey1 else 'Z';
--Data_In(0) <= flipflopKey1_Out when enableKey1 else 'Z';
Data_In(0) <= (not KEY(2)) when enableKey2 else 'Z';
Data_In(0) <= (not KEY(3)) when enableKey3 else 'Z';
Data_In(0) <= (not FPGA_RESET_N) when enableReset else 'Z';
Data_In <= RAM_Data_Out;

-- Guarda o valor de Data_Out na memória RAM
RAM_Data_In <= Data_Out;

-- Guarda o valor de Data_Out no sinal que vai ser mostrado em algum dos displays de 7 segmentos
HEX_Data <= Data_Out(3 downto 0);
--Data_OutOUT <= Data_Out;
--Data_InOUT <= Data_In;

-- Preenche o vetor de leds com os valores de Led9, Led8 e LedV
LEDR <= Led9 & Led8 & LedV;

--ROM_AddressOUT <= ROM_Address; 
--ROM_DataOUT <= ROM_Data;

end architecture;