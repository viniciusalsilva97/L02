#INCLUDE 'totvs.ch '

User Function parte1()
    local nNum := Randomize(0, 100)
    local nAdivinha

    nAdivinha := Val(FwInputBox("Tente adivinhar o número sorteado"))

    if nAdivinha > nNum
        MsgInfo("O número que você escolheu é maior que o sorteado", "MAIOR")
    elseif nAdivinha < nNum
        MsgInfo("O número que você escolheu é menor que o sorteado", "MENOR")
    else
        FwAlertSuccess("Você acertou o número sorteado", "IGUAL")
    endif
Return 
