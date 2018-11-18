<%-- 
    Document   : ManterPedido
    Created on : 24/10/2018, 19:06:06
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
        <h1>Manter Pedido - ${operacao}</h1>
        <form action ="ManterPedidoController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterPedido">
            <table>
                <tr>
              
                <td><input type="hidden" name="txtIdPedido" value="${pedido.idPedido}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Comida:</td>
                <td><input type="text" name="txtCodComida" value="${pedido.codComida}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Quantidade:</td>
                <td><input type="text" name="txtQuantidadePedido" value="${pedido.quantidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Subtotal:</td>
                <td><input type="text" name="txtSubtotalPedido" value="${pedido.subtotal}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Metodo Pagamento:</td>
                <td><input type="text" name="txtMetodoPagamento" value="${pedido.metodoPagamento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Cupom de Desconto:</td>
                <td><input type="text" name="txtCupomDesconto" value="${pedido.cupomDesconto}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Data:</td>
                <td><input type="text" name="txtDate" value="${pedido.date}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            </table>
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>
    </body>
</html>
