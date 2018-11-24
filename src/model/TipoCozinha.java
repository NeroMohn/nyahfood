package model;

import dao.TipoCozinhaDAO;

import java.sql.SQLException;
import java.util.List;

public class TipoCozinha {

    private Long idTipoCozinha;
    private String nome;

    public TipoCozinha(Long idTipoCozinha, String tipo) {
        this.idTipoCozinha = idTipoCozinha;
        this.nome = tipo;
    }

    public TipoCozinha(String tipo) {

        this.nome = tipo;
    }

    public TipoCozinha() {

    }

    public Long getIdTipoCozinha() {
        return idTipoCozinha;
    }

    public void setIdTipoCozinha(Long idTipoCozinha) {
        this.idTipoCozinha = idTipoCozinha;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        TipoCozinhaDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        TipoCozinhaDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        TipoCozinhaDAO.excluir(this);
    }

    public static TipoCozinha obterTipoCozinha(Long idTipoCozinha) throws SQLException, ClassNotFoundException {
        return TipoCozinhaDAO.obterTipoCozinha(idTipoCozinha);
    }

    public static List<TipoCozinha> obterTodosTiposCozinha() throws SQLException, ClassNotFoundException {
        return TipoCozinhaDAO.obterTodosTiposCozinha();
    }
}
