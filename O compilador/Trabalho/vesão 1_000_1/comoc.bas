#include  "CabFunc.bi"
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

dim shared Olhar as string * 1 

declare sub init
declare sub nextChar
declare sub erros


public sub init

    nextChar
    
end sub

public sub nextChar

 olhar = PegaLetra ' = getchar em c 

end sub



Function Main() as integer    
       
    init()
    
    return 0
end function
Fim
