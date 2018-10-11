<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <meta charset="utf-8">
    <title>pesquisa-loja</title>
  </head>
  <body>
    <div id="divBusca">
  <input type="text" id="txtBusca" placeholder="Buscar..."/>
  <button type="button" >Buscar</button>
</break>
<p>Preço
  <select id=Preco>
  <option>aaaa</option>
  <option>bbbb</option>
  <option>ccc</option>
  <option>dddd</option>
</select>
  </p>
  <p>Tipo de Comida
  <select id=TipoComida>
    <option>aaaa</option>
    <option>bbbb</option>
    <option>ccc</option>
    <option>dddd</option>
  </select>
    </p>
  <p>Classificação
    <select id=Classificacao>
    <option>aaaa</option>
    <option>bbbb</option>
    <option>ccc</option>
    <option>dddd</option>
  </select>
    </p>
</div>
  <a href="menu.html"><button type="button" >Voltar</button></a>
  </body>
</html>
