#INCLUDE 'totvs.ch'

User Function numero()
    local nMult
    local nCont
    local nLimite

    nMult := Val(FwInputBox("Escolha um n�mero para voc� ver os seus m�ltiplos"))
    nLimite := Val(FwInputBox("Escolha um limite para ver esses m�ltiplos"))

    for nCont := 1 to nLimite
        if nCont % nMult == 0
            MsgInfo(cValToChar(nCont), "Multiplos de " + cValToChar(nMult))
        endif 
    next

Return 
