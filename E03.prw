#INCLUDE "totvs.ch"

User Function litrosUsados()
    local nTempoGasto   := ''
    local nVelMedia     := ''
    local nDistancia    := ''
    local nLitrosUsados := ''
    local nPadConsumo   := ''

    nTempoGasto := Val(FwInputBox("Quanto tempo voc� gastou na viagem?", ''))
    nVelMedia   := Val(FwInputBox("Qual foi a sua velocidade m�dia durante a viagem?", ''))
    nPadConsumo := Val(FwInputBox("Qual � o padr�o de consumo de litros do seu ve�culo?", ''))

    nDistancia := nTempoGasto * nVelMedia
    nLitrosUsados := nDistancia / nPadConsumo 

    FwAlertInfo("Velocidade m�dia: " + cValToChar(nVelMedia) + " Km/h"+ CRLF + "Tempo gasto na viagem: " + cValToChar(nTempoGasto) + " h" + CRLF + "Dist�ncia percorrida: " + cValToChar(Round(nDistancia, 2)) + " Km" + CRLF + "Quantidade de Litros gastos na viagem: " + cValToChar(Round(nLitrosUsados, 2)) + " litros", "Informa��es da sua Viagem")
Return
