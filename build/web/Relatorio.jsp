<%-- 
    Document   : 400
    Created on : 29/11/2018, 03:10:50
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <form action="ReportTeste" method="post">
                <input type ="submit" name="btnReport" value="RelatorioTeste">

            </form>
        </div>
        <div>
            <form action="ReportAdministrador" method="post">
                <input type ="submit" name="btnReport" value="RelatorioAdministrador">

            </form>
        </div>
         <div>
            <form action="ReportCliente" method="post">
                <input type ="submit" name="btnReport" value="RelatorioCliente">

            </form>
        </div>
    </body>
</html>
