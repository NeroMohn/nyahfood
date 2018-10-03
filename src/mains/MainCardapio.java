package mains;

import model.Cardapio;
import dao.CardapioDAO;

import java.sql.SQLException;

public class MainCardapio {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Cardapio cardapio = new Cardapio();
        cardapio.setIdCardapio(1L);
        cardapio.setNome("Bebidas");
        cardapio.setCodComida(1L);

        //CardapioDAO.gravar(cardapio);  //OK
        //CardapioDAO.alterar(cardapio);
        CardapioDAO.excluir(cardapio);
        //CardapioDAO.obterCardapio(1L);
        //CardapioDAO.obterTodosCardapios();  //OK???
    }
}

