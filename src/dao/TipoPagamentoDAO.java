package dao;

import model.TipoPagamento;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TipoPagamentoDAO {

    public static void gravar(TipoPagamento tipoPagamento) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into tipoPagamento (nome)"
                    + "values(?)";
            comando = conexao.prepareStatement(sql);

            comando.setString(1, tipoPagamento.getNome());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }

    }

    public static void alterar(TipoPagamento tipoPagamento) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update tipoPagamento set nome = ? where idTipoPagamento = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, tipoPagamento.getNome());
            comando.setLong(2, tipoPagamento.getIdTipoPagamento());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(TipoPagamento tipoPagamento) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from tipoPagamento where idTipoPagamento = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoPagamento.getIdTipoPagamento());
            comando.execute();

        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }

    }

    public static TipoPagamento obterTipoPagamento(long idTipoPagamento) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        TipoPagamento tipoPagamento = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM tipopagamento WHERE idTipoPagamento = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idTipoPagamento);
            ResultSet rs = comando.executeQuery();
            rs.first();
            tipoPagamento = new TipoPagamento(rs.getLong("idTipoPagamento"),
                    rs.getString("nome"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return tipoPagamento;
    }

    public static List<TipoPagamento> obterTodosTiposPagamento() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        TipoPagamento tipoPagamento = null;
        List<TipoPagamento> tipoPagamentos = new ArrayList<TipoPagamento>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM tipoPagamento";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                tipoPagamento = new TipoPagamento(rs.getLong("idTipoPagamento"),
                        rs.getString("nome"));
                tipoPagamentos.add(tipoPagamento);
            } while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return tipoPagamentos;
    }
}
