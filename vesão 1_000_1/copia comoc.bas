/'  caracteres em OEM
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                          บ
บ  Projeto:comoc.exe                                       บ
บ                                                          บ
บ  Compilador simples                                      บ
บ  Na Linguagem freeBasic                                  บ
บ                                                          บ
บ     versao         : 1.000.1                             บ
บ     Data Inicio    : 26-07-2020                          บ
บ     Data Alteraao : 30-08-2020                          บ
บ     Autor          : Cassio Butrico                      บ
บ     e-mail         : cassio_butrico@hotmail.com          บ
บ                                                          บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
#include  "CabFunc.bi" 
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
#define MAXNAME 30
#define MAXNUM 5
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
Versao = "v1.000.1"'===> a versao Atual
/'
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ     protขtipos                                           บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
dim shared Olhar as string * 1 
dim shared ContCol as integer
dim shared ContLim as integer
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
declare sub Inicio()                                 ' init
declare sub ProximaLetra()                           ' nextChar
declare sub Erros (x as string)                      ' error
declare sub Fatal(x as string)                       ' fatal
declare sub Esperado(x as string)                    ' expected
declare sub Combina(C as string)                     ' match
declare function PegaNome()   as string              ' getName
declare function PegaNumero() as string              ' getNum
declare sub Emitir(comando as string)                ' emitir
declare sub Expressao()                              ' expression
declare sub Termo()                                  ' term
declare sub Adiciona()                               ' add
declare sub Subtrai()                                ' subtract
declare sub Fator()                                  ' factor
declare sub Multiplica()                             ' multiply
declare sub Divide()                                 ' divide
declare function Eopadt(c as string) as boolean      ' isAddOp
declare sub Identifica()                             ' ident 
declare sub Atribuir()                               ' assignment
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Main   PROGRAMA PRINCIPAL                               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Function principal as integer    
    cls
    print "**** "& _Compilador &" Versao:";Versao & " ****"
    Inicio()    '==> Init
    Atribuir() 
    if asc(olhar) <> 13 then
        Esperado("<enter>")
    end if
    return 0
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ init - Inicio() inicializaao do compilador             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Inicio()
    print
    print "- Gera codigo assembly - digite A=7*2-(3+1)"
    print
    print "===>";
    ContLim = 8
    ContCol = pos
    ProximaLetra() '==> NextChar
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ nextChar - ProximaLetra() l prขximo caracter           บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub ProximaLetra()
    locate 5,ContCol
    olhar   = PegaLetra() '==> look = getchar
    ContCol = ContCol + 1
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  error - Erros(ero) exibe uma mensagem de erro          บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Erros(ero as string)
     print"erro ==> ";ero
     Pausa
     end
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ fatal - Fatal(ero) exibe uma mensagem de erro fatal     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
 public sub Fatal(ero as string) 
     print"erro ==> ";ero
     Pausa
     end
 end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ expected - Esperado(x) alerta sobre entrada esperada    บ
บ                        retorna um aviso                 บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Esperado(algo as string)
    locate 6
    print "=> Esperando ";algo
     locate  ContLim 
    Pausa
    end
end sub    
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ match - Combina(C) verifica se a entrada combina        บ
บ                    recebe um caracter para comparar     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Public sub Combina(C as string) 
     if olhar <> C then
         Esperado(C)
     end if
     ProximaLetra()
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getName - PegaNome() recebe o nome de um identificador  บ
บ                      e retorna o nome                   บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function PegaNome() as string 
    
    DIM NOME as string
    if  Enumero(olhar) then
        Esperado("Nome")
    end if
    NOME = UCase(olhar)
    ProximaLetra()
    
    return NOME
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getNum - PegaNumero() recebe um nฃmero inteiro          บ
บ                       e retorna o numero                บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ emit - Emitir(x) o assembler                            บ
บ                  Primeira fase da Montagem              บ
บ                  futuramente criar um arquivo           บ
บ                  provisorio e montar com assembly       บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Emitir(Comando as string) 
    locate  ContLim
    print tab(10); comando
    ContLim =  ContLim + 1
end sub   
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ term - Termo() a rotina que analisa os termos           บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ expression - Expressao() - reconhece e traduz uma       บ
บ                            expressao                    บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/ 
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ add - Adiciona() reconhece e traduz uma adiao          บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Adiciona()
    Combina("+")
    Termo()
    Emitir("POP EBX")
    Emitir("ADD EAX, EBX")
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ subtract - Subtrai() reconhece e traduz uma subtraao   บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
PUBLIC SUB Subtrai()
    Combina("-")
    Termo()
    Emitir("POP EBX")
    Emitir("SUB EAX, EBX")
    Emitir("NEG EAX")
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ factor - Fator() analisa e traduz um fator matem tico   บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Fator()
   if olhar = "(" then
       combina("(")
       Expressao()
       combina(")")
   elseif Ealfanum(olhar) then
       Identifica()                 
   else
       Emitir("MOV EAX, "& PegaNumero) 
   end if
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ multiply - Multiplica() - reconhece e traduz uma        บ      
บ                           multiplicaao                 บ              
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub  Multiplica()
    Combina("*")
    Fator()
    Emitir("POP EBX")
    Emitir("IMUL EBX")
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ divide - Divide() reconhece e traduz uma divisao        บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub  Divide()
    Combina("/")
    Fator()
    Emitir("POP EBX")
    Emitir("XCHG EAX, EBX")
    Emitir("CWD")
    Emitir("IDIV EBX")
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ isAddOp - Eopadt(x) v f - funao reconhece um operador  บ
บ                     aditivo retorna verdadeiro ou falso บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function Eopadt(c as string) as boolean
    RETURN (c = "+" or c = "-")
end function
/' 
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ ident - Identifica() analisa e traduz um identificador   บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
 public sub  Identifica() 
    dim Nome AS string * 1
    NOME = PegaNome()
    if olhar = "(" then
        combina("(")
        combina(")")
        Emitir("CALL "& Nome)
    ELSE
        Emitir("MOV EAX, ["& Nome & "]" ) 
    end if
 end sub
 /' 
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  assignment - Atribuir() - analisa e traduz um comando   บ
บ                            de atribuiao                 บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Atribuir()
     dim Nome as string * 1
     Nome = PegaNome()
     combina("=")
     Expressao()
     Emitir("MOV ["& Nome &"], EAX")
 end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ FIM                                                     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Fim