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
                <th>Nome Cliente</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
                <c:forEach items="${clientes}" var="cliente">
                    <tr>
                        <td><c:out value="${cliente.idCliente}"/></td>
                        <td><c:out value="${cliente.nome}"/></td>
                        <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Editar&idCliente=<c:out value="${cliente.idCliente}"/>">Editar</a></td>
                        <td>
                            <a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&idCliente=<c:out value="${cliente.idCliente}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>


        </table>
        <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
            <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>