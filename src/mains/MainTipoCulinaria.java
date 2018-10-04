package mains;

import dao.TipoCulinariaDAO;
import model.Cardapio;
import model.Loja;
import model.TipoCozinha;
import model.TipoCulinaria;

public class MainTipoCulinaria {
    public static void main(String[] args) {
        Loja loja1 = new Loja();
        TipoCulinaria tipo1 = new TipoCulinaria((long)12345, "asdf", null, null);
        //TipoCulinariaDAO.gravar(tipo1); problema na DAO

    }
}
