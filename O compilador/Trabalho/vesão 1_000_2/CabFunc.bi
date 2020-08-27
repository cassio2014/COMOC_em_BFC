/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ฬอออออออออออออออออออออออออออออออออออออออออออออออออออน
บ Variaveis, funoes e rotinas                      บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
' ===>  LCAG - Argumentos para a Linha de Comando 
type LCAG
    AG01 as string * 2 '1๘ argumento  2 letras
    AG02 as string     '2๘ argumentro string com o nome
end type

dim shared as string Versao 
dim shared as string _Compilador
dim SHARED AS LCAG   _LC
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ   Declaraoes estao aqui.                         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
'==> funoes
declare Function Main as integer
declare function NomePrograma(Nome as string) as string
declare function Enumero(Letras as string) as boolean  
'==> Subrotinas
declare sub Pausa 
declare sub Fim
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Inicializaao e atribuiao iniciais               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
_Compilador = NomePrograma(command(0))
Versao = "v1.000.1"
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ #Include arquivos aqui                            บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include "funcoes.inc"
#include "Subrotinas.inc"





