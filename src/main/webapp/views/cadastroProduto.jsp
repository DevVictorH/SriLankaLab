<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/cadastroProduto.css">
<title>Cadastro do Produto</title>
</head>
<body>


<header>
        <div class="top-header">
            <div class="logo">
                <a href="#"><img src="../img/Logo pi.png" alt="Logo"></a>
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

<form action="${pageContext.request.contextPath}/ProdutoServlet" method="post">
        <h1>Cadastro Produto</h1>

        <c:if test="${not empty erro}">
            <div style="color: red;">${erro}</div>
        </c:if>
        <c:if test="${not empty sucesso}">
            <div style="color: green;">${sucesso}</div>
        </c:if>
        <br />

        <label for="nome">Nome do Produto</label>

        <input type="text" id="nome" name="nome" value="${param.nome}">

        <label for="quantidade">Quantidade</label>

        <input type="number" id="quantidade" name="quantidade" value="${param.quantidade}">

        <label for="preco" id="preco">Preço</label>

        <input type="number" name="preco" value="${param.preco}">

        <label for="descricao" id="descricao">Descrição</label>

        <input type="text" name="descricao" value="${param.descricao}">

        <div class="botoes">
            <input class="button-cadastrar" type="submit" value="Cadastrar">
            <button class="Voltar" type="button" onclick="window.location.href='../index.jsp'">Voltar para Página Inicial</button>
            <!--O onclick é igual a tag (a),so que com a tag (a) não dava pra mudar o background-color-->
        </div>
    </form>

</body>

</html>