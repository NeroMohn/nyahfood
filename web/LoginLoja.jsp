

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Loja</title>
    </head>
    <body>
        <h1>Login - Loja </h1>
        
        <form action="LoginLojaController?acao=logar" method="POST" name="LoginLoja">
            <label for="log">Login (Email) </label>
            <input type="email" name="login" id="log" value=""><br>
            <label for="pass">Senha</label>
            <input type="password" name="senha" id="pass" value=""><br>
            <input type="submit" name="login" value="Logar">
        </form>
    </body>
</html>
