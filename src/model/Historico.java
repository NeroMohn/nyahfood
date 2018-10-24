package model;

import dao.HistoricoDAO;

import java.sql.SQLException;
import java.util.List;

public class Historico {
    private Long idHistorico;
    private Compra compra;
    private Long codCompra;

    public Historico(){}

    public Historico(Long idHistorico, Long codCompra) {
        this.idHistorico = idHistorico;
        this.codCompra = codCompra;
    }


    public Compra getCompra() {
        return compra;
    }

    public void setCompra(Compra compra) {
        this.compra = compra;
    }

    public Long getIdHistorico() {
        return idHistorico;
    }

    public void setIdHistorico(Long idHistorico) {
        this.idHistorico = idHistorico;
    }

    public Long getCodCompra() {
        return codCompra;
    }

    public void setCodCompra(Long codCompra) {
        this.codCompra = codCompra;
    }

    public void gravar() throws SQLException, ClassNotFoundException{
        HistoricoDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        HistoricoDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        HistoricoDAO.excluir(this);
    }

    public static Historico obterCliente(Long idHistorico) throws SQLException, ClassNotFoundException{
        return HistoricoDAO.obterHistorico(idHistorico);
    }

    public static List<Historico> obterTodosHistoricos() throws SQLException, ClassNotFoundException{
        return HistoricoDAO.obterTodosHistoricos();
    }
}
