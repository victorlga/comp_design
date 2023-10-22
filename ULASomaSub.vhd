library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 8 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		zero:		 out std_logic;
		menor:	 out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is

   signal soma :      		STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : 		STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal annd : 		 		STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal passa : 	 		STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal sub_sinal :	STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	
    begin
      soma     		<= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao 		<= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		sub_sinal 		<= STD_LOGIC_VECTOR(signed(entradaA) - signed(entradaB));
		annd			   <= STD_LOGIC_VECTOR(unsigned(entradaA) and unsigned(entradaB));
		passa				<= entradaB;
		
      saida <= soma when (seletor = "001") else
          subtracao when (seletor = "000") else
			 passa 	  when (seletor = "010") else 
			 annd 	  when (seletor = "011") else 
			 sub_sinal when (seletor = "100") else
			 passa;
			 
		zero <= not (saida(7) or saida(6) or saida(5) or saida(4) or saida(3) or saida(2) or saida(1) or saida(0));
		menor <= saida(7);
		
end architecture;