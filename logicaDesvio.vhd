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
	saida(0) <= entrada_jmp or (entrada_jeq and entrada_flag) or entrada_jsr;
	saida(1) <= entrada_ret;
end architecture;