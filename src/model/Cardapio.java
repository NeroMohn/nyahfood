package model;

public class Cardapio {

    private Long idCardapio;
    private String nome;
    private Comida comida;
    private Long codComida;

    public Cardapio(){}

    public Cardapio(Long idCardapio, String nome, Long codComida) {
        this.idCardapio = idCardapio;
        this.nome = nome;
        this.codComida = codComida;

    }

    public Long getIdCardapio() {
        return idCardapio;
    }

    public void setIdCardapio(Long idCardapio) {
        this.idCardapio = idCardapio;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Comida getComida() {
        return comida;
    }

    public void setComida(Comida comida) {
        this.comida = comida;
    }

    public Long getCodComida() {
        return codComida;
    }

    public void setCodComida(Long codComida) {
        this.codComida = codComida;
    }
}
