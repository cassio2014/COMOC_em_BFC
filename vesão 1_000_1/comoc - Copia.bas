/'  caracteres em OEM
����������������������������������������������������������ͻ
�                                                          �
�  Projeto:comoc.exe                                       �
�                                                          �
�  Compilador simples                                      �
�  Na Linguagem freeBasic                                  �
�                                                          �
�     versao         : 1.000.1                             �
�     Data Inicio    : 26-07-2020                          �
�     Data Altera�ao : 29-08-2020                          �
�     Autor          : Cassio Butrico                      �
�     e-mail         : cassio_butrico@hotmail.com          �
�                                                          �
����������������������������������������������������������ͼ'/
#include  "CabFunc.bi" 
'����������������������������������������������������������
Versao = "v1.000.1"'===> a versao Atual
/'
����������������������������������������������������������ͻ
�     prot�tipos                                           �
����������������������������������������������������������ͼ'/
dim shared Olhar as string * 1 
dim shared ContCol as integer
dim shared ContLim as integer
'����������������������������������������������������������
declare sub Inicio()                              ' init
declare sub ProximaLetra()                        ' nextChar
declare sub Erros (x as string)                   ' error
declare sub Fatal(x as string)                    ' fatal
declare sub Esperado(x as string)                 ' expected
declare sub Combina(C as string)                  ' match
declare function PegaNome() as string             ' getName
declare function PegaNumero() as string           ' getNum
declare sub Emitir(comando as string)             ' emitir
declare sub Expressao()                           ' expression
declare sub Termo()                               ' term
declare sub Adiciona()                            ' add
declare sub Subtrai()                             ' subtract
declare sub Fator()                               ' factor
declare sub Multiplica()                          ' multiply
declare sub Divide()                              ' divide
declare function Eopadt(c as string) as boolean   ' isAddOp
'����������������������������������������������������������
/' 
���������������������������������������������������������ͻ
� Main   PROGRAMA PRINCIPAL                               �
���������������������������������������������������������ͼ'/
Function Main as integer    
    cls
    print "**** "& _Compilador &" Versao:";Versao & " ****"
    Inicio()    '==> Init
    Expressao() '==> expression
    return 0
end function
/' 
���������������������������������������������������������ͻ
� init - inicializa�ao do compilador                      �
���������������������������������������������������������ͼ'/
public sub Inicio()
    print "- Gera codigo assembly - digite 7*2-(3+1)"
    print "<e> = enter Ex: 7<e>*<e>2<e>-<e>(<e>3<e>+<e>1<e>)<e><e>"
    print
    print "===>"; ' Aqui � a 5a linha.
    ContLim = 7
    ContCol = pos
    ProximaLetra() '==> NextChar
end sub
/' 
���������������������������������������������������������ͻ
� nextChar - l� pr�ximo caracter da entrada               �
���������������������������������������������������������ͼ'/
public sub ProximaLetra()
    locate 5,ContCol
    olhar = PegaLetra() '==> look = getchar
    ContCol = ContCol + 1
end sub
/' 
���������������������������������������������������������ͻ
�  error - exibe uma mensagem de erro formatada           �
���������������������������������������������������������ͼ'/
public sub Erros(ero as string)
     print"erro ==> ";ero
     Pausa
     end
end sub
/' 
���������������������������������������������������������ͻ
� fatal - exibe uma mensagem de erro formatada e sai      �
���������������������������������������������������������ͼ'/
 public sub Fatal(ero as string) 
     print"erro ==> ";ero
     Pausa
     end
 end sub
/' 
���������������������������������������������������������ͻ
� expected - alerta sobre alguma entrada esperada         �
���������������������������������������������������������ͼ'/
public sub Esperado(xerro as string)
    print "Esperado ";xerro
    Pausa
    end
end sub    
/' 
���������������������������������������������������������ͻ
� match - verifica se entrada combina com o esperado      �
���������������������������������������������������������ͼ'/
Public sub Combina(C as string) 
     if olhar <> C then
         Esperado(C)
     end if
     ProximaLetra()
end sub
/' 
���������������������������������������������������������ͻ
� getName - recebe o nome de um identificador             �
���������������������������������������������������������ͼ'/
public function PegaNome as string 
    DIM NOME as string
    if  Enumero(olhar) then
        Esperado("Nome")
    end if
    NOME = UCase(olhar)
    ProximaLetra()
    return NOME
end function
/' 
���������������������������������������������������������ͻ
� getNum - recebe um n�mero inteiro                       �
���������������������������������������������������������ͼ'/
public function PegaNumero() as string 
    DIM  NUMERO as string
    if not Enumero(olhar) then
        Esperado("Inteiro")
    end if
    NUMERO = olhar
    ProximaLetra()
    return NUMERO
end function
/' 
���������������������������������������������������������ͻ
� emit    - Emitir o assembler                            �
�           Primeira fase da Montagem                     �
�           futuramente criar um arquivo                  �
�           provisorio e montar com assembly              �
���������������������������������������������������������ͼ'/
public sub Emitir(Comando as string) 
    locate  ContLim
    print tab(10); comando
    ContLim =  ContLim + 1
end sub   
/' 
���������������������������������������������������������ͻ
� term - a rotina que analisa os termos                   �
���������������������������������������������������������ͼ'/
public sub Termo()
      Fator()
      while olhar = "*" or olhar = "/"
        Emitir("PUSH EAX") 
        select case olhar
            case "*"
                Multiplica()
            case "/"
                Divide()
            case else
                Esperado("operador")
        end select
      wend
end sub
/' 
���������������������������������������������������������ͻ
� expression - reconhece e traduz uma expressao           �
���������������������������������������������������������ͼ'/ 
public sub Expressao()
    
    if Eopadt(olhar) then
        Emitir("XOR EAX, EAX")
    else
        Termo()
    end if
    while Eopadt(olhar)
        Emitir("PUSH EAX") 
        select case olhar
            case "+"
                Adiciona()
            case "-"
                Subtrai()
            case else
                Esperado("operador")
        end select
    wend
end sub
/' 
���������������������������������������������������������ͻ
� add - reconhece e traduz uma adi�ao                     �
���������������������������������������������������������ͼ'/
public sub Adiciona()
    Combina("+")
    Termo()
    Emitir("POP EBX")
    Emitir("ADD EAX, EBX")
end sub
/' 
���������������������������������������������������������ͻ
� subtract - reconhece e traduz uma subtra�ao             �
���������������������������������������������������������ͼ'/
PUBLIC SUB Subtrai()
    Combina("-")
    Termo()
    Emitir("POP EBX")
    Emitir("SUB EAX, EBX")
    Emitir("NEG EAX")
end sub
/' 
���������������������������������������������������������ͻ
� factor - analisa e traduz um fator matem�tico           �
���������������������������������������������������������ͼ'/
public sub Fator()
   if olhar = "(" then
       combina("(")
       Expressao()
       combina(")")
   else
       Emitir("MOV EAX, "& PegaNumero)     
   end if
end sub
/' 
���������������������������������������������������������ͻ
� multiply - reconhece e traduz uma multiplica�ao         �
���������������������������������������������������������ͼ'/
public sub Multiplica()    
    Combina("*")
    Fator()
    Emitir("POP EBX")
    Emitir("IMUL EBX")
end sub
/' 
���������������������������������������������������������ͻ
� divide - reconhece e traduz uma divisao                 �
���������������������������������������������������������ͼ'/
public sub Divide() 
    Combina("/")
    Fator()
    Emitir("POP EBX")
    Emitir("XCHG EAX, EBX")
    Emitir("CWD")
    Emitir("IDIV EBX")
end sub
/' 
���������������������������������������������������������ͻ
�  isAddOp - reconhece operador aditivo                   �
���������������������������������������������������������ͼ'/
public function Eopadt(c as string) as boolean
    RETURN (c = "+" or c = "-")
end function
/' 
���������������������������������������������������������ͻ
� FIM                                                     �
���������������������������������������������������������ͼ'/
Fim