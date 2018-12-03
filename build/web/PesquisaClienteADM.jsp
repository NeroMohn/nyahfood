<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<title>NyahFood</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lobster+Two:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--Animation-->
<script src="js/wow.min.js"></script>
<link href="css/animate.css" rel='stylesheet' type='text/css' />
<script>
	new WOW().init();
</script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<script src="js/simpleCart.min.js"> </script>	
<script src="jquery-3.2.1.min.js"></script>
               <script>
                      $(function(){ 
                                $("#header").load("Header.jsp");
                               
                       });
                 </script>
</head>
<body>
    <!-- header-section-starts -->
    <% if (session.getAttribute("tipo") != "3") { %>
     <img src="images/Acesso.png">
    
       <% } %>
    

		 <% if (session.getAttribute("tipo") == "3") { %>
	<div id="header"></div>
		
					
	<!-- header-section-ends -->
	<!-- content-section-starts -->
        <div  class="container text-center"> 
        <h1>Pesquisa Cliente</h1>
        <br>
        
        <form action="ManterClienteController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
                <br>
         
        <table  class=" col-lg-12 ">
            <tr>
                <td>Código Cliente</td>
                <td>Nome Cliente</td>
                 <td>CPF Cliente</td>
                  <td>Email Cliente</td>
                   <td>Senha Cliente</td>
                    <td>Telefone Cliente</td>
                     <td>Logradouro Cliente</td>
                      <td>Cep Cliente</td>
                       <td>Numero Cliente</td>
                        <td>Bairro Cliente</td>
                         <td>Complemento Cliente</td>
                          <td>Cidade Cliente</td>
                           <td>Estado Cliente</td>
                <td colspan = 2 > Ação</td>
            </tr>
            <div><c:out value="${vazio}"/></div>
                <c:forEach items="${clientes}" var="cliente">
                    <tr>
                        <td><c:out value="${cliente.idCliente}"/></td>
                        <td><c:out value="${cliente.nome}"/></td>
                         <td><c:out value="${cliente.cpf}"/></td>
                        <td><c:out value="${cliente.email}"/></td>
                         <td><c:out value="${cliente.senha}"/></td>
                        <td><c:out value="${cliente.telefone}"/></td>
                         <td><c:out value="${cliente.logradouro}"/></td>
                        <td><c:out value="${cliente.cep}"/></td>
                         <td><c:out value="${cliente.numero}"/></td>
                        <td><c:out value="${cliente.bairro}"/></td>
                         <td><c:out value="${cliente.complemento}"/></td>
                        <td><c:out value="${cliente.cidade}"/></td>
                         <td><c:out value="${cliente.estado}"/></td>
                                             
                        <td><a href="ManterClienteController?acao=prepararOperacao&operacao=Editar&idCliente=<c:out value="${cliente.idCliente}"/>">Editar</a></td>
                        <td>
                            <a href="ManterClienteController?acao=prepararOperacao&operacao=Excluir&idCliente=<c:out value="${cliente.idCliente}"/>">Excluir</a></td>
               
                    </tr>
                </c:forEach>


        </table>
           
        </div>
         
                                     <% } %>

</body>
</html>