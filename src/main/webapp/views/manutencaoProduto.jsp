<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Produto" %>
<%@ page import="dao.ProdutoDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../css/manutencaoProduto.css">
    <title>Manutenção de Produtos</title>
</head>
<body>
    <header>
        <div class="top-header">
            <div class="logo">
                <a href="../indexAdmin.jsp"><img src="../img/Logo pi.png" alt="Logo"></a>
            </div>
            <nav class="itens">
                <ul>
                    <li><a href="#">Menu Admin</a></li>
                    <li><a href="views/manutencaoProduto.jsp">Gerenciar Produtos</a></li>
                    <li><a href="manutencaoCliente.jsp">Configurações </a></li>
                    <li><a href="index.jsp">Sair</a></li>
                </ul>
            </nav>

            <div class="Login">
                <p>
                    Usuário:Admin
                </p>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="product-list">
            <h2>Lista de Produtos</h2>
            <table>
                <thead>
                    <tr>
                        <th>Nome do Produto</th>
                        <th>Preço</th>
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ProdutoDAO dao = new ProdutoDAO();
                        List<Produto> produtos = dao.listarProdutos(); // Chama os produtos do banco
                        for (Produto produto : produtos) {
                    %>
                        <tr>
                            <td><%= produto.getNome() %></td>
                            <td>R$ <%= String.format("%.2f", produto.getPreco()) %></td>
                            
                           
        
                            <td>
                             <form action="${pageContext.request.contextPath}/removerProduto" method="post">
                            <input type="hidden" name="idProduto" value="<%= produto.getId() %>">
                            <button type="submit" class="delete">Remover</button>
                            <button class="edit">Editar</button>
                             </form>
                        </td>
                        </tr>
                        
                    <%
                        }
                    %>
                </tbody>
            </table>
            <% 
    if (produtos.isEmpty()) {
        out.println("Nenhum produto encontrado!");
    }
%>
        </div>
    </div>
    
    
   <a href="cadastroProduto.jsp"><button type="submit" class="piroca">Cadastrar Produto</button></a>
    
</body>
</html>
