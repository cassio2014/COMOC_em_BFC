/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  Arquivo: Funoes.inc  Funoes para o compilador    บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                     บ
บ - Ffunao  ===> NomePrograma()                      บ
บ                                                     บ
บ    Le o caminho com o nome do programa              บ
บ    e separa o nome e retira a exten็ใo.exe.         บ
บ                                                     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ '/
public function NomePrograma(Nome as string) as string
    
    dim  as string programa,clido
    dim  as integer i, cont, ponto
    dim  as boolean sim, achou
    
    sim      = true
    achou    = false
    cont     = len(Nome)
    programa = Nome
        
    do
        clido = mid(programa,cont,1)

        if clido  = "\" or _
           clido  = "." then
           
           if clido      = "." then
               ponto     = cont - 1
               programa  = left(programa,ponto)
               cont      = len(programa)
           end if   
           if clido      = "\" then
              achou      = sim ' sai do loop
              programa   = mid(programa,cont + 1)
           end if

        end if
        cont -= 1
              
        if cont <= 0 then 
            achou = sim ' sai dso loop
        end if
        
    loop until achou = sim

    return programa
end function
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                     บ
บ - Funao ===> PegaLetra() as string                 บ
บ   le a letra digitada do teclado                    บ
บ                                                     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ '/
public function PegaLetra() as string 
    dim L1 as string 
    dim L2 as string * 1
    dim L3 as integer

    while L3  <> 13
        do
           L2 = inkey
        loop until L2 <> ""
        print L2;
        L1 = L1 + L2
        L3 = asc(L2)
    wend
    if len(L1)>1 then
        L2 = left(L1,2) 
    end if
    print
    return L2
end function


/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> LinhaDeComando(n as integer)as string บ
บ                                                     บ
บ   Esta funcao so  executada de tiver 1 ou          บ
บ   + argumentos e Retorna A linha de comando         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
'public function LinhaDeComando(NArgu as integer) as string  
    
'    dim  as string  Programa, Versao, LComando
'    dim  as integer n_arg, i

'    Programa = NomePrograma(command(0))
'    Versao   = "V1.000.1"
'    n_arg    = NArgu ' Numero de argumentos
'    i        = n_arg

'   if N_arg >= 2 then 
'           i = 1
'   end if
   
'    LComando = command(i)

'        Select Case LComando
'            Case "-h"
'                cls
'                print
'                print "   Programa ";Programa
'                print "   Copyright (C) 2020 , escrito por Cassio Butridco"
'                print
'                print "Use:"
'                print "      ";Programa;" [<opcao>...]"
'                print
'                print "Onde:"
'                print "<opcao>:"
'                print "-h            Mosta esta tela."
'                print "-v            Mostra a Versao do Programa."
'                print "-r            Rodar e executar o programa."
                
'            Case "-r"
'                cls
                
'            Case "-v"
'                cls
'                print
'                print "   Programa ";Programa;" : ";Versao
'                print "   Copyright (C) 2020 , escrito por Cassio Butridco"
'            Case Else
'                 cls
'                 print
'                 print "     - ";Programa;" Versao: ";Versao
'                 Print
'                 print "     - Use:";Programa;" -h"
'        End Select
'   return LComando
'end function
