Dim foo As long 
Do
      locate 2, 4
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
Loop Until foo = 27

