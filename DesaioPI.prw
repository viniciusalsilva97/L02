#INCLUDE 'totvs.ch '

User Function parte1()
    local nNum := Randomize(0, 100)
    local nAdivinha

    nAdivinha := Val(FwInputBox("Tente adivinhar o n�mero sorteado"))

    if nAdivinha > nNum
        MsgInfo("O n�mero que voc� escolheu � maior que o sorteado", "MAIOR")
    elseif nAdivinha < nNum
        MsgInfo("O n�mero que voc� escolheu � menor que o sorteado", "MENOR")
    else
        FwAlertSuccess("Voc� acertou o n�mero sorteado", "IGUAL")
    endif
Return 
