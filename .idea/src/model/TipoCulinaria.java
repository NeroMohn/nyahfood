package model;

import dao.TipoCulinariaDAO;

import java.sql.SQLException;
import java.util.List;

public class TipoCulinaria {
    private Long idTipoCulinaria;
    private String culinaria;
    private Loja loja;
    private TipoCozinha tipocozinha;
    private Long codLoja;
    private Long codTipoCozinha;

    public TipoCulinaria(Long idTipoCulinaria, String culinaria, Long codLoja, Long codTipoCozinha) {
        this.idTipoCulinaria = idTipoCulinaria;
        this.culinaria = culinaria;
        this.codLoja = codLoja;
        this.codTipoCozinha = codTipoCozinha;
    }

    public TipoCulinaria() {

    }

    public long getIdTipoCulinaria() {
        return idTipoCulinaria;
    }

    public void setIdTipoCulinaria(Long idTipoCulinaria) {this.idTipoCulinaria = idTipoCulinaria; }

    public String getCulinaria() {
        return culinaria;
    }

    public void setCulinaria(String culinaria) {
        this.culinaria = culinaria;
    }

    public Loja getLoja() {
        return loja;
    }

    public void setLoja(Loja loja) {
        this.loja = loja;
    }

    public TipoCozinha getTipocozinha() {
        return tipocozinha;
    }

    public void setTipocozinha(TipoCozinha tipocozinha) {
        this.tipocozinha = tipocozinha;
    }

    public Long getCodLoja() {
        return codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }

    public Long getCodTipoCozinha() {
        return codTipoCozinha;
    }

    public void setCodTipoCozinha(Long codTipoCozinha) {
        this.codTipoCozinha = codTipoCozinha;
    }

    public void gravar() throws SQLException, ClassNotFoundException{
        TipoCulinariaDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        TipoCulinariaDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        TipoCulinariaDAO.excluir(this);
    }

    public static TipoCulinaria obterTipoCulinaria(int idTipoCulinaria) throws SQLException, ClassNotFoundException{
        return TipoCulinariaDAO.obterTipoCulinaria(idTipoCulinaria);
    }

    public static List<TipoCulinaria> obterTodosTiposCulinaria throws SQLException, ClassNotFoundException{
        return TipoCulinariaDAO.obterTodosTiposCulinaria();
    }
}
