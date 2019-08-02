<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form class="bg-light" action="/casadocodigo/produto" method="post">
			<div>
				<label>Titulo:</label> 
				<input class="form-control" type="text" name = "titulo"/>
			</div>
			<div>
				<label>Descrição:</label>
				<textarea class="form-control" rows="10" cols="20" name="descricao"></textarea>
			</div>
			<div>
				<label>Páginas:</label> 
				<input class="form-control" type="text" name = "paginas"/>
			</div>
			<br>
			<button class="btn btn-success" type="submit">Enviar</button>
		</form>
	</div>
</body>
</html>
