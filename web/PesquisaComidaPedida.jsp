<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Comida Pedida</title>
    </head>
    <body>
        <h1>Pesquisa Comida Pedida</h1>
        <table border=1>
            <tr>
                <th>Código Comida Pedida</th>
                <th>Código Comida</th>
                <th>Preço Total</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
           
                <c:forEach items="${comidasPedidas}" var="comidaPedida">
                    <tr>
                        <td><c:out value="${comidaPedida.idComidaPedida}"/></td>
                        <td><c:out value="${comidaPedida.codComida}"/></td>
                        <td><c:out value="${comidaPedida.precoTotal}"/></td>
                        <td><a href="ManterComidaPedidaController?acao=prepararOperacao&operacao=Editar&idComidaPedida=<c:out value="${comidaPedida.idComidaPedida}"/>">Editar</a></td>
                        <td>
                            <a href="ManterComidaPedidaController?acao=prepararOperacao&operacao=Excluir&idComidaPedida=<c:out value="${comidaPedida.idComidaPedida}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>


        </table>
        <form action="ManterComidaPedidaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
             <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>