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
�     Data Altera�ao : 22-08-2020                          �
�     Autor          : Cassio Butrico                      �
�     e-mail         : cassio_butrico@hotmail.com          �
�                                                          �
����������������������������������������������������������ͼ'/
'����������������������������������������������������������
#include  "CabFunc.bi" 
'����������������������������������������������������������
/' 
���������������������������������������������������������ͻ
�     prot�tipos                                          �
���������������������������������������������������������ͼ'/
dim shared Olhar as string * 1 
   
declare sub Inicio                    ' init
declare sub ProximaLetra              ' nextChar
declare sub erros (x as string)       ' error
declare sub Fatal(x as string)        ' fatal
declare sub Esperado(x as string)     ' expected 
declare sub Igualar(C as string)      ' match
declare function PegaNome as string   ' getName
declare function PegaNumero as string ' getNum
declare sub emitir(x as string)       ' emitir
/' 
�����������������������������������������������������
���������������������������������������������������ͻ
� Main   PROGRAMA PRINCIPAL                         �
���������������������������������������������������ͼ'/
Function Main as integer    
    cls
    print "==> Conc Versao:";Versao
    Inicio '==> Init
    return 0
end function
/' 
���������������������������������������������������ͻ
� init - inicializa�ao do compilador                �
���������������������������������������������������ͼ'/
public sub Inicio
    ProximaLetra '==> NextChar
end sub
/' 
���������������������������������������������������ͻ
� nextChar - l� pr�ximo caracter da entrada         �
���������������������������������������������������ͼ'/
public sub ProximaLetra  
    olhar = PegaLetra '==> look = getchar
end sub
/' 
���������������������������������������������������ͻ
�  error - exibe uma mensagem de erro formatada     �
���������������������������������������������������ͼ'/
public sub erros(ero as string)
     print"erro ==> ";ero
     sleep
end sub
/' 
���������������������������������������������������ͻ
� fatal - exibe uma mensagem de erro formatada e sai�
���������������������������������������������������ͼ'/
 public sub Fatal(ero as string) 
     print"erro ==> ";ero
     sleep
 end sub
/' 
���������������������������������������������������ͻ
� expected - alerta sobre alguma entrada esperada   �
���������������������������������������������������ͼ'/
public sub Esperado(xerro as string)
    print "Esperado ";xerro
    sleep
end sub    
/' 
���������������������������������������������������ͻ
� match - verifica se entrada combina com o esperado�
���������������������������������������������������ͼ'/
Public sub Igualar(C as string) 
     if olhar <> C then
         Esperado(C)
     end if
     ProximaLetra
end sub
/' 
���������������������������������������������������ͻ
� getName - recebe o nome de um identificador       �
���������������������������������������������������ͼ'/
public function PegaNome as string 
    
    DIM NOME as string
    if  Enumero(olhar) then
        Esperado("Nome")
    end if
    NOME = UCase(olhar)
    ProximaLetra
    return NOME
end function
/' 
���������������������������������������������������ͻ
� getNum                                            �
���������������������������������������������������ͼ'/
public function PegaNumero as string 

    DIM NUMERO as string
    if NOT Enumero(olhar) then
        Esperado("Inteiro")
    end if
    NUMERO = olhar
    ProximaLetra
    return NUMERO
end function
/' 
���������������������������������������������������ͻ
� emitir                                            �
���������������������������������������������������ͼ'/
public sub emitir(x as string)
    
end sub
/' 
���������������������������������������������������ͻ
� FIM                                               �
���������������������������������������������������ͼ'/
Fim