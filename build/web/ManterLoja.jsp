<%-- 
    Document   : ManterLoja
    Created on : 24/10/2018, 19:01:17
    Author     : Usuário
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
	<div class="main">
	   <div class="container">
		  <div class="register">
		  	
                      <div class="special-offers-section-head text-center dotted-line"> <div class="special-offers-section" > <h1>Cadastrar Loja</h1></br> </div></div>
        	
               <form action ="ManterLojaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterLoja">
            <table>
            <tr>
                <td><input type="hidden" name="txtIdLoja" value="${loja.idLoja}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Nome:</td>
                <td><input type="text" name="txtNomeLoja" value="${loja.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Nome do Gerente:</td>
                <td><input type="text" name="txtNomeGerenteLoja" value="${loja.nomeGerente}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="txtEmailLoja" value="${loja.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><input type="password" name="txtSenhaLoja" value="${loja.senha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Telefone:</td>
                <td><input type="text" name="txtTelefoneLoja" value="${loja.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>CNPJ:</td>
                <td><input type="text" name="txtCnpjLoja" value="${loja.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Descrição:</td>
                <td><input type="text" name="txtDescricaoLoja" value="${loja.descricao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Pagamento:</td>
                <td>
                    <select name="optPagamentoLoja" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                            <option value="Dinheiro" <c:if test="${loja.pagamento == 'Dinheiro'}"> selected</c:if>>Dinheiro</option>
                            <option value="Cartao Credito" <c:if test="${loja.pagamento == 'Cartao Credito'}"> selected</c:if>>Cartão - Crédito</option>
                            <option value="Cartao Debito" <c:if test="${loja.pagamento == 'Cartao Debito'}"> selected</c:if>>Cartão - Débito</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Foto:</td>
                <td><input type="text" name="txtFotoLoja" value="${loja.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>CEP:</td>
                <td><input type="text" name="txtCepLoja" id="cep" onblur="pesquisacep(this.value)" value="${loja.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
              <tr>
                <td>Logradouro:</td>
                <td><input type="text" name="txtLogradouroLoja" id="rua" value="${loja.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Bairro:</td>
                <td><input type="text" name="txtBairroLoja" id="bairro" value="${loja.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>             <tr>
                <td>Numero:</td>
                <td><input type="text" name="txtNumeroLoja" value="${loja.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Complemento:</td>
                <td><input type="text" name="txtComplementoLoja" value="${loja.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
              <tr>
                <td>Cidade:</td>
                <td><input type="text" name="txtCidadeLoja" id="cidade" value="${loja.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Estado:</td>
                <td><input type="text" name="txtEstadoLoja" id="uf" value="${loja.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
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