library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logicaDesvio is

    port (entrada_flag : in std_logic;
			 entrada_jeq : in std_logic;
			 entrada_jmp : in std_logic;
			 entrada_ret : in std_logic;
			 entrada_jsr : in std_logic;
			 saida : out std_logic_vector(1 downto 0)
        );
end entity;

architecture comportamento of logicaDesvio is

begin
	saida <= "00" when ((NOT entrada_flag) AND entrada_jeq) else
				"01" when entrada_jmp OR entrada_jsr OR (entrada_jeq AND entrada_flag) else
				"10" when (entrada_ret) else
				"00";
end architecture;