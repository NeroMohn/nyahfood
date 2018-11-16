<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
      <a href="PesquisaClienteController">Pesquisa Cliente</a><br />
      <a href="PesquisaComidaController">Pesquisa Comida</a><br />
      <a href="PesquisaComidaPedidaController">Pesquisa Comida Pedida</a><br />
      <a href="PesquisaCompraController">Pesquisa Compra</a><br />
      <a href="PesquisaLojaController">Pesquisa Loja</a><br />
      <a href="PesquisaPedidoController">Pesquisa Pedido</a><br />
      <a href="PesquisaTipoCozinhaController">Pesquisa Tipo Cozinha</a><br />
      <a href="PesquisaTipoCulinariaController">Pesquisa Tipo Culinaria</a><br />
      <a href="LoginClienteController?acao=preparar">Login</a>
      
      <input type ="text" value="<%=session.getAttribute("loginUsuario")%>"
  </body>
</html>