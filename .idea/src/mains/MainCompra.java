package mains;

import model.Compra;
import dao.CompraDAO;

import java.sql.SQLException;

public class MainCompra {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
    Compra compra = new Compra();
    compra.setIdCompra(1L);
    compra.setStatus("Alteração");
    compra.setTotal(20.00);
    compra.setCodPedido(1L);

    //CompraDAO.gravar(compra);  //OK
    //CompraDAO.alterar(compra);  //OK
    //CompraDAO.excluir(compra);  //OK
    //CompraDAO.obterCompra(1);
    //CompraDAO.obterTodasCompras();


    }
}