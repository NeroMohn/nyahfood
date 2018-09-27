package model;

public class Pedido {
    private Long idPedido;
    private Comida comida;
    private int quantidade;
    private double subtotal;
    private String metodoPagamento;
    private String cupomDesconto;
    private String date;
    private Long codComida;


    public Pedido(Long idPedido, int quantidade, double subtotal, String metodoPagamento, String cupomDesconto, String date, Comida comida) {
        setIdPedido(idPedido);
        setComida(comida);
        setQuantidade(quantidade);
        setSubtotal(subtotal);
        setMetodoPagamento(metodoPagamento);
        setCupomDesconto(cupomDesconto);
        setDate(date);
    }

    public void adicionarComida(Comida comida, int quantidade) {

    }

    public void removerComida(Comida comida, int quantidade) {

    }

    public void finalizaCompra() {

    }

    public long getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(Long idPedido) {
        this.idPedido = idPedido;
    }

    public Comida getComida() {
        return comida;
    }

    public void setComida(Comida comida) {
        this.comida = comida;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public String getMetodoPagamento() {
        return metodoPagamento;
    }

    public void setMetodoPagamento(String metodoPagamento) {
        this.metodoPagamento = metodoPagamento;
    }

    public String getCupomDesconto() {
        return cupomDesconto;
    }

    public void setCupomDesconto(String cupomDesconto) {
        this.cupomDesconto = cupomDesconto;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long getCodComida() { return codComida; }

    public void setCodComida(Long codComida) { this.codComida = codComida; }
}
