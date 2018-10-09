package model;

public class Compra {
    private Pedido pedido;
    private double total;
    private String status;
    private Long idCompra;
    private Long codPedido;

    public Compra(){}

    public Compra( Long idCompra, double total, String status,Long codPedido) {
        this.codPedido = codPedido;
        this.total = total;
        this.status = status;
        this.idCompra = idCompra;
    }

    public Pedido getPedido() {
        return pedido;
    }

    public void setPedido(Pedido pedido) {
        this.pedido = pedido;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Long getIdCompra() {
        return idCompra;
    }

    public void setIdCompra(Long idCompra) {
        this.idCompra = idCompra;
    }

    public Long getCodPedido() {
        return codPedido;
    }

    public void setCodPedido(Long codPedido) {
        this.codPedido = codPedido;
    }
}
