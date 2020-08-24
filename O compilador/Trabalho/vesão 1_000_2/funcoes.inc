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
บ - Funao ===> Teclas =  Le o Teclado sem mostrar    บ
บ               o caracter na tela - Retorna com o    บ
บ               Caracter com uma string               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ '/
public Function Teclas as string
    return chr(GetKey)
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
        L2 = Teclas ' Le o teclado sem mostrar o caracter
        locate CsrLin
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
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                      บ
บ - Funao ===> Enumero(x as string) as Boolean        บ
บ   Retirn true se for numeros se nao retorna false    บ
บ                                                      บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ '/
public function Enumero(Letras as string) as boolean
    dim VF as boolean = false
    dim as integer X, Y, Z
    z= len(Letras)
    for x = 1 to z
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




