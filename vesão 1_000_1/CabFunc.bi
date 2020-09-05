/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes               บ
ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
บ Variaveis, funoes e rotinas                            บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
' ===>  LCAG - Argumentos para a Linha de Comando 
type LCAG
    AG01 as string * 2 '1๘ argumento  2 letras
    AG02 as string     '2๘ argumentro string com o nome
end type

dim shared as string versao 
dim shared as string _compilador
dim SHARED AS LCAG   _LC
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ   Declaraoes estao aqui.                               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
'==> funoes
declare Function principal() as integer
declare function NomePrograma(Nome as string) as string
declare function Enumero(Letras as string) as boolean  
declare function Ealfanum(Caracter as string) as boolean 
declare function Ealfa(Caracter as string) as boolean
'==> Subrotinas
declare sub Pausa()
declare sub Fim()
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Inicializaao e atribuiao iniciais                     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
_Compilador = NomePrograma(command(0))
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ #Include arquivos aqui                                  บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include "funcoes.inc"
#include "Subrotinas.inc"



