<%-- 
    Document   : LoginCliente
    Created on : 14/11/2018, 14:22:37
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
    
    function confereEmail(){
    var confirmacao = documento.getElementById("log").value();
    String regex = "[a-z._-]+@[a-z.]+"
    Pattern pattern = Pattern.compile(regex); 
    Matcher matcher = pattern.matcher(confirmacao); 
    if (matcher.find() && matcher.group().equals(confirmacao)){ 		    
    }else{
    alert("Insira um email válido");		    
    }
        
    }
    
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
	<div id="header"></div>
		
					
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="container">
		<div class="login-page">
			    <div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="index.jsp" title="Go to Home Page">Inicio</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       Login
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="index.jsp">Voltar para inicio</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   <div class="account_grid">
			   <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
			  	 <h3>CRIE SUA CONTA</h3>
				 <p>É rapido e grátis. Crie sua conta e peça sua comida onde estiver e quando quiser.</p>
				 <a class="acount-btn" href="CadastroClienteController?acao=prepararOperacao&operacao=Incluir">Criar Conta Cliente</a>
                                  <a class="acount-btn" href="CadastroLojaController?acao=prepararOperacao&operacao=Incluir">Criar Conta Loja</a>
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
			  	<h3>Já está registrado?</h3>
				<p>Se você já está registrado é só logar.</p>
				
                                <form action="LoginClienteController?acao=logar" method="POST" name="LoginCliente">
				  <div>
					<span>Email<label for="log">*</label></span>
					<input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,25}$" required type="email" onBlur="confereEmail()" name="login" id="log" value="">
				  </div>
				  <div>
                                      <span>Senha <label for="pass">*</label></span>
					 <input  pattern=".{6,25}$" required type="password" name="senha" id="pass" value="">
				  </div>
					<div>						
					</div>
				  <a class="forgot" href="#">Esqueceu sua senha?</a>
				   <input type="submit" name="login" value="Logar">

			    </form>
                                                                                                                                                                                       
                                
			   </div>	
			   <div class="clearfix"> </div>
			 </div>
		   </div>
</div>


</body>
</html>