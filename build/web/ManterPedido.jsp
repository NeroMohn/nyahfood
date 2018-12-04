<%-- 
    Document   : ManterPedido
    Created on : 24/10/2018, 19:06:06
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
                document.getElementById('rua').value = ("");
                document.getElementById('bairro').value = ("");
                document.getElementById('cidade').value = ("");
                document.getElementById('uf').value = ("");
            }

            function meu_callback(conteudo) {
                if (!("erro" in conteudo)) {
                    //Atualiza os campos com os valores.
                    document.getElementById('rua').value = (conteudo.logradouro);
                    document.getElementById('bairro').value = (conteudo.bairro);
                    document.getElementById('cidade').value = (conteudo.localidade);
                    document.getElementById('uf').value = (conteudo.uf);
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
                    if (validacep.test(cep)) {
                        //Preenche os campos com "..." enquanto consulta webservice.
                        document.getElementById('rua').value = "...";
                        document.getElementById('bairro').value = "...";
                        document.getElementById('cidade').value = "...";
                        document.getElementById('uf').value = "...";
                        //Cria um elemento javascript.
                        var script = document.createElement('script');
                        //Sincroniza com o callback.
                        script.src = 'https://viacep.com.br/ws/' + cep + '/json/?callback=meu_callback';
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
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
        <script src="js/simpleCart.min.js"></script>	
        <script src="jquery-3.2.1.min.js"></script>
        <script>
            $(function () {
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

                        <div class="special-offers-section-head text-center dotted-line"> <div class="special-offers-section" > <h1>Incluir Pedido</h1></br> </div></div>

                        <form action ="ManterPedidoController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterPedido">
                            <table>
                                <tr>

                                    <td><input type="hidden" name="txtIdPedido" value="${pedido.idPedido}" <c:if test="${operacao != 'Incluir'}"> readonly</c:if>></input></td>
                                    </tr>
                                    <tr>
                                        <td>Total:</td>
                                        <td><input type="text" pattern="[0-9].{0,45}$" required name="txtTotal" value="${pedido.total}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
                                    </tr>
                                    <tr>
                                        <td>Metodo Pagamento:</td>
                                        <td><input type="text" name="txtMetodoPagamento" required value="${pedido.metodoPagamento}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
                                    </tr>
                                    <tr>
                                        <td>Data:</td>
                                        <td><input type="text" pattern="[0-9].{0,10}$" required name="txtDate" value="${pedido.date}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
                                    </tr>
                                    <tr>
                                        <td>Cliente: </td>
                                        <td>
                                            <select name="optLoja" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            <c:forEach items="${clientes}" var="cliente">
                                                <option value="${cliente.idCliente}" <c:if test="${cliente.idCliente == pedido.codCliente}"> selected</c:if>>${cliente.nome}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Cupom Desconto:</td>
                                    <td><input type="text"  pattern="[a-zA-Z0-9].{0,45}$" requiredname="txtCodCupomDesconto" value="${pedido.codCupomDesconto}"<c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
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