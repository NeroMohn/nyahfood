package mains;

import dao.LojaDAO;
import model.Loja;


import java.sql.SQLException;


public class MainLoja {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Loja loja = new Loja();
        loja.setIdLoja(1L);
        loja.setCNPJ("12356");
        loja.setDescricao("Somos Bons");
        loja.setNomeGerente("Lixo");
        loja.setNome("Hasagui");
        loja.setBairro("Fabrica");
        loja.setLogradouro("Rio branco");
        loja.setCEP("12345");
        loja.setCidade("Juiz de fora");
        loja.setTelefone("32314858");
        loja.setSenha("123456");
        loja.setFoto("https//img.sol");
        loja.setEstado("MG");
        loja.setComplemento("Perto quitanda");
        loja.setNumero("10");
        loja.setPagamento("NULL");


        //LojaDAO.gravar(loja);  //OK
        //LojaDAO.alterar(loja); //OK
        //LojaDAO.excluir(loja);  //OK
        //LojaDAO.obterLoja(1);
        //LojaDAO.obterTodasLojas();

    }
}
