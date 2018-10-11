<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Braian">
  <title>NyahFood</title>
  <link rel="stylesheet" href="css.css" type="text/css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>

  <form action="/action_page.php">
    <fieldset>
      <legend>Pedidos</legend>
      Pedido:  <br>
      <input type="text" name="nomePedido" value="X-Burguer">
  <br>
      Cliente:  <br>
      <input type="text" name="nomeCliente" value="Braian">
      <br>
      Rua:  <br>
      <input type="text" name="ruaCliente" value="São Joaquim">
      <br>
      Bairro:  <br>
      <input type="text" name="bairroCliente" value="São Pedro">
      <br>
      Numero:  <br>
      <input type="text" name="numCliente" value="156">
      <br>
      CEP:  <br>
      <input type="text" name="cepCliente" value="123.665-001">
      <br>
      Telefone:  <br>
      <input type="text" name="telCliente" value="35 991434355">
      <br>
      Troco:  <br>
      <input type="text" name="trocoCliente" >   <br>Forma Pagamento:  <br><input type="text" name="pagCliente" value="Cartão">  <br>
        <br>
      Produto em Produção:<br> <input type="submit" value="Confirmar"> <br><br>Produto Enviado:<br> <input type="submit" value="Confirmar"><br><br> Cancelar Produto:<br> <input type="submit" value="Cancelar">
    </fieldset>
  </form>

</body>
</html>
