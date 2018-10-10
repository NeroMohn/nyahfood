package model;

import dao.TipoCozinhaDAO;

import java.sql.SQLException;
import java.util.List;

public class TipoCozinha {
    private Long idTipoCozinha;
    private String tipo;


    public TipoCozinha(Long idTipoCozinha, String tipo) {
        this.idTipoCozinha = idTipoCozinha;
        this.tipo = tipo;
    }

    public TipoCozinha() {

    }


    public Long getIdTipoCozinha() {
        return idTipoCozinha;
    }

    public void setIdTipoCozinha(Long idTipoCozinha) {
        this.idTipoCozinha = idTipoCozinha;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public void gravar() throws SQLException, ClassNotFoundException{
        TipoCozinhaDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        TipoCozinhaDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        TipoCozinhaDAO.excluir(this);
    }

    public static Cliente obterTipoCozinha (int idTipoCozinha) throws SQLException, ClassNotFoundException{
        return TipoCozinhaDAO.obterTipoCozinha(idTipoCozinha);
    }

    public static List<TipoCozinha> obterTodosTiposCozinha throws SQLException, ClassNotFoundException{
        return TipoCozinhaDAO.obterTodosTiposCozinha();
    }
}
