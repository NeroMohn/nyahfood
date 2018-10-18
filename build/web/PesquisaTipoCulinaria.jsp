<%-- 
    Document   : PesquisaTipoCulinaria
    Created on : 18/10/2018, 00:13:15
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
        <tr class="table-header">
            <td>
                ID Cozinha
            </td>
            <td>
                ID Loja
            </td>
            <td colspan="2">Ações</td>


        </tr>
         <c:forEach items="${tipoComidas}" var="tipoComida">
    <tr>
        <td><c:out value="${tipoCulinaria.idTipoCulinaria}"/></td>
        <td><c:out value="${tipoComida.culinaria}"/></td>
   
        <td><a href="ManterTipoCulinariaController?acao=prepararOperacao&operacao==Editar&codTipoCulinaria="<c:out value="${tipoCulinaria.idTipoCulinaria}"/>">Editar</a></td>
        <td>
            <a href="ManterTipoCulinariaController?acao=preparaOperacao&operacao=Excluir&codTipoCulinaria="<c:out value="${tipoCulinaria.idTipoCulinaria}"/>">Excluir</a></td>
    </tr>
</c:forEach>
</table>
<form action="ManterTipoCulinariaController?acao=prepararOperacao&operacao=Incluir" method="post">
    <<input type="submit" name="btnIncluir" value="Incluir">

    </table>
    </body>
</html>
