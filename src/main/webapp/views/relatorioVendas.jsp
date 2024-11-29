<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Relatório de Vendas</title>
    <link rel="stylesheet" href="../css/relatorioVendas.css">
</head>
<body>
    <header>
        <div class="top-header">
            <div class="logo">
                <a href="#"><img src="../img/Logo pi.png" alt="Logo"></a>
            </div>
            <nav class="itens">
                <ul>
                    <li><a href="#">Menu Admin</a></li>
                    <li><a href="manutencaoProduto.jsp">Gerenciar Produtos</a></li>
                    <li><a href="manutencaoCliente.jsp">Configurações </a></li>
                    <li><a href="index.jsp">Sair</a></li>
                </ul>
            </nav>
            <div class="Login">
                <p>Usuário: Admin</p>
            </div>
        </div>
    </header>

    <div class="container">
        <h1>Relatório de Vendas</h1>

        <!-- Mensagem se não houver vendas -->
        <c:if test="${empty vendas}">
            <p style="color: red;">Nenhuma venda registrada.</p>
        </c:if>

        <!-- Tabela de Vendas -->
        <c:if test="${not empty vendas}">
            <table border="1">
                <thead>
                    <tr>
                        <th>Código da Venda</th>
                        <th>Nome do Cliente</th>
                        <th>Data da Venda</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="venda" items="${vendas}">
                        <tr>
                            <td>${venda[0]}</td> <!-- Código da Venda -->
                            <td>${venda[2]}</td> <!-- Nome do Cliente -->
                            <td>${venda[1]}</td> <!-- Data da Venda -->
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
</body>
</html>
