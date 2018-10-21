package controller;

import model.TipoCulinaria;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class PesquisaTipoCulinariaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<TipoCulinaria> obterTodosTiposCulinaria = TipoCulinaria.obterTodosTiposCulinaria();
            if(obterTodosTiposCulinaria.isEmpty()){
               request.setAttribute("vazio", "Mensagem");
            }
            request.setAttribute("tiposculinarias", TipoCulinaria.obterTodosTiposCulinaria());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaTipoCulinaria.jsp");
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
