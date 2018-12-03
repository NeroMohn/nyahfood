package controller;

import java.io.IOException;
import static java.lang.Long.parseLong;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.swing.text.html.CSS.getAttribute;
import model.Cliente;

@WebServlet (name= "ManterClienteController", urlPatterns = "/controller.ManterClienteController")
public class ManterClienteController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if (acao.equals("confirmarOperacao")) {
                confirmarOperacao(request, response);
        } else {
            if (acao.equals("prepararOperacao")) {
                prepararOperacao(request, response);
            }
        }
    }
    

public void prepararOperacao(HttpServletRequest request, HttpServletResponse response) {
        try{
        String operacao = request.getParameter("operacao");
        request.setAttribute("operacao", operacao);
        if (!operacao.equals("Incluir")) {
            Long idCliente = Long.parseLong(request.getParameter("idCliente"));
            Cliente cliente = Cliente.obterCliente(idCliente);
            request.setAttribute("cliente", cliente);
        }
        RequestDispatcher view = request.getRequestDispatcher("/ManterCliente.jsp");    
        view.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManterClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(ManterClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ManterClienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
   
}

    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String operacao = request.getParameter("operacao");
        String nome = request.getParameter("txtNomeCliente");
        String cpf = request.getParameter("txtCpfCliente");
        String email =  request.getParameter("txtEmailCliente");
        String senha =  request.getParameter("txtSenhaCliente");
        String telefone =  request.getParameter("txtTelefoneCliente");
        String logradouro =  request.getParameter("txtLogradouroCliente");
        String cep =  request.getParameter("txtCepCliente");
        String numero =  request.getParameter("txtNumeroCliente");
        String bairro =  request.getParameter("txtBairroCliente");
        String complemento =  request.getParameter("txtComplementoCliente");
        String cidade =  request.getParameter("txtCidadeCliente");
        String estado =  request.getParameter("txtEstadoCliente");
       
        try {
        if (operacao.equals("Incluir")){
            Cliente cliente = new Cliente( nome, cpf, email, senha, telefone, logradouro, cep, numero, bairro,
                complemento, cidade, estado);
            cliente.gravar();
        }else{ 
            if(operacao.equals("Editar")){
                Long idCliente =parseLong(request.getSession().getAttribute("id").toString());
                Cliente cliente = new Cliente(idCliente, nome, cpf, email, senha, telefone, logradouro, cep, numero, bairro,
                complemento, cidade, estado);
                cliente.alterar();
        } else{ 
                if (operacao.equals("Excluir")){
                Long idCliente = Long.parseLong(request.getParameter("txtIdCliente"));
                Cliente cliente = new Cliente(idCliente, nome, cpf, email, senha, telefone, logradouro, cep, numero, bairro,
                complemento, cidade, estado);
                cliente.excluir();
                }
            }
        }
        RequestDispatcher view =request.getRequestDispatcher("PesquisaClienteControllerADM");
        view.forward(request,response);
        }catch (IOException e) {
            throw new ServletException(e);
        }catch (SQLException e){
            throw new ServletException(e);
        }catch(ClassNotFoundException e){
            throw new ServletException(e);
        }catch(ServletException e){
            throw e;
        }
    }

    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

        @Override
        public String getServletInfo() {
        return "Short description";
    }
}

