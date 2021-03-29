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
�     Data Altera�ao : 29-03-2021                          �
�     Autor          : Cassio Butrico                      �
�     e-mail         : cassio_butrico@hotmail.com          �
�                                                          �
����������������������������������������������������������ͼ'/
#include  "CabFunc.bi" 
#define MAXNAME 30
#define MAXNUM 5
'����������������������������������������������������������
Versao = "v1.000.1"'===> a versao Atual
/'
����������������������������������������������������������ͻ
�     prot�tipos                                           �
����������������������������������������������������������ͼ'/
dim shared erro as integer = 0
dim shared Olhar as string * 1 
dim shared ContCod as LongInt = 0
dim shared Codigo(ContCod) as string
dim shared ContLin as integer
dim shared ContCol as integer
dim shared LDigitada() as integer
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
declare sub Identifica()                          ' ident 
declare sub Atribuir()                            ' assignment
declare sub Pulabranco()                          ' skipWhite
'����������������������������������������������������������
/' 
���������������������������������������������������������ͻ
� ==>    PROGRAMA PRINCIPAL                               �
���������������������������������������������������������ͼ'/
Function principal() as integer    
    
    cls
    print "**** "& _Compilador &" Versao:";Versao & " ****"
    Inicio()
    Atribuir() 
   ' combina(";")
    Pulabranco()
    if asc(olhar) <> 13   then
        Esperado("Nova Linha, Tecla <enter>")
    end if    
        print
        print
        for ContLin = 0 to ubound(codigo)
            locate csrlin , 10
            print codigo(Contlin)
        next 
    return erro
end function
/' 
���������������������������������������������������������ͻ
� init - Inicio() inicializa�ao do compilador             �
���������������������������������������������������������ͼ'/
public sub Inicio()
    print 
    print "- Gera codigo assembly - digite: TOAL = 7 * 2 -(3 + 1)"
    print 
    print "===>";
    ProximaLetra()
    Pulabranco()
end sub
/' 
���������������������������������������������������������ͻ
� nextChar - ProximaLetra() l� pr�ximo caracter           �
���������������������������������������������������������ͼ'/
public sub ProximaLetra()
    if erro = 1 then
        exit sub
    end if

    locate 5
    olhar = pegaLetra()
end sub
/' 
���������������������������������������������������������ͻ
�  error - Erros(ero) exibe uma mensagem de erro          �
���������������������������������������������������������ͼ'/
public sub Erros(ero as string)
    locate 8 , 10
    print" Erro ==> ";ero
    PAUSA
    end 1
end sub
/' 
���������������������������������������������������������ͻ
� fatal - Fatal(ero) exibe uma mensagem de erro fatal     �
���������������������������������������������������������ͼ'/
public sub Fatal(ero as string) 
    locate 8, 10
    print" Erro ==> ";ero
    pausa
    end 1
end sub
/' 
���������������������������������������������������������ͻ
� expected - Esperado(x) alerta sobre entrada esperada    �
�                        retorna um aviso                 �
���������������������������������������������������������ͼ'/
public sub Esperado(algo as string)
    locate 8 , 10
    print "==> Esperando ";algo
    pausa
    end 1
end sub    
/' 
���������������������������������������������������������ͻ
� match - Combina(C) verifica se a entrada combina        �
�                    recebe um caracter para comparar     �
���������������������������������������������������������ͼ'/
Public sub Combina(C as string) 
    if olhar <> C then
        Esperado(C)
    end if
    ProximaLetra()
    Pulabranco()
end sub
/' 
���������������������������������������������������������ͻ
� getName - PegaNome() recebe o nome de um identificador  �
�                      e retorna o nome                   �
���������������������������������������������������������ͼ'/
public function PegaNome() as string 
    dim vnome as string
    
    if not ealfa(olhar) then
        esperado("nome")
    end if
    do
        if len(vnome) = MAXNAME - 1 then
            fatal("=>Identicador com Muitas letras")
        end if
        
        if ealfanum(olhar) then
           vnome =  vnome & olhar
        end if
        
        ProximaLetra()
    loop until not ealfanum(olhar)
    Pulabranco()
    return vnome
end function
/' 
���������������������������������������������������������ͻ
� getNum - PegaNumero() recebe um n�mero inteiro          �
�                       e retorna o numero                �
���������������������������������������������������������ͼ'/
public function PegaNumero() as string 
    DIM  NUMERO as string
    
    if not enumero(olhar) then
        esperado("Inteiro")
    end if
    do
        if len(NUMERO) = MAXNUM - 1 then
            fatal("Inteiro Muito Grande")
        end if
        
        if enumero(olhar) then
            numero = numero & OLHAR
        end if
        ProximaLetra()
    loop until not enumero(olhar)
    Pulabranco()
    return NUMERO
end function
/' 
���������������������������������������������������������ͻ
� emit - Emitir(x) o assembler                            �
�                  Primeira fase da Montagem              �
�                  futuramente criar um arquivo           �
�                  provisorio e montar com assembly       �
�                  - Povoa tabela Codigo com 0s Comandos  �
���������������������������������������������������������ͼ'/
public sub Emitir(Comando as string) 
    dim U as integer = ubound(codigo)
    dim L as integer = Lbound(codigo)
    if codigo(L) =""  then
       codigo(L) = comando
    else
        redim preserve Codigo(U + 1)
        U = ubound(codigo)
        codigo(U) = comando
    end if
end sub   
/' 
���������������������������������������������������������ͻ
� term - Termo() a rotina que analisa os termos           �
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
� expression - Expressao() - reconhece e traduz uma       �
�                            expressao                    �
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
� add - Adiciona() reconhece e traduz uma adi�ao          �
���������������������������������������������������������ͼ'/
public sub Adiciona()
    Combina("+")
    Termo()
    Emitir("POP EBX")
    Emitir("ADD EAX, EBX")
end sub
/' 
���������������������������������������������������������ͻ
� subtract - Subtrai() reconhece e traduz uma subtra�ao   �
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
� factor - Fator() analisa e traduz um fator matem�tico   �
���������������������������������������������������������ͼ'/
public sub Fator()
    if olhar = "(" then
       combina("(")
       Expressao()
       combina(")")
    elseif  Ealfa(olhar) then
           Identifica()                 
        else
           Emitir("MOV EAX, "& PegaNumero) 
    end if
end sub
/' 
���������������������������������������������������������ͻ
� multiply - Multiplica() - reconhece e traduz uma        �      
�                           multiplica�ao                 �              
���������������������������������������������������������ͼ'/
public sub  Multiplica()
    Combina("*")
    Fator()
    Emitir("POP EBX")
    Emitir("IMUL EBX")
end sub
/' 
���������������������������������������������������������ͻ
� divide - Divide() reconhece e traduz uma divisao        �
���������������������������������������������������������ͼ'/
public sub  Divide()
    Combina("/")
    Fator()
    Emitir("POP EBX")
    Emitir("XCHG EAX, EBX")
    Emitir("CWD")
    Emitir("IDIV EBX")
end sub
/' 
���������������������������������������������������������ͻ
� isAddOp - Eopadt(x) v f - fun�ao reconhece um operador  �
�                     aditivo retorna verdadeiro ou falso �
���������������������������������������������������������ͼ'/
public function Eopadt(c as string) as boolean
    RETURN (c = "+" or c = "-")
end function
/' 
����������������������������������������������������������ͻ
� ident - Identifica() analisa e traduz um identificador   �
����������������������������������������������������������ͼ'/
 public sub  Identifica() 
    dim Nome AS string 
    NOME = PEGANOME()
    if olhar = "(" then
        combina("(")
        combina(")")
        Emitir("CALL "& Nome)
    ELSE
        Emitir("MOV EAX, ["& Nome & "]" ) 
    end if
 end sub
 /' 
����������������������������������������������������������ͻ
�  assignment - Atribuir() - analisa e traduz um comando   �
�                            de atribui�ao                 �
����������������������������������������������������������ͼ'/
public sub Atribuir()
     dim Nome as string
     Nome = PegaNome()
     combina("=") 
     Expressao()
    Emitir("MOV ["& Nome &"], EAX")
 end sub
 /' 
����������������������������������������������������������ͻ
�  skipWhite - PulaBranco() -  pula caracteres de espa�o   �
����������������������������������������������������������ͼ'/
sub Pulabranco() 
    while asc(olhar) = 32 or asc(olhar) = 9
        proximaletra()
    wend
end sub
/' 
���������������������������������������������������������ͻ
� FIM                                                     �
���������������������������������������������������������ͼ'/
Fim




