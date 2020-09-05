declare function Enumero(Letras as string) as boolean
declare function Ealfanum(Caracter as string) as boolean
declare function Ealfa(Caracter as string) as boolean

dim C(1 to 6) as string
dim x as byte


c(1) = "1516"
c(2) = "18d44e"
c(3) = "bola"
c(4) = "45.57"
c(5) = "9,15"
c(6) = "-+=,.*/"

cls
    print "ออออออออออออออออออออออออออออออออออออออออออออออออ"

for x = 1 to ubound(c)
    
    print "==> ";str(x);"๘ = ";c(x)
    if Enumero(c(x)) then
        print "==> sim, o valor  numerico..... = ";c(x)
    end if
    
    if ealfa(c(x)) then
        print "==> sim, o valor  alfa......... = ";chr(34) ;c(x);chr(34)
    end if
    
    if Ealfanum(c(x)) then
        print "==> sim, o valor  alfa numerico = ";chr(34) ;c(x);chr(34)
    end if
    print "ออออออออออออออออออออออออออออออออออออออออออออออออ"
next x
print
print "Tecle ango para sair....";
sleep
end

/'
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> Ealfa(x as string) as Boolean              บ
บ               retorna true se for Alfa - letras          บ
บ               a -> z ou A -> Z                           บ
บ               se nao retorna false                       บ
บ               para numeros e simbolos                    บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> Enumero(x as string) as Boolean           บ
บ               retorna true se for numeros se nao        บ
บ               retorna false                             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function Enumero(NUMERO as string) as boolean
    dim VF as boolean 
    dim as integer X, Y
    for x = 1 to len(NUMERO)
        y = asc(NUMERO,x) 
        if (y >= 48 and y <= 57) or y = 44 or y = 46 then
            VF = true
        else
            return false
        end if
    next
    return VF 
end function
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> Ealfanum(x as string) as Boolean          บ
บ               retorna true se for alfa numerico se nao  บ
บ               retorna false                             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
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
  

