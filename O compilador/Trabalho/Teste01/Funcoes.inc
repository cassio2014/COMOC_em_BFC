
'***************************************************
'*    arquivo com minhas fun็๕es para o compilador *
'***************************************************
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  a  บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/

/' 
====================================================================================
 - Fun็ใo  ===>  NomePrograma() 

   Le o caminho com o nome do programa
   e separa o nome e retira a exten็ใo.exe. 
==================================================================================='/
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

