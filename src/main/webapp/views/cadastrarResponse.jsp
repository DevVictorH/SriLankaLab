<%@page import="dao.ClienteDao"%>
<%@page import="model.Cliente"%>
<%@page import="controller.ClienteController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Response</h1>

<%

String nome = request.getParameter("nome");
String cpf = request.getParameter("cpf");
String email = request.getParameter("email");
String senha = request.getParameter("senha");


Cliente clienteCriado = new Cliente(nome, cpf, email, senha);

ClienteDao dao = new ClienteDao();

dao.inserir(clienteCriado);

ClienteController controller = new ClienteController();




%>

   


</body>
</html>