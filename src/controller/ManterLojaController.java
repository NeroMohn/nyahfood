/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Loja;

/**
 *
 * @author Yukas
 */

@WebServlet (name= "ManterLojaController", urlPatterns = "/controller.ManterLojaController")
public class ManterLojaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException, SQLException, ClassNotFoundException {
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
        request.setAttribute("Loja", Loja.obterTodasLojas());

        if (!operacao.equals("Incluir")) {
            Long idLoja = Long.parseLong(request.getParameter("idLoja"));
            Loja loja = Loja.obterLoja(idLoja);
            request.setAttribute("loja", loja);

        }
        RequestDispatcher view = request.getRequestDispatcher("/ManterLoja.jsp");
        view.forward(request, response);
    }   catch (SQLException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        }
   
}
public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException{
    String operacao = request.getParameter("operacao");
    String nome = request.getParameter("txtNomeLoja");
    String telefone = request.getParameter("txtTelefoneLoja");
    String email = request.getParameter("txtEmailLoja");
    String senha = request.getParameter("txtSenhaLoja");
    String foto = request.getParameter("txtFotoLoja");
    String Cep = request.getParameter("txtCepLoja");
    String logradouro = request.getParameter("txtLogradouroLoja");
    String bairro = request.getParameter("txtBairroLoja");
    String complemento = request.getParameter("txtComplementoLoja");
    String cidade = request.getParameter("txtCidadeLoja");
    String estado = request.getParameter("txtEstadoLoja");
    String numero = request.getParameter("txtNumeroLoja");
    String Cnpj = request.getParameter("txtCnpjLoja");
    String descricao = request.getParameter("txtDescricaoLoja");
    String nomeGerente = request.getParameter("txtNomeGerenteLoja");
 
    
    
    
     try {
          if (operacao.equals("Incluir")){
            Loja loja = new Loja ( nome, telefone, email, senha, foto, Cep, logradouro, bairro, complemento, cidade, estado, numero, Cnpj, descricao, nomeGerente);
            loja.gravar();
        }else{ 
            if(operacao.equals("Editar")){
                Long idLoja = Long.parseLong(request.getParameter("txtIdLoja"));
                Loja loja = new Loja (idLoja, nome, telefone, email, senha, foto, Cep, logradouro, bairro, complemento, cidade, estado, numero, Cnpj, descricao, nomeGerente);
                loja.alterar();
        } else{ 
                if (operacao.equals("Excluir")){
                Long idLoja = Long.parseLong(request.getParameter("txtIdLoja"));
                Loja loja = new Loja (idLoja, nome, telefone, email, senha, foto, Cep, logradouro, bairro, complemento, cidade, estado, numero, Cnpj, descricao, nomeGerente);
                
                loja.excluir();
                }
            }
        }
          RequestDispatcher view =request.getRequestDispatcher("PesquisaLojaController");
        view.forward(request,response); 
     } catch (IOException e) {
            throw new ServletException(e);
        }catch (SQLException e){
            throw new ServletException(e);
        }catch(ClassNotFoundException e){
            throw new ServletException(e);
        }catch(ServletException e){
            throw e;
        }

}

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
/**
 * Handles the HTTP <code>GET</code> method.
 *
 * @param request servlet request
 * @param response servlet response
 * @throws ServletException if a servlet-specific error occurs
 * @throws IOException if an I/O error occurs
 */
@Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManterLojaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterLojaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManterLojaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterLojaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
        public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

