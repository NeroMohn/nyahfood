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
        <title>Loja</title>
        
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
    </head>
    <body>
        <h1>Manter Loja - ${operacao}</h1>
        
        <form action ="ManterLojaController?acao=confirmarOperacao&operacao=${operacao}"  method = "post" name="ManterLoja">
            <table>
                        <tr>
                <!--<td>Código da Loja</td>-->
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
                <td>CNPJ:</td>
                <td><input type="text" name="txtCnpjLoja" value="${loja.cnpj}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>  
             <tr>
                <td>Telefone:</td>
                <td><input type="text" name="txtTelefoneLoja" value="${loja.telefone}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
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
            <tr>
                <td>Descrição:</td>
                <td><input type="text" name="txtDescricaoLoja" value="${loja.descricao}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
            <tr>
                <td>Pagamentos:</td>
                <td><input type="text" name="txtPagamentosLoja" value="${loja.pagamento}" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>></input></td>
            </tr>
             
           
            
             
           
            </table>
            <td><input type="submit" name="btnConfirmar" value="Confirmar"></td>
        </form>
    </body>
</html>
