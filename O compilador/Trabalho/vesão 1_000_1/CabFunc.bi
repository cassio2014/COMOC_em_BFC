/'
���������������������������������������������������ͻ
� Arquivo: CadFiv.bi   cabe�alho de fun�oes         �
���������������������������������������������������ͼ'/
#include "funcoes.inc"
#include "Subrotinas.inc"
/'
�������������������������ͻ
�   Variaveis do Systema  �
�������������������������ͼ'/
dim shared as string _Compilador, _LC

_Compilador= NomePrograma(command(0))
/'
����������������������������������ͻ
� Verifica se tem argumentos       �
����������������������������������ͼ'/
if __FB_ARGC__ > 1 then 
 _LC = LinhaDeComando(__FB_ARGC__)
end if





