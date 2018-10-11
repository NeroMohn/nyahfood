package mains;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;

public class MainCliente {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Cliente cliente = new Cliente();

        cliente.setIdCliente(2L);

        //ClienteDAO.gravar(cliente);  //OK
        //ClienteDAO.alterar(cliente);  //OK
        //ClienteDAO.excluir(cliente);  //OK
        //ClienteDAO.obterCliente(1);
        //ClienteDAO.obterTodosCliente();


    }
}
