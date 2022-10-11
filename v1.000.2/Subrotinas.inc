/' caracteres em OEM
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo:Subrotinas.inc ,cabealho das Rotinas           บ
ฬอออออออออออออออออออออออออออออออออออออออออออออออออออออออออน
บ - sub ===> pausa - interompe e mopstra uma mensagem     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
Public sub Pausa()
    Print
    Print "Pressione qualquer tecla para continuar. . ..";
    Sleep
    print:print
end sub
/'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ - SUB ===> Fim()  - rotina de final de programa         บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'/
public sub fim()
    dim x as integer = principal()
  '  Pausa
  if x <> 0 then
      print
      print "erro = ";x
      pausa
      end x
  end if
end sub