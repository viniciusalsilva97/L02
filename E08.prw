#INCLUDE 'totvs.ch'

#DEFINE cUserName "ADMIN"
#DEFINE nPassword   123456

User Function validacaoUsuario()
    local cUsuario
    local nSenha 

    cUsuario := Upper(FwInputBox("Entre com o seu nonme de usu�rio", cUsuario))
    nSenha   := Val(FwInputBox("Entre com a senha"))

    if cUserName == cUsuario 
        if  nPassword == nSenha 
            FwAlertSuccess("Acesso permitido!")
        endif
    else
        FwAlertError("Usu�rio ou senha inv�lidos!")
    endif
Return 
