#INCLUDE 'totvs.ch'

User Function quadradoDaDiferenca()
    local nA
    local nB 
    local nResultado

    nA := Val(FwInputBox("Digite um n�mero"))
    nB := Val(FwInputBox("Digite outro n�mero"))

    nResultado := nA^2 - (2*nA*nB) + nB^2

    MSGINFO( cValToChar(Round(nResultado, 2)), "Quadrado da Diferen�a" )
Return 
