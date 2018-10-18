<%-- 
    Document   : PesquisaTipoComida
    Created on : 17/10/2018, 23:27:23
    Author     : David Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tipo Cozinha</title>
    </head>
    <body>
<table>
        <tr class="table-header">
            <td>
                ID
            </td>
            <td>
                NOME
            </td>
            <td colspan="2">Ações</td>


        </tr>
         <c:forEach items="${tipoComidas}" var="tipoComida">
    <tr>
        <td><c:out value="${tipoComida.idTipoComida}"/></td>
        <td><c:out value="${tipoComida.comida}"/></td>
   
        <td><a href="ManterTipoComidaController?acao=prepararOperacao&operacao==Editar&codTipoComida="<c:out value="${tipoComida.idTipoComida}"/>">Editar</a></td>
        <td>
            <a href="ManterTipoComidaController?acao=preparaOperacao&operacao=Excluir&codTipoComida="<c:out value="${tipoComida.idTipoComida}"/>">Excluir</a></td>
    </tr>
</c:forEach>
</table>
<form action="ManterLojaController?acao=prepararOperacao&operacao=Incluir" method="post">
    <<input type="submit" name="btnIncluir" value="Incluir">

    </table>

    <a href="menu-loja.html"><button type="buttom">Menu</button></a>
    <a href="cadastro-comida.html"><button>Cadastrar</button> </a>

    </body>
</html>
