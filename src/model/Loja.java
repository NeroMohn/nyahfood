package model;

import dao.LojaDAO;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Loja extends Usuario {


    private Long idLoja;
    private String cnpj;
    private String descricao;
    private String nomeGerente;
    private String pagamento;
    private String foto;
    private Long codTipoCozinha;
    

    public Loja(Long idLoja, String nome, String nomeGerente, String email, String senha, String telefone, String cnpj,String descricao,Long codTipoCozinha,String foto,String cep, String logradouro, String bairro,String numero, String complemento, String cidade, String estado) {
        super(nome, email, senha, telefone, logradouro, cep, numero, bairro, complemento, cidade, estado);
        this.idLoja = idLoja;
        this.nomeGerente = nomeGerente;
        this.foto = foto;
        this.cnpj = cnpj;
        this.descricao = descricao;
        this.codTipoCozinha = codTipoCozinha;

    }

    public Loja(String nome, String nomeGerente, String email, String senha, String telefone, String cnpj,String descricao,Long codTipoCozinha,String foto,String cep, String logradouro, String bairro,String numero, String complemento, String cidade, String estado) {
        super(nome, email, senha, telefone, logradouro, cep, numero, bairro, complemento, cidade, estado);
        this.nomeGerente = nomeGerente;
        this.foto = foto;
        this.cnpj = cnpj;
        this.descricao = descricao;
        this.codTipoCozinha = codTipoCozinha;
    }


    
    public Long getIdLoja() {
        return idLoja;
    }

    public void setIdLoja(Long idLoja) {
        this.idLoja = idLoja;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String CNPJ) {
        this.cnpj = CNPJ;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getNomeGerente() {
        return nomeGerente;
    }

    public void setNomeGerente(String nomeGerente) {
        this.nomeGerente = nomeGerente;
    }

    public String getPagamento() {
        return pagamento;
    }

    public void setPagamento(String pagamento) {
        this.pagamento = pagamento;
    }
    
    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public Long getCodTipoCozinha() {
        return codTipoCozinha;
    }

    public void setCodTipoCozinha(Long codTipoCozinha) {
        this.codTipoCozinha = codTipoCozinha;
    }

    public void gravar() throws SQLException, ClassNotFoundException{
        LojaDAO.gravar(this);
    }

    public void alterar() throws SQLException, ClassNotFoundException{
        LojaDAO.alterar(this);
    }

    public void excluir() throws SQLException, ClassNotFoundException{
        LojaDAO.excluir(this);
    }


    
    public static Loja obterLoja(Long idLoja) throws SQLException, ClassNotFoundException{
        return LojaDAO.obterLoja(idLoja);
    }
    
    public static Loja obterLoja(String email) throws SQLException, ClassNotFoundException{
        return LojaDAO.obterLoja(email);
    }

    public static List<Loja> obterTodasLojas() throws SQLException, ClassNotFoundException{
        return LojaDAO.obterTodasLojas();
    }

    
}
