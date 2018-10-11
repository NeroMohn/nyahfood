<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <style>
        td{
            border-bottom: 1px solid black;
            border-right: 0.5px solid black;
        }
    </style>
</head>

<body>

    <table>
        <tr class="table-header">
            <td>
                NOME
            </td>
            <td>
                ID
            </td>
            <td>
                VALOR
            </td>
            <td>
                DESCONTO
            </td>
            <td>
                INGREDIENTES
            </td>
            <td>
                TEMPO PREPARO
            </td>

            <td colspan="2">Ações</td>


        </tr>
        <tr>
            <td>
                x Burguer
            </td>
            <td>
                3
            </td>
            <td>
                20.00
            </td>
            <td>
                0
            </td>
            <td>
                Pão,Carne,Queijo,Tomate,Alface
            </td>
            <td>
                10.00 ; 30.00
            </td>

            <td>
                <a href="">alterar</a>
            </td>
            <td>
                <a href="">excluir</a>
            </td>
        </tr>
    </table>
    <a href="menu-loja.html"><button type="buttom">Menu</button></a>
    <a href="cadastro-comida.html"><button>Cadastrar</button> </a>

</body>

</html>
