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
    	<div>
    		<h1>NyahFood</h1>
    		<form role="form">
    			<fieldset>

    				<div>
    					<label for="userLogin">Usuário</label>
    					<input id="userLogin" type="text" aria-label="Usuário" placeholder="Usuário">
    				</div>

    				<div >
    					<label for="userPassword">Senha</label>
    					<input id="userPassword" type="password" aria-label="Senha" placeholder="Senha">
    				</div>


            <input type="submit" value="Voltar" >
    				<input type="submit" value="Logar" >
    				<p>Não possui uma conta?
    					<a href="#">Cadastre-se agora</a>
    				</p>

    			</fieldset>
    		</form>
    	</div>
    </div>
  </body>
</html>
