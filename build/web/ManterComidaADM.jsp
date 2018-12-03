<%-- 
    Document   : ManterComida
    Created on : 20/11/2018, 03:31:34
    Author     : rodri
--%>

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
                                $("#UploadImagem").load("UploadImagem.jsp");
                       });
                 </script>
</head>
<body>
    <!-- header-section-starts -->
    <% if (session.getAttribute("tipo") != "3" ) { %>
     <img src="images/Acesso.png">
    
       <% } %>
    

		 <% if (session.getAttribute("tipo") == "3" ) { %>
	<div id="header"></div>
		
				
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="main">
	   <div class="container">
		  <div class="register">
		  	
                      <div class="special-offers-section-head text-center dotted-line"> <div class="special-offers-section" > <h1>Cadastro Comida</h1></br> </div></div>
        	
         <form action ="ManterComidaControllerADM?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterComidaADM">


             <table>
                
                 <tr>
                  
                    <td>
                        <input type="hidden" name="txtIdComida" value="${comida.idComida}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
                    </td>
                </tr>
                <tr>
                <td>
                    <select name="txtIdLoja" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                        <c:forEach items="${Loja}" var="idLoja">
                            <option value="${loja.idLoja}" <c:if test="${loja.codTipoCozinha == itipoCozinha.idTipoCozinha}"> selected</c:if>>${tipoCozinha.nome}</option>
                        </c:forEach>
                    </select>
                </td>
                 </tr>
                <tr>
                    <td>Nome da comida*:
                    </td>
                    <td><input type="text" pattern="[a-zA-Z].{3,45}$" required name="txtNome" value="${comida.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                  <tr>
                    <td>
                        Nome Ingrediente:
                    </td>
                    <td>
                        <input type="text"  pattern="[a-zA-Z].{5,45}$" name="txtIngrediente" value="${comida.ingrediente}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Tempo Preparo (em minutos):
                    </td>
                    <td>
                        <input type="text" pattern="[0-9].{1,45}$" required name="txtTempoEstimado" value="${comida.tempoEstimado}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Foto Comida:  
                    </td>
                    <td>

                             <div id="UploadImagem"></div> <input type="hidden"  name="txtFoto" value="${comida.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                   
                    </td>
               
                </tr>
                  <tr>
                    <td>
                        Preço:
                    </td>
                    <td>
                        <input type="text" pattern="^[0-9]+(\.[0-9]{1,2})?$" required name="txtPreco" value="${comida.preco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                 
                   
            </table>
                    <br>

                    <div >   <td><input type="submit" name="btnConfirmar" value="Confirmar"></td></div>
                      
        </form>
          
                      
                      
                      
				</div>
		   </div>
	     </div>
	    </div>
	
                                <% } %>

</body>
</html>