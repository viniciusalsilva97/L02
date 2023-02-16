#INCLUDE 'totvs.ch'

User Function diasMes()
    local nDias 
    
    nDias := Randomize(1, 12)

    if nDias == 1
        MsgInfo("31 dias", "Janeiro")
    elseif nDias == 2
        MsgInfo("28 dias", "Fevereiro")
    elseif nDias == 3
        MsgInfo("31 dias", "Março")
    elseif nDias == 4
        MsgInfo("30 dias", "Abril")
    elseif nDias == 5
        MsgInfo("31 dias", "Maio")
    elseif nDias == 6
        MsgInfo("30 dias", "Junho")
    elseif nDias == 7
        MsgInfo("31 dias", "Julho")
    elseif nDias == 8
        MsgInfo("31 dias", "Agosto")
    elseif nDias == 9
        MsgInfo("30 dias", "Setembro")
    elseif nDias == 10
        MsgInfo("31 dias", "Outubro")
    elseif nDias == 11
        MsgInfo("30 dias", "Novembro")
    elseif nDias == 3
        MsgInfo("31 dias", "Dezembro")
    endif
Return 
