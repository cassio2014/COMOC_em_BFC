/'caracteres em OEM
�����������������������������������������������������ͻ
�  Arquivo: Fun�oes.inc  Fun�oes para o compilador    �
�����������������������������������������������������ͼ
�����������������������������������������������������ͻ
�                                                     �
� - Ffun�ao  ===> NomePrograma()                      �
�                                                     �
�    Le o caminho com o nome do programa              �
�    e separa o nome e retira a exten��o.exe.         �
�                                                     �
�����������������������������������������������������ͼ '/
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
�����������������������������������������������������ͻ
�                                                     �
� - Fun�ao ===> PegaLetra() as string                 �
�   le a letra digitada do teclado                    �
�                                                     �
�����������������������������������������������������ͼ '/
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