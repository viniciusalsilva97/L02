#INCLUDE 'totvs.ch '

User Function parte2()
    local nNum := Randomize(0, 100)
    local nAdivinha
    local nTentativas := 0
    local nContinua := .t. 

    while nContinua
        nAdivinha := Val(FwInputBox("Tente adivinhar o n�mero sorteado"))

        if nAdivinha > nNum
            MsgInfo("O n�mero que voc� escolheu � maior que o sorteado", "MAIOR")
            nTentativas++
        elseif nAdivinha < nNum
            MsgInfo("O n�mero que voc� escolheu � menor que o sorteado", "MENOR")
            nTentativas++
        else
            if nTentativas < 5
                FwAlertSuccess("Voc� � muito bom, acertou em " + cValToChar(nTentativas) + " tentativas", "PARAB�NS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            elseif nTentativas > 5 .and. nTentativas < 9
                FwAlertSuccess("Voc� � bom, acertou em " + cValToChar(nTentativas) + " tentativas", "PARAB�NS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            elseif nTentativas > 9 .and. nTentativas < 13
                FwAlertSuccess("Voc� � mediano, acertou em " + cValToChar(nTentativas) + " tentativas", "PARAB�NS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            else
                FwAlertSuccess("Voc� � muito fraco, acertou em " + cValToChar(nTentativas) + " tentativas", "PARAB�NS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            endif
        endif

        nContinua := MsgYesNo("Voc� quer continuar jogando?", "Deseja continuar?")
    end
Return 
