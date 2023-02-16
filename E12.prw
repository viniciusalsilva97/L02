#INCLUDE 'totvs.ch'

#DEFINE NFINAL 25

User Function multiplos3()
    local nCont

    for nCont := 1 to NFINAL
        if nCont % 3 == 0
            MSGINFO( cValToChar(nCont), "Multiplos de 3" )
        endif
    next
Return 
