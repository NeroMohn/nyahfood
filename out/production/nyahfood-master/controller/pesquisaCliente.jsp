<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Pesquisa de Cliente</title>
</head>
<body>
<h1>Pesquisa Cliente</h1>
<table border=1>
    <tr>
        <th>Código Cliente</th>
        <th>Nome Curso</th>
        <th colspan=2>Ação</th>
    </tr>

<c:forEach items="${clientes}" var="cliente">
    <tr>
        <td><c:out value="${cliente.idCliente}"/></td>
        <td><c:out value="${curso.nome}"/></td>
        <td><a href="ManterClienteController?acao=prepararOperacao&operacao==Editar&codCurso="<c:out value="${cliente.idCliente}"/>">Editar</a></td>
        <td>
            <a href="ManterClienteController?acao=preparaOperacao&operacao=Excluir&codCliente="<c:out value="${cliente.idCliente}"/>">Excluir</a></td>
    </tr>
</c:forEach>
</table>
<form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
    <<input type="submit" name="btnIncluir" value="Incluir">
</form>
</body>
</html>