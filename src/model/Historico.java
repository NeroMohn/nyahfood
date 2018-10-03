package model;

public class Historico {
    private Long idHistorico;
    private Compra compra;
    private Long codCompra;

    public Historico(){}

    public Historico(Long idHistorico, Long codCompra) {
        this.idHistorico = idHistorico;
        this.codCompra = codCompra;
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
