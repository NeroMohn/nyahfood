<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Pedido</title>
    </head>
    <body>
        <h1>Pesquisa Pedido</h1>
        <table border=1>
            <tr>
                <th>Código Pedido</th>
                <th>Código Comida</th>
                <th>Subtotal</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
          
                <c:forEach items="${pedidos}" var="pedido">
                    <tr>
                        <td><c:out value="${pedido.idPedido}"/></td>
                        <td><c:out value="${pedido.codComida}"/></td>
                        <td><c:out value="${pedido.date}"/></td>
                        <td><a href="ManterPedidoController?acao=prepararOperacao&operacao=Editar&idPedido=<c:out value="${pedido.idPedido}"/>">Editar</a></td>
                        <td>
                            <a href="ManterPedidoController?acao=prepararOperacao&operacao=Excluir&idPedido=<c:out value="${pedido.idPedido}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>

        </table>
        <form action="ManterPedidoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
             <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>