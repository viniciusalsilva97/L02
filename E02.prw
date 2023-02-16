#INCLUDE "totvs.ch"

#DEFINE NKM 12

User Function litrosGastos()
    local nTempoGasto   := ''
    local nVelMedia     := ''
    local nDistancia    := ''
    local nLitrosUsados := ''

    nTempoGasto := Val(FwInputBox("Quanto tempo você gastou na viagem?", ''))
    nVelMedia   := Val(FwInputBox("Qual foi a sua velocidade média durante a viagem?", ''))

    nDistancia := nTempoGasto * nVelMedia
    nLitrosUsados := nDistancia / NKM 

    FwAlertInfo("Velocidade média: " + cValToChar(nVelMedia) + " Km/h"+ CRLF + "Tempo gasto na viagem: " + cValToChar(nTempoGasto) + " h" + CRLF + "Distância percorrida: " + cValToChar(Round(nDistancia, 2)) + " Km" + CRLF + "Quantidade de Litros gastos na viagem: " + cValToChar(Round(nLitrosUsados, 2)) + " litros", "Informações da sua Viagem")
Return
