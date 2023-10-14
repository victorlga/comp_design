"""
- Criado em 07/Fevereiro/2022
- Atualizado em 13/10/2023

@autor: Marco Mello e Paulo Santos
@adaptado: Victor Assis e Antônio Amaral

Regras:

1) O Arquivo ASM.txt não pode conter linhas iniciadas com caracteres ' ' ou '\n')
2) Linhas somente com comentários são excluídas 
3) Instruções sem comentário no arquivo ASM receberão como comentário no arquivo BIN a própria instrução
4) Chamadas de label devem ser iniciadas com "."
5) Definição de label devem ser finalizadas com ":"
6) A instrução deve seguir a estrutura Opcode + Registrador + Imediato
7) Exemplo de codigo invalido:
                            0.___JSR @14 #comentario1
                            1.___#comentario2           << Invalido ( Linha somente com comentário )
                            2.___                       << Invalido ( Linha vazia )
                            3.___JMP @5  #comentario3
                            4.___JEQ @9
                            5.___NOP
                            6.___label0                 << Invalido ( Definição de label sem ":")
                            7.___                       << Invalido ( Linha vazia )
                            8.___ LDI REG3 $5           << Invalido ( Linha iniciada com espaço (' ') )
                            9.___STA REG3 @00
                            10.__CEQ REG3 @0
                            11.__JMP @2  #comentario4
                            12.__NOP
                            13.__ LDI REG0 $4           << Invalido ( Linha iniciada com espaço (' ') )
                            14.__CEQ @0 REQ0            << Invalido ( Ordem de registrador e imediato invertida )
                            15.__JEQ label0             << Invalido ( Chamada de label sem ".")
                            16.__#comentario5           << Invalido ( Linha somente com comentário )
                            17.__JMP @13
                            18.__NOP
                            19.__RET
                                
5) Exemplo de código válido (Arquivo ASM.txt):
                            0.__JSR @14	    #Deve desviar para a posição 14
                            1.__JMP @5	    #Deve desviar para a posição 5
                            2.__JEQ @9	    #Deve desviar para a posição 9 
                            3.__label0:     #Define o label0
                            4.__NOP
                            5.__LDI REG3 $5	#Carrega acumulador com valor 5 
                            6.__STA REG3 @0	#Armazena 5 na posição 0 da memória 
                            7.__CEQ REG3 @0	#A Comparação deve fazer o flagIgual ser 1 
                            8.__JMP @2	    #Vai testar o flagIgual depois do jump
                            9.__NOP
                            10._LDI REG0 $4	#Carrega acumulador com valor 4 
                            11._CEQ REG0 @0	#Compara com valor 5, deve fazer o flagIgual ser 0 
                            12._JEQ .label0	#Não deve ocorrer o desvio, mas o desvio seria para label0
                            13._JMP @13	    #Fim. Deve ficar neste laço 
                            14._NOP
                            15._RET		    #Retorna para a posição 1
                            
6) Resultado do código válido (Arquivo BIN.txt):
                            0.__tmp(0) := x"9" & "00" & '0' & x"0E";
                            1.__tmp(1) := x"6" & "00" & '0' & x"05";
                            2.__tmp(2) := x"7" & "00" & '0' & x"09"; 
                            3.__tmp(3) := x"0" & "00" & '0' & x"00";
                            4.__tmp(4) := x"0" & "00" & '0' & x"00";
                            5.__tmp(5) := x"4" & "11" & '0' & x"00"; 
                            6.__tmp(6) := x"5" & "11" & '0' & x"00"; 
                            7.__tmp(7) := x"8" & "11" & '0' & x"00"; 
                            8.__tmp(8) := x"6" & "00" & '0' & x"02";
                            9.__tmp(9) := x"0" & "00" & '0' & x"00";
                            10._tmp(10) := x"4" & "00" & '0' & x"00"; 
                            11._tmp(11) := x"8" & "00" & '0' & x"00"; 
                            12._tmp(12) := x"7" & "00" & '0' & x"03"; 
                            13._tmp(13) := x"6" & "00" & '0' & x"0D"; 
                            14._tmp(14) := x"0" & "00" & '0' & x"00";
                            15._tmp(15) := x"A" & "00" & '0' & x"00";

"""


inputASM = 'montador/ASM.txt' #Arquivo de entrada de contém o assembly
outputBIN = 'montador/BIN.txt' #Arquivo de saída que contém o binário formatado para VHDL
outputMIF = 'montador/initROM.mif' #Arquivo de saída que contém o binário formatado para .mif

#definição dos mnemônicos e seus
#respectivo OPCODEs (em Hexadecimal)
mne =	{ 
       "NOP":   "0 ",
       "LDA":   "1 ",
       "SOMA":  "2 ",
       "SUB":   "3 ",
       "LDI":   "4 ",
       "STA":   "5 ",
       "JMP":   "6 ",
       "JEQ":   "7 ",
       "CEQ":   "8 ",
       "JSR":   "9 ",
       "RET":   "A ",
       "ANND":  "B ",
}

#dicionário para armazenar os labels
label = {}

#Converte o valor após o caractere arroba '@'
#em um valor hexadecimal de 2 dígitos (8 bits) e...
#concatena com o bit de habilita 
def  converteArroba(line):
    line = line.split('@')
    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '0' & x\"" + line[1]
    line = ''.join(line)
    return line

#Converte o valor após o caractere arroba '$'
#em um valor hexadecimal de 2 dígitos (8 bits) e...
#concatena com o bit de habilita 
def  converteCifrao(line):
    line = line.split('$')
    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '0' & x\"" + line[1]
    line = ''.join(line)
    return line

#Define a string que representa o comentário
#a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

#Remove o comentário a partir do caractere cerquilha '#',
#deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line

#Consulta o dicionário e "converte" o mnemônico em
#seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line = line.split(' ')
    line[0] = mne[line[0]]
    line = " ".join(line)
    return line

#Verifica se a instrução possui registrador e converte
#o valor do registrador em binário
def trataRegistrador(line):
    if "REG" in line:
        line = line.split("  REG")
        reg = int(line[1][0])
        reg = bin(reg)[2:].zfill(2)
    else:
        line = line.split(' ')
        reg = "00"

    line[1] = "\" & \"" + reg
    line = ''.join(line)
    return line

#Troca os jmp labels por jmp com os endereços de memória
#e substitui labels por nop
def trataLabel(lines):
    cont = 0

    for line in lines:
        line = line.split("#")
        instrucao = line[0]
        if ":" in instrucao:
            instrucao = instrucao.split(":")
            label[instrucao[0]] = str(cont)
            instrucao = "NOP\n"
        
        elif "." in instrucao:
            instrucao = instrucao.split(".")
            label_name = instrucao[1].rstrip("\t")
            instrucao[1] = "@" + label[label_name] + "\t"
            instrucao = ''.join(instrucao)
        
        lines[cont] = instrucao + "#" + line[1] if "#" in lines[cont] else instrucao + "\n"

        cont += 1
        
    return lines
        

#Monta arquivo BIN.txt com o código formatado para VHDL
def montaBIN():
    with open(inputASM, "r") as f: #Abre o arquivo ASM
        lines = f.readlines() #Verifica a quantidade de linhas

    with open(outputBIN, "w+") as f:  #Abre o destino BIN

        cont = 0 #Cria uma variável para contagem

        lines = trataLabel(lines) #Troca os jmp labels por jmp com os endereços de memória e substitui labels por nop

        for line in lines:        
        
            #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
            if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
                line = line.replace("\n", "")
                print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
            
            #Se a linha for válida para conversão, executa
            else:
                comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha.
                instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução.
                
                instrucaoLine = trataMnemonico(instrucaoLine) #Trata o mnemonico.
                instrucaoLine = trataRegistrador(instrucaoLine) #Trata o registrador.

                if '@' in instrucaoLine: #Se encontrar o caractere arroba '@'
                    instrucaoLine = converteArroba(instrucaoLine) #converte o número após o caractere.
                
                elif '$' in instrucaoLine: #Se encontrar o caractere cifrão '$'
                    instrucaoLine = converteCifrao(instrucaoLine) #converte o número após o caractere.
                
                else: #Senão, se a instrução nao possuir nenhum imediato, ou seja, nao conter '@' ou '$'
                    instrucaoLine = instrucaoLine.replace("\n", "") #Remove a quebra de linha
                    instrucaoLine = instrucaoLine + "\" & " + "\'0\' & " + "x\"00" #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                
                line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN

                cont += 1

                f.write(line) #Escreve no arquivo BIN.txt
                #print(line,end = '') #Print apenas para debug

#Monta arquivo initROM.mif com o código formatado para .mif
def montaMIF():
    with open(outputMIF, "r") as f: #Abre o arquivo .mif
        headerMIF = f.readlines() #Faz a leitura das linhas do arquivo,
                                #para fazer a aquisição do header
        
        
    with open(outputBIN, "r") as f: #Abre o arquivo BIN
        lines = f.readlines() #Faz a leitura das linhas do arquivo
        
        
    with open(outputMIF, "w+") as f:  #Abre o destino .mif novamente
                                    #agora para preenchê-lo com o pograma

        cont = 0 #Cria uma variável para contagem
        
        #########################################
        #Preenche com o header lido anteriormente 
        for lineHeader in headerMIF:      
            if cont < 21:           #Contagem das linhas de cabeçalho
                f.write(lineHeader) #Escreve no arquivo se saída .mif o cabeçalho (21 linhas)
            cont = cont + 1         #Incrementa varíavel de contagem
    #-----------------------------------------
    ##########################################
    
        for line in lines: #Varre as linhas do código formatado para a ROM (VHDL)
        
            replacements = [('t', ''), ('m', ''), ('p', ''), ('(', ''), (')', ''), ('=', ''), ('x', ''), ('"', '')] #Define os caracteres que serão excluídos
            
            ##########################################
            #Remove os caracteres que foram definidos
            for char, replacement in replacements:
                if char in line:
                    line = line.replace(char, replacement)
            #-----------------------------------------
            ##########################################
                    
            line = line.split('#') #Remove o comentário da linha
            
            if "\n" in line[0]:
                line = line[0] 
            else:
                line = line[0] + '\n' #Insere a quebra de linha ('\n') caso não tenha

            f.write(line) #Escreve no arquivo initROM.mif
        f.write("END;") #Acrescente o indicador de finalização da memória. (END;)


#Função principal
def main():
    montaBIN()
    ### MIF ainda não diferencia quando deve ser binario ou hexadecimal
    montaMIF()

if __name__ == "__main__":
    main()