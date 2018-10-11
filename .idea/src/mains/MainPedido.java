package mains;

import dao.PedidoDAO;
import model.Comida;
import model.Pedido;

import java.sql.SQLException;

public class MainPedido {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {


        Pedido pedido = new Pedido();
        pedido.setCodComida(1L);
        pedido.setCupomDesconto("Haha");
        pedido.setIdPedido(2L);


        //PedidoDAO.gravar(pedido);  //OK
        //PedidoDAO.alterar(pedido);  //OK
        //PedidoDAO.excluir(pedido);  //OK
        //PedidoDAO.obterPedido(1);
        //PedidoDAO.obterTodosPedidos();





    }



}
