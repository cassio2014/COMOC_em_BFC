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
�     Data Altera�ao : 16-08-2020                          �
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
declare function PehaNumero as string ' getNum
declare sub emitir(x as string)       ' emitir
/' 
���������������������������������������������������ͻ
� init - inicializa�ao do compilador                �
���������������������������������������������������ͼ'/
public sub Inicio
    ProximaLetra
end sub
/' 
���������������������������������������������������ͻ
� nextChar - l� pr�ximo caracter da entrada         �
���������������������������������������������������ͼ'/
public sub ProximaLetra  
    olhar = PegaLetra 
end sub
/' 
���������������������������������������������������ͻ
�  error - exibe uma mensagem de erro formatada     �
���������������������������������������������������ͼ'/
public sub erros(ero as string)
    print"erro ";ero
end sub
/' 
���������������������������������������������������ͻ
� fatal - exibe uma mensagem de erro formatada e sai�
���������������������������������������������������ͼ'/
 public sub Fatal(ero as string) 
     print"erro ";ero
     sleep
     error 1
 end sub
/' 
���������������������������������������������������ͻ
� expected - alerta sobre alguma entrada esperada   �
���������������������������������������������������ͼ'/
public sub Esperado(xerro as string)
    print "Esperado ";xerro
    sleep
    error 1
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
     
     return " "
end function
/' 
���������������������������������������������������ͻ
� getNum                                            �
���������������������������������������������������ͼ'/
public function PehaNumero as string 
    
     return " "
end function
/' 
���������������������������������������������������ͻ
� emitir                                            �
���������������������������������������������������ͼ'/
public sub emitir(x as string)
    
end sub
/' 
�����������������������������������������������������
���������������������������������������������������ͻ
� Main   PROGRAMA PRINCIPAL                         �
���������������������������������������������������ͼ'/
Function Main as integer    
    cls
    Inicio
    return 0
end function
/' 
���������������������������������������������������ͻ
� FIM                                               �
���������������������������������������������������ͼ'/
Fim