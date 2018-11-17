
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
import javax.websocket.Session;
import model.Cliente;

/**
 *
 * @author rodri
 */
@WebServlet(name = "LoginClienteController", urlPatterns = {"/LoginClienteController"})
public class LoginClienteController extends HttpServlet {


 
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
            Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void logar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, ServletException, IOException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        String tipo = "1";
        Cliente cliente = Cliente.obterCliente(login);
        if(senha.equals(cliente.getSenha())&& login.equals(cliente.getEmail())){
            try {
                request.getSession().setAttribute("login", login);
                request.getSession().setAttribute("senha", senha);
                request.getSession().setAttribute("tipo", tipo);
                request.getSession().setAttribute("id", cliente.getIdCliente());
                RequestDispatcher view = request.getRequestDispatcher("/SessionCliente.jsp");       
                view.forward(request, response);
            } catch (IOException ex) {  
                Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }else if(login.equals(cliente.getEmail())){
            RequestDispatcher view = request.getRequestDispatcher("/SenhaIncorreta.jsp");       
            view.forward(request, response);
        }else{
            try {
                RequestDispatcher view = request.getRequestDispatcher("/LoginIncorreto.jsp");       
                view.forward(request, response);
            } catch (IOException ex) {
                Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }    
    }

    private void prepararOperacao(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher view = request.getRequestDispatcher("/LoginCliente.jsp");    
        try {
            view.forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(LoginClienteController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
