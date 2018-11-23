package model;

import dao.ComidaDAO;

import java.sql.SQLException;
import java.util.List;

public class Comida{
    private Long idComida;
    private String nome;
    private String ingrediente;
    private String tempoPreparo;
    private String foto;
    private double preco;
    private double desconto;
    private Long codLoja;

   
    public Comida(Long idComida, String nome, String ingrediente, String tempoPreparo, String foto, double preco,
                  double desconto, Long codLoja) {
        setIdComida(idComida);
        setNome(nome);
        setIngrediente(ingrediente);
        setTempoPreparo(tempoPreparo);
        setFoto(foto);
        setPreco(preco);
        setDesconto(desconto);
        setCodLoja(codLoja);

    }
    
      public Comida(String nome, String ingrediente, String tempoPreparo, String foto, double preco,
                  double desconto, Long codLoja) {
     
        setNome(nome);
        setIngrediente(ingrediente);
        setTempoPreparo(tempoPreparo);
        setFoto(foto);
        setPreco(preco);
        setDesconto(desconto);
        setCodLoja(codLoja);

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

    public void gravar() throws SQLException, ClassNotFoundException{
        ComidaDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        ComidaDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        ComidaDAO.excluir(this);
    }

    public static Comida obterComida(Long idComida) throws SQLException, ClassNotFoundException{
        return ComidaDAO.obterComida(idComida);
    }

    public static List<Comida> obterTodasComidas() throws SQLException, ClassNotFoundException{
        return ComidaDAO.obterTodasComidas();
    }
}
