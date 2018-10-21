<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Comida</title>
    </head>
    <body>
        <h1>Pesquisa Comida</h1>
        <table border=1>
            <tr>
                <th>Código Comida</th>
                <th>Nome Comida</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
                <c:forEach items="${comidas}" var="comida">
                    <tr>
                        <td><c:out value="${comida.idComida}"/></td>
                        <td><c:out value="${comida.nome}"/></td>
                        <td><a href="ManterComidaController?acao=prepararOperacao&operacao=Editar&IdComida=<c:out value="${comida.idComida}"/>">Editar</a></td>
                        <td>
                            <a href="ManterComidaController?acao=preparaOperacao&operacao=Excluir&IdComida=<c:out value="${comida.idComida}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>


        </table>
        <form action="ManterComidaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
                 <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>