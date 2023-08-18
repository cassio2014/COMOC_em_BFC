/' caracteres em OEM
╔═════════════════════════════════════════════════════════╗
║ Arquivo:Subrotinas.inc ,cabeçalho das Rotinas           ║
╠═════════════════════════════════════════════════════════╣
║ - sub ===> pausa - interompe e mopstra uma mensagem     ║
╚═════════════════════════════════════════════════════════╝'/
Public sub Pausa()
    Print
    Print "Pressione qualquer tecla para continuar. . ..";
    Sleep
    print:print
end sub
/'
╔═════════════════════════════════════════════════════════╗
║ - SUB ===> Fim()  - rotina de final de programa         ║
╚═════════════════════════════════════════════════════════╝'/
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