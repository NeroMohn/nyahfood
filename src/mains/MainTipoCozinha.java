package mains;

import model.TipoCozinha;

import java.sql.SQLException;

public class MainTipoCozinha {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {


        TipoCozinha tipoCozinha = new TipoCozinha(123L, "oriental");

        //ClienteDAO.gravar(cliente);  //OK
        //ClienteDAO.alterar(cliente);  //OK
        //ClienteDAO.excluir(cliente);  //OK
        //ClienteDAO.obterCliente(1);
        //ClienteDAO.obterTodosCliente();

    }
}
