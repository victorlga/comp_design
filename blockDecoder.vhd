library ieee;
use ieee.std_logic_1164.all;

entity blockDecoder is
  port ( Data_Address : in std_logic_vector(8 downto 0);
			enableWriteMem : in std_logic;
			enableLed9 : out std_logic;
			enableLed8 : out std_logic;
			enableLedVector : out std_logic;
			enableMemRam : out std_logic
  );
end entity;

architecture comportamento of blockDecoder is

	signal memoryBlock : std_logic_vector(7 downto 0);
	signal ledSelector : std_logic_vector(7 downto 0);

	signal blockAddress : std_logic_vector(2 downto 0);
	signal ledValue : std_logic_vector(2 downto 0);
	
begin
	
DECLED : entity work.decoder3x8
				port map (entrada => ledValue,
							 saida => ledSelector);

DECADDR : entity work.decoder3x8
				port map (entrada => blockAddress,
							 saida => memoryBlock);

blockAddress <= Data_Address(8 downto 6);			 
ledValue <= Data_Address(2 downto 0);

enableLed9 <= (enableWriteMem and memoryBlock(4) and ledSelector(2));
enableLed8 <= (enableWriteMem and memoryBlock(4) and ledSelector(1));
enableLedVector <= (enableWriteMem and memoryBlock(4) and ledSelector(0));
enableMemRam <= memoryBlock(0);

end architecture;