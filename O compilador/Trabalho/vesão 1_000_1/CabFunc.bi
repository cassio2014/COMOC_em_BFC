/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออป
บ Variaveis funoes e rotinas            บ
ศออออออออออออออออออออออออออออออออออออออออผ'/
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ   Declaraoes estao aqui.                         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
declare Function Main() as integer
declare function NomePrograma(Nome as string) as string
declare sub Pausa 
declare sub Fim
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ #Include arquivos aqui                            บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include "funcoes.inc"
#include "Subrotinas.inc"

/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Inicializaao e atribuiao iniciais               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
_Compilador= NomePrograma(command(0))
