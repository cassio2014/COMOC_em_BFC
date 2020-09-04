/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  Arquivo: Funoes.inc  Funoes para o compilador        บ
ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
บ - Ffunao  ===> NomePrograma()                          บ
บ                 Le o caminho com o nome do programa     บ
บ                 e separa o nome e retira do nome        บ
บ                 a extenao ".exe"                       บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> PegaLetra() as string varedura do         บ
บ               Teclado e retorna o Valor da tecla        บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function pegaletra() as string 
    dim c  as string * 1
    c = UCase(chr(getkey))
    print c;
    return c
end function

'    dim c  as string * 1
'	 dim Rc as string * 1
'    dim pi as integer  = pos
'    dim pf as integer  = pos
'    locate csrlin,pos
'    while asc(c)  <> 13
'        c = chr(getkey)
'        if pi = pf and asc(c) <> 8 then
'            Rc = c
'        end if
'		if pf > pi and asc(c) = 8 then
'			locate csrlin, pf - 1
'			print " ";
'			pf = pf - 1
'			locate csrlin, pos - 1
'			pf=pos
'		end if
'		if asc(c) <> 8 then
'			print UCase (c);
'			pf = pos
'		end if
'   wend
'    print
'    return Rc 
'end function

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
        if (y >= 48 and y <= 57) or y = 46 then
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
  
