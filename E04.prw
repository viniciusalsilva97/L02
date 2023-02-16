#INCLUDE 'totvs.ch'

User Function quadradoDaDiferenca()
    local nA
    local nB 
    local nResultado

    nA := Val(FwInputBox("Digite um número"))
    nB := Val(FwInputBox("Digite outro número"))

    nResultado := nA^2 - (2*nA*nB) + nB^2

    MSGINFO( cValToChar(Round(nResultado, 2)), "Quadrado da Diferença" )
Return 
