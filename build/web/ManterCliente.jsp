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
</head>
<body>
    <!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="top-header">
				<div class="logo">
					<a href="index.html"><h1>NyahFood</h1></a>
				</div>
				<div class="queries">
					<p>Duvidas? Ligue para nós, é grátis!<span>0800-0000-7777 </span><label>(11AM à 11PM)</label></p>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
		<div class="menu-bar">
			<div class="container">
				<div class="top-menu">
					<ul>
						<li class="active"><a href="#Home" class="scroll">Inicio</a></li>|
						<li><a href="restaurants.html">Restaurantes</a></li>
						<li><a href="contact.html">Contato</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="login-section">
					<ul>
						<li><a href="login.html">Login</a>  </li> |
						<li><a href="register.html">Register</a> </li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		
				
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="main">
	   <div class="container">
		  <div class="register">
		  	
                        <h1>Cadastro</h1>
        
        <form action ="ManterClienteController?acao=confirmarOperacao&operacao=${operacao}" method = "post" name="ManterCliente">
            <table>
            <tr>
              
                <td><input type="hidden" name="txtIdCliente" value="${cliente.idCliente}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></td>
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
                      
                      
                      
                      
				</div>
		   </div>
	     </div>
	    </div>
		<div class="special-offers-section">
			<div class="container">
				<div class="special-offers-section-head text-center dotted-line">
					<h4>Best Ofertas</h4>
				</div>
				<div class="special-offers-section-grids">
					<div class="m_3"><span class="middle-dotted-line"> </span> </div>
					<div class="container">
						<ul id="flexiselDemo3">
							<li>
								<div class="offer">
									<div class="offer-image">
										<img src="images/p1.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="offer-text">
										<h4>Frago Frito</h4>
										<p>O melhor frango já frito que você irá comer. </p>
										<input type="button" value="Pedir">
										<span></span>
									</div>
									<div class="clearfix"></div>
								</div>
							</li>
							<li>
								<div class="offer">
									<div class="offer-image">
										<img src="images/p2.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="offer-text">
										<h4>Sopa pra nóis</h4>
										<p>A melhor sopa já feita que você irá comer. </p>
										<input type="button" value="Pedir">
										<span></span>
									</div>
									<div class="clearfix"></div>
								</div>
							</li>
							<li>
								<div class="offer">
									<div class="offer-image">
										<img src="images/p1.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="offer-text">
										<h4>Frago Frito</h4>
										<p>O melhor frango já frito que você irá comer com outro tempero. </p>
										<input type="button" value="Pedir">
										<span></span>
									</div>

									<div class="clearfix"></div>
								</div>
							</li>
							<li>
								<div class="offer">
									<div class="offer-image">
										<img src="images/p2.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="offer-text">
										<h4>Frago Frito de Novo</h4>
										<p>Só existe frango frito nesse delivery. </p>
										<input type="button" value="Pedir">
										<span></span>
									</div>
								
								<div class="clearfix"></div>
								</div>
					    </li>
					 </ul>
				 <script type="text/javascript">
					$(window).load(function() {
						
						$("#flexiselDemo3").flexisel({
							visibleItems: 3,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: { 
								portrait: { 
									changePoint:480,
									visibleItems: 1
								}, 
								landscape: { 
									changePoint:640,
									visibleItems: 2
								},
								tablet: { 
									changePoint:768,
									visibleItems: 3
								}
							}
						});
						
					});
				    </script>
				    <script type="text/javascript" src="js/jquery.flexisel.js"></script>
				</div>
			</div>
		</div>
		</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- content-section-ends -->
	<!-- footer-section-starts -->
	<div class="footer"> 
		<div class="container">
			<p class="wow fadeInLeft" data-wow-delay="0.4s">&copy; 2018 NyahFood</p>		</div>
		</div>
	</div>
	<!-- footer-section-ends -->
	  <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>