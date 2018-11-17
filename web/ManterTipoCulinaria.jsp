<%-- 
    Document   : ManterTipoCulinaria
    Created on : 24/10/2018, 19:16:55
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
        <h1>Manter Tipo Culinaria - ${operacao}</h1>
        
        <form action ="ManterTipoCulinariaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterTipoCulinaria">
            <table>
            <tr>
                <td>Código do Tipo de Culinaria</td>
                <td><input type="hidden" name="txtIdTipoCulinaria" value="${tipoCulinaria.idTipoCulinaria}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Culinaria:</td>
                <td><input type="text" name="txtCulinaria" value="${tipoCulinaria.culinaria}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Loja:</td>
                <td><input type="text" name="txtCodLoja" value="${tipoCulinaria.codLoja}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Tipo Cozinha:</td>
                <td><input type="text" name="txtCodTipoCozinha" value="${tipoCulinaria.codTipoCozinha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             
            </table>
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>
    </body>
</html>
