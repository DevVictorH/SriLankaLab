<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Cliente"%>
<%@page import="dao.ClienteDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="1; url=../index.jsp">
<title>Insert title here</title>
</head>
<body>

<%

String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
String senha = request.getParameter("senha");


Cliente clienteCriado = new Cliente(nome, cpf, email, senha);

ClienteDao dao = new ClienteDao();



%>



</body>
</html>