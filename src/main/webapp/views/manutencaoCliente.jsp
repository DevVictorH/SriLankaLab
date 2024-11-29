<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/manuCliente.css">
<title>Manutenção Cliente</title>
</head>
<body>


    <header>
        <div class="top-header">
            <div class="logo">
                <a href="../indexLogado.jsp"><img src="../img/Logo pi.png" alt="Logo"></a>
            </div>
            <div class="Login">
                <p>
                <a href="manutencaoCliente.jsp"><img src="../img/perfil.png" width="65px"></a>
                </p>
            </div>

        </div>
       
    </header>

    <form class="formCliente">

        <h1>Edite seus Dados</h1>
        <label for"email">Email</label>

        <input type="text" id="exemplo@email.com" placeholder="exemplo@email.com">

        <label for"nome">Nome</label>

        <input type="text" id="Exemplo" placeholder="Exemplo">

        <label for=dataNasc>Data de nascimento</label>

        <input type="date" value="01/01/1969" />

        <label for"cpf">CPF</label>

        <input type="text" id="000.000.000-00" placeholder="000.000.000-00">

        <label for"senha">Senha</label>

        <input type="password" id="senha" placeholder="Nova Senha">

        <label for"confirmarSenha">Confirmar Senha</label>

        <input type="password" id="ConfirmarSenha" placeholder="Confirmar senha">


        <button class="alterarDados" type="button">Alterar Dados</button>

    </form>

</body>
</html>