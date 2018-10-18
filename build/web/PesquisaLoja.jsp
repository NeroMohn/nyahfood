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
                TELEFONE
            </td>
            <td>
                EMAIL
            </td>
            <td>
                CEP
            </td>
            <td>
                Logradouro
            </td>
            <td>
                Bairro
            </td>
            <td>
                Cidade
            </td>
            <td>
                UF
            </td>
            <td>
                NUMERO
            </td>
            <td>
               CNPJ
            </td>
            <td>
                Nome Gerente
            </td>
        </tr>
        <c:forEach items="${lojas}" var="loja">
    <tr>
        <td><c:out value="${loja.nome}"/></td>
        <td><c:out value="${loja.telefone}"/></td>
        <td><c:out value="${cliente.email}"/></td>
        <td><c:out value="${cliente.cep}"/></td>
        <td><c:out value="${cliente.logradouro}"/></td>
        <td><c:out value="${cliente.bairro}"/></td>
        <td><c:out value="${cliente.cidade}"/></td>
        <td><c:out value="${cliente.estado}"/></td>
        <td><c:out value="${cliente.numero}"/></td>
        <td><c:out value="${cliente.cnpj}"/></td>
        <td><c:out value="${cliente.nomeGerente}"/></td>
        
        <td><a href="ManterLojaController?acao=prepararOperacao&operacao==Editar&codLoja="<c:out value="${loja.idLoja}"/>">Editar</a></td>
        <td>
            <a href="ManterLojaController?acao=preparaOperacao&operacao=Excluir&codLoja="<c:out value="${loja.idLoja}"/>">Excluir</a></td>
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
