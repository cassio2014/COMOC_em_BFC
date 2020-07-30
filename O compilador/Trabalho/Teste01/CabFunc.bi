/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo: CadFiv.bi   cabealho de funoes         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
declare _
  function NomePrograma( Nome as string) as string

declare _
  function LinhaDeComando(NArgu as integer)as string

/'
ษอออออออออออออออออออออออออป
บ   Variaveis do Systema  บ
ศอออออออออออออออออออออออออผ'/
dim shared as string _
         _Compilador,_
         _LC

_Compilador= NomePrograma(command(0))
/'
ษออออออออออออออออออออออออออออออออออป
บ Verifica se tem argumentos       บ
ศออออออออออออออออออออออออออออออออออผ'/
if __FB_ARGC__ > 1 then 
 _LC = LinhaDeComando(__FB_ARGC__)
end if





