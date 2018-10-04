package model;

public class Comida {
    private Long idComida;
    private String nome;
    private String ingrediente;
    private String tempoPreparo;
    private String foto;
    private double preco;
    private double desconto;
    private Long codLoja;

    public Comida(){

    }


    public Comida(Long idComida, String nome, String ingrediente, String tempoPreparo, String foto, double preco,
                  double desconto) {
        setIdComida(idComida);
        setNome(nome);
        setIngrediente(ingrediente);
        setTempoPreparo(tempoPreparo);
        setFoto(foto);
        setPreco(preco);
        setDesconto(desconto);

    }
    public Comida(long idComida, String nome, String ingrediente, String tempoPreparo, String foto, double preco, double desconto, Object o){
    }

    public Long getIdComida() {
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


    public Long getCodLoja() {
        return codLoja;
    }

    public void setCodLoja(Long codLoja) {
        this.codLoja = codLoja;
    }
}
