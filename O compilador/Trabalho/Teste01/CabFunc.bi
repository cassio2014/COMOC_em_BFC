/'
���������������������������������������������������ͻ
� Arquivo: CadFiv.bi   cabe�alho de fun�oes         �
���������������������������������������������������ͼ'/
declare _
  function NomePrograma( Nome as string) as string

declare _
  function LinhaDeComando(NArgu as integer)as string

/'
�������������������������ͻ
�   Variaveis do Systema  �
�������������������������ͼ'/
dim shared as string _
         _Compilador,_
         _LC

_Compilador= NomePrograma(command(0))
/'
����������������������������������ͻ
� Verifica se tem argumentos       �
����������������������������������ͼ'/
if __FB_ARGC__ > 1 then 
 _LC = LinhaDeComando(__FB_ARGC__)
end if





