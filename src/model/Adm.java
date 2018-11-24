
package model;

import dao.AdmDAO;
import java.sql.SQLException;

/**
 *
 * @author rodri
 */
public class Adm {
    private Long id;
    private String nome;
    private String senha;
    private String login;
    
    public Adm(Long id, String login,String nome, String senha){
       this.id = id;
       this.nome = nome;
       this.senha = senha;
       this.login = login;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }
    
    
        public long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
    
    public static Adm obterAdm(String login) throws SQLException,ClassNotFoundException{
        return AdmDAO.obterAdm(login);
    }
}
