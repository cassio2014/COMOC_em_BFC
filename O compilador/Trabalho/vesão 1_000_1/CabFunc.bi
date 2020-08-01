/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษออออออออออออออออออออออออออออออออออออออออป
บ Variaveis funoes e rotinas            บ
ศออออออออออออออออออออออออออออออออออออออออผ'/
' ===>  LCAG Argumentos para a Linha de Comando 
type LCAG
    AG01 as string * 2
    AG02 as string
end type


'==> _Compilador = Nome do Programa
dim shared as string _Compilador
dim SHARED AS LCAG   _LC

/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ   Declaraoes estao aqui.                         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
declare Function Main as integer
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
_Compilador = NomePrograma(command(0))
