<%-- 
    Document   : PesquisarPedido
    Created on : 18/10/2018, 02:25:34
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
                ID
            </td>
            <td>
                NOME
            </td>
            <td colspan="2">Ações</td>


        </tr>
         <c:forEach items="${tipoComidas}" var="tipoComida">
    <tr>
        <td><c:out value="${pedido.idPedido}"/></td>
        <td><c:out value="${pedido.quantidade}"/></td>
        <td><c:out value="${pedido.subtital}"/></td>
        <td><c:out value="${pedido.date}"/></td>
   
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
