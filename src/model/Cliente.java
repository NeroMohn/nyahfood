package model;



public class Cliente extends Usuario {

    private Long idCliente;
    private String cpf;
    private Historico historico;
    private Long codHistorico;

    public Cliente(Long idCliente, String nome,String cpf, String telefone, String email, String senha, String foto, String CEP, String logradouro,
                   String bairro, String complemento, String cidade, String estado, String numero,
                    Historico historico) {
        super(nome, telefone, email, senha, foto, CEP, logradouro, bairro, complemento, cidade, estado, numero);
        this.idCliente = idCliente;
        this.cpf = cpf;
        this.historico = historico;
    }


    public Long getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(Long idCliente) {
        this.idCliente = idCliente;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public Historico getHistorico() {
        return historico;
    }

    public void setHistorico(Historico historico) {
        this.historico = historico;
    }

    public void setCodHistorico(Long codHistorico) {
        this.codHistorico = codHistorico;
    }

    public Long getCodHistorico() { return codHistorico; }
}
