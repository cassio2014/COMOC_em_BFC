/'
���������������������������������������������������ͻ
� Arquivo: CadFiv.bi   cabe�alho de fun�oes         �
���������������������������������������������������ͼ'/
dim shared as string _Compilador, _LC
#include "funcoes.inc"
#include "Subrotinas.inc"
/'
����������������������������������������ͻ
�   Variaveis do Systema                 �
����������������������������������������ͼ'/
_Compilador= NomePrograma(command(0))
_LC = " "
/'
����������������������������������������ͻ
� Verifica se tem argumentos             �
����������������������������������������ͼ'/

_LC =  LinhaDeComando(__FB_ARGC__)
if _LC <> "-r" then
    Print
    Print "Pressione qualquer tecla para continuar. . ..";
    Sleep
    cls
end if





