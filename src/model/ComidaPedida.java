package model;

import dao.ComidaPedidaDAO;

import java.sql.SQLException;
import java.util.List;

public class ComidaPedida {

    private Long idComidaPedida;
    private Comida comida;
    private double precoUnitario;
    private int quantidade;
    private double precoTotal;
    private Long codComida;

    public ComidaPedida(){}

    public ComidaPedida(Long idComidaPedida, double precoUnitario, int quantidade, double precoTotal,Long codComida) {
        setIdComidaPedida(idComidaPedida);
        setPrecoTotal(precoTotal);
        setPrecoUnitario(precoUnitario);
        setQuantidade(quantidade);
        setCodComida(codComida);
    }

    public Long getIdComidaPedida() {
        return idComidaPedida;
    }

    public void setIdComidaPedida(Long idComidaPedida) {
        this.idComidaPedida = idComidaPedida;
    }

    public double getPrecoUnitario() {
        return precoUnitario;
    }

    public void setPrecoUnitario(double precoUnitario) {
        this.precoUnitario = precoUnitario;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getPrecoTotal() {
        return precoTotal;
    }

    public void setPrecoTotal(double precoTotal) {
        this.precoTotal = precoTotal;
    }

    public Comida getComida() { return comida; }

    public void setComida(Comida comida) { this.comida = comida; }

    public Long getCodComida() { return codComida; }

    public void setCodComida(Long codComida) { this.codComida = codComida; }

    public void gravar() throws SQLException, ClassNotFoundException{
        ComidaPedidaDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        ComidaPedidaDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        ComidaPedidaDAO.excluir(this);
    }

    public static ComidaPedida obterComidaPedida(Long idComidaPedida) throws SQLException, ClassNotFoundException{
        return ComidaPedidaDAO.obterComidaPedida(idComidaPedida);
    }

    public static List<ComidaPedida> obterTodasComidasPedidas() throws SQLException, ClassNotFoundException{
        return ComidaPedidaDAO.obterTodasComidasPedidas();
    }
}
