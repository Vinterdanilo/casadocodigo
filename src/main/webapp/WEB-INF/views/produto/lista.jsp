<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<br>
		<h3>Listagem de Produtos</h3>
		<br>
		
		<div>${mensagem}</div>

		<table
			class="table table-striped table-borderedtable-hover  table-sm table-condensed border-dark table-light">
			<thead class="thead-dark">
				<tr>
					<td><strong>ID</strong></td>
					<td>Título</td>
					<td>Descrição</td>
					<td>Páginas</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto">
					<tr>
						<td><strong>${produto.id_produto}</strong></td>
						<td>${produto.titulo}</td>
						<td>${produto.descricao}</td>
						<td>${produto.paginas}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>