library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Bloco de registradores para arquitetura Registrado-Memoria
entity blocoRegistrador is
    generic (
        larguraDados : natural := 8
    );
    port (DIN : in std_logic_vector(larguraDados-1 downto 0);
       	  DOUT : out std_logic_vector(larguraDados-1 downto 0);
          ENABLE : in std_logic;
		  ADDR : in std_logic_vector(1 downto 0);
          CLK,RST : in std_logic
        );
end entity;

architecture comportamento of blocoRegistrador is

	signal enableReg0 : std_logic;
	signal enableReg1 : std_logic;
	signal enableReg2 : std_logic;
	signal enableReg3 : std_logic;
	
	signal DOUT0 : std_logic_vector(larguraDados-1 downto 0);
	signal DOUT1 : std_logic_vector(larguraDados-1 downto 0);
	signal DOUT2 : std_logic_vector(larguraDados-1 downto 0);
	signal DOUT3 : std_logic_vector(larguraDados-1 downto 0);
	

begin
	
	-- 4 registradores do bloco
	REG0: entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN,
						  DOUT => DOUT0,
						  ENABLE => enableReg0,
						  CLK => CLK,
						  RST => '0');
	
	REG1: entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN,
						  DOUT => DOUT1,
						  ENABLE => enableReg1,
						  CLK => CLK,
						  RST => '0');
						  
	REG2: entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN,
						  DOUT => DOUT2,
						  ENABLE => enableReg2,
						  CLK => CLK,
						  RST => '0');
						  
	REG3: entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => DIN,
						  DOUT => DOUT3,
						  ENABLE => enableReg3,
						  CLK => CLK,
						  RST => '0');
	
	-- Seleciona o registrador que o valor sera lido na ULA 
	MUX_DOUT: entity work.muxGenerico4x1	generic map (larguraDados => larguraDados)
			port map (entrada0_MUX => DOUT0, 
						 entrada1_MUX => DOUT1, 
						 entrada2_MUX => DOUT2,
						 entrada3_MUX => DOUT3,
						 seletor_MUX => ADDR,
						 saida_MUX => DOUT);
	
	-- Decodifica o endereço para habilitar o registrador correto
	enableReg0 <= (not ADDR(1)) and (not ADDR(0)) and ENABLE;
	enableReg1 <= (not ADDR(1)) and ADDR(0) and ENABLE;
	enableReg2 <= ADDR(1) and (not ADDR(0)) and ENABLE;
	enableReg3 <= ADDR(1) and ADDR(0) and ENABLE;
	
end architecture;
