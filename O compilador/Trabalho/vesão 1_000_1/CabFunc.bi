/'caracteres em OEM
���������������������������������������������������ͻ
� Arquivo: CadFiv.bi   cabe�alho de fun�oes         �
���������������������������������������������������ͼ
����������������������������������������ͻ
� Variaveis fun�oes e rotinas            �
����������������������������������������ͼ'/
' ===>  _LC_ Type para a Linha de Comando 
type _LC_ 
    Arg01 as string *2
    arg02 as string
end type
/'
===> LC contem :
     LC.ARG01 = 2 Caracteres 
     LC.ARG02 = <Arquivo>.coc
'/
dim shared as _LC_ LC


'==> _Compilador = Nome do Programa
dim shared as string _Compilador
/'
���������������������������������������������������ͻ
�   Declara�oes estao aqui.                         �
���������������������������������������������������ͼ'/
declare Function Main() as integer
declare function NomePrograma(Nome as string) as string
declare sub Pausa 
declare sub Fim
/' 
���������������������������������������������������ͻ
� #Include arquivos aqui                            �
���������������������������������������������������ͼ'/
#include "funcoes.inc"
#include "Subrotinas.inc"

/' 
���������������������������������������������������ͻ
� Inicializa�ao e atribui�ao iniciais               �
���������������������������������������������������ͼ'/
_Compilador= NomePrograma(command(0))
