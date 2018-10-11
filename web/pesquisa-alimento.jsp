<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta charset="utf-8">
    <title>pesquisa-alimento</title>
  </head>
  <body>
  <h1>Pesquisa Alimento</h1>
  <table border=1>
    <tr>
      <th>Código Comida</th>
      <th>Nome Comida</th>
      <th colspan=2>Ação</th>
    </tr>

    <c:forEach items="${comidas}" var="comida">
      <tr>
        <td><c:out value="${comida.idComida}"/></td>
        <td><c:out value="${comida.nome}"/></td>
        <td><a href="ManterComidaController?acao=prepararOperacao&operacao==Editar&idComida="<c:out value="${comida.idComida}"/>">Editar</a></td>
        <td>
          <a href="ManterComidaController?acao=preparaOperacao&operacao=Excluir&idComida="<c:out value="${comida.idComida}"/>">Excluir</a></td>
      </tr>
    </c:forEach>
  </table>
  <form action="ManterComidaController?acao=prepararOperacao&operacao=Incluir" method="post">
    <<input type="submit" name="btnIncluir" value="Incluir">
  </form>
  </body>
</html>
