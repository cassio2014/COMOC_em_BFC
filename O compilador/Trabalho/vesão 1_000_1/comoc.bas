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
บ     Data Alteraao : 30-07-2020                          บ
บ     Autor          : Cassio Butrico                      บ
บ     e-mail         : cassio_butrico@hotmail.com          บ
บ                                                          บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ
#include  "CabFunc.bi" 
'ออออออออออออออออออออออออออออออออออออออออออออออออออออออออออ

dim shared Olhar as string * 1 

declare sub init
declare sub nextChar
declare sub erros (x as string)
declare sub esperado(x as string)


public sub init
    nextChar
end sub

public sub nextChar
    olhar = PegaLetra 
end sub

public sub erros(ero as string)
    print"erro ";ero
end sub

public sub esperado(x as string)
    
end sub




Function Main as integer    
    print
    print "=> programa ";_Compilador;" Versao: ";Versao
    print "   Primeiro teste...."
    init()
    return 0
end function
cls
main
Fim
