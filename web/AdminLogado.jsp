
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

		
		
                
					<

				</div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->
	<!-- content-section-starts -->
        <div class="container text-center" id="adm" > 
                <h1> Bem-Vindo! <%=session.getAttribute("login")%> </h1>
            <table class="container text-center" id="adm">
               
                <br>
                   <tr> <td>    <a href="PesquisaClienteControllerADM">Pesquisa Clientes</a><br /> </td> </tr>
    <!--  <a href="PesquisaComidaController">Pesquisa Comida</a><br />
     <a href="PesquisaComidaPedidaController">Pesquisa Comida Pedida</a><br />
      <a href="PesquisaCompraController">Pesquisa Compra</a><br /> -->
     <tr> <td>  <a href="PesquisaLojaControllerADM">Pesquisa Lojas</a><br /></td> </tr>
     <tr> <td>  <a href="PesquisaComidaControllerADM">Pesquisa Comidas</a><br /></td> </tr>
     <tr> <td>  <a href="PesquisaPedidoControllerADM">Pesquisa Pedidos</a><br /></td> </tr>
     <!--
      <a href="PesquisaTipoCozinhaController">Pesquisa Tipo Cozinha</a><br />
      <a href="PesquisaTipoCulinariaController">Pesquisa Tipo Culinaria</a><br />
      <a href="LoginClienteController?acao=preparar">Login</a> <br>
      <a href="LogoutController">Logout</a>
    
     
            </table>
        </div>
</div>


</body>
</html>