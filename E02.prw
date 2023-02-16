#INCLUDE "totvs.ch"

#DEFINE NKM 12

User Function litrosGastos()
    local nTempoGasto   := ''
    local nVelMedia     := ''
    local nDistancia    := ''
    local nLitrosUsados := ''

    nTempoGasto := Val(FwInputBox("Quanto tempo voc� gastou na viagem?", ''))
    nVelMedia   := Val(FwInputBox("Qual foi a sua velocidade m�dia durante a viagem?", ''))

    nDistancia := nTempoGasto * nVelMedia
    nLitrosUsados := nDistancia / NKM 

    FwAlertInfo("Velocidade m�dia: " + cValToChar(nVelMedia) + " Km/h"+ CRLF + "Tempo gasto na viagem: " + cValToChar(nTempoGasto) + " h" + CRLF + "Dist�ncia percorrida: " + cValToChar(Round(nDistancia, 2)) + " Km" + CRLF + "Quantidade de Litros gastos na viagem: " + cValToChar(Round(nLitrosUsados, 2)) + " litros", "Informa��es da sua Viagem")
Return
