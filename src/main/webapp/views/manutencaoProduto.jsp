<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/manutencaoProduto.css">
<title>Produtos</title>
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
                    <li><a href="#">Gerenciar Produtos</a></li>
                    <li><a href="#">Configurações </a></li>
                    <li><a href="#">Sair</a></li>
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
                    <tr>
                        <td>Produto 1</td>
                        <td>R$ 50,00</td>
                        <td>
                            <button class="edit">Editar</button>
                            <button class="delete">Remover</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Produto 2</td>
                        <td>R$ 30,00</td>
                        <td>
                            <button class="edit">Editar</button>
                            <button class="delete">Remover</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Produto 3</td>
                        <td>R$ 70,00</td>
                        <td>
                            <button class="edit">Editar</button>
                            <button class="delete">Remover</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Produto 4</td>
                        <td>R$ 100,00</td>
                        <td>
                            <button class="edit">Editar</button>
                            <button class="delete">Remover</button>
                        </td>
                    </tr>
                    <tr>
                        <td>Produto 5</td>
                        <td>R$ 20,00</td>
                        <td>
                            <button class="edit">Editar</button>
                            <button class="delete">Remover</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="product-form">
            <h2>Adicionar/Editar Produto</h2>
            <form>
                <label for="product-name">Nome do Produto:</label>
                <input type="text" id="product-name" required>

                <label for="product-price">Preço:</label>
                <input type="number" id="product-price" required>

                <label for="imagem-produto">Imagem: </label>
                <input type="file" id="product-image" accept="image/*" required>

                <button type="submit">Salvar</button>
            </form>
        </div>
    </div>

</body>
</html>