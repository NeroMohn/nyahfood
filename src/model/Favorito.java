package model;

public class Favorito {
    private Long idFavorito;
    private Cliente cliente;
    private Loja loja;
    private Long codCliente;
    private Long codLoja;

    public Favorito(Long idFavorito, Cliente cliente, Loja loja) {
        this.idFavorito = idFavorito;
        this.cliente = cliente;
        this.loja = loja;

    }

    public long getIdFavorito() {
        return idFavorito;
    }

    public void setIdFavorito(Long idFavorito) {
        this.idFavorito = idFavorito;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Loja getLoja() {
        return loja;
    }

    public void setLoja(Loja loja) {
        this.loja = loja;
    }

    public Long getCodCliente(Long codCliente) {
        return this.codCliente;
    }

    public void setCodCliente(Long codCliente) {
        this.codCliente = codCliente;
    }

    public Long getCodLoja(Long codLoja) {
        return this.codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }
}
