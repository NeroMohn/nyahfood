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
        <h1>Pesquisa Tipo Culinaria</h1>
        <table border=1>
            <tr>
                <th>Código Tipo Culinaria</th>
                <th>Culinaria</th>
                <th>Código Loja</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
                <c:forEach items="${tiposculinarias}" var="tipoculinaria">
                    <tr>
                        <td><c:out value="${tipoculinaria.idTipoCulinaria}"/></td>
                        <td><c:out value="${tipoculinaria.culinaria}"/></td>
                        <td><c:out value="${tipoculinaria.codLoja}"/></td>
                        <td><a href="ManterTipoCulinariaController?acao=prepararOperacao&operacao=Editar&idTipoCulinaria=<c:out value="${tipoculinaria.idTipoCulinaria}"/>">Editar</a></td>
                        <td>
                            <a href="ManterTipoCulinariaController?acao=prepararOperacao&operacao=Excluir&idTipoCulinaria=<c:out value="${tipoculinaria.idTipoCulinaria}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>

        </table>
        <form action="ManterTipoCulinariaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
                 <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>