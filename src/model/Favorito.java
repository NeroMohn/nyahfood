package model;

public class Favorito {
    private Long idFavorito;
    private Cliente cliente;
    private Loja loja;
    private Long codCliente;
    private Long codLoja;

    public Favorito(){}

    public Favorito(Long idFavorito, Long CodCliente, Long CodLoja) {
        this.idFavorito = idFavorito;
        this.codCliente = codCliente;
        this.codLoja = codLoja;

    }

    public Long getIdFavorito() {
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

    public Long getCodCliente() {
        return codCliente;
    }

    public void setCodCliente(Long codCliente) {
        this.codCliente = codCliente;
    }

    public Long getCodLoja() {
        return codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }
}
