<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/cadastroCliente.css">
<title>Cadastro do Cliente</title>
</head>
<body>

 <header>
        <div class="top-header">
            <div class="logo">
                <a href="../index.jsp"><img src="../img/Logo pi.png" alt="Logo"></a>
            </div>
            <div class="barra-pesquisa">
                <input type="text" placeholder="Pesquisar...">
                <button type="submit"><img src="../img/Lupa.png" width="25px"></button>
            </div>

            <div class="Login">
                <p>
                    <a class="logar" href="#">Login</a>
                    |
                    <a class="cadastrar" href="#">Cadastre-se</a>
                </p>
            </div>
        </div>
        <nav class="itens">
            <ul>
                <li><a href="#">Novidades</a></li>
                <li><a href="#">Creatina</a></li>
                <li><a href="#">Whey </a></li>
                <li><a href="#">Pré Treino</a></li>
            </ul>
        </nav>
    </header>

    <form action="novo" class="formCadastro" method="get">
        <h1>Cadastro Cliente</h1>
        <input type="text" id="nome" name="nome" placeholder="Nome Completo">
        <br><br>
        <input type="email" id="email" name="email" placeholder="Email">
        <br><br>
        <input type="text" id="cpf" name="cpf" placeholder="CPF">
        <br><br>
        <input id="date" type="date" name="date" />
        <br><br>
        <input type="password" id="senha" name="senha" placeholder="Senha">
        <br><br>
        <input class="btn-cadastrar" type="submit" value="Cadastrar">
        <a href="../index.jsp"><button class="pgn-inicial" type="button" >Voltar para Página Inicial</button></a>
    </form>

</body>
</html>