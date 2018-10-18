<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="author" content="Braian">
  <title>Cadastro - Comida</title>
  <link rel="stylesheet" href="css.css" type="text/css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

</head>
<body>

<form class="w3-container">
  <label class="w3-text-teal"><b>Nome</b></label>
  <input class="w3-input w3-animate-input" type="text" style="width:30%; max-width: 50%"  >

  <label class="w3-text-teal"><b>Valor</b></label>
  <input class="w3-input w3-animate-input" type="text" style="width:10%; max-width: 20%" >

  <label class="w3-text-teal"><b>Desconto</b></label>
  <input class="w3-input w3-animate-input" type="text" style="width:10%; max-width: 20%" >

  <label class="w3-text-teal"><b>Descrição</b></label>
  <input class="w3-input w3-animate-input" type="text" style="width:30%; max-width: 50%" >

  <label class="w3-text-teal"><b>Tempo Preparo</b></label>
  <input class="w3-input w3-animate-input" type="text" style="width:10%; max-width: 20%" >

  <form action="/action_page.php">
  <label class="w3-text-teal"><b>Imagem Produto</b></label>
 <br><br> <input type="file" name="myFile"><br><br>

  <a href="menu.html"><button>Voltar</button></a>
  <button type="submit">Registrar</button>



</form>
</body>
</html>
