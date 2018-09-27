package model;

public class TipoCulinaria {
    private Long idTipoCulinaria;
    private String culinaria;
    private Loja loja;
    private TipoCozinha tipocozinha;
    private Long codLoja;
    private Long codTipoCozinha;

    public TipoCulinaria(Long idTipoCulinaria, String culinaria, Loja loja, TipoCozinha tipocozinha) {
        this.idTipoCulinaria = idTipoCulinaria;
        this.culinaria = culinaria;
        this.loja = loja;
        this.tipocozinha = tipocozinha;
    }

    public TipoCulinaria() {

    }

    public long getIdTipoCulinaria() {
        return idTipoCulinaria;
    }

    public void setIdTipoCulinaria(Long idTipoCulinaria) {this.idTipoCulinaria = idTipoCulinaria; }

    public String getCulinaria() {
        return culinaria;
    }

    public void setCulinaria(String culinaria) {
        this.culinaria = culinaria;
    }

    public Loja getLoja() {
        return loja;
    }

    public void setLoja(Loja loja) {
        this.loja = loja;
    }

    public TipoCozinha getTipocozinha() {
        return tipocozinha;
    }

    public void setTipocozinha(TipoCozinha tipocozinha) {
        this.tipocozinha = tipocozinha;
    }

    public long getCodLoja() {
        return codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }

    public long getCodTipoCozinha() {
        return codTipoCozinha;
    }

    public void setCodTipoCozinha(Long codTipoCozinha) {
        this.codTipoCozinha = codTipoCozinha;
    }
}
