<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Carrinho de Compras</title>
    <link rel="stylesheet" href="../css/carrinho.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>


     <header>
        <div class="logo">
            <a href="../indexLogado.jsp"><img src="../img/Logo pi.png" alt="Logo"></a>
        </div>
    </header>
    
    
    <div class="cart-container">
        <!-- Cabeçalho -->
        <div class="cart-header">
            <div class="cart-title">
                <i class="cart-icon">🛒</i> Carrinho
            </div>
            <a href="../indexLogado.jsp"><button class="close-btn">✖</button></a>
        </div>

        <!-- Lista de itens no carrinho -->
        <div class="cart-items">

            <div class="cart-item">

                <img src="../img/darkLab creat.png" alt="Produto 1" class="item-image">

                <div class="item-details">

                    <p class="item-title">Descricao</p>

                    <div class="item-quantity">

                        <input type="number" value="1" class="quantity-input">

                    </div>
                </div>

                <div class="item-price">Preço</div>
                <button class="delete-btn">🗑️</button>
            </div>

            <div class="cart-item">

                <img src="../img/pre treino growth.webp" alt="Produto 2" class="item-image">

                <div class="item-details">

                    <p class="item-title">Descricao</p>

                    <div class="item-quantity">

                        
                        <input type="number" value="1" class="quantity-input">
                        

                    </div>
                </div>

                <div class="item-price">Preço</div>

                <button class="delete-btn">🗑️</button>

            </div>
            <br/>
            <div class="Finalizar">
                <a href="finalizarCompra.jsp"><button>Finalizar Compra</button></a>
            </div>
        </div>
    </div>
</body>
</html>