package model;

public class Historico {
    private Long idHistorico;
    private Compra compra;
    private Long codCompra;

    public Historico(Long idHistorico, Compra compra) {
        this.idHistorico = idHistorico;
        this.compra = compra;
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
}
