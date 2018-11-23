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
import model.CupomDesconto;

/**
 *
 * @author Yukas
 */
@WebServlet (name= "ManterCupomDescontoController", urlPatterns = "/controller.ManterCupomDescontoController")
public class ManterCupomDescontoController extends HttpServlet {

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
        try {
        String operacao = request.getParameter("operacao");
        request.setAttribute("operacao", operacao);
        if (!operacao.equals("Incluir")) {
            Long idCupomDesconto = Long.parseLong(request.getParameter("idCupomDesconto"));
            CupomDesconto cupomDesconto = CupomDesconto.obterCupomDesconto(idCupomDesconto);
            request.setAttribute("cupomDesconto", cupomDesconto);
        }
        RequestDispatcher view = request.getRequestDispatcher("/ManterCupomDesconto.jsp");    
        view.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManterCupomDescontoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterCupomDescontoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(ManterCupomDescontoController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ManterCupomDescontoController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String operacao = request.getParameter("operacao");
        String nome = request.getParameter("nome");
        Double valor = Double.parseDouble(request.getParameter("valor"));
        Integer ativo = Integer.parseInt(request.getParameter("ativo"));
       
       
        
        try {
          if (operacao.equals("Incluir")){
            CupomDesconto cupomDesconto = new CupomDesconto(  nome, valor, ativo);
            cupomDesconto.gravar();
        }else{ 
            if(operacao.equals("Editar")){
                Long idCupomDesconto = Long.parseLong(request.getParameter("txtIdCupomDesconto"));
                CupomDesconto cupomDesconto = new CupomDesconto(  idCupomDesconto, nome, valor, ativo);
                cupomDesconto.alterar();
        } else{ 
                if (operacao.equals("Excluir")){
                Long idCupomDesconto = Long.parseLong(request.getParameter("txtIdCupomDesconto"));
                CupomDesconto cupomDesconto = new CupomDesconto ( idCupomDesconto, nome, valor, ativo);
                cupomDesconto.excluir();
                }
            }
      }
        RequestDispatcher view =request.getRequestDispatcher("PesquisaCupomDescontoController");
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
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
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
