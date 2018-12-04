package controller;

import model.Comida;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import model.Loja;

@WebServlet(name = "PesquisaComidaLojaClienteController", urlPatterns = {"/PesquisaComidaLojaClienteController"})
public class PesquisaComidaLojaClienteController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Comida> obterTodasComidas = Comida.obterTodasComidas();
         
            if(obterTodasComidas.isEmpty()){
                request.setAttribute("vazio", "");
            }
             Long idLoja = Long.parseLong(request.getParameter("idLoja"));
            request.setAttribute("id", idLoja);
            request.setAttribute("comidas", Comida.obterTodasComidas());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaComidaLojaCliente.jsp");
            view.forward(request, response);

        } catch (ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
