package model;

import dao.CupomDescontoDAO;

import java.sql.SQLException;
import java.util.List;

public class CupomDesconto {
    private Long idCupomDesconto;
    private String nome;
    private double valor;
    private int ativo;

    
    public CupomDesconto ( Long idCupomDesconto, String nome, double valor, int ativo){
        this.idCupomDesconto = idCupomDesconto;
        this.nome = nome;
        this.valor = valor;
        this.ativo = ativo;
    }
    
    public CupomDesconto ( String nome, double valor, int ativo){
        this.nome = nome;
        this.valor = valor;
        this.ativo = ativo;
    }
    
    
    public Long getIdCupomDesconto() {
        return idCupomDesconto;
    }

    public void setIdCupomDesconto(Long idCupomDesconto) {
        this.idCupomDesconto = idCupomDesconto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getAtivo() {
        return ativo;
    }

    public void setAtivo(int ativo) {
        this.ativo = ativo;
    }
    
    public void gravar() throws SQLException, ClassNotFoundException{
        CupomDescontoDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        CupomDescontoDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        CupomDescontoDAO.excluir(this);
    }

    public static CupomDesconto obterCupomDesconto(Long idCupomDesconto) throws SQLException, ClassNotFoundException{
        return CupomDescontoDAO.obterCupomDesconto(idCupomDesconto);
    }
    
    public static List<CupomDesconto> obterTodosCuponsDesconto() throws SQLException, ClassNotFoundException{
        return CupomDescontoDAO.obterTodosCuponsDesconto();
    }
}
