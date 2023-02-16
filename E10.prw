#INCLUDE 'totvs.ch'

User Function maiorMenor()
    local nMaior := 0
    local nMenor := 1000
    local nNum
    local nCont

    for nCont := 1 to 5
        nNum := Val(FwInputBox("Digite um número"))

        if nNum > nMaior
            nMaior := nNum
        elseif nNum < nMenor
            nMenor := nNUm
        endif
    next


    MSGINFO( cValToChar(nMaior) + CRLF + cValToChar(nMenor), "Maior e Menor" )
Return 
