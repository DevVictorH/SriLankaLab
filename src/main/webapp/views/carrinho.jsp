<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carrinho de Compras</title>
    <link rel="stylesheet" href="../css/carrinho.css">
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
                    <a class="logar" href="views/login.jsp">Login</a>
                    |
                    <a class="cadastrar" href="views/cadastroCliente.jsp">Cadastre-se</a>
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
    
    
    <h1>Carrinho de Compras</h1>

    <table border="1">
        <thead>
            <tr>
                <th>Produto</th>
                <th>Preço</th>
            </tr>
        </thead>
        <tbody>
            <%
                // Obter o carrinho da sessão
                List<Map<String, Object>> carrinho = (List<Map<String, Object>>) session.getAttribute("carrinho");
                if (carrinho != null && !carrinho.isEmpty()) {
                    for (Map<String, Object> item : carrinho) {
            %>
                        <tr>
                            <td><%= item.get("produto") %></td>
                            <td>R$ <%= item.get("preco") %></td>
                        </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="2">Seu carrinho está vazio.</td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <a class="continuarCompra" href="../index.jsp">Continuar Comprando</a>
</body>
</html>