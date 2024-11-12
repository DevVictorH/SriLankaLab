<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
String senha = request.getParameter("senha");


Cliente clienteCriado = new Cliente(nome, cpf, email, senha);

%>

</body>
</html>