#INCLUDE 'totvs.ch'

#DEFINE nTempoMaximo 24

 User Function poker()
    local cHoraInicio
    local cHoraFim
    local nDuracao
    local dDataInicio := Date()
    local dDataFim 

    cHoraInicio := FwInputBox("Qual hora iniciou a partida de poker?")
    cHoraFim := FwInputBox("Qual hora terminou a partida de poker?")
    dDataFim := cToD(FwInputBox("Qual a data que voc� finalizou a partida?"))


    nDuracao := subtHoras(dDataInicio, cHoraInicio, dDataFim, cHoraFim)

    if nDuracao > nTempoMaximo
        FwAlertError("Um jogo de poker tem dura��o m�xima de 24 horas", cValToChar(nDuracao) + " horas de dura��o?")
    else
        FwAlertSuccess(cValToChar(nDuracao) + " horas", "Dura��o da partida")
    endif
    
 Return 
