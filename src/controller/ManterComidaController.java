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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Comida;

/**
 *
 * @author rodri
 */
public class ManterComidaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acao = request.getParameter("acao");
        if (acao.equals("confirmarOperacao")) {
            //     confirmarOperacao(request, response);
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
        request.setAttribute("Comida", Comida.obterTodasComidas());

        if (!operacao.equals("Incluir")) {
            Long idComida = Long.parseLong(request.getParameter("idComida"));
            Comida comida = Comida.obterComida(idComida);
            request.setAttribute("comida", comida);

        }
        RequestDispatcher view = request.getRequestDispatcher("/ManterComida.jsp");
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

public void confirmarOperacao(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException{
    String operacao = request.getParameter("operacao");
    Long idComida = Long.parseLong(request.getParameter("txtIdComida"));
    String nome = request.getParameter("txtNome");
    String ingrediente = request.getParameter("txtIngrediente");
    String tempoPreparo = request.getParameter("txtTempoPreparo");
    String foto = request.getParameter("txtFoto");
    Double preco = Double.parseDouble(request.getParameter("txtPreco"));
    Double desconto = Double.parseDouble(request.getParameter("txtDesconto"));
    Long codLoja = Long.parseLong(request.getParameter("txtCodLoja"));
    
    Comida comida = new Comida(idComida, nome, ingrediente, tempoPreparo, foto, preco, desconto);
    

   if (operacao.equals("Incluir")) {
                comida.gravar();
            } else {
                if (operacao.equals("Editar")) {
                    comida.alterar();
                } else {
                    if (operacao.equals("Excluir")) {
                        comida.excluir();
                    }
                }
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

