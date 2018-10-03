package mains;

import model.Favorito;
import dao.FavoritoDAO;

import java.sql.SQLException;

public class MainFavorito {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Favorito favorito = new Favorito();
        favorito.setIdFavorito(1L);
        favorito.setCodCliente(1L);
        favorito.setCodLoja(1L);

        //FavoritoDAO.gravar(favorito);   //OK
        //FavoritoDAO.alterar(favorito);
        //FavoritoDAO.excluir(favorito);  //OK
        //FavoritoDAO.ObterFavorito(1L);
        //FavoritoDAO.obterTodosFavoritos();  //OK???
    }
}
