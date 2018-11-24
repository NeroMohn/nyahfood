package model;

import dao.TipoPagamentoDAO;

import java.sql.SQLException;
import java.util.List;


public class TipoPagamento {
    
    private Long idTipoPagamento;
    private String nome;

    public TipoPagamento(Long idTipoPagamento, String tipo) {
        this.idTipoPagamento = idTipoPagamento;
        this.nome = tipo;
    }

    public TipoPagamento(String tipo) {

        this.nome = tipo;
    }

    public TipoPagamento() {

    }

    public Long getIdTipoPagamento() {
        return idTipoPagamento;
    }

    public void setIdTipoPagamento(Long idTipoPagamento) {
        this.idTipoPagamento = idTipoPagamento;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        TipoPagamentoDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        TipoPagamentoDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        TipoPagamentoDAO.excluir(this);
    }

    public static TipoPagamento obterTipoPagamento(Long idTipoPagamento) throws SQLException, ClassNotFoundException {
        return TipoPagamentoDAO.obterTipoPagamento(idTipoPagamento);
    }

    public static List<TipoPagamento> obterTodosTiposPagamento() throws SQLException, ClassNotFoundException {
        return TipoPagamentoDAO.obterTodosTiposPagamento();
    }
}
