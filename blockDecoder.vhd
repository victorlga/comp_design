library ieee;
use ieee.std_logic_1164.all;

entity blockDecoder is
  port ( Data_Address : in std_logic_vector(8 downto 0);
			enableWriteMem : in std_logic;
			enableReadMem : in std_logic;
			
			enableLed9 : out std_logic;
			enableLed8 : out std_logic;
			enableLedVector : out std_logic;
			
			enableMemRam : out std_logic;
			
			enableHEX0 : out std_logic;
			enableHEX1 : out std_logic;
			enableHEX2 : out std_logic;
			enableHEX3 : out std_logic;
			enableHEX4 : out std_logic;
			enableHEX5 : out std_logic;
			
			enableSWVector : out std_logic;
			enableSW8 : out std_logic;
			enableSW9 : out std_logic;
			
			enableKey0 : out std_logic;
			enableKey1 : out std_logic;
			enableKey2 : out std_logic;
			enableKey3 : out std_logic;
			enableReset : out std_logic;
			clearRead : out std_logic
  );
end entity;

architecture comportamento of blockDecoder is

	signal memoryBlock : std_logic_vector(7 downto 0);
	signal selector : std_logic_vector(7 downto 0);

	signal blockAddress : std_logic_vector(2 downto 0);
	signal ledValue : std_logic_vector(2 downto 0);
	signal enableHEX : std_logic;
	
begin
	
DEC_UNITY : entity work.decoder3x8
				port map (entrada => ledValue,
							 saida => selector);

DEC_BLOCK : entity work.decoder3x8
				port map (entrada => blockAddress,
							 saida => memoryBlock);

blockAddress <= Data_Address(8 downto 6);			 
ledValue <= Data_Address(2 downto 0);

enableHEX <= Data_Address(5);
enableLed9 <= (enableWriteMem and memoryBlock(4) and selector(2) and (not enableHEX));
enableLed8 <= (enableWriteMem and memoryBlock(4) and selector(1) and (not enableHEX));
enableLedVector <= (enableWriteMem and memoryBlock(4) and selector(0) and (not enableHEX));
enableMemRam <= memoryBlock(0);

enableHEX0 <= (enableWriteMem and memoryBlock(4) and selector(0) and enableHEX);
enableHEX1 <= (enableWriteMem and memoryBlock(4) and selector(1) and enableHEX);
enableHEX2 <= (enableWriteMem and memoryBlock(4) and selector(2) and enableHEX);
enableHEX3 <= (enableWriteMem and memoryBlock(4) and selector(3) and enableHEX);
enableHEX4 <= (enableWriteMem and memoryBlock(4) and selector(4) and enableHEX);
enableHEX5 <= (enableWriteMem and memoryBlock(4) and selector(5) and enableHEX);

enableSWVector <= (enableReadMem and memoryBlock(5) and selector(0) and (not enableHEX));
enableSW8 <= (enableReadMem and memoryBlock(5) and selector(1) and (not enableHEX));
enableSW9 <= (enableReadMem and memoryBlock(5) and selector(2) and (not enableHEX));

enableKey0 <= (enableReadMem and memoryBlock(5) and selector(0) and enableHEX);
enableKey1 <= (enableReadMem and memoryBlock(5) and selector(1) and enableHEX);
enableKey2 <= (enableReadMem and memoryBlock(5) and selector(2) and enableHEX);
enableKey3 <= (enableReadMem and memoryBlock(5) and selector(3) and enableHEX);
enableReset <= (enableReadMem and memoryBlock(5) and selector(4) and enableHEX);

clearRead <= (Data_Address(0) and Data_Address(1) and Data_Address(2) and Data_Address(3) and Data_Address(4) and Data_Address(5) and Data_Address(6) and Data_Address(7) and Data_Address(8) and enableWriteMem);

end architecture;