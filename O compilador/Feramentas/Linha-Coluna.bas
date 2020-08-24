/'
   CsrLin = linha atual
   pos    = coluna atual

'/
dim  as integer Ci, Cf, L
cls
?"ษอออออออออออออออออออออออออออออออออป"
?"บ  CsrLin = linha atual           บ"
?"บ  pos    = coluna atual          บ"
?"ศอออออออออออออออออออออออออออออออออผ"
print "==> L  = Linha"
print "==> Ci = Coluna Inicial"
print "==> Cf = Coluna Final"
print "( L, Ci -> Cf)"
locate 10,18
Ci=pos
L=CsrLin
Print "posiao atual:";
Cf=pos
locate L,1
print "(";L;",";Ci;" ->";Cf;")"
locate L,Cf

sleep
