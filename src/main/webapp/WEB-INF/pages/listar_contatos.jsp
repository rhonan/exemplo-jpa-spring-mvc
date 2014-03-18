<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/webjars/bootstrap/3.1.1/css/bootstrap.min.css"/>" rel="stylesheet" media="screen">
<script src="<c:url value="/webjars/jquery/1.9.0/jquery.min.js"/>" ></script>
<script src="<c:url value="/webjars/bootstrap/3.1.1/js/bootstrap.min.js"/>" ></script>
<title>Contatos</title>
</head>
<body>
	<h1>Listagem de Contatos</h1>
	<table class="table" border="1">
		<c:forEach var="contato" items="${contatos}">
			<tr>
				<td>${contato.nome}</td>
				<td>${contato.fone}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>