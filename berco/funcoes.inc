/'caracteres em OEM
���������������������������������������������������������ͻ
�  Arquivo: Fun�oes.inc  Fun�oes para o compilador        �
���������������������������������������������������������͹
� - Ffun�ao  ===> NomePrograma()                          �
�                 Le o caminho com o nome do programa     �
�                 e separa o nome e retira a o nome       �
�                 do programa dem o .exe                  �
���������������������������������������������������������ͼ'/
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
���������������������������������������������������������ͻ
� - Fun�ao ===> PegaLetra() as string                     �
�              le a letra digitada do teclado             �
���������������������������������������������������������ͼ'/
public function PegaLetra() as string 
    dim c  as string * 1
	dim Rc as string * 1
    dim pi as integer  = pos
    dim pf as integer  = pos
    locate csrlin,pos
    while asc(c)  <> 13
        c = chr(getkey)
		if pi = pf and asc(c) <> 8 then
			Rc = c 
		end if
		if pf > pi and asc(c) = 8 then
			locate csrlin, pf - 1
			print " ";
			pf = pf - 1
			locate csrlin, pos - 1
			pf=pos
		end if
		if asc(c) <> 8 then
			print c;
			pf = pos
		end if
    wend
    print
    return Rc
end function
/'
���������������������������������������������������������ͻ
� - Fun�ao ===> Enumero(x as string) as Boolean           �
�               Retirn true se for numeros se nao         �
�               retorna false                             �
���������������������������������������������������������ͼ'/
public function Enumero(Letras as string) as boolean
    dim VF as boolean = false
    dim as integer X, Y
    for x = 1 to len(Letras)
        y = asc(Letras,x) 
        if y >= 48 and y <= 57 then
            VF = true
        else
            VF = false
            exit for
        end if
    next 
    return VF 
end function