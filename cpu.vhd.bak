library ieee;
use ieee.std_logic_1164.all;

entity cpu is
  -- Total de bits das entradas e saidas
  generic (dataWidth : natural := 8;
			  addrWidth : natural := 9;
			  instructionWidth : natural := 13
  );
  
  port   (
    CLK : in std_logic;
	 RST : in std_logic;
	 Rd : out std_logic;
	 Wd : out std_logic;
	 
	 ROM_Address : out std_logic_vector(addrWidth - 1 downto 0);
	 ROM_Data : in std_logic_vector(instructionWidth - 1 downto 0);
	 
	 Gnd : in std_logic;
	 Vcc : in std_logic;
	 
	 Data_Address : out std_logic_vector(addrWidth - 1 downto 0);
	 RAM_Data_Out : in std_logic_vector(dataWidth - 1 downto 0);
	 RAM_Data_In : out std_logic_vector(dataWidth - 1 downto 0)
  );
end entity;

architecture arquitetura of cpu is

	signal controlSignal : std_logic_vector (11 downto 0);

	alias ROM_Data_ImmValue : std_logic_vector(dataWidth - 1 downto 0) is ROM_Data(dataWidth - 1 downto 0);

	alias ROM_Data_ImmValue_Jmp : std_logic_vector(addrWidth-1 downto 0) is ROM_Data(addrWidth-1 downto 0);
	alias opcode : std_logic_vector(3 downto 0) is ROM_Data(12 downto 9);
	
	alias enableFlagEqual : std_logic is controlSignal(2);
	alias ULA_Operation : std_logic_vector(1 downto 0) is controlSignal(4 downto 3);
	alias enableRegA : std_logic is controlSignal(5);
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

-- O port map completo do Mux.
Mux_EntradaB_ULA :  entity work.MuxGenerico2x1  generic map (larguraDados => dataWidth)
        port map( entradaA_Mux => RAM_Data_Out,
                 entradaB_Mux =>  ROM_Data_ImmValue,
                 seletor_Mux => selMux,
                 saida_Mux => ULA_Data_In_Mux);

-- O port map completo do Acumulador.
Reg_A : entity work.registradorGenerico   generic map (larguraDados => dataWidth)
          port map (DIN => ULA_Data_Out, 
						  DOUT => ULA_Data_In_Reg_A,
						  ENABLE => enableRegA,
						  CLK => CLK,
						  RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN =>  nextProgramAddress,
						  DOUT => programAddress,
						  ENABLE => '1',
						  CLK => CLK,
						  RST => '0');
			 
Reg_Retorno : entity work.registradorGenerico   generic map (larguraDados => addrWidth)
          port map (DIN => incrementedAddress,
						  DOUT => returnedAddress,
						  ENABLE => enableWriteReturn,
						  CLK => CLK,
						  RST => '0');

incrementa_PC :  entity work.somaConstante  generic map (larguraDados => addrWidth, constante => 1)
			 port map (entrada => programAddress,
						  saida => incrementedAddress);

Mux_Prox_PC : entity work.MuxGenerico4x1 generic map (larguraDados => dataWidth + 1)
        port map (entrada0_Mux => incrementedAddress,
                  entrada1_Mux =>  ROM_Data_ImmValue_Jmp,
					   entrada2_Mux => returnedAddress,
					   entrada3_Mux => (others => '0'),
                  seletor_Mux => logicalDeviation_Out,
                  saida_Mux =>  nextProgramAddress);

Flag_Equal : entity work.FlipFlop
		  port map (DIN => Flag_In,
					   DOUT => Flag_Out,
					   ENABLE => enableFlagEqual,
					   CLK => CLK,
					   RST => '0');
		  
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

Dec_Instruction : entity work.decoderGeneric
				port map (opcode => opcode,
							 sinais_controle => controlSignal);

-- Saidas da CPU

RAM_Data_In <= ULA_Data_In_Reg_A;
Data_Address <= ROM_Data(addrWidth - 1 downto 0);
ROM_Address <= programAddress;
Rd <= controlSignal(1);
Wd <= controlSignal(0);

end architecture;