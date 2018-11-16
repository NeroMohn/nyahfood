<%-- 
    Document   : SessionCliente
    Created on : 15/11/2018, 18:13:04
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
    <%
  String senha = null;
  String login = null;
  String tipo = "1";
  
  //Pega os valores login e senha passados na Servlet
  login = (String) request.getSession().getAttribute("loginUsuario");
  senha = (String) request.getSession().getAttribute("senhaUsuario");

//passando os valores de login e senha para a Session!
  session.putValue("login", login);
  session.putValue("senha", senha);
  session.putValue("tipo", tipo);
  //chama a Página Principal do sistema!
  out.println("<script>document.location.href='index.jsp'</script>");
%>
    </body>
</html>
