
dim A as integer = 0
print
    Asm
      mov  EAX, 7
		push EAX 
		mov  EAX, 2 
		pop  EBX   
		imul EBX 
		push EAX 
		mov  EAX, 3 
		push EAX
		mov  EAX, 1 
		pop  EBX 
		add  EAX, EBX 
		pop  EBX 
		sub  EAX, EBX 
		neg  EAX 
		mov  [A], EAX
    End Asm
    
print "        mov  EAX, 7"
print "        push EAX"
print "        mov  EAX, 2" 
print "        pop  EBX"
print "        imul EBX"
print "        push EAX"
print "        mov  EAX, 3"
print "        push EAX"
print "        mov  EAX, 1"
print "        pop  EBX1"
print "        add  EAX, EBX"
print "        pop  EBX"
print "        sub  EAX, EBX" 
print "        neg  EAX"
print "        mov  [A], EAX"
print 
print " A = ==> 7 * 2 - (3 + 1) = ";A
print
print "Pressione qualquer tecla para continuar. . .";
sleep


