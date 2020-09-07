<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Cadastro</title>
<style type="text/css">
	label {
	width: 80px;float: left;
}
</style>
</head>
<body>

<h1>Cadastro de Clientes</h1>
<form name="cadastro" action="ClienteController" method="post">
                    <input type="hidden" name="id" value="${cliente.id}"><br>
<label>Nome:</label><input type="text" name="nome" value="${cliente.nome}"><br>
<label>Endereço:</label><input type="text" name="endereco" value="${cliente.endereco}"><br>
<label>Telefone:</label><input type="text" name="fone" value="${cliente.fone}"><br>
<label>&nbsp;</label><input type=submit  name="btCadastro" value="${not empty cliente ? "Atualizar" : "Cadastrar"}">
</form>
</body>
</html>