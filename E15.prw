#INCLUDE 'totvs.ch'

User Function fibonacci()
    local nTamFibo := 0
    local nI       := 0
    local aFibo    := {0, 1}
    local nNumAnt1 := 0
    local nNumAnt2 := 1
    local nNumAux  := 0
    local cMsg     := ''

    //0,1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584

     nTamFibo := Val(FwInputBox("Qual ser� o tamanho da sequ�ncia de Fibonacci?"))

     while nI <= nTamFibo
          //A sequ�ncia � sempre a soma dos dois n�meros anteriores, por isso, o nNumAnt1 + nNumAnt2
          AAdd(aFibo, (nNumAnt1 + nNumAnt2)) 
          //Essa sequ�ncia de processamento vai permitir que a soma dos anteriores aconte�a
          nNumAux := nNumAnt1 + nNumAnt2
          nNumAnt1 := nNumAnt2
          nNumAnt2 := nNumAux
          nI++ 
     end 

     for nI := 1 to nTamFibo 
        cMsg += cValToChar(aFibo[nI]) + " "
     next nI

     FwAlertInfo(cValToChar(cMsg) + " ", "Sequ�ncia de Fibonacci")
Return 
