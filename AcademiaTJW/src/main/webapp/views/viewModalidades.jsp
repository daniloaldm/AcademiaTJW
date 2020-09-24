<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MODALIDADES DISPONÍVEIS</title>
<link rel="stylesheet" href="./css/style.css">
</head>
<body>

	<div>
		<h1 class="lmodalidade">Lista de Modalidades</h1>
	</div>

	<table style="margin-top: 30px">
		<thead>
			<tr>
				<th>Modalidade</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${clientes}" var="cliente">
				<tr>
					<td><c:out value="${cliente.modalidade}" /></td>
				</tr>
			</c:forEach>
			 </tbody>
    </table>
    <br/>
    <a class="btn" href="ClienteController?app=cadastro">Voltar</a>
</body>
</html>