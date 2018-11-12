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
import model.ComidaPedida;

/**
 *
 * @author Yukas
 */
@WebServlet(name = "ManterComidaPedidaController",urlPatterns = {"/controller.ManterComidaPedidaController"})
public class ManterComidaPedidaController extends HttpServlet {

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
        request.setAttribute("ComidaPedida", ComidaPedida.obterTodasComidasPedidas());

        if (!operacao.equals("Incluir")) {
            Long idComidaPedida = Long.parseLong(request.getParameter("idComidaPedida"));
            ComidaPedida comidaPedida = ComidaPedida.obterComidaPedida(idComidaPedida);
            request.setAttribute("comidaPedida", comidaPedida);

        }
        RequestDispatcher view = request.getRequestDispatcher("/ManterComidaPedida.jsp");
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

public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws ServletException{
        String operacao = request.getParameter("operacao");
        Long idComidaPedida = Long.parseLong(request.getParameter("txtIdComidaPedida"));
        Double precoUnitario = Double.parseDouble(request.getParameter("txtPrecoUnitario"));
        Integer quantidade = Integer.parseInt(request.getParameter("txtQuantidadeComidaPedida"));
        Double precoTotal = Double.parseDouble(request.getParameter("txtPrecoTotal"));
        Long codComida = Long.parseLong(request.getParameter("txtCodComida"));
        
        
        try {
        ComidaPedida comidaPedida = new ComidaPedida(idComidaPedida,precoUnitario, quantidade, precoTotal, codComida);
       if (operacao.equals("Incluir")) {
                comidaPedida.gravar();
            } else {
                if (operacao.equals("Editar")) {
                    comidaPedida.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        comidaPedida.excluir();
                    }
                }
            }
        RequestDispatcher view =request.getRequestDispatcher("PesquisaComidaPedidaController");
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

