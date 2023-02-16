#INCLUDE 'totvs.ch'

User Function somaParImpar()
    local nCont
    local nLimite
    local cEscolha 
    local nSomaImpar := 0
    local nSomaPar := 0
    local lValidaEscolha := .t.

    nLimite := Val(FwInputBox("Você quer ver o somatório de quantos números?"))

    while lValidaEscolha
        cEscolha := Upper(FwInputBox("Você quer ver o somatório de números pares ou ímpares? ['P'/'I']"))
        if cEscolha  == 'P' .or. cEscolha  == 'I'
            lValidaEscolha := .f.
        else
            FwAlertError("Apenas os daods 'P' ou 'I' são permitidos","Atenção!")
        endif
    end

    for nCont := 1 to nLimite
        if nCont % 2 == 0
            nSomaPar += nCont
        else
            nSomaImpar += nCont
        endif
    next

    if cEscolha == 'I'
        MsgInfo(cValToChar(nSomaImpar),"Soma números Ímpares")
    else
        MsgInfo(cValToChar(nSomaPar),"Soma números Pares")
    endif
Return 
