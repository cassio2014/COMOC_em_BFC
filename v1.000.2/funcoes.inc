/'caracteres em OEM
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
�  Arquivo: Fun�oes.inc  Fun�oes para o compilador        �
麺様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� - Ffun�ao  ===> NomePrograma()                          �
�                 Le o caminho com o nome do programa     �
�                 e separa o nome e retira do nome        �
�                 do programa o ".exe" .                  �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�'/
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
        if clido         = "\" or _
           clido         = "." then
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
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� - Fun�ao ===> PegaLetra() as string                     �
�              le a letra digitada do teclado             �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�'/
public function pegaletra() as string 
    
    dim c  as string * 1
    Indice = Indice + 1
    c = UCase(mid(Ldigitada,indice,1))
    return c
end function
/'
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様融
� - Fun�ao ===> Ealfa(x as string) as Boolean              �
�               retorna true se for Alfa - letras          �
�               a -> z ou A -> Z                           �
�               se nao retorna false                       �
�               para numeros e simbolos                    �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様夕'/
public function Ealfa(Caracter as string) as boolean
    dim VF as boolean =  false
    dim as integer X, Y
    for x = 1 to len(Caracter)
        y =  asc(mid(Caracter,x,1))     
        if (y >= 65 and y <= 90)   or _
            (y >= 97 and y <= 122) then
           VF = true 
        else
            return  false
        end if  
    next 
    return VF 
end function

/'
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� - Fun�ao ===> Enumero(x as string) as Boolean           �
�               retorna true se for numeros se nao        �
�               retorna false                             �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�'/
public function Enumero(NUMERO as string) as boolean
    dim VF as boolean 
    dim as integer X, Y
    for x = 1 to len(NUMERO)
        y = asc(NUMERO,x) 
        if (y >= 48 and y <= 57) then ' or y = 44 or y = 46 then
            VF = true
        else
            return false
        end if
    next
    return VF 
end function
/'
浜様様様様様様様様様様様様様様様様様様様様様様様様様様様様�
� - Fun�ao ===> Ealfanum(x as string) as Boolean          �
�               retorna true se for alfa numerico se nao  �
�               retorna false                             �
藩様様様様様様様様様様様様様様様様様様様様様様様様様様様様�'/
public function Ealfanum(Caracter as string) as boolean
    
    dim VF as boolean =  false
    dim as integer X, Y

    for x = 1 to len(Caracter)
        y =  asc(mid(Caracter,x,1))     
        if (y >= 48 and y <= 57) or _
             (y >= 65 and y <= 90) or _
             (y >= 97 and y <= 122) then
            VF = true 
        else
            return  false
        end if  
    next 
    return VF 
end function
  
