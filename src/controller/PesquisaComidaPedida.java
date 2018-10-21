package controller;

import model.ComidaPedida;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PesquisaComidaPedidaController", urlPatterns = {"/PesquisaComidaPedidaController"})
public class PesquisaComidaPedida extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
             List<ComidaPedida> obterTodasComidasPedidas = ComidaPedida.obterTodasComidasPedidas();
            if (obterTodasComidasPedidas.isEmpty()) {
                request.setAttribute("vazio", "Mensagem");
            }
            request.setAttribute("comidasPedidas", ComidaPedida.obterTodasComidasPedidas());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaComidaPedida.jsp");
            view.forward(request, response);

        } catch (ClassNotFoundException e) {
            throw new ServletException(e);
        } catch (SQLException e) {
            throw new ServletException(e);
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public String getServletInfo() {
        return "Short description";
    }
}