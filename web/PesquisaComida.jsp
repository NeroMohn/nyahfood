<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <style>
        td{
            border-bottom: 1px solid black;
            border-right: 0.5px solid black;
        }
    </style>
</head>

<body>

    <table>
        <tr class="table-header">
            <td>
                NOME
            </td>
            <td>
                ID
            </td>
            <td>
                VALOR
            </td>
            <td>
                DESCONTO
            </td>
            <td>
                TEMPO PREPARO
            </td>

            <td colspan="2">Ações</td>


        </tr>
         <c:forEach items="${comidas}" var="comida">
    <tr>
        <td><c:out value="${comida.nome}"/></td>
        <td><c:out value="${comida.idComida}"/></td>
        <td><c:out value="${comida.valor}"/></td>
        <td><c:out value="${comida.desconto}"/></td>
        <td><c:out value="${cliente.tempoPreparo}"/></td>
   
        <td><a href="ManterComidaController?acao=prepararOperacao&operacao==Editar&codComida="<c:out value="${loja.idLoja}"/>">Editar</a></td>
        <td>
            <a href="ManterComidaController?acao=preparaOperacao&operacao=Excluir&codLoja="<c:out value="${loja.idLoja}"/>">Excluir</a></td>
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
