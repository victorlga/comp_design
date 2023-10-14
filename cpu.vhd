library ieee;
use ieee.std_logic_1164.all;

entity cpu is
  -- Total de bits das entradas e saidas
  generic (dataWidth : natural := 8;
			  addrWidth : natural := 9;
			  instructionWidth : natural := 15
  );
  
  port   (
    CLK : in std_logic;
	 RST : in std_logic;
	 Rd : out std_logic;
	 Wd : out std_logic;
	 
	 ROM_Address : out std_logic_vector(addrWidth - 1 downto 0);
	 ROM_Data : in std_logic_vector(instructionWidth - 1 downto 0);
	 
	 Data_Address : out std_logic_vector(addrWidth - 1 downto 0);
	 Data_In : in std_logic_vector(dataWidth - 1 downto 0);
	 Data_Out : out std_logic_vector(dataWidth - 1 downto 0)
  );
end entity;

architecture arquitetura of cpu is

	signal controlSignal : std_logic_vector (11 downto 0);

	alias ROM_Data_ImmValue : std_logic_vector(dataWidth - 1 downto 0) is ROM_Data(dataWidth - 1 downto 0);
	alias Reg_Address : std_logic_vector(1 downto 0) is ROM_Data(10 downto 9);

	alias ROM_Data_ImmValue_Jmp : std_logic_vector(addrWidth-1 downto 0) is ROM_Data(addrWidth-1 downto 0);
	alias opcode : std_logic_vector(3 downto 0) is ROM_Data(14 downto 11);
	
	alias enableFlagEqual : std_logic is controlSignal(2);
	alias ULA_Operation : std_logic_vector(1 downto 0) is controlSignal(4 downto 3);
	alias enableBlocoReg : std_logic is controlSignal(5);
	alias selMux : std_logic is controlSignal(6);
	alias jeq : std_logic is controlSignal(7);
	alias jsr : std_logic is controlSignal(8);
	alias ret : std_logic is controlSignal(9);
	alias jmp : std_logic is controlSignal(10);
	alias enableWriteReturn : std_logic is controlSignal(11);
	
	signal ULA_Data_In_Mux : std_logic_vector (dataWidth-1 downto 0);
	signal ULA_Data_Out : std_logic_vector (dataWidth-1 downto 0);
	signal ULA_Data_In_Reg_A : std_logic_vector (dataWidth-1 downto 0);
	
	signal nextProgramAddress : std_logic_vector (addrWidth-1 downto 0);
	signal programAddress: std_logic_vector (addrWidth-1 downto 0);
    signal incrementedAddress : std_logic_vector (addrWidth-1 downto 0);
	signal returnedAddress : std_logic_vector (addrWidth-1 downto 0);
	
	signal logicalDeviation_Out : std_logic_vector(1 downto 0);

	signal Flag_In : std_logic;
	signal Flag_Out : std_logic;
	
begin

-- MUX que seleciona qual valor sera usado na entrada A da ULA: valor imediato ou valor da memoria RAM
Mux_EntradaB_ULA :  entity work.MuxGenerico2x1  generic map (larguraDados => dataWidth)
        port map( entradaA_Mux => Data_In,
                 entradaB_Mux =>  ROM_Data_ImmValue,
                 seletor_Mux => selMux,
                 saida_Mux => ULA_Data_In_Mux);

-- O port map completo do bloco de registradores.
Bloco_Reg : entity work.blocoRegistrador   generic map (larguraDados => dataWidth)
          port map (DIN => ULA_Data_Out, 
						  DOUT => ULA_Data_In_Reg_A,
						  ENABLE => enableBlocoReg,
						  ADDR => Reg_Address,
						  CLK => CLK,
						  RST => '0');

-- Registrador que guarda o valor do proximo endereco do programa
PC : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN =>  nextProgramAddress,
						  DOUT => programAddress,
						  ENABLE => '1',
						  CLK => CLK,
						  RST => RST);

-- Registrador que guarda valor do último endereço + 1 antes de chamar uma subrotina
Reg_Retorno : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN => incrementedAddress,
						  DOUT => returnedAddress,
						  ENABLE => enableWriteReturn,
						  CLK => CLK,
						  RST => '0');

-- Adiciona 1 no valor do ultimo endereço do programa usado
incrementa_PC :  entity work.somaConstante  generic map (larguraDados => addrWidth, constante => 1)
			 port map (entrada => programAddress,
						  saida => incrementedAddress);

-- Seleciona qual endereco sera usado no PC (ultimo endereco + 1, endereco de retorno ou endereco de desvio)
Mux_Prox_PC : entity work.MuxGenerico4x1 generic map (larguraDados => dataWidth + 1)
        port map (entrada0_Mux => incrementedAddress,
                  entrada1_Mux =>  ROM_Data_ImmValue_Jmp,
				  entrada2_Mux => returnedAddress,
				  entrada3_Mux => (others => '0'),
                  seletor_Mux => logicalDeviation_Out,
                  saida_Mux =>  nextProgramAddress);						

-- Define o valor da flag que guarda se valores nas entradas da ULA são iguais
Flag_Equal : entity work.FlipFlop
		  port map (DIN => Flag_In,
					   DOUT => Flag_Out,
					   ENABLE => enableFlagEqual,
					   CLK => CLK,
					   RST => '0');

-- Define valor que seleciona qual o proximo endereco do PC no MUX_Prox_PC
Deviation : entity work.logicaDesvio
		  port map (entrada_flag => Flag_Out,
						entrada_jeq => jeq,
						entrada_jmp => jmp,
						entrada_jsr => jsr,
						entrada_ret => ret,
						saida => logicalDeviation_Out);
					  
-- O port map completo da ULA:
ULA : entity work.ULASomaSub  generic map(larguraDados => dataWidth)
          port map (entradaA => ULA_Data_In_Reg_A,
						  entradaB => ULA_Data_In_Mux,
						  saida => ULA_Data_Out,
						  seletor => ULA_Operation,
						  zero => Flag_In);

-- Decodificador de instrucoes, transforma opcode em sinais de controle
Dec_Instruction : entity work.decoderGeneric
				port map (opcode => opcode,
							 sinais_controle => controlSignal);

-- Saidas da CPU

Data_Out <= ULA_Data_In_Reg_A;
Data_Address <= ROM_Data(addrWidth - 1 downto 0);
ROM_Address <= programAddress;

Rd <= controlSignal(1);
Wd <= controlSignal(0);

end architecture;