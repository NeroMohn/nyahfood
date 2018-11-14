<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
        <title>Pesquisa de Loja</title>
    </head>
    <body>
        <h1>Pesquisa Loja</h1>
        <table border=1>
            <tr>
                <th>Código Loja</th>
                <th>Nome Loja</th>
                <th colspan=2>Ação</th>
            </tr>
            <div><c:out value="${vazio}"/></div>
  
                <c:forEach items="${lojas}" var="loja">
                    <tr>
                        <td><c:out value="${loja.idLoja}"/></td>
                        <td><c:out value="${loja.nome}"/></td>
                        <td><a href="ManterLojaController?acao=prepararOperacao&operacao=Editar&idLoja=<c:out value="${loja.idLoja}"/>">Editar</a></td>
                        <td>
                            <a href="ManterLojaController?acao=prepararOperacao&operacao=Excluir&idLoja=<c:out value="${loja.idLoja}"/>">Excluir</a></td>
                    </tr>
                </c:forEach>
     

        </table>
        <form action="ManterLojaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
             <a href="index.jsp"><button value="Voltar">Voltar</button></a>
    </body>
</html>