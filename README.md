O e-commerce se baseia em um banco de dados criado em SQL. Aqui está o script para poder rodar o projeto de maneira funcional:

<------------------->

CREATE DATABASE srilankalab;
USE srilankalab;

CREATE TABLE clientes
(
idCliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
cpf CHAR(14) NOT NULL,
email VARCHAR(50) NOT NULL,
senha VARCHAR(20) NOT NULL
);

SELECT * FROM clientes;

CREATE TABLE produtos
(
idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
valor DECIMAL (10, 2) NOT NULL,
quantidade INT,
descProduto VARCHAR(120) NOT NULL
);

CREATE TABLE pedidos
(
idPedido INT AUTO_INCREMENT PRIMARY KEY,
valorTotal DECIMAL NOT NULL,
dataPedido DATETIME
);

CREATE TABLE itensPedidos
(
idItemPedido INT AUTO_INCREMENT PRIMARY KEY,
pedido_id INT,
produto_id INT,
qtdItens INT,
valorItem DECIMAL,
FOREIGN KEY(pedido_id) REFERENCES pedidos(idPedido),
FOREIGN KEY(produto_id) REFERENCES produtos(idProduto)
);

INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Creatina Monohidratada 250g - Growth Supplements", 79.98, 2124, "A creatina mais amada do mercado agora acessível para você!");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Creatina Monohidratada 100g - Growth Supplements", 40.99, 2060, "A creatina mais amada do mercado agora acessível para você!");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Creatina MaxTitanium 300g", 90.99, 1189, "Uma das creatinas mais famosas do mercado disponível para você agora!");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Creatina DarkLab 300g", 60.50, 5263, "A primeira creatina a ser comprovada 100% pura no Brasil! Qualidade excelente por um preço justo.");


INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Whey Protein 1KG - Growth Supplements", 109.89, 5623, "O famoso whey de 1kg da growth com inúmeros sabores");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Whey Protein 900g - Max Titanium", 120.39, 891, "Matéria-prima de alta qualidade, alta quantidade de aminoácidos, alto teor de proteínas, gluten free.");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Whey Protein Concentrado 1KG - Dark Lab", 90.99, 851, "O Whey com melhor custo benefício do mercado e com diversos sabores.");


INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Pré-Treino Haze Hardcore 300g - Growth Supplements", 100.50, 134, "Redução da fadiga e maior desempenho físico esportivo em atividades de alta intensidade e grande volume.");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Pré-Treino Max Titanium Horus 300g", 127.38, 891, "Com formulação altamente tecnológica e ingredientes de ótima qualidade, para você ter um treino com muito mais eficiência.");
INSERT INTO produtos (nome, valor, quantidade, descProduto)
values ("Pré-Treino Venom Underground Pre Workout 300g - Dark Lab", 90.99, 851, "Pré-treino feito para maximizar sua força e alcançar seus objetivos, contendo cafeína, taurina e beta-alanina.");

select * from produtos;
