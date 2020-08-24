Dim foo As long 
cls
locate 2,2 
print "==> Difite <asc> para sair, ou uma tecla."
locate 4, 4
Do
		foo = GetKey
		cls
		locate 2,2 
		print "==> Difite <asc> para sair, ou uma tecla."
		locate 4, 4
		print  chr(foo)
		print
		Print "total return: " & foo

        If( foo > 255 ) Then
            Print "extended code: " & (foo And &hff)
            Print "regular code: " & (foo Shr 8)
        Else
            Print "regular code: " & (foo And &hff)
        End If
		locate 4, 5
Loop Until foo = 27 ' 27 = esc

