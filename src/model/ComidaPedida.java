package model;

import dao.ComidaPedidaDAO;

import java.sql.SQLException;
import java.util.List;

public class ComidaPedida {

    private Long idComidaPedida;
    private int quantidade;
    private double total;
    private Long codComida;
    private Long codPedido;

    public ComidaPedida(){}

    public ComidaPedida(Long idComidaPedida, int quantidade, double total, Long codComida, Long codPedido) {
        setIdComidaPedida(idComidaPedida);
        setQuantidade(quantidade);
        setTotal(total);
        setCodComida(codComida);
        setCodPedido(codPedido);
    }
    
      public ComidaPedida(int quantidade, double total, Long codComida, Long codPedido) {
       
        setQuantidade(quantidade);
        setTotal(total);
        setCodComida(codComida);
        setCodPedido(codPedido);
    }
    public Long getIdComidaPedida() {
        return idComidaPedida;
    }

    public void setIdComidaPedida(Long idComidaPedida) {
        this.idComidaPedida = idComidaPedida;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Long getCodComida() {
        return codComida;
    }

    public void setCodComida(Long codComida) {
        this.codComida = codComida;
    }

    public Long getCodPedido() {
        return codPedido;
    }

    public void setCodPedido(Long codPedido) {
        this.codPedido = codPedido;
    }

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
