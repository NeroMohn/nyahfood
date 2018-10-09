package mains;

import dao.TipoCulinariaDAO;
import model.TipoCulinaria;

import java.sql.SQLException;

public class MainTipoCulinaria {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        TipoCulinaria tipoCulinaria = new TipoCulinaria(123L, "Arabe",122L,133L);

        //ClienteDAO.gravar(cliente);  //OK
        //ClienteDAO.alterar(cliente);  //OK
        //ClienteDAO.excluir(cliente);  //OK
        //ClienteDAO.obterCliente(1);
        //ClienteDAO.obterTodosCliente();
    }
}
