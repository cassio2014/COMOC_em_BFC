/'
   CsrLin = linha atual
   pos    = coluna atual

'/
dim  as integer Ci, Cf, L
cls
?"���������������������������������ͻ"
?"�  CsrLin = linha atual           �"
?"�  pos    = coluna atual          �"
?"���������������������������������ͼ"
print "==> L  = Linha"
print "==> Ci = Coluna Inicial"
print "==> Cf = Coluna Final"
print "( L, Ci -> Cf)"
locate 10,18
Ci=pos
L=CsrLin
Print "posi�ao atual:";
Cf=pos
locate L,1
print "(";L;",";Ci;" ->";Cf;")"
locate L,Cf

sleep
