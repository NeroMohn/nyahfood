<%-- 
    Document   : LoginCliente
    Created on : 14/11/2018, 14:22:37
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - Cliente</title>
    </head>
    <body>
        <h1>Login - Cliente </h1>
        
        <form action="LoginClienteController" method="POST" name="LoginCliente">
            <label for="log">Login (Email) </label>
            <input type="email" name="login" id="log" value=""><br>
            <label for="pass">Senha) </label>
            <input type="password" name="senha" id="pass" value=""><br>
            <input type="submit" name="login" value="Logar">
        </form>
    </body>
</html>
