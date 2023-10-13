inputASM = 'montador/ASM.txt' #Arquivo de entrada de contém o assembly
outputBIN = 'montador/BIN.txt' #Arquivo de saída que contém o binário formatado para VHDL
outputMIF = 'montador/initROM.mif' #Arquivo de saída que contém o binário formatado para .mif

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

def main():
    montaBIN()
    ### MIF ainda não diferencia quando deve ser binario ou hexadecimal
    montaMIF()

if __name__ == "__main__":
    main()