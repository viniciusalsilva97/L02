#INCLUDE 'totvs.ch'

User Function verificacaoCadastro()
    local cCadastro
    local cSenhaR
    local cConfirmaSenha
    local lVerificaCadastro := .t.
    local nI 
    local nTesteMaius   := 0
    local nTesteDig     := 0
    local nTesteSimbolo := 0
    local cTeste
    local lCaracteres := .t.

    cCadastro      := FwInputBox("Digite o seu username", cCadastro)
    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)

    //*Esse la�o vai fazer as primeiras valida��es
    while lVerificaCadastro
        if Len(cCadastro) < 5
            MsgInfo("Seu username precisa ter pelo menos 5 caracteres","Aten��o!")
            cCadastro := FwInputBox("Digite o seu username")
        elseif cSenhaR <> cConfirmaSenha
            MsgInfo("As senhas digitadas n�o conferem", "Aten��o!")
            cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
            cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
        elseif Len(cSenhaR) < 6
            MsgInfo("Sua senha deve ter pelo menos 6 caracteres", "Aten��o!")
            cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
            cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
        else
            //* Esse la�o vai conferir se tem caracteres maiusculos, s�mbolos e n�meros
            while lCaracteres
                for nI := 1 to len(cSenhaR)
                    //*Pega um caractere em espec�fico
                    cTeste := Substr(cSenhaR, nI, 1) 

                    //*Confirma se o caractere em quest�o est� no padr�o desejado
                    if IsUpper(cTeste) 
                        nTesteMaius++
                    elseif IsDigit(cTeste)
                        nTesteDig++
                    elseif Type(cTeste) == "U"
                        nTesteSimbolo++
                    endif
                next nI

                if nTesteMaius >= 1 .and. nTesteDig >= 1 .and. nTesteSimbolo >= 1
                        lCaracteres := .f.
                elseif nTesteMaius == 0 
                    MsgInfo("Sua senha deve ter pelo menos 1 caractere mai�sculo", "Aten��o!")
                    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
                    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
                elseif nTesteDig == 0 
                    MsgInfo("Sua senha deve ter pelo menos 1 digito", "Aten��o!")
                    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
                    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
                elseif nTesteSimbolo == 0 
                    MsgInfo("Sua senha deve ter pelo menos 1 s�mbolo especial", "Aten��o!")
                    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
                    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
                endif
            end    
        endif 

        if Len(cCadastro) >= 5 .and. cSenhaR == cConfirmaSenha .and. Len(cSenhaR) >= 6 .and. nTesteMaius >= 1 .and. nTesteDig >= 1 .and. nTesteSimbolo >= 1 
            lVerificaCadastro := .f.
        endif
    end
    FwAlertSuccess("Seu username: "+ cValToChar(cCadastro) + CRLF + "Sua senha: " + cValToChar(cSenhaR), "Suas Informa��es")
Return 
