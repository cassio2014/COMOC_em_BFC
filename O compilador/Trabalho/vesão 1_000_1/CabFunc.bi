/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
dim shared as string _Compilador, _LC
#include "funcoes.inc"
#include "Subrotinas.inc"
/'
ษออออออออออออออออออออออออออออออออออออออออป
บ   Variaveis do Systema                 บ
ศออออออออออออออออออออออออออออออออออออออออผ'/
_Compilador= NomePrograma(command(0))
_LC = " "
/'
ษออออออออออออออออออออออออออออออออออออออออป
บ Verifica se tem argumentos             บ
ศออออออออออออออออออออออออออออออออออออออออผ'/

_LC =  LinhaDeComando(__FB_ARGC__)
if _LC <> "-r" then
    Print
    Print "Pressione qualquer tecla para continuar. . ..";
    Sleep
    cls
end if





