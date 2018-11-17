<%-- 
    Document   : ManterCliente
    Created on : 23/10/2018, 09:34:21
    Author     : Yukas
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Manter Cliente</title>
    </head>
    <body>
        <h1>Manter Cliente - ${operacao}</h1>
        
        <form action ="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method = "post" name="ManterCliente">
            <table>
            <tr>
                <td>Código do Cliente:</td>
                <td><input type="hidden" name="txtIdCliente" value="${null}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
            </tr>
            <tr>
                <td>Nome:</td>
                <td><input type="text" name="txtNomeCliente" value="${cliente.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
            <tr>
                <td>CPF:</td>
                <td><input type="text" name="txtCpfCliente" value="${cliente.cpf}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Email:</td>
                <td><input type="text" name="txtEmailCliente" value="${cliente.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr> 
             <tr>
                <td>Senha:</td>
                <td><input type="password" name="txtSenhaCliente" value="${cliente.senha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
            <tr>
                <td>Foto:</td>
                <td><input type="text" name="txtFotoCliente" value="${cliente.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
            <tr>
                <td>Telefone:</td>
                <td><input type="text" name="txtTelefoneCliente" value="${cliente.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>CEP:</td>
                <td><input type="text" name="txtCepCliente" value="${cliente.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
            
             <tr>
                <td>Logradouro:</td>
                <td><input type="text" name="txtLogradouroCliente" value="${cliente.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
                   
             <tr>
                <td>Numero:</td>
                <td><input type="text" name="txtNumeroCliente" value="${cliente.numero}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Bairro:</td>
                <td><input type="text" name="txtBairroCliente" value="${cliente.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Complemento:</td>
                <td><input type="text" name="txtComplementoCliente" value="${cliente.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Cidade:</td>
                <td><input type="text" name="txtCidadeCliente" value="${cliente.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
             <tr>
                <td>Estado:</td>
                <td><input type="text" name="txtEstadoCliente" value="${cliente.estado}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></td>
            </tr>
            
            </table>
            
             <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>
    </body>
</html>
