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
<script src="js/validaCampo.js"></script>
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
	<div id="header"></div>

	<!-- header-section-ends -->
	<!-- content-section-starts -->
	<div class="content">
	<div class="main">
	   <div class="container">
		  <div class="register">

                      <div class="special-offers-section-head text-center dotted-line"> <div class="special-offers-section" > <h1>Cadastrar Loja</h1></br> </div></div>

               <form action ="CadastroLojaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterLoja" onsubmit=" return validacaoLoja()">
            <table>
            <tr>
                <td><input type="hidden" name="txtIdLoja" value="${loja.idLoja}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Nome Loja:</td>
                <td><input pattern="^[A-Za-z].{2,}$" required  type="text" name="txtNomeLoja" value="${loja.nome}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Nome do Gerente:</td>
                <td><input pattern="^[A-Za-z].{3,}$" required  type="text" name="txtNomeGerenteLoja" value="${loja.nomeGerente}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required  type="email" name="txtEmailLoja" value="${loja.email}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Senha:</td>
                <td><input title="Minimo 6 digitos"  pattern=".{6,}$" required  type="password" name="txtSenhaLoja" value="${loja.senha}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td> Telefone:</td>
                <td><input title="Exemplo: (XX)XXXXXXX" pattern="^\d{11}$" required type="tel" name="txtTelefoneLoja" value="${loja.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>CNPJ:</td>
                <td><input  pattern="[0-9].{14}$" required title="Utilize Apenas Numeros" type="text" name="txtCnpjLoja" value="${loja.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Descrição:</td>
                <td><textarea  rows="5" cols="25" name="txtDescricaoLoja" value="${loja.descricao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></textarea></td>
            </tr>
             <tr>
                <td>Tipo Cozinha:</td>
                <td>
                    <select name="optTipoCozinha" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                        <c:forEach items="${tiposCozinha}" var="tipoCozinha">
                            <option value="${tipoCozinha.idTipoCozinha}" <c:if test="${loja.codTipoCozinha == tipoCozinha.idTipoCozinha}"> selected</c:if>>${tipoCozinha.nome}</option>
                        </c:forEach>
                    </select>
                </td>


                </tr>

            <tr>
                <td>Foto:</td>
                <td>   <div id="UploadImagem"></div> <input type="hidden" name="txtFotoLoja" value="${loja.foto}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
          
            </tr>
            <tr>
                <td>CEP:</td>
                <td><input pattern="[0-9].{7,}$"  type="text" name="txtCepLoja" id="cep" onblur="pesquisacep(this.value)" value="${loja.cep}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
              <tr>
                <td>Logradouro:</td>
                <td><input  pattern="[A-Za-z].{4,}" required  type="text" name="txtLogradouroLoja" id="rua" value="${loja.logradouro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Bairro:</td>
                <td><input pattern="[A-Za-z].{4,}" required type="text" name="txtBairroLoja" required  id="bairro" value="${loja.bairro}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>             <tr>
                <td>Numero:</td>
                <td><input pattern="[A-Za-z0-9].{0,}" required  type="text" name="txtNumeroLoja" value="${loja.numero}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Complemento:</td>
                <td><input pattern="[A-Za-z].{4,}" required  type="text" name="txtComplementoLoja" value="${loja.complemento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
              <tr>
                <td>Cidade:</td>
                <td><input pattern="[A-Za-z].{4,}" required  type="text" name="txtCidadeLoja" id="cidade" value="${loja.cidade}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             <tr>
                <td>Estado:</td>
                <td><input pattern="[A-Za-z]{2}" required  title="Apenas a sigla" type="text" name="txtEstadoLoja" id="uf" value="${loja.estado}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            </table>
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>


				</div>
		   </div>
	     </div>
	    </div>
	

</body>
</html>
