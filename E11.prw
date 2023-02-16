#INCLUDE 'totvs.ch'

#DEFINE MAX 3

User Function nmrsAleatorios()
    local nNum 
    local nCont
    local lResposta := .t.
    local nAux      := 0

    for nCont := 1 to MAX 
        nNum := Randomize(10, 99)
        MSGINFO( cValToChar(nNum), "Com FOR" )
    next

    
    FwAlertInfo("Vamos ver o mesmo processo, mas com WHILE dessa vez")

    while lResposta

        nNum := Randomize(10, 99)
        MSGINFO( cValToChar(nNum), "Com WHILE" )

        nAux++
        if nAux == MAX
            lResposta := .f.
        endif 
    end

Return
