package controller;

import model.CupomDesconto;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Yukas
 */
@WebServlet(name = "PesquisaCupomDescontoController", urlPatterns = {"/PesquisaCupomDescontoController"})
public class PesquisaCupomDescontoController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<CupomDesconto> obterTodosCuponsDesconto = CupomDesconto.obterTodosCuponsDesconto();
            if (obterTodosCuponsDesconto.isEmpty()) {
                request.setAttribute("vazio", "Mensagem");
            }
            request.setAttribute("cuponsDesconto", CupomDesconto.obterTodosCuponsDesconto());
            RequestDispatcher view = request.getRequestDispatcher("/PesquisaCupomDesconto.jsp");
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
