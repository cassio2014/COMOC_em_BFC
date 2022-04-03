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
�     Data Altera�ao : 03-04-2022                          �
�     Autor          : Cassio Butrico                      �
�     e-mail         : cassio_butrico@hotmail.com          �
�                                                          �
����������������������������������������������������������ͼ'/
#pragma push(msbitfields)
#include "vbcompat.bi"
#include  "CabFunc.bi" 
'�����������������������������������������������������������
#define MAXNAME 30
#define MAXNUM 5
'�����������������������������������������������������������
Versao = "v1.000.2" /' ===> a versao Atual
����������������������������������������������������������ͻ
�                 prot�tipos                               �
����������������������������������������������������������ͼ'/
dim shared resultado       as integer
dim shared FNome           AS string
dim shared apoio           as string
'�����������������������������������������������������������
dim shared erro            as integer = 0         ' erro    
dim shared olhar           as string  * 1         ' Olhar
dim shared ContCod         as LongInt = 0         ' ContCod
dim shared Latual(1 to 2)  as string              ' Latual
dim shared Codigo(ContCod) as string              ' Codigo
'�����������������������������������������������������������
declare sub Inicio()                              ' Inicio
declare sub ProximaLetra()                        ' Proxima Letra
declare sub Erros (x as string)                   ' Erros
declare sub Fatal(x as string)                    ' Fatal
declare sub Esperado(x as string)                 ' Esperado
declare sub Combina(C as string)                  ' Combina
declare sub Emitir(comando as string)             ' Emitir
declare sub Expressao()                           ' Expressao
declare sub Termo()                               ' Termo
declare sub Adiciona()                            ' Adiciona
declare sub Subtrai()                             ' Subtrai
declare sub Fator()                               ' Fator
declare sub Multiplica()                          ' Multiplica
declare sub Divide()                              ' Divide
declare sub Identifica()                          ' Identifica 
declare sub Atribuir()                            ' Atribuir
declare sub Pulabranco()                          ' Pulabranco
declare sub compilar()                            ' Complilar
declare function PegaNome() as string             ' PegaNome
declare function PegaNumero() as string           ' PegaNumero
declare function Eopadt(c as string) as boolean   ' Eopadt
declare sub Criarquivo()                          ' arquivos externos
'����������������������������������������������������������ͻ
'������������������������������������������������������������
'������������������� PROGRAMA PRINCIPAL ���������������������
'������������������������������������������������������������
'����������������������������������������������������������ͼ
Function principal() as integer    
    criarquivo()
    cls
    PRINT
    print " **** "& _Compilador &" Versao:";Versao & " ****"
    Inicio()
    Atribuir() 
    combina(";")
    Pulabranco()
    
    compilar()
    
    return resultado
end function
/' 
����������������������������������������������������������ͻ
�  cria o arquivo ACOMOCA.BAS Para compila�ao              �                                                   �
����������������������������������������������������������ͼ'/
public sub compilar()
    dim FN as integer
    FN = freefile
    
    open FNOME For output As #FN
        print #FN, "print "+ chr(34)+ chr(34)+";"
        print #FN, "dim ";Latual(1);" as long"
        print #FN, "print "+ chr(34)+ chr(34)+";"
        print #FN, "asm"
        for x as integer = 0 to ubound(codigo)
            print #FN, "   "+ codigo(x)
        next 
        print #FN, "End Asm"
        print #FN, "print "+ chr(34) +">"+ Latual(2) +" = "+ chr(34)+" ;"+ Latual(1)
        PRINT #FN, "PRINT" 
        PRINT #FN, "PRINT "+ chr(34) +"Pressione qualquer tecla para continuar. . ."+ chr(34)+" ;"
        print #FN, "SLEEP"
        print #FN, "end 0"
    close #FN
    reset
    
    If FileExists(apoio) Then
        resultado = shell("fbc32  -b " + FNOME +" " + apoio +" -x E_"+ _Compilador +".EXE")
    else
        resultado = shell("fbc32  -b " + FNOME +" -x E_"+ _Compilador +".EXE")
    end if 
    
    if resultado <> 0 then
        print
        print "erro nas variaveis... ";
    else
        resultado = Exec("E_"+ _Compilador +".exe","")
    end if
    
end sub
/' 
����������������������������������������������������������ͻ
� init - Inicio() inicializa�ao do compilador              �
����������������������������������������������������������ͼ'/
public sub Inicio()
    print
    print "Gera Executavel ex: VALOR = 7 * 2 - (3 + 1);"
    print
    line input ">", Ldigitada ' string de uma linha
    ProximaLetra()
    Pulabranco()
end sub
/' 
����������������������������������������������������������ͻ
� nextChar - ProximaLetra() l� pr�ximo caracter            �
����������������������������������������������������������ͼ'/
public sub ProximaLetra()
    olhar = pegaLetra()
end sub
/' 
����������������������������������������������������������ͻ
�  error - Erros(ero) exibe uma mensagem de erro           �
����������������������������������������������������������ͼ'/
public sub Erros(ero as string)
    locate 9 , 10
    print" Erro ==> ";ero
    PAUSA
    end 1
end sub
/' 
���������������������������������������������������������ͻ
� fatal - Fatal(ero) exibe uma mensagem de erro fatal     �
���������������������������������������������������������ͼ'/
public sub Fatal(ero as string) 
    locate 9, 10
    print" Erro Fatal ==> ";ero
    pausa
    end 1
end sub
/' 
���������������������������������������������������������ͻ
� expected - Esperado(x) alerta sobre entrada esperada    �
�                        retorna um aviso                 �
���������������������������������������������������������ͼ'/
public sub Esperado(algo as string)
    locate 9 , 10
    print "Esperando ";algo
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
    if c <> ";" then
        Latual(2) = Latual(2) + c + " "
    end if
    ProximaLetra()
    Pulabranco()
    if c = "=" then
        Latual(2) = ""
    end if
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
    Latual(2) = Latual(2) + Vnome + " "
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
    Latual(2) = Latual(2) + NUMERO + " "
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
    Latual(1) = nome
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
����������������������������������������������������������ͻ
�  Criarquivo() - Subrotina para cria�ao dos arquivos      �
�                de entrade e saida                        �
����������������������������������������������������������ͼ'/
Public sub criarquivo()
    resultado = 0
    if FileExists ("E_"+ _Compilador +".exe") then
        resultado = shell("del E_"+ _Compilador +".exe")
    end if
    
    if FileExists ("A_"+ _Compilador +".bas") then
        resultado = shell("del A_"+ _Compilador +".bas")
    end if
    
    if resultado <> 0 then
        print
        fatal( "erro ao deletar "+ "E_" + _Compilador)
    end if
    
    apoio     = "R_" + _Compilador + ".res"
    FNOME     = "A_" + _Compilador + ".bas"
end sub
/' 
���������������������������������������������������������ͻ
� FIM                                                     �
���������������������������������������������������������ͼ'/
Fim




