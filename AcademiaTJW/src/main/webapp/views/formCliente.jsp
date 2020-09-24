<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
	<h1> ${not empty cliente ? "Atualizando Cliente "  : "Cadastrar Cliente"}</h1>
</title>
<link rel="stylesheet" href="./css/style.css">
</head>
<body>

<h1> ${not empty cliente ? "Atualizando Cliente "  : "Cadastrar Cliente"}</h1>
<form name="cadastro" action="ClienteController" method="post">
	<input type="hidden" name="id" value="${cliente.id}"><br>
	
	<label>Nome:</label> <br/>
	<input required type="text" name="nome" value="${cliente.nome}"><br>
	
	<label>Endereço:</label> <br/>
	<input required type="text" name="endereco" value="${cliente.endereco}"><br>

	<label>Telefone:</label> <br/>
	<input required type="text" name="fone" value="${cliente.fone}"><br>
	
	<label>Modalidade:</label> <br/>
	<input required type="text" name="modalidade" value="${cliente.modalidade}"><br>
	
	<label>Horário:</label> <br/>
	<input required type="text" name="horário" value="${cliente.horario}"><br>
	
	<input class="btn btn-primary" type=submit  name="btCadastro" value="${not empty cliente ? "Atualizar" : "Cadastrar"}">
	<a class="btn" href="ClienteController?app=listarModalidade">Modalidades</a>
	<a class="btn" href="ClienteController?app=listarHorarios">Horários</a>
	<a class="btn" href="ClienteController?app=listarCliente">Voltar</a>
	
</form>
</body>
</html>