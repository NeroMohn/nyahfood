<%-- 
    Document   : ManterComidaPedida
    Created on : 23/10/2018, 18:34:21
    Author     : Yukas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Manter Comida Pedida - ${operacao}</h1>
        
        <form action ="ManterComidaPedidaController?acao=confirmarOperacao&operacao=${operacao}">
            <table>
            <tr>
                <td>Código da Comida Pedida:</td>
                <td><input type="text" name="txtIdComidaPedida" value="${comidaPedida.idComidaPedida}"></input></td>
            </tr>
            <tr>
                <td>Comida:</td>
                <td><input type="text" name="txtCodComida" value="${comidaPedida.codComida}"></input></td>
            </tr>
            <tr>
                <td>Preço Unitário:</td>
                <td><input type="text" name="txtPrecoUnitario" value="${comidaPedida.precoUnitario}"></input></td>
            </tr>
             <tr>
                <td>Quantidade:</td>
                <td><input type="text" name="txtQuantidadeComidaPedida" value="${comidaPedida.quantidade}"></input></td>
            </tr>
             <tr>
                <td>Preço Total:</td>
                <td><input type="text" name="txtPrecoTotal" value="${comidaPedida.precoTotal}"></input></td>
            </tr>

  
            </table>
        </form>
    </body>
</html>
