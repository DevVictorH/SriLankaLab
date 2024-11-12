<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="utils.*, java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	try {
		Connection conexao = ConnectionFactory.getConexao();
		System.out.println("Sucesso!");
	} catch (Exception ex) {
		System.out.println("Erro");
	}
%>

</body>
</html>