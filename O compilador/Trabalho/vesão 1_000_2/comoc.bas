/'  caracteres em OEM
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                          บ
บ  Projeto:comoc.exe                                       บ
บ                                                          บ
บ  Compilador simples                                      บ
บ  Na Linguagem freeBasic                                  บ
บ                                                          บ
บ     versao         : 1.000.2                             บ
บ     Data Inicio    : 26-07-2020                          บ
บ     Data Alteraao : 27-08-2020                          บ
บ     Autor          : Cassio Butrico                      บ
บ     e-mail         : cassio_butrico@hotmail.com          บ
บ                                                          บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
#include  "CabFunc.bi" 
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ     protขtipos                                          บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
dim shared Olhar as string * 1 
   
declare sub Inicio                    ' init
declare sub ProximaLetra              ' nextChar
declare sub Erros (x as string)       ' error
declare sub Fatal(x as string)        ' fatal
declare sub Esperado(x as string)     ' expected 
declare sub Igualar(C as string)      ' match
declare function PegaNome as string   ' getName
declare function PegaNumero as string ' getNum
declare sub Emitir(Comando as string, _
                   Destino as string, _
                   Origem  as string) ' emitir
declare sub Expressao                 ' expression                 
/' 
อออออออออออออออออออออออออออออออออออออออออออออออออออออ
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Main   PROGRAMA PRINCIPAL                         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Function Main as integer    
    cls
    print "==> Conc Versao:";Versao
    Inicio '==> Init
    Expressao '==> expression
    return 0
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ init - inicializaao do compilador                บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Inicio
    ProximaLetra '==> NextChar
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ nextChar - l prขximo caracter da entrada         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub ProximaLetra  
    olhar = PegaLetra '==> look = getchar
'	print "==> ";olhar
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  error - exibe uma mensagem de erro formatada     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Erros(ero as string)
     print"erro ==> ";ero
     sleep
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ fatal - exibe uma mensagem de erro formatada e saiบ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
 public sub Fatal(ero as string) 
     print"erro ==> ";ero
     sleep
 end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ expected - alerta sobre alguma entrada esperada   บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Esperado(xerro as string)
    print "Esperado ";xerro
    Pausa
    end
end sub    
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ match - verifica se entrada combina com o esperadoบ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Public sub Igualar(C as string) 
     if olhar <> C then
         Esperado(C)
     end if
     ProximaLetra
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getName - recebe o nome de um identificador       บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function PegaNome as string 
    
    DIM NOME as string
    if  Enumero(olhar) then
        Esperado("Nome")
    end if
    NOME = UCase(olhar)
    return NOME
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getNum - recebe um nฃmero inteiro                 บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function PegaNumero() as string 

    DIM  NUMERO as string
    if not Enumero(olhar) then
        Esperado("Inteiro")
    end if
    NUMERO = olhar
    return NUMERO
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ emit    - Emitir o assembler                      บ
บ           Primeira fase da Montagem               บ
บ           fururamente criar um arquivo            บ
บ           provisorio e montar com assembly        บ
บ           - estudar como fazer izzo.              บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Emitir(Comando as string, _
                  Destino as string, _
                  Origem  as string) 

    print tab(10); Comando;" ";Destino;" , ";Origem
end sub   
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ expression - analisa e traduz uma expressao       บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/

public sub Expressao
      Emitir("MOVE ","AX",PegaNumero)
end sub
/'  
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ FIM                                               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Fim