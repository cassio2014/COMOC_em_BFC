/'  caracteres em OEM
����������������������������������������������������������ͻ
�                                                          �
�  Projeto:comoc.exe                                       �
�                                                          �
�  Compilador simples                                      �
�  Na Linguagem freeBasic                                  �
�                                                          �
�     versao         : 1.000.2                             �
�     Data Inicio    : 26-07-2020                          �
�     Data Altera�ao : 27-08-2020                          �
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
�����������������������������������������������������
���������������������������������������������������ͻ
� Main   PROGRAMA PRINCIPAL                         �
���������������������������������������������������ͼ'/
Function Main as integer    
    cls
    print "==> Conc Versao:";Versao
    Inicio '==> Init
    Expressao '==> expression
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
'	print "==> ";olhar
end sub
/' 
���������������������������������������������������ͻ
�  error - exibe uma mensagem de erro formatada     �
���������������������������������������������������ͼ'/
public sub Erros(ero as string)
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
    Pausa
    end
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
    return NOME
end function
/' 
���������������������������������������������������ͻ
� getNum - recebe um n�mero inteiro                 �
���������������������������������������������������ͼ'/
public function PegaNumero() as string 

    DIM  NUMERO as string
    if not Enumero(olhar) then
        Esperado("Inteiro")
    end if
    NUMERO = olhar
    return NUMERO
end function
/' 
���������������������������������������������������ͻ
� emit    - Emitir o assembler                      �
�           Primeira fase da Montagem               �
�           fururamente criar um arquivo            �
�           provisorio e montar com assembly        �
�           - estudar como fazer izzo.              �
���������������������������������������������������ͼ'/
public sub Emitir(Comando as string, _
                  Destino as string, _
                  Origem  as string) 

    print tab(10); Comando;" ";Destino;" , ";Origem
end sub   
/' 
���������������������������������������������������ͻ
� expression - analisa e traduz uma expressao       �
���������������������������������������������������ͼ'/

public sub Expressao
      Emitir("MOVE ","AX",PegaNumero)
end sub
/'  
���������������������������������������������������ͻ
� FIM                                               �
���������������������������������������������������ͼ'/
Fim