/'caracteres em OEM
���������������������������������������������������ͻ
� Arquivo: CadFiv.bi   cabe�alho de fun�oes         �
���������������������������������������������������ͼ
����������������������������������������ͻ
� Variaveis fun�oes e rotinas            �
����������������������������������������ͼ'/
' ===>  LCAG Argumentos para a Linha de Comando 
type LCAG
    AG01 as string * 2 '1� argumento  2 letras
    AG02 as string     '2� argumentro string com o nome
end type

dim shared as string Versao
dim shared as string _Compilador
dim SHARED AS LCAG   _LC

/'
���������������������������������������������������ͻ
�   Declara�oes estao aqui.                         �
���������������������������������������������������ͼ'/
declare Function Main as integer
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
_Compilador = NomePrograma(command(0))
Versao = "v1.000.1"



