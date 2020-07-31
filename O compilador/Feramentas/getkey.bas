Dim foo As long 
cls
locate 2,2 
print "==> Difite <asc> para sair, ou uma tecla."
Do
      locate 4, 4
      foo = GetKey
      print  chr(foo)
      print
      Print "total return: " & foo
        
        If( foo > 255 ) Then
            Print "extended code: " & (foo And &hff)
            Print "regular code: " & (foo Shr 8)
        Else
            Print "regular code: " & (foo And &hff)
        End If
Loop Until foo = 27 ' 27 = esc

