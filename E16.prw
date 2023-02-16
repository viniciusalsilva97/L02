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

    //*Esse laço vai fazer as primeiras validações
    while lVerificaCadastro
        if Len(cCadastro) < 5
            MsgInfo("Seu username precisa ter pelo menos 5 caracteres","Atenção!")
            cCadastro := FwInputBox("Digite o seu username")
        elseif cSenhaR <> cConfirmaSenha
            MsgInfo("As senhas digitadas não conferem", "Atenção!")
            cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
            cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
        elseif Len(cSenhaR) < 6
            MsgInfo("Sua senha deve ter pelo menos 6 caracteres", "Atenção!")
            cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
            cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
        else
            //* Esse laço vai conferir se tem caracteres maiusculos, símbolos e números
            while lCaracteres
                for nI := 1 to len(cSenhaR)
                    //*Pega um caractere em específico
                    cTeste := Substr(cSenhaR, nI, 1) 

                    //*Confirma se o caractere em questão está no padrão desejado
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
                    MsgInfo("Sua senha deve ter pelo menos 1 caractere maiúsculo", "Atenção!")
                    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
                    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
                elseif nTesteDig == 0 
                    MsgInfo("Sua senha deve ter pelo menos 1 digito", "Atenção!")
                    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
                    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
                elseif nTesteSimbolo == 0 
                    MsgInfo("Sua senha deve ter pelo menos 1 símbolo especial", "Atenção!")
                    cSenhaR        := FwInputBox("Digite sua senha", cSenhaR)
                    cConfirmaSenha := FwInputBox("Confirme a sua senha digitada", cConfirmaSenha)
                endif
            end    
        endif 

        if Len(cCadastro) >= 5 .and. cSenhaR == cConfirmaSenha .and. Len(cSenhaR) >= 6 .and. nTesteMaius >= 1 .and. nTesteDig >= 1 .and. nTesteSimbolo >= 1 
            lVerificaCadastro := .f.
        endif
    end
    FwAlertSuccess("Seu username: "+ cValToChar(cCadastro) + CRLF + "Sua senha: " + cValToChar(cSenhaR), "Suas Informações")
Return 
