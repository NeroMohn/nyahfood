<%-- 
    Document   : PesquisaHistorico
    Created on : 18/10/2018, 00:20:12
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
                NOME
            </td>
            <td>
                TELEFONE
            </td>
            
        </tr>
        <c:forEach items="${historicos}" var="historico">
    <tr>
        <td><c:out value="$(historico.idHistorico}"/></td>
        <td><c:out value="$(historico.codCompra}"/></td>

        
        <td><a href="ManterHistoricoController?acao=prepararOperacao&operacao==Editar&codCompra="<c:out value="${loja.idLoja}"/>">Editar</a></td>
        <td>
            <a href="ManterHistoricoController?acao=preparaOperacao&operacao=Excluir&codCompra="<c:out value="${loja.idLoja}"/>">Excluir</a></td>
    </tr>
</c:forEach>
</table>
<form action="ManterLojaController?acao=prepararOperacao&operacao=Incluir" method="post">
    <<input type="submit" name="btnIncluir" value="Incluir">

    </table>
    <a href="menu.html"><button type="buttom">Menu</button></a>
    <a href="cadastro-loja.html"><button>Cadastrar</button> </a>

    </body>
</html>
