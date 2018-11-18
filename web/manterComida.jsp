<%-- 
    Document   : ManterComida
    Created on : 23/10/2018, 09:40:04
    Author     : rodri
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
        <h1>Manter Comida - ${operacao}</h1>
        <form action ="ManterComidaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterComida">
            <table>
                <tr>
                  
                    <td>
                        <input type="hidden" name="txtIdComida" value="${comida.idComida}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
                    </td>
                </tr>
                <tr>
                    <td>Nome da comida:
                    </td>
                    <td><input type="text" name="txtNome" value="${comida.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                  <tr>
                    <td>
                        Nome Ingrediente:
                    </td>
                    <td>
                        <input type="text" name="txtIngrediente" value="${comida.ingrediente}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Tempo Preparo:
                    </td>
                    <td>
                        <input type="text" name="txtTempoPreparo" value="${comida.tempoPreparo}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Foto Comida:
                    </td>
                    <td>
                        <input type="text" name="txtFoto" value="${comida.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Preço:
                    </td>
                    <td>
                        <input type="text" name="txtPreco" value="${comida.preco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Desconto:
                    </td>
                    <td>
                        <input type="text" name="txtDesconto" value="${comida.desconto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Código Loja:
                    </td>
                    <td>
                        <input type="text" name="txtCodLoja" value="${comida.codLoja}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
            </table>
                             <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>
    
    
    
    </body>
</html>
