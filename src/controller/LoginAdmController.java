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
import model.Adm;


/**
 *
 * @author rodri
 */
@WebServlet(name = "LoginAdmController", urlPatterns = {"/LoginAdmController"})
public class LoginAdmController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        String acao = request.getParameter("acao");
        if (acao.equals("preparar")) {
            prepararOperacao(request, response);
        } else if (acao.equals("logar")) {
            logar(request, response);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginAdmController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginAdmController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginAdmController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(LoginAdmController.class.getName()).log(Level.SEVERE, null, ex);
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

    private void logar(HttpServletRequest request, HttpServletResponse response)throws SQLException, ClassNotFoundException, ServletException, IOException, IOException{
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String tipo = "3";
        Adm adm = null;
        adm = Adm.obterAdm(login);
        if(adm == null){
            try{
                RequestDispatcher view = request.getRequestDispatcher("/LoginIncorreto.jsp");       
                view.forward(request, response);
            

} catch (IOException ex) {  
                Logger.getLogger(LoginClienteController.class
.getName()).log(Level.SEVERE, null, ex);
            }}else if(senha.equals(adm.getSenha())&& login.equals(adm.getLogin())){
            try {
                request.getSession().setAttribute("login", login);
                request.getSession().setAttribute("tipo", tipo);
                request.getSession().setAttribute("id", adm.getId());
                RequestDispatcher view = request.getRequestDispatcher("/SessionAdm.jsp");       
                view.forward(request, response);
            

} catch (IOException ex) {  
                Logger.getLogger(LoginAdmController.class
.getName()).log(Level.SEVERE, null, ex);
            }
        }else if(login.equals(adm.getLogin())&&!senha.equals(adm.getSenha())){
            try{
            RequestDispatcher view = request.getRequestDispatcher("/SenhaIncorreta.jsp");       
            view.forward(request, response);            
            } catch (IOException ex) {  
                Logger.getLogger(LoginAdmController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
        private void prepararOperacao(HttpServletRequest request, HttpServletResponse response) {
            RequestDispatcher view = request.getRequestDispatcher("/LoginAdm.jsp");    
        try {
            view.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(LoginAdmController.class
            .getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LoginAdmController.class
            .getName()).log(Level.SEVERE, null, ex);
        }
    }
}
