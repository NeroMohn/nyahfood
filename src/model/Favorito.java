package model;

import dao.FavoritoDAO;

import java.sql.SQLException;
import java.util.List;

public class Favorito {
    private Long idFavorito;
    private Cliente cliente;
    private Loja loja;
    private Long codCliente;
    private Long codLoja;

    public Favorito(){}

    public Favorito(Long idFavorito, Long CodCliente, Long CodLoja) {
        this.idFavorito = idFavorito;
        this.codCliente = codCliente;
        this.codLoja = codLoja;

    }

    public Long getIdFavorito() {
        return idFavorito;
    }

    public void setIdFavorito(Long idFavorito) {
        this.idFavorito = idFavorito;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Loja getLoja() {
        return loja;
    }

    public void setLoja(Loja loja) {
        this.loja = loja;
    }

    public Long getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(Long codCliente) {
        this.codCliente = codCliente;
    }

    public Long getCodLoja() {
        return codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }

    public void gravar() throws SQLException, ClassNotFoundException{
        FavoritoDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        FavoritoDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        FavoritoDAO.excluir(this);
    }

    public static Favorito obterFavorito(int idFavorito) throws SQLException, ClassNotFoundException{
        return FavoritoDAO.obterFavorito(idFavorito);
    }

    public static List<Favorito> obterTodosFavoritos() throws SQLException, ClassNotFoundException{
        return FavoritoDAO.obterTodosFavoritos();
    }
}
