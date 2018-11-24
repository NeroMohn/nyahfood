package controller;

import model.Pedido;

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

@WebServlet(name = "PesquisaPedidoControllerCliente", urlPatterns = {"/PesquisaPedidoControllerCliente"})
public class PesquisaPedidoControllerCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Pedido> obterTodosPedidos = Pedido.obterTodosPedidos();
            if(obterTodosPedidos.isEmpty()){
                 request.setAttribute("vazio", "Mensagem");
            }
            request.setAttribute("pedidos", Pedido.obterTodosPedidos());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaPedidoCliente.jsp");
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