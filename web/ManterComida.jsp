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
        <form action ="ManterComidaController?acao=confirmarOperacao&operacao=${operacao}">
            <table>
                <tr>
                    <td>
                        Código da Comida:
                    </td>
                    <td>
                        <input type="text" name="txtCodComida" value="${comida.idComida}"></input>
                    </td>
                </tr>
                <tr>
                    <td>Nome da comida:
                    </td>
                    <td><input type="text" name="txtNomeComida" value="${comida.nome}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Código da Comida:
                    </td>
                    <td>
                        <input type="text" name="txtCodComida" value="${comida.codComida}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Nome Ingrediente:
                    </td>
                    <td>
                        <input type="text" name="txtNomeIngrediente" value="${comida.ingrediente}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Tempo Preparo:
                    </td>
                    <td>
                        <input type="text" name="txtTempoPreparo" value="${comida.tempoPreparo}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Foto Comida:
                    </td>
                    <td>
                        <input type="text" name="txtFotoComida" value="${comida.foto}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Preço:
                    </td>
                    <td>
                        <input type="text" name="txtPreçoComida" value="${comida.preco}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Desconto:
                    </td>
                    <td>
                        <input type="text" name="txtDescontoComida" value="${comida.desconto}"></input>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Código Loja:
                    </td>
                    <td>
                        <input type="text" name="txtCodLoja" value="${comida.codLoja}"</input>
                    </td>
                </tr>
            </table>
        
        </form>
    
    
    
    </body>
</html>
