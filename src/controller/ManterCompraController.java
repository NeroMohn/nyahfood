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
import model.Compra;

/**
 *
 * @author Yukas
 */
@WebServlet (name= "ManterCompraController", urlPatterns = "/controller.ManterCompraController")

public class ManterCompraController extends HttpServlet {

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
                if(!request.getSession().getAttribute("login").equals(null)&
                        !request.getSession().getAttribute("senha").equals(null)&
                        !request.getSession().getAttribute("tipo").equals(null)&
                        !request.getSession().getAttribute("login").equals("")&
                        !request.getSession().getAttribute("senha").equals("")||
                        !request.getSession().getAttribute("tipo").equals("")||
                        request.getSession().getAttribute("tipo").equals("2")){
                Long idCompra = Long.parseLong(request.getParameter("idCompra"));
                Compra compra = Compra.obterCompra(idCompra);
                request.setAttribute("compra", compra);
                }
            }
            RequestDispatcher view = request.getRequestDispatcher("/ManterCompra.jsp");
            view.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ManterComidaController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String operacao = request.getParameter("operacao");
        Long idCompra = Long.parseLong(request.getParameter("txtIdCompra"));
        Double total = Double.parseDouble(request.getParameter("txtTotal"));
        String status = request.getParameter("txtStatus");
        Long codPedido = Long.parseLong(request.getParameter("txtCodPedido"));
       
       
        
        try {
             Compra compra = new Compra(idCompra, total, status, codPedido);
          if (operacao.equals("Incluir")){
            compra.gravar();
        }else{ 
            if(operacao.equals("Editar")){
                compra.alterar();
        } else{ 
                if (operacao.equals("Excluir")){
                compra.excluir();
                }
            }
        }
        RequestDispatcher view =request.getRequestDispatcher("PesquisaCompraController");
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
