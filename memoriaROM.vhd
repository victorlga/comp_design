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
		tmp(0)  := LDI & "00" & '0' & x"03";
		tmp(1)  := STA & "00" & '1' & x"20";
		tmp(2)  := SUB & "00" & '0' & x"01";
		tmp(3)  := STA & "00" & '1' & x"20"; 
		tmp(1)  := STA & "00" & '0' & x"02";
		tmp(4)  := SUB & "00" & '0' & x"02";
		tmp(5)  := STA & "00" & '1' & x"20";
		--tmp(4)  := LDI & "10" & '0' & x"04";
		--tmp(5)  := STA & "10" & '1' & x"23";
		--tmp(6)  := LDI & "10" & '0' & x"03"; -- Ao inves de 4 aparece 2. ao inv´es de 8 aparece 3
		--tmp(7)  := STA & "10" & '1' & x"23";
		--tmp(8)  := SUB & "00" & '0' & x"01";
		--tmp(9)  := STA & "00" & '1' & x"22";
--		--tmp(9)  := NOP & "00" & '0' & x"00";
		--tmp(10)  := NOP & "00" & '0' & x"00";
		--tmp(11)  := LDI & "01" & '0' & x"00";
		--tmp(12)  := STA & "01" & '1' & x"21";
		
--      tmp(0)  := STA & "00" & '1' & x"FF";
		--tmp(1)  := LDI & "00" & '0' & x"01";
		--tmp(2)  := STA & "00" & '0' & x"01";
		--tmp(3)  := NOP & "00" & '0' & x"00";
		--tmp(4)  := LDA & "00" & '1' & x"60";
		--tmp(5)  := STA & "00" & '1' & x"20";
		--tmp(6)  := ANND & "00" & '0' & x"02";
		--tmp(7)  := STA & "00" & '1' & x"21";
		--tmp(8)  := NOP & "00" & '0' & x"00";
		tmp(6)  := JMP & "00" & '0' & x"00";
                    
                 

      return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;
