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
        
        <form action ="ManterComidaPedidaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterComidaPedida">
            <table>
            <tr>
                <td>Código da Comida Pedida:</td>
                <td><input type="text" name="txtIdComidaPedida" value="${comidaPedida.idComidaPedida}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Preço Unitário:</td>
                <td><input type="text" name="txtPrecoUnitario" value="${comidaPedida.precoUnitario}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Quantidade:</td>
                <td><input type="text" name="txtQuantidadeComidaPedida" value="${comidaPedida.quantidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Preço Total:</td>
                <td><input type="text" name="txtPrecoTotal" value="${comidaPedida.precoTotal}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Comida:</td>
                <td><input type="text" name="txtCodComida" value="${comidaPedida.codComida}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
            </table>
            
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        
        </form>
    </body>
</html>
