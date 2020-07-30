/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include "funcoes.inc"
#include "Subrotinas.inc"
/'
ษอออออออออออออออออออออออออป
บ   Variaveis do Systema  บ
ศอออออออออออออออออออออออออผ'/
dim shared as string _Compilador, _LC

_Compilador= NomePrograma(command(0))
/'
ษออออออออออออออออออออออออออออออออออป
บ Verifica se tem argumentos       บ
ศออออออออออออออออออออออออออออออออออผ'/
if __FB_ARGC__ > 1 then 
 _LC = LinhaDeComando(__FB_ARGC__)
end if





