<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <div>
    	<div >
    		<form role="form">
    			<fieldset>

    				<div >
    					<label >Usuário</label>
    					<input id="userLogin" type="text" aria-label="Usuário" placeholder="Usuário">
    				</div>

    				<div>
    					<label for="userPassword">Senha</label>
    					<input id="userPassword" type="password" aria-label="Senha" placeholder="Senha">
    				</div>
            <a href="Menu.html">
            <button type="button" value="Voltar" >Voltar</button>
            </a>
    				<input type="submit" value="Entrar" >


    			</fieldset>
    		</form>
    	</div>
    </div>
  </body>
</html>
