#INCLUDE 'totvs.ch '

User Function parte2()
    local nNum := Randomize(0, 100)
    local nAdivinha
    local nTentativas := 0
    local nContinua := .t. 

    while nContinua
        nAdivinha := Val(FwInputBox("Tente adivinhar o número sorteado"))

        if nAdivinha > nNum
            MsgInfo("O número que você escolheu é maior que o sorteado", "MAIOR")
            nTentativas++
        elseif nAdivinha < nNum
            MsgInfo("O número que você escolheu é menor que o sorteado", "MENOR")
            nTentativas++
        else
            if nTentativas < 5
                FwAlertSuccess("Você é muito bom, acertou em " + cValToChar(nTentativas) + " tentativas", "PARABÉNS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            elseif nTentativas > 5 .and. nTentativas < 9
                FwAlertSuccess("Você é bom, acertou em " + cValToChar(nTentativas) + " tentativas", "PARABÉNS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            elseif nTentativas > 9 .and. nTentativas < 13
                FwAlertSuccess("Você é mediano, acertou em " + cValToChar(nTentativas) + " tentativas", "PARABÉNS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            else
                FwAlertSuccess("Você é muito fraco, acertou em " + cValToChar(nTentativas) + " tentativas", "PARABÉNS!")
                nNum := Randomize(0, 100)
                nTentativas := 0
            endif
        endif

        nContinua := MsgYesNo("Você quer continuar jogando?", "Deseja continuar?")
    end
Return 
