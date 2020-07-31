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
public sub Fim
    if _LC = "-r" then
        dim errorlevel as integer
        errorlevel = main '<== main  a rotina primcipal 
        if errorlevel <> 0 then 
            Print
            print "- erro em Main() , erro nง ";errorlevel
        end if
        Print
        Print "Pressione qualquer tecla para continuar. . ..";
        Sleep
        cls
    end if
    end
end sub


