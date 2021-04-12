<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${ not empty empresa }">
		Empresa ${ empresa } cadastrada com sucesso!
	</c:if>
	
	
	
	
	<h1>Lista de empresas: </h1>
	
	
		<ul>
			<c:forEach items="${empresas}" var="empresa">	 <!-- sao os itens que vao fazer o laco, no caso o for vai percorrer a variavel de empresas -->
				<li>${empresa.nome }  <fmt:formatDate value="${ empresa.dataAbertura }" pattern="dd/MM/yyyy"/>-<!-- mostra o nome das empresas -->
					<a href="/gerenciador/mostraEmpresa?id=${ empresa.id }"> alterar</a>
					<a href="/gerenciador/removeEmpresa?id=${ empresa.id }">remover</a>
				</li>
			</c:forEach>
		</ul>



</body>
</html>