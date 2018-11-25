package model;

import dao.PedidoDAO;

import java.sql.SQLException;
import java.util.List;

public class Pedido {

    private Long idPedido;
    private double total;
    private String metodoPagamento;
    private String date;
    private Long codCliente;
    private Long codCupomDesconto;

    public Pedido(Long idPedido, double total, String metodoPagamento, String date, Long codCliente, Long codCupomDesconto) {
        setIdPedido(idPedido);
        setTotal(total);
        setMetodoPagamento(metodoPagamento);
        setDate(date);
        setCodCliente(codCliente);
        setCodCupomDesconto(codCupomDesconto);
    }

    public Pedido(double total, String metodoPagamento, String date, Long codCupomDesconto, Long codCliente) {
        setTotal(total);
        setMetodoPagamento(metodoPagamento);
        setDate(date);
        setCodCliente(codCliente);
        setCodCupomDesconto(codCupomDesconto);
    }

    public Long getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Long idPedido) {
        this.idPedido = idPedido;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getMetodoPagamento() {
        return metodoPagamento;
    }

    public void setMetodoPagamento(String metodoPagamento) {
        this.metodoPagamento = metodoPagamento;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Long getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(Long codCliente) {
        this.codCliente = codCliente;
    }

    public Long getCodCupomDesconto() {
        return codCupomDesconto;
    }

    public void setCodCupomDesconto(Long codCupomDesconto) {
        this.codCupomDesconto = codCupomDesconto;
    }

    public void gravar() throws SQLException, ClassNotFoundException {
        PedidoDAO.gravar(this);
    }
        
    public static void  gravar(Pedido pedido) throws SQLException, ClassNotFoundException {
        PedidoDAO.gravar(pedido);
    }

    public void alterar() throws SQLException, ClassNotFoundException {
        PedidoDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException {
        PedidoDAO.excluir(this);
    }

    public static Pedido obterPedido(Long idPedido) throws SQLException, ClassNotFoundException {
        return PedidoDAO.obterPedido(idPedido);
    }

    public static List<Pedido> obterTodosPedidos() throws SQLException, ClassNotFoundException {
        return PedidoDAO.obterTodosPedidos();
    }
}
