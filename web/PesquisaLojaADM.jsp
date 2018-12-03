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
        <div  class="container text-center"> 
           <h1>Pesquisa Loja</h1>
           <br>
      <table  class=" col-lg-12 ">
            <tr>
                <td>Código Cliente</td>
                <td>Nome Loja</td>
                 <td>Telefone Loja</td>
                  <td>Email Loja</td>
                   <td>Senha Loja</td>
                    <td>Foto Loja</td>
                     <td>Cep Loja</td>
                      <td>Logradouro Loja</td>
                       <td>Numero Loja</td>
                        <td>Bairro Loja</td>
                         <td>Complemento Loja</td>
                          <td>Cidade Loja</td>
                           <td>Estado Loja</td>
                           <td>Cnpj Loja</td>
                           <td>Descricao Loja</td>
                           <td>Nome Gerente Loja</td>
                           <td>Cod. Tipo Cozinha Loja</td>
                           
                <td colspan = 2 > Ação</td>
            </tr>
            <div><c:out value="${vazio}"/></div>
                <c:forEach items="${lojas}" var="loja">
                    <tr>
                        <td><c:out value="${loja.idLoja}"/></td>
                        <td><c:out value="${loja.nome}"/></td>
                         <td><c:out value="${loja.telefone}"/></td>
                        <td><c:out value="${loja.email}"/></td>
                         <td><c:out value="${loja.senha}"/></td>
                        <td><c:out value="${loja.foto}"/></td>
                       <td><c:out value="${loja.cep}"/></td>
                         <td><c:out value="${loja.logradouro}"/></td>
                       <td><c:out value="${loja.numero}"/></td>
                        <td><c:out value="${loja.bairro}"/></td>
                         <td><c:out value="${loja.complemento}"/></td>
                        <td><c:out value="${loja.cidade}"/></td>
                         <td><c:out value="${loja.estado}"/></td>
                           <td><c:out value="${loja.cnpj}"/></td>
                             <td><c:out value="${loja.descricao}"/></td>
                               <td><c:out value="${loja.nomeGerente}"/></td>
                                 <td><c:out value="${loja.codTipoCozinha}"/></td>
                                             
                        <td><a href="ManterLojaController?acao=prepararOperacao&operacao=Editar&idLoja=<c:out value="${loja.idLoja}"/>">Editar</a></td>
                        <td>
                            <a href="ManterLojaController?acao=prepararOperacao&operacao=Excluir&idLoja=<c:out value="${loja.idLoja}"/>">Excluir</a></td>
               
                    </tr>
                </c:forEach>


        </table><div id="botaoInclui">
        <form action="ManterLojaController?acao=prepararOperacao&operacao=Incluir" method="post">
            <input type="submit" name="btnIncluir" value="Incluir">
        </form>
        </div></div>
                
                <br>
             </div>
        </div>
        
                                     <% } %>

</body>
</html>