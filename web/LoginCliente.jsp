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
</head>
<body>
    <!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="top-header">
				<div class="logo">
					<a href="Home.jsp"><h1>NyahFood</h1></a>
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
						<li class="active"><a href="Home.jsp" class="scroll">Inicio</a></li>|
						<li><a href="Restaurantes.jsp">Restaurantes</a></li>
						<li><a href="contact.html">Contato</a></li>
						<div class="clearfix"></div>
					</ul>
				</div>
				<div class="login-section">
					<ul>                                                                                                                             
                                          <li><a  href="LoginLojaController?acao=preparar">Login Loja</a></li>
                                            <li><a href="LoginClienteController?acao=preparar">Login Cliente</a></li>
                                          
                                               |
                                            <li><a href="ManterLojaController?acao=prepararOperacao&operacao=Incluir">Registrar Loja</a> </li>
                                            <li><a href="ManterClienteController?acao=prepararOperacao&operacao=Incluir">Registrar Usuário</a> </li>
                                            <div class="clearfix"></div>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		
					<div class="main-search">
						<form action="search.html">
							<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}" class="text"/>
							<input type="submit" value=""/>
						</form>
						<div class="close"><img src="images/cross.png" /></div>
					</div>
					<div class="srch"><button></button></div>
					<script type="text/javascript">
                        $('.main-search').hide();
                        $('button').click(function (){
                                $('.main-search').show();
                                $('.main-search text').focus();
                            }
                        );
                        $('.close').click(function(){
                            $('.main-search').hide();
                        });
					</script>

				</div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="container">
		<div class="login-page">
			    <div class="dreamcrub">
			   	 <ul class="breadcrumbs">
                    <li class="home">
                       <a href="Home.jsp" title="Go to Home Page">Inicio</a>&nbsp;
                       <span>&gt;</span>
                    </li>
                    <li class="women">
                       Login
                    </li>
                </ul>
                <ul class="previous">
                	<li><a href="Home.jsp">Voltar para inicio</a></li>
                </ul>
                <div class="clearfix"></div>
			   </div>
			   <div class="account_grid">
			   <div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
			  	 <h3>CRIE SUA CONTA</h3>
				 <p>É rapido e grátis. Crie sua conta e peça sua comida onde estiver e quando quiser.</p>
				 <a class="acount-btn" href="ManterClienteController?acao=prepararOperacao&operacao=Incluir">Criar Conta Usuário</a>
                                  <a class="acount-btn" href="ManterLojaController?acao=prepararOperacao&operacao=Incluir">Criar Conta Loja</a>
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
			  	<h3>Já está registrado?</h3>
				<p>Se você já está registrado é só logar.</p>
				
                                <form action="LoginClienteController?acao=logar" method="POST" name="LoginCliente">
				  <div>
					<span>Email<label for="log">*</label></span>
					<input type="email" onBlur="confereEmail()" name="login" id="log" value="">
				  </div>
				  <div>
                                      <span>Senha <label for="pass">*</label></span>
					 <input type="password" name="senha" id="pass" value="">
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