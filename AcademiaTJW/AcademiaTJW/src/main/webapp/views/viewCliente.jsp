<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Listar Clientes</title>
<link rel="stylesheet" href="./css/style.css">

</head>
<body>
<div> <h1 class="lclientes"> Lista de Clientes </h1></div>
	
       
    <table style="margin-top:30px">
        <thead>
            <tr>
                
                <th>Nome</th>
                <th>Endereço</th>
                <th>Telefone</th>
                <th>Modalidade</th>
                <th colspan=2>Ações</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${clientes}" var="cliente">
                <tr>
                    <td><c:out value="${cliente.nome}" /></td>
                    <td><c:out value="${cliente.endereco}" /></td>
                    <td><c:out value="${cliente.fone}" /></td>
                    <td><c:out value="${cliente.modalidade}" /></td>
                    <td><a class="btn btn-danger" href="ClienteController?app=excluir&clienteId=<c:out value="${cliente.id}"/>">Excluir</a></td>
                    <td><a class="btn btn-warning" href="ClienteController?app=update&clienteId=<c:out value="${cliente.id}"/>">Atualizar</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <br/>
    <a class="btn btn-primary"href="ClienteController?app=cadastro">Cadastrar Cliente</a>
	
</body>
</html>