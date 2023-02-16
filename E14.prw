#INCLUDE 'totvs.ch'

User Function somaParImpar()
    local nCont
    local nLimite
    local cEscolha 
    local nSomaImpar := 0
    local nSomaPar := 0
    local lValidaEscolha := .t.

    nLimite := Val(FwInputBox("Voc� quer ver o somat�rio de quantos n�meros?"))

    while lValidaEscolha
        cEscolha := Upper(FwInputBox("Voc� quer ver o somat�rio de n�meros pares ou �mpares? ['P'/'I']"))
        if cEscolha  == 'P' .or. cEscolha  == 'I'
            lValidaEscolha := .f.
        else
            FwAlertError("Apenas os daods 'P' ou 'I' s�o permitidos","Aten��o!")
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
        MsgInfo(cValToChar(nSomaImpar),"Soma n�meros �mpares")
    else
        MsgInfo(cValToChar(nSomaPar),"Soma n�meros Pares")
    endif
Return 
