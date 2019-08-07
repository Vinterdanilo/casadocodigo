<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<br>
	<div class="container">
		<form class="bg-light" action="/casadocodigo/produto" method="post">
			<div class="row">
				<div class="col-9">
					<label>Titulo:</label> <input class="form-control" type="text"
						name="titulo" />
				</div>
				<div class="col">
					<label>Páginas:</label> <input class="form-control" type="text"
						name="paginas" />
				</div>
			</div>
			<div>
				<label>Descrição:</label>
				<textarea class="form-control" rows="5" cols="20" name="descricao"></textarea>
			</div>
			<br>
			<div>
				<label>Preços:</label>
			</div>
			<div class="row">
				<c:forEach items="${tipos}" var="tipoPreco" varStatus="status">

					<div class="col">
						<label>${tipoPreco}</label> <input class="form-control"
							type="text" name="precos[${status.index}].valor" /> 
							<input class="form-control" type="hidden"
							name="precos[${status.index}].tipo" value="${tipoPreco}" />
					</div>
				</c:forEach>
			</div>
			<br>
			<button class="btn btn-success" type="submit">Enviar</button>
		</form>
	</div>
</body>
</html>
