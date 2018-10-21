<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Tipo Cozinha</title>
    </head>
    <body>
        <h1>Pesquisa Tipo Cozinha</h1>
        <table border=1>
            <tr>
                <th>Código Tipo Cozinha</th>
                <th>Tipo</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
           
                <c:forEach items="${tiposcozinhas}" var="tipocozinha">
                    <tr>
                        <td><c:out value="${tipocozinha.idTipoCozinha}"/></td>
                        <td><c:out value="${tipocozinha.tipo}"/></td>
                        <td><a href="ManterTipoCozinhaController?acao=prepararOperacao&operacao=Editar&IdTipoCozinha=<c:out value="${tipocozinha.idTipocozinha}"/>">Editar</a></td>
                        <td>
                            <a href="ManterTipoCozinhaController?acao=preparaOperacao&operacao=Excluir&IdTipoCozinha=<c:out value="${tipocozinha.idTipocozinha}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>


        </table>
        <form action="ManterTipoCozinhaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
             <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>