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
�     Data Altera�ao : 30-07-2020                          �
�     Autor          : Cassio Butrico                      �
�     e-mail         : cassio_butrico@hotmail.com          �
�                                                          �
����������������������������������������������������������ͼ'/
'����������������������������������������������������������
#include  "CabFunc.bi" 
'����������������������������������������������������������

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

Function Main as integer    
    print
    print "=> programa ";_Compilador;" -Versao: v1.000.1"
    print "   Arquivo app.coc"
    print "   Primeiro teste de letars ...."
    init()
    return 0
end function
cls
main
Fim
