library ieee;
use ieee.std_logic_1164.all;

entity aula7 is
  -- Total de bits das entradas e saidas
  generic (dataWidth : natural := 8;
			  addrWidth : natural := 9;
			  instructionWidth : natural := 13;
			  simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY : in std_logic_vector(3 downto 0);
	 LEDR : out std_logic_vector(9 downto 0);
	 PC_OUT: out std_logic_vector(addrWidth-1 downto 0);
	 MEM_Addr: out std_logic_vector(addrWidth-1 downto 0);
	 MEM_Data: out std_logic_vector(dataWidth-1 downto 0)
  );
end entity;


architecture arquitetura of aula7 is

  signal ROM_Data : std_logic_vector(instructionWidth - 1 downto 0);
  
  signal Led9 : std_logic;
  signal Led8 : std_logic;
  signal LedV : std_logic_vector(dataWidth-1 downto 0);
  
  signal ROM_Address : std_logic_vector(addrWidth - 1 downto 0);
  
  signal RAM_Data_Out : std_logic_vector(dataWidth - 1 downto 0);
  signal RAM_Data_In : std_logic_vector(dataWidth - 1 downto 0);
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

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
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
							 enableMemRam => enableMemRam,
							 enableLed9 => enableLed9,
							 enableLed8 => enableLed8,
							 enableLedVector => enableLedVector);
							 
CPU : entity work.cpu	generic map (dataWidth => dataWidth, addrWidth => addrWidth, instructionWidth => 13)
				port map (CLK => CLK,
							 RST => '0',
							 Rd => enableReadMem,
							 Wd => enableWriteMem,
							 ROM_Address => ROM_Address,
							 ROM_Data => ROM_Data,
							 Gnd => '0',
							 Vcc => '1',
							 Data_Address => Data_Address,
							 RAM_Data_Out => RAM_Data_Out,
							 RAM_Data_In => RAM_Data_In);
							 
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
							 


LEDR <= Led9 & Led8 & LedV;
PC_OUT <= ROM_Address;
MEM_Data <= RAM_Data_In;
MEM_Addr <= Data_Address;

end architecture;