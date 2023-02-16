#INCLUDE 'totvs.ch'

User Function divisiveis()
    local nCont 
    local nNum 

    for nCont := 1 to 4
        nNum := Randomize(1, 25)
        
        if nNum % 2 == 0 .and. nNUm % 3 == 0
            MsgInfo(cValToChar(nNum),"Divisível por 2 e por 3")
        else
            MsgInfo(cValToChar(nNum),"Nem por 2 nem por 3")
        endif 
    next
Return 
