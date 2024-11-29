<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/index.css">
<title>Página Inicial</title>
</head>
<body>

        

<header>
        <div class="top-header">
            <div class="logo">
                <a href="index.jsp"><img src="img/Logo pi.png" alt="Logo"></a>
            </div>
            <div class="barra-pesquisa">
                <input type="text" placeholder="Pesquisar...">
                <button type="submit"><img src="img/Lupa.png" width="25px"></button>
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
                <li><a href="#creatinas">Creatina</a></li>
                <li><a href="#wheys">Whey </a></li>
                <li><a href="#pretreinos">Pré Treino</a></li>
            </ul>
        </nav>
    </header>
    
     

    <!-- Carrossel -->
    <div class="slider">
        <input type="radio" name="slide" id="slide1" checked>
        <input type="radio" name="slide" id="slide2">
        <input type="radio" name="slide" id="slide3">

        <div class="slides">
            <div class="slide" id="s1">
                <img src="img/test.png" alt="Imagem 1">
            </div>
            <div class="slide" id="s2">
                <img src="img/dark2.webp" alt="Imagem 2">
            </div>
            <div class="slide" id="s3">
                <img src="img/max2.webp" alt="Imagem 3">
            </div>
        </div>

        <!-- Botões de navegação -->
        <div class="navigation">
            <label for="slide1" class="nav-button"></label>
            <label for="slide2" class="nav-button"></label>
            <label for="slide3" class="nav-button"></label>
        </div>


    </div>
    <!-- Carrossel -->

    
    <div id="creatinas" class="container-produtos">
        <section class="painel">
           <h2>Creatinas</h2>
<ul>
    <li>
        <figure>
            <img src="img/Growth.png" alt="miniatura12" >
            <figcaption class="linha"></figcaption>
            <figcaption>Creatina Growth</figcaption>
            <figcaption>R$79.98</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Creatina%20Growth&preco=79.98&imagem=Growth.png&descricao=250g">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>

    <li>
        <figure>
            <img src="img/Max.png" alt="miniatura11">
            <figcaption class="linha"></figcaption>
            <figcaption>Creatina MaxTitanium</figcaption>
            <figcaption>R$90.99</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Creatina%20MaxTitanium&preco=90.99&imagem=Max.png">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>

    <li>
        <figure>
            <img src="img/darkLab creat.png" alt="miniatura10" >
            <figcaption class="linha"></figcaption>
            <figcaption>Creatina DarkLab</figcaption>
            <figcaption>R$60.50</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Creatina%20DarkLab&preco=60.50&imagem=darkLab%20creat.png">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>
</ul>
            
        </section>
    </div>

    <div class="container-whey">
        <section>
            <h2>Whey Protein</h2>
<ul>
    <li>
        <figure>
            <img src="img/Whey Growth.jpg" alt="miniatura12" >
            <figcaption class="linha"></figcaption>
            <figcaption>Whey Protein Growth</figcaption>
            <figcaption>R$109.89</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Whey%20Protein%20Growth&preco=109.89&imagem=Whey%20Growth.jpg&descricao=1kg">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>

    <li>
        <figure>
            <img src="img/Whey Max.webp" alt="miniatura11" >
            <figcaption class="linha"></figcaption>
            <figcaption>Whey Protein Max</figcaption>
            <figcaption>R$120.39</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Whey%20Protein%20Max&preco=120.39&imagem=Whey%20Max.webp&descricao=1kg">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>

    <li>
        <figure>
            <img src="img/whey dark.jpg" alt="miniatura10" >
            <figcaption class="linha"></figcaption>
            <figcaption>Whey Protein DarkLab</figcaption>
            <figcaption>R$90.99</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Whey%20Protein%20DarkLab&preco=90.99&imagem=whey%20dark.jpg&descricao=900g">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>
</ul>
            
        </section>
    </div>

    <div class="container-pre-treino">
        <section>
            <h2>Pré Treino</h2>
<ul>
    <li>
        <figure>
            <img src="img/pre treino growth.webp" alt="miniatura12" width="">
            <figcaption class="linha"></figcaption>
            <figcaption>Pré Treino Growth</figcaption>
            <figcaption>R$100.50</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Pré%20Treino%20Growth&preco=100.50&imagem=pre%20treino%20growth.webp&descricao=300g">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>

    <li>
        <figure>
            <img src="img/pretreino max.webp" alt="miniatura11" width="">
            <figcaption class="linha"></figcaption>
            <figcaption>Pré Treino Max Titanium</figcaption>
            <figcaption>R$127.38</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Pré%20Treino%20Max%20Titanium&preco=127.38&imagem=pretreino%20max.webp&descricao=300g">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>

    <li>
        <figure>
            <img src="img/pretreino dark.png" alt="miniatura10" width="">
            <figcaption class="linha"></figcaption>
            <figcaption>Pré Treino DarkLab</figcaption>
            <figcaption>R$90.99</figcaption>
            <a href="views/finalizarCompra.jsp?produto=Pré%20Treino%20DarkLab&preco=90.99&imagem=pretreino%20dark.png&descricao=300g">
                <button type="submit" class="botao-comprar">Comprar</button>
            </a>
        </figure>
    </li>
</ul>
        </section>

    </div>

</body>

</html>