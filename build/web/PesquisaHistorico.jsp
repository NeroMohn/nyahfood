<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Historico</title>
    </head>
    <body>
        <h1>Pesquisa Historico</h1>
        <table border=1>
            <tr>
                <th>Código Histórico</th>
                <th>Código Compra</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
            
                <c:forEach items="${historicos}" var="historico">
                    <tr>
                        <td><c:out value="${historico.idHistorico}"/></td>
                        <td><c:out value="${historico.codCompra}"/></td>
                        <td><a href="ManterHistoricoController?acao=prepararOperacao&operacao=Editar&idHistorico=<c:out value="${historico.idHistorico}"/>">Editar</a></td>
                        <td>
                            <a href="ManterHistoricoController?acao=prepararOperacao&operacao=Excluir&idHistorico=<c:out value="${historico.idHistorico}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>

        </table>
        <form action="ManterHistoricoController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
             <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>