/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include "funcoes.inc"
#include "Subrotinas.inc"
/'
ษออออออออออออออออออออออออออออออออออออออออป
บ   Variaveis do Systema                 บ
ศออออออออออออออออออออออออออออออออออออออออผ'/
dim shared as string _Compilador, _LC

_Compilador= NomePrograma(command(0))
/'
ษออออออออออออออออออออออออออออออออออออออออป
บ Verifica se tem argumentos             บ
ศออออออออออออออออออออออออออออออออออออออออผ'/
if __FB_ARGC__ > 1 then 
 _LC = LinhaDeComando(__FB_ARGC__)
end if





