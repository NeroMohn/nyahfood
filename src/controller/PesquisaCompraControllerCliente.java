package controller;

import model.Compra;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "PesquisaCompraControllerCliente", urlPatterns = {"/PesquisaCompraControllerCliente"})
public class PesquisaCompraControllerCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Compra> obterTodasCompras = Compra.obterTodasCompras();
            if(obterTodasCompras.isEmpty()){
                request.setAttribute("vazio", "Mensagem");
            }
            request.setAttribute("compras", Compra.obterTodasCompras());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaCompraCliente.jsp");
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
