package mains;

import dao.ClienteDAO;
import model.Cliente;

import java.sql.SQLException;

public class MainCliente {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Cliente cliente = new Cliente();

        cliente.setIdCliente(1L);
        cliente.setNome("Braian");
        cliente.setCpf("123456");
        cliente.setBairro("Fabrica");
        cliente.setCidade("Caxambu");

        ClienteDAO.gravar(cliente);
        ClienteDAO.alterar(cliente);
        ClienteDAO.excluir(cliente);


    }
}
