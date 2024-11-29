<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>Finalizar Compra</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap.css">
</head>

<body>

    <header>
        <div class="top-header">
            <div class="logo">
                <a href="../index.jsp"><img src="../img/Logo pi.png" alt="Logo" width="150px"></a>
            </div>
    </header>

    <div class="jumbotron jumbotron-fluid">
        <div class="container">
            <h1 class="display-4">Boa escolha!</h1>

            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xl-3">
                        <div class="card">
                            <div class="card-header">
                                <h2>Sua compra</h2>
                            </div>
                            <div class="card-body">
                                <!-- Exibe o produto selecionado -->
                                <img src="../img/<%= request.getParameter("imagem") %>" alt="Fuzzy Cardigan" class="img-thumbnail">
                                <dl>
                                    <dt>Produto</dt>
                                    <dd><%= request.getParameter("produto") %></dd>
                                    <dt>Preço</dt>
                                    <dd>R$ <%= request.getParameter("preco") %></dd>
                                    <dt>Descrição</dt>
                                    <dd><%= request.getParameter("descricao") %></dd> <!-- Se necessário, passe também uma descrição -->
                                </dl>
                            </div>
                        </div>
                    </div>
                    <form class="col-md-8 col-xl-9">
                        <div class="row">
                            <fieldset class="col-lg-6">
                                <legend>Dados Pessoais:</legend>
                                <div class="form-group">
                                    <label for="nome">Nome Completo:</label>
                                    <input type="text" class="form-control" id="nome" name="nome" required autofocus>
                                </div>
                                <div class="form-group">
                                    <label for="email">E-mail:</label>
                                    <input type="email" class="form-control" placeholder="email@exemplo.com" id="email" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="cpf">CPF:</label>
                                    <input type="text" class="form-control" id="cpf" name="cpf" placeholder="000.000.000-00">
                                </div>
                            </fieldset>
                            <fieldset class="col-lg-6">
                                <legend>Cartão de Crédito:</legend>
                                <div class="form-group">
                                    <label for="numero-cartao">Número - CVV</label>
                                    <input type="text" class="form-control" id="numero-cartao" name="numero-cartao">
                                </div>
                                <div class="form-group">
                                    <label for="bandeira-cartao">Bandeira</label>
                                    <select class="custom-select" id="bandeira-cartao">
                                        <option disabled selected>Selecione uma opção...</option>
                                        <option value="master">MASTERCARD</option>
                                        <option value="visa">VISA</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="validade-cartao">Validade:</label>
                                    <input type="month" class="form-control" id="validade-cartao" name="validade-cartao">
                                </div>
                            </fieldset>
                            <button type="submit" class="btn btn-primary">Confirmar Pedido</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
