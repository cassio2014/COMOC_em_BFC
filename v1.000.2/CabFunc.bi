/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes               บ
ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
บ Variaveis, funoes e rotinas                            บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/

dim shared Indice as integer = 0
dim shared Ldigitada as string ' Linha de comandos figitadas
dim shared as string versao 
dim shared as string _compilador

/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ   Declaraoes estao aqui.                               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
'==> funoes
declare Function principal() as integer
declare function NomePrograma(Nome as string) as string
declare function Enumero(Letras as string) as boolean  
declare function Ealfanum(Caracter as string) as boolean 
declare function Ealfa(Caracter as string) as boolean
'==> Subrotinas
declare sub Pausa()
declare sub Fim()
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Inicializaao e atribuiao iniciais                     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
_Compilador = NomePrograma(command(0))
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ #Include arquivos aqui                                  บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include "funcoes.inc"
#include "Subrotinas.inc"



