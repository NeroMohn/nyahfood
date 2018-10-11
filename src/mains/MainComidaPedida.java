package mains;

import model.ComidaPedida;
import dao.ComidaPedidaDAO;

import java.sql.SQLException;

public class MainComidaPedida {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        ComidaPedida cp1 = new ComidaPedida();
        cp1.setIdComidaPedida(1L);
        cp1.setCodComida(2L);
        cp1.setPrecoTotal(30.00);
        cp1.setPrecoUnitario(10.00);
        cp1.setQuantidade(2);

        //ComidaPedidaDAO.gravar(cp1);  //OK
        //ComidaPedidaDAO.alterar(cp1);  //OK
        //ComidaPedidaDAO.excluir(cp1);  //OK
        //ComidaPedidaDAO.obterComidaPedida(1L);
        //ComidaPedidaDAO.obterTodasComidas();


    }
}
