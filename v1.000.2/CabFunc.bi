/'caracteres em OEM
╔═════════════════════════════════════════════════════════╗
║ Arquivo: CadFiv.bi   cabeçalho de funçoes               ║
╠═════════════════════════════════════════════════════════╣
║ Variaveis, funçoes e rotinas                            ║
╚═════════════════════════════════════════════════════════╝'/

dim shared Indice as integer = 0
dim shared Ldigitada as string ' Linha de comandos figitadas
dim shared as string versao 
dim shared as string _compilador

/'
╔═════════════════════════════════════════════════════════╗
║   Declaraçoes estao aqui.                               ║
╚═════════════════════════════════════════════════════════╝'/
'==> funçoes
declare Function principal() as integer
declare function NomePrograma(Nome as string) as string
declare function Enumero(Letras as string) as boolean  
declare function Ealfanum(Caracter as string) as boolean 
declare function Ealfa(Caracter as string) as boolean
'==> Subrotinas
declare sub Pausa()
declare sub Fim()
/' 
╔═════════════════════════════════════════════════════════╗
║ Inicializaçao e atribuiçao iniciais                     ║
╚═════════════════════════════════════════════════════════╝'/
_Compilador = NomePrograma(command(0))
/' 
╔═════════════════════════════════════════════════════════╗
║ #Include arquivos aqui                                  ║
╚═════════════════════════════════════════════════════════╝'/
#include "funcoes.inc"
#include "Subrotinas.inc"



