#INCLUDE 'totvs.ch'

User Function conversaoReal()
    local nDolar
    local nConversao
    local nCotacao

    nDolar   := Val(FwInputBox("Quantos dólares você tem?"))
    nCotacao := Val(FwInputBox("Qual é o valor da cotação?"))
    
    nConversao := nDolar * nCotacao

    MsgInfo("R$" + cValToChar(Round(nConversao, 2)) + " reais","Dólar em Real")
Return 
