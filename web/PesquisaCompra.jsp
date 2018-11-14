<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Compra</title>
    </head>
    <body>
        <h1>Pesquisa Compra</h1>
        <table border=1>
            <tr>
                <th>Código Compra</th>
                <th>Total</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
          
                <c:forEach items="${compras}" var="compra">
                    <tr>
                        <td><c:out value="${compra.idCompra}"/></td>
                        <td><c:out value="${compra.total}"/></td>
                        <td><a href="ManterCompraController?acao=prepararOperacao&operacao=Editar&idCompra=<c:out value="${compra.idCompra}"/>">Editar</a></td>
                        <td>
                            <a href="ManterCompraController?acao=prepararOperacao&operacao=Excluir&idCompra=<c:out value="${compra.idCompra}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>
    

        </table>
        <form action="ManterCompraController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
             <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>