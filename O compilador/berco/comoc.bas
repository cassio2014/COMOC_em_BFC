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
บ     Data Alteraao : 16-08-2020                          บ
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
declare sub erros (x as string)       ' error
declare sub Fatal(x as string)        ' fatal
declare sub Esperado(x as string)     ' expected 
declare sub Igualar(C as string)      ' match
declare function PegaNome as string   ' getName
declare function PehaNumero as string ' getNum
declare sub emitir(x as string)       ' emitir
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ init - inicializaao do compilador                บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Inicio
    ProximaLetra
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ nextChar - l prขximo caracter da entrada         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub ProximaLetra  
    olhar = PegaLetra 
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ  error - exibe uma mensagem de erro formatada     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub erros(ero as string)
    print"erro ";ero
end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ fatal - exibe uma mensagem de erro formatada e saiบ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
 public sub Fatal(ero as string) 
     print"erro ";ero
     sleep
     error 1
 end sub
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ expected - alerta sobre alguma entrada esperada   บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub Esperado(xerro as string)
    print "Esperado ";xerro
    sleep
    error 1
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
     
     return " "
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ getNum                                            บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public function PehaNumero as string 
    
     return " "
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ emitir                                            บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub emitir(x as string)
    
end sub
/' 
อออออออออออออออออออออออออออออออออออออออออออออออออออออ
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Main   PROGRAMA PRINCIPAL                         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Function Main as integer    
    cls
    Inicio
    return 0
end function
/' 
ษอออออออออออออออออออออออออออออออออออออออออออออออออออป
บ FIM                                               บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Fim