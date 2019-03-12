<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <form action="RelatorioLojaTipoCozinha" method="post">
                <select name="optTipoCozinha">
                        <c:forEach items="${tiposCozinha}" var="tipoCozinha">
                            <option value="${tipoCozinha.idTipoCozinha}" <c:if test="${loja.codTipoCozinha == tipoCozinha.idTipoCozinha}"> </c:if>${tipoCozinha.nome} </option>
                        </c:forEach>
                    </select>
                <input type ="submit" name="btnReport" value="Enviar">
            </form>
        </div>
       
    </body>
</html>
