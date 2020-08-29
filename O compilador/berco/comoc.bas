/'  caracteres em OEM
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                          บ
บ  Projeto:comoc.exe                                       บ
บ                                                          บ
บ  Compilador simples                                      บ
บ  Na Linguagem freeBasic                                  บ
บ                                                          บ
บ     versao         : Bero                               บ
บ     Data Inicio    : 26-07-2020                          บ
บ     Data Alteraao : 29-08-2020                          บ
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
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
declare sub Inicio()                             ' init
declare sub ProximaLetra()                       ' nextChar
declare sub Erros (x as string)                  ' error
declare sub Fatal(x as string)                   ' fatal
declare sub Esperado(x as string)                ' expected 
declare sub Combina(C as string)                 ' match
declare function PegaNome() as string            ' getName
declare function PegaNumero() as string          ' getNum
declare sub Emitir(comando as string)            ' emitir
declare function Eopadt(c as string) as boolean ' isAddOp
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Main   PROGRAMA PRINCIPAL                               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Function Main as integer    
    cls
    print "==> Comoc Versao:";Versao
    Inicio()    '==> Init
    return 0
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ init - inicializaao do compilador                      บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Inicio()
    ProximaLetra() '==> NextChar
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ nextChar - l prขximo caracter da entrada               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub ProximaLetra()
    olhar = PegaLetra() '==> look = getchar
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  error - exibe uma mensagem de erro formatada           บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Erros(ero as string)
     print"erro ==> ";ero
     Pausa
     end
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ fatal - exibe uma mensagem de erro formatada e sai      บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
 public sub Fatal(ero as string) 
     print"erro ==> ";ero
     Pausa
     end
 end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ expected - alerta sobre alguma entrada esperada         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Esperado(xerro as string)
    print "Esperado ";xerro
    Pausa
    end
end sub    
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ match - verifica se entrada combina com o esperado      บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Public sub Combina(C as string) 
     if olhar <> C then
         Esperado(C)
     end if
     ProximaLetra()
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getName - recebe o nome de um identificador             บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
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
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getNum - recebe um nฃmero inteiro                       บ
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
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ emit    - Emitir o assembler                             บ
บ           Primeira fase da Montagem                      บ
บ           futuramente criar um arquivo                   บ
บ           provisorio e montar com assembly               บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Emitir(Comando as string) 
    print tab(10); comando
end sub   
/' 
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  isAddOp - reconhece operador aditivo                    บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function Eopadt(c as string) as boolean
    RETURN (c = "+" or c = "-")
end function
/' 
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ FIM                                                      บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Fim