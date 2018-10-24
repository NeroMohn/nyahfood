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
        <form action ="ManterPedidoController?acao=confirmarOperacao&operacao=${operacao}">
            <table>
                <tr>
                <td>Código do Pedido:</td>
                <td><input type="text" name="txtIdPedido" value="${pedido.idPedido}"></input></td>
            </tr>
            <tr>
                <td>Comida:</td>
                <td><input type="text" name="txtComida" value="${cliente.codComida}"></input></td>
            </tr>
            <tr>
                <td>Quantidade:</td>
                <td><input type="text" name="txtQuantidadePedido" value="${pedido.quantidade}"></input></td>
            </tr>
             <tr>
                <td>Subtotal:</td>
                <td><input type="text" name="txtSubtotalPedido" value="${pedido.subtotal}"></input></td>
            </tr>
             <tr>
                <td>Metodo Pagamento:</td>
                <td><input type="text" name="txtMetodoPagamento" value="${pedido.metodoPagamento}"></input></td>
            </tr>
             <tr>
                <td>Cupom de Desconto:</td>
                <td><input type="text" name="txtCupomDesconto" value="${pedido.cupomDesconto}"></input></td>
            </tr>
             <tr>
                <td>Data:</td>
                <td><input type="text" name="txtdata" value="${cliente.date}"></input></td>
            </tr>
             <tr>
                <td>CEP:</td>
                <td><input type="text" name="txtCEPCliente" value="${cliente.CEP}"></input></td>
            </tr>
             <tr>
                <td>Logradouro:</td>
                <td><input type="text" name="txtLogradouroCliente" value="${cliente.logradouro}"></input></td>
            </tr>
             <tr>
                <td>Bairro:</td>
                <td><input type="text" name="txtBairroCliente" value="${cliente.bairro}"></input></td>
            </tr>
             <tr>
                <td>Complemento:</td>
                <td><input type="text" name="txtComplementoCliente" value="${cliente.complemento}"></input></td>
            </tr>
             <tr>
                <td>Cidade:</td>
                <td><input type="text" name="txtCidadeCliente" value="${cliente.cidade}"></input></td>
            </tr>
             <tr>
                <td>Estado:</td>
                <td><input type="text" name="txtEstadoCliente" value="${cliente.estado}"></input></td>
            </tr>
             <tr>
                <td>Numero:</td>
                <td><input type="text" name="txtNumeroCliente" value="${cliente.numero}"></input></td>
            </tr>
            </table>
        
        </form>
    
    
    
    </body>
</html>
