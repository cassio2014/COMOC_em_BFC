/'caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  Arquivo: Funoes.inc  Funoes para o compilador        บ
ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
บ - Ffunao  ===> NomePrograma()                          บ
บ                 Le o caminho com o nome do programa     บ
บ                 e separa o nome e retira do nome        บ
บ                 do programa o ".exe" .                  บ
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
บ - Funao ===> PegaLetra() as string                     บ
บ              le a letra digitada do teclado             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function pegaletra() as string 
    dim c  as string * 1
    c = chr(getkey)
    c = UCase(c)
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> Enumero(x as string) as Boolean           บ
บ               return true se for numeros se nao         บ
บ               retorna false                             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function Enumero(Letras as string) as boolean
    dim VF as boolean 
    dim as integer X, Y
    for x = 1 to len(Letras)
        y = asc(Letras,x) 
        
        if (y >= 48 and y <= 57) xor y = 46 then
            VF = true
        else
            VF = false
            return VF
        end if
    next
    return VF 
end function
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - Funao ===> Ealfanum(x as string) as Boolean          บ
บ               return true se for alfanumerico se nao    บ
บ               retorna false                             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function Ealfanum(Caracter as string) as boolean
    dim VF as boolean
    dim as integer X, Y
    for x = 1 to len(Caracter)
        y = asc(Caracter,x) 
        VF =  false
        
        if (y >= 48 and y <= 57 ) xor _
           (y >= 65 and y <= 90)  xor _
           (y >= 97 and y <= 122)  then  
          VF = true 
        end if
    next 
    return VF 
end function
  
