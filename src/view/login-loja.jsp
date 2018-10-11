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
    		<form role="form">
    			<fieldset>

    				<div>
    					<label for="userLogin">Email</label>
    					<input id="userLogin" type="email" aria-label="Email" placeholder="Email - Restaurante">
    				</div>

    				<div >
    					<label for="userPassword">Senha</label>
    					<input id="userPassword" type="password" aria-label="Senha" placeholder="Senha">
    				</div>

            <a href="menu.html">
            <button type="button" value="Voltar" >Voltar</button>
          </a>
          <a href="menu-loja.html">
    				<button type="button" value="Logar" >Logar</button>
          </a>
    				<p>Não possui uma conta?
    					<a href="cadastro-loja.html">Cadastre-se agora</a>
    				</p>

    			</fieldset>
    		</form>
    	</div>
    </div>
  </body>
</html>
