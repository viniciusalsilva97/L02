#INCLUDE 'totvs.ch'

User Function conversaoReal()
    local nDolar
    local nConversao
    local nCotacao

    nDolar   := Val(FwInputBox("Quantos d�lares voc� tem?"))
    nCotacao := Val(FwInputBox("Qual � o valor da cota��o?"))
    
    nConversao := nDolar * nCotacao

    MsgInfo("R$" + cValToChar(Round(nConversao, 2)) + " reais","D�lar em Real")
Return 
