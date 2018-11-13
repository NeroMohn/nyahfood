package model;
import java.util.ArrayList;

public class Usuario {
    private String nome;
    private String telefone;
    private String email;
    private String senha;
    private String foto;
    private String cep;
    private String logradouro;
    private String bairro;
    private String complemento;
    private String cidade;
    private String estado;
    private String numero;

    public Usuario(String nome,
            String email, String senha, String foto,String telefone,
            String logradouro, String cep, String numero,
            String bairro, String complemento, String cidade,
            String estado){
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.foto = foto;
        this.telefone = telefone;
        this.logradouro = logradouro;
        this.cep = cep;
        this.numero = numero;
        this.bairro = bairro;
        this.complemento = complemento;
        this.cidade = cidade;
        this.estado = estado;
    }

 

   

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String Cep) {
        this.cep = Cep;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNumero() {
        return numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }
}

