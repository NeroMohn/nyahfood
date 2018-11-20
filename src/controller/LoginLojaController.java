
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
 * @author rodri
 */
@WebServlet(name = "LoginLojaController", urlPatterns = {"/LoginLojaController"})
public class LoginLojaController extends HttpServlet {


 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
            String acao = request.getParameter("acao");
            if(acao.equals("preparar")){
                prepararOperacao(request, response);
            }else if (acao.equals("logar")){
                logar(request, response);   
            }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginLojaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginLojaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginLojaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginLojaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void logar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String tipo = "2";
        Loja loja = Loja.obterLoja(login);
        if(loja == null){
            try{
                RequestDispatcher view = request.getRequestDispatcher("/LoginIncorreto.jsp");       
                view.forward(request, response);
            } catch (IOException ex) {  
                Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
            }}else if(senha.equals(loja.getSenha())&& login.equals(loja.getEmail())){
            try {
                request.getSession().setAttribute("login", login);
                request.getSession().setAttribute("senha", senha);
                request.getSession().setAttribute("tipo", tipo);
                request.getSession().setAttribute("id", loja.getIdLoja());
                RequestDispatcher view = request.getRequestDispatcher("/SessionCliente.jsp");       
                view.forward(request, response);
            } catch (IOException ex) {  
                Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else if(login.equals(loja.getEmail())&&!senha.equals(cliente.getSenha())){
            try{
            RequestDispatcher view = request.getRequestDispatcher("/SenhaIncorreta.jsp");       
            view.forward(request, response);
            } catch (IOException ex) {  
                Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
                

    private void prepararOperacao(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher view = request.getRequestDispatcher("/LoginLoja.jsp");    
        try {
            view.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(LoginLojaController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LoginLojaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
