#INCLUDE "TOTVS.CH"

User Function operacoesAritmeticas()

    local nNum1, nNum2, nSoma, nSubtrai, nMultiplica, nDivide

    nNum1 := Val(FwInputBox("Digite um n�mero", ''))
    nNum2 := Val(FwInputBox("Digite outro n�mero", ''))
    
    nSoma       := nNum1 + nNum2
    nSubtrai    := nNum1 - nNum2
    nMultiplica := nNum1 * nNum2
    nDivide     := nNum1 / nNum2

    FwAlertInfo("Soma: " + cValToChar(nSoma) + CRLF + "Subtra��o: " + cValToChar(nSubtrai) + CRLF + "Multiplica��o: " + cValToChar(Round(nMultiplica, 2)) + CRLF + "Divis�o: " + cValToChar(Round(nDivide, 2)) , "Resultado das Opera��es Aritm�ticas")

Return 
