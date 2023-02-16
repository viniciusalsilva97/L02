#INCLUDE "totvs.ch"

User Function litrosUsados()
    local nTempoGasto   := ''
    local nVelMedia     := ''
    local nDistancia    := ''
    local nLitrosUsados := ''
    local nPadConsumo   := ''

    nTempoGasto := Val(FwInputBox("Quanto tempo você gastou na viagem?", ''))
    nVelMedia   := Val(FwInputBox("Qual foi a sua velocidade média durante a viagem?", ''))
    nPadConsumo := Val(FwInputBox("Qual é o padrão de consumo de litros do seu veículo?", ''))

    nDistancia := nTempoGasto * nVelMedia
    nLitrosUsados := nDistancia / nPadConsumo 

    FwAlertInfo("Velocidade média: " + cValToChar(nVelMedia) + " Km/h"+ CRLF + "Tempo gasto na viagem: " + cValToChar(nTempoGasto) + " h" + CRLF + "Distância percorrida: " + cValToChar(Round(nDistancia, 2)) + " Km" + CRLF + "Quantidade de Litros gastos na viagem: " + cValToChar(Round(nLitrosUsados, 2)) + " litros", "Informações da sua Viagem")
Return
