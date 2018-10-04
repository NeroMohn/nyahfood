package mains;

import dao.ComidaDAO;
import model.Comida;

import java.sql.SQLException;

public class MainComida {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Comida comida = new Comida();
        comida.setNome("Haguiri");
        comida.setDesconto(15);
        comida.setIdComida(1234L);
        comida.setCodLoja((long)123654);


        //ComidaDAO.gravar(comida);
        //ComidaDAO.alterar(comida);
        //ComidaDAO.excluir(comida);
    }
}
