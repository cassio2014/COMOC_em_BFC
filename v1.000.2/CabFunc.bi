/'caracteres em OEM
���������������������������������������������������������ͻ
� Arquivo: CadFiv.bi   cabe�alho de fun�oes               �
���������������������������������������������������������͹
� Variaveis, fun�oes e rotinas                            �
���������������������������������������������������������ͼ'/

dim shared Indice as integer = 0
dim shared Ldigitada as string ' Linha de comandos figitadas
dim shared as string versao 
dim shared as string _compilador

/'
���������������������������������������������������������ͻ
�   Declara�oes estao aqui.                               �
���������������������������������������������������������ͼ'/
'==> fun�oes
declare Function principal() as integer
declare function NomePrograma(Nome as string) as string
declare function Enumero(Letras as string) as boolean  
declare function Ealfanum(Caracter as string) as boolean 
declare function Ealfa(Caracter as string) as boolean
'==> Subrotinas
declare sub Pausa()
declare sub Fim()
/' 
���������������������������������������������������������ͻ
� Inicializa�ao e atribui�ao iniciais                     �
���������������������������������������������������������ͼ'/
_Compilador = NomePrograma(command(0))
/' 
���������������������������������������������������������ͻ
� #Include arquivos aqui                                  �
���������������������������������������������������������ͼ'/
#include "funcoes.inc"
#include "Subrotinas.inc"



