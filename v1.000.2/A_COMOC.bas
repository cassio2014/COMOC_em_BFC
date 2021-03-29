print "";
dim VALOR as long
print "";
asm
   MOV EAX, 7
   PUSH EAX
   MOV EAX, 2
   POP EBX
   IMUL EBX
   PUSH EAX
   MOV EAX, 3
   PUSH EAX
   MOV EAX, 1
   POP EBX
   ADD EAX, EBX
   POP EBX
   SUB EAX, EBX
   NEG EAX
   MOV [VALOR], EAX
End Asm
print ">7 * 2 - ( 3 + 1 )  = " ;VALOR
PRINT
PRINT "Pressione qualquer tecla para continuar. . ." ;
SLEEP
end 0
