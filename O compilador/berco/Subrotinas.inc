/' caracteres em OEM
ษออออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ Arquivo:Subrotinas.inc ,cabealho das Rotinas        บ
ศออออออออออออออออออออออออออออออออออออออออออออออออออออออผ'
ษอออออออออออออออออออออออออออออออออออออออออออออออออออออป
บ                                                     บ
บ - SUB ===> Fim()  - rotina de final de programa     บ
บ                     e verifica se deu algum erro    บ
บ                                                     บ
ศอออออออออออออออออออออออออออออออออออออออออออออออออออออผ '/
public sub Fim()
    if main <> 0 then '<== main  a rotina primcipal 
        Print
        print "ops deu um erro.....: erro nง";main
    end if
    Print
    Print "Pressione qualquer tecla para continuar. . ..";
    Sleep
    cls
end sub


