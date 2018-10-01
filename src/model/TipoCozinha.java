package model;

public class TipoCozinha {
    private Long idTipoCozinha;
    private String tipo;


    public TipoCozinha(Long idTipoCozinha, String tipo) {
        this.idTipoCozinha = idTipoCozinha;
        this.tipo = tipo;
    }

    public TipoCozinha() {

    }


    public Long getIdTipoCozinha() {
        return idTipoCozinha;
    }

    public void setIdTipoCozinha(Long idTipoCozinha) {
        this.idTipoCozinha = idTipoCozinha;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

}
