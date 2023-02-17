#INCLUDE "TOTVS.CH"

User Function operacoesAritmeticas()

    local nNum1, nNum2, nSoma, nSubtrai, nMultiplica, nDivide

    nNum1 := Val(FwInputBox("Digite um número", ''))
    nNum2 := Val(FwInputBox("Digite outro número", ''))
    
    nSoma       := nNum1 + nNum2
    nSubtrai    := nNum1 - nNum2
    nMultiplica := nNum1 * nNum2
    nDivide     := nNum1 / nNum2

    FwAlertInfo("Soma: " + cValToChar(nSoma) + CRLF + "Subtração: " + cValToChar(nSubtrai) + CRLF + "Multiplicação: " + cValToChar(Round(nMultiplica, 2)) + CRLF + "Divisão: " + cValToChar(Round(nDivide, 2)) , "Resultado das Operações Aritméticas")

Return 
