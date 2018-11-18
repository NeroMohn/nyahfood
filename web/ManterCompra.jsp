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
        
        <form action ="ManterCompraController?acao=confirmarOperacao&operacao=${operacao}" method = "post" name="ManterCompra" >
            <table>
            <tr>
               
                <td><input type="hidden" name="txtIdCompra" value="${compra.idCompra}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Código do Pedido</td>
                <td><input type="text" name="txtCodPedido" value="${compra.codPedido}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Status:</td>
                <td><input type="text" name="txtStatus" value="${compra.status}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Total:</td>
                <td><input type="text" name="txtTotal" value="${compra.total}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>  
            </table>
            
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        
        </form>
    </body>
</html>
