<%-- 
    Document   : ManterCompra
    Created on : 24/10/2018, 18:13:36
    Author     : Usuário
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
        <h1>Manter Compra - ${operacao}</h1>
        
        <form action ="ManterCompraController?acao=confirmarOperacao&operacao=${operacao}">
            <table>
            <tr>
                <td>Código da Compra:</td>
                <td><input type="text" name="txtIdCompra" value="${compra.idCompra}"></input></td>
            </tr>
            <tr>
                <td>Código do Pedido</td>
                <td><input type="text" name="txtCodPedido" value="${compra.codPedido}"></input></td>
            </tr>
            <tr>
                <td>Status:</td>
                <td><input type="text" name="txtStatus" value="${compra.status}"></input></td>
            </tr>
             <tr>
                <td>Total:</td>
                <td><input type="text" name="txtTotal" value="${compra.total}"></input></td>
            </tr>

  
            </table>
        </form>
    </body>
</html>
