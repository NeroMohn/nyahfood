package mains;

import dao.PedidoDAO;
import model.Comida;
import model.Pedido;

import java.sql.SQLException;

public class MainPedido {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        /*Comida comida = new Comida((long) 1234, "Pastel", "massa e queijo",
                "15", "null",
        4.5, 0, null);*/
        Pedido pedido = new Pedido((long) 12345,3, 22.30, "cartao",
                "XYZDD", "30-10-2018", null);
        Pedido pedido2 = new Pedido((long) 90908,3, 22.30, "cartao",
                "XYZDD", "30-10-2018", null);

        //PedidoDAO.gravar(pedido);
        //PedidoDAO.gravar(pedido2);
        //PedidoDAO.alterar(pedido);
        //PedidoDAO.excluir(pedido2); NOPE

        //PedidoDAO.obterTodosPedidos();





    }



}
