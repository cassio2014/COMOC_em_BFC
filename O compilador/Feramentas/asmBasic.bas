
dim A as integer
print
    Asm
        mov  EAX, 7
		push EAX 
		mov  EAX, 2 
		pop  EBX 
		imul EBX 
		push EAX 
		mov  EAX, 3 
		push EAX ;
		mov  EAX, 1 
		pop  EBX 
		add  EAX, EBX 
		pop  EBX 
		sub  EAX, EBX 
		neg  EAX 
		mov  [A], EAX ;
    End Asm
print "A = 7 * 2 - (3 + 1) = ";A
print
print "Pressione qualquer tecla para continuar. . .";
sleep


