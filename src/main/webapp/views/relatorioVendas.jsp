<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Relatório Vendas</title>
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
                    <li><a href="views/manutencaoProduto.jsp">Gerenciar Produtos</a></li>
                    <li><a href="views/manutencaoCliente.jsp">Configurações </a></li>
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
    <header>
      <h1>Relatório de Vendas</h1>
    </header>
    <main>
      <table>
        <thead>
          <tr>
            <th>Código do Produto</th>
            <th>Nome do Produto</th>
            <th>Data da Venda</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Codigo</td>
            <td>Nome</td>
            <td>00/00/0000</td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </tbody>
      </table>
    </main>
  </div>
  
</body>




</html>