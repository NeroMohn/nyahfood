package mains;

import dao.ComidaDAO;
import dao.LojaDAO;
import model.Loja;
import model.TipoCozinha;
import model.TipoCulinaria;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MainLoja {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        Loja loja = new Loja();
        loja.setIdLoja(1L);
        loja.setCNPJ("12356");
        loja.setDescricao("Somos Bons");
        loja.setIdLoja(1L);
        loja.setNomeGerente("Braian");
        loja.setNome("Hasagui");
        loja.setBairro("Fabrica");
        loja.setLogradouro("Rio branco");
        loja.setCEP("12345");
        loja.setCidade("Juiz de fora");
        loja.setTelefone("32314858");
        loja.setSenha("123456");
        loja.setFoto("https//img.sol");
        loja.setEstado("mg");
        loja.setComplemento("Perto quitanda");

        LojaDAO.gravar(loja);
    }
}
