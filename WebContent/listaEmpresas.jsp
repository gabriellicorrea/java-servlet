<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Lista de empresaas: <br />
	
		<ul>
			<c:forEach items="${empresas}" var="empresa">	 <!-- sao os itens que vao fazer o laco, no caso o for vai percorrer a variavel de empresas -->
				<li>${empresa.nome }</li><!-- mostra o nome das empresas -->
			</c:forEach>
		</ul>

</body>
</html>