package mains;

import java.sql.SQLException;

import dao.HistoricoDAO;
import model.Historico;

public class MainHistorico {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Historico historico = new Historico();
        historico.setIdHistorico(1L);
        historico.setCodCompra(1L);

        HistoricoDAO.gravar(historico);  //OK
        //HistoricoDAO.alterar(historico);
        //HistoricoDAO.obterHistorico(1L);
        //HistoricoDAO.obterTodosHistoricos(); //OK???
        //HistoricoDAO.excluir(historico);  //OK
    }
}
