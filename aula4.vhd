library ieee;
use ieee.std_logic_1164.all;

entity aula4 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 Palavra_Controle : out std_logic_vector (5 downto 0);
	 EntradaB_ULA : out std_logic_vector (7 downto 0)
  );
end entity;


architecture arquitetura of aula4 is

  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_MEM : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  
  signal Sinais_Controle : std_logic_vector (5 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal CLK : std_logic;
  
  signal Reset_A : std_logic;
	 
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal habLeituraMEM : std_logic;
  signal habEscritaMEM : std_logic;
  signal Operacao_ULA : std_logic_vector(1 downto 0);
  
  signal Opcode : std_logic_vector (3 downto 0);
  signal Dado_ROM : std_logic_vector (12 downto 0);
  
  signal Imediato_Valor : std_logic_vector (7 downto 0);
  signal Habilita_MEM : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_MEM,
                 entradaB_MUX =>  Imediato_Valor,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 8)
          port map (Endereco => Endereco, Dado => Dado_ROM);

DECODER : entity work.decoderGeneric
				port map (opcode => Opcode, sinais_controle => Sinais_Controle);
				
RAM1 : entity work.memoriaRAM	  generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos - 1)
				port map (addr => Imediato_Valor, we => habEscritaMEM, re => habLeituraMEM, habilita => Habilita_MEM, clk => CLK, dado_in => REG1_ULA_A, dado_out => Saida_MEM);

selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle (3 downto 2);
habLeituraMEM <= Sinais_Controle(1);
habEscritaMEM <= Sinais_Controle(0);

Opcode <= Dado_ROM(12 downto 9);
Imediato_Valor <= Dado_ROM(7 downto 0);
Habilita_MEM <= Dado_ROM(8);

-- OUT
PC_OUT <= Endereco;
Palavra_Controle <= Sinais_Controle;
EntradaB_ULA <= MUX_REG1;


-- A ligacao dos LEDs:
LEDR (9 downto 8) <= Operacao_ULA;
LEDR (7 downto 0) <= REG1_ULA_A;

end architecture;