package model;

public class Comida {
    private Long idComida;
    private String nome;
    private String ingrediente;
    private String tempoPreparo;
    private String foto;
    private double preco;
    private double desconto;
    private Loja loja;
    private Long codLoja;

    public Comida(Long idComida, String nome, String ingrediente, String tempoPreparo, String foto, double preco, double desconto, Loja loja) {
        setIdComida(idComida);
        setNome(nome);
        setIngrediente(ingrediente);
        setTempoPreparo(tempoPreparo);
        setFoto(foto);
        setPreco(preco);
        setDesconto(desconto);
        setLoja(loja);
    }

    public long getIdComida() {
        return idComida;
    }

    public void setIdComida(Long idComida) {
        this.idComida = idComida;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIngrediente() {
        return ingrediente;
    }

    public void setIngrediente(String ingrediente) {
        this.ingrediente = ingrediente;
    }

    public String getTempoPreparo() {
        return tempoPreparo;
    }

    public void setTempoPreparo(String tempoPreparo) {
        this.tempoPreparo = tempoPreparo;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public double getDesconto() {
        return desconto;
    }

    public void setDesconto(double desconto) {
        this.desconto = desconto;
    }

    public Loja getLoja() {
        return loja;
    }

    public void setLoja(Loja loja) {
        this.loja = loja;
    }

    public long getCodLoja() {
        return codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }
}
