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
<!--Cep automático-->
<script type="text/javascript" >
    function limpa_formulário_cep() {
            document.getElementById('rua').value=("");
            document.getElementById('bairro').value=("");
            document.getElementById('cidade').value=("");
            document.getElementById('uf').value=("");
    }

    function meu_callback(conteudo) {
        if (!("erro" in conteudo)) {
            //Atualiza os campos com os valores.
            document.getElementById('rua').value=(conteudo.logradouro);
            document.getElementById('bairro').value=(conteudo.bairro);
            document.getElementById('cidade').value=(conteudo.localidade);
            document.getElementById('uf').value=(conteudo.uf);
        } //end if.
        else {
            //CEP não Encontrado.
            limpa_formulário_cep();
            alert("CEP não encontrado.");
        }
    }
        
    function pesquisacep(valor) {
        //Nova variável "cep" somente com dígitos.
        var cep = valor.replace(/\D/g, '');
        //Verifica se campo cep possui valor informado.
        if (cep != "") {
            var validacep = /^[0-9]{8}$/; //expressão para validação do cep

            //Valida o formato do CEP.
            if(validacep.test(cep)) {
                //Preenche os campos com "..." enquanto consulta webservice.
                document.getElementById('rua').value="...";
                document.getElementById('bairro').value="...";
                document.getElementById('cidade').value="...";
                document.getElementById('uf').value="...";
                //Cria um elemento javascript.
                var script = document.createElement('script');
                //Sincroniza com o callback.
                script.src = 'https://viacep.com.br/ws/'+cep+'/json/?callback=meu_callback';
                //Insere script no documento e carrega o conteúdo.
                document.body.appendChild(script);
            } //end if.
            else {
                //cep é inválido.
                limpa_formulário_cep();
                alert("Formato de CEP inválido.");
            }
        } //end if.
        else {
            //cep sem valor, limpa formulário.
            limpa_formulário_cep();
        }
    }
    </script>


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
						<li class="active"><a href="Home.jsp" >Inicio</a></li>|
						<li><a href="Restaurantes.jsp">Restaurantes</a></li>
						<li><a href="contact.html">Contato</a></li>
						<div class="clearfix"></div>
					</ul>
				 
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
		
				
	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="main">
	   <div class="container">
		  <div class="register">
		  	
                      <div class="special-offers-section-head text-center dotted-line"> <div class="special-offers-section" > <h1>Cadastro Comida</h1></br> </div></div>
        	
         <form action ="ManterComidaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterComida">


             <table>
                
                <tr>
                  
                    <td>
                        <input type="hidden" name="txtIdComida" value="${comida.idComida}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>>
                    </td>
                </tr>
                <tr>
                    <td>Nome da comida:
                    </td>
                    <td><input type="text" name="txtNome" value="${comida.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                  <tr>
                    <td>
                        Nome Ingrediente:
                    </td>
                    <td>
                        <input type="text" name="txtIngrediente" value="${comida.ingrediente}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Tempo Preparo:
                    </td>
                    <td>
                        <input type="text" name="txtTempoPreparo" value="${comida.tempoPreparo}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Foto Comida:
                    </td>
                    <td>
                        <input type="text" name="txtFoto" value="${comida.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Preço:
                    </td>
                    <td>
                        <input type="text" name="txtPreco" value="${comida.preco}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Desconto:
                    </td>
                    <td>
                        <input type="text" name="txtDesconto" value="${comida.desconto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                  <tr>
                    <td>
                        Código Loja:
                    </td>
                    <td>
                        <input type="text" name="txtCodLoja" value="${comida.codLoja}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                    </td>
                </tr>
                 
            </table>

                    <div class="special-offers-section-head text-center dotted-line">   <td><input type="submit" name="btnConfirmar" value="Confirmar"></td></div>
                      
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