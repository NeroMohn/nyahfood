package mains;

import dao.TipoCulinariaDAO;
import model.TipoCulinaria;

import java.sql.SQLException;

public class MainTipoCulinaria {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        TipoCulinaria tipo1 = new TipoCulinaria((long)12345, "asdf", (long)123, (long)123);
        //TipoCulinariaDAO.gravar(tipo1);
        TipoCulinariaDAO.excluir(tipo1);
    }
}
