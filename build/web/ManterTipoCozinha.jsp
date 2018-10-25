<%-- 
    Document   : ManterTipoCozinha
    Created on : 24/10/2018, 19:13:17
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
        <h1>Manter Tipo Cozinha - ${operacao}</h1>
        <form action ="ManterTipoCozinhaController?acao=confirmarOperacao&operacao=${operacao}">
            <table>
                <tr>
                <td>Código do Tipo de Cozinha</td>
                <td><input type="text" name="txtIdTipoCozinha" value="${tipoCozinha.idTipoCozinha}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Tipo de Cozinha:</td>
                <td><input type="text" name="txtTipo" value="${tipoCozinha.tipo}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            </table>
            
        <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        
        </form>
    
    
    
    </body>
</html>
