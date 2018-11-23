package dao;

import model.CupomDesconto;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class CupomDescontoDAO {
    public static void gravar(CupomDesconto cupomDesconto) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into cupomDesconto ( nome, valor, ativo)"
                    + "values(?,?,?)";
            comando = conexao.prepareStatement(sql);
           
            comando.setString(1, cupomDesconto.getNome());
            comando.setDouble(2, cupomDesconto.getValor());
            comando.setInt(3, cupomDesconto.getAtivo());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }


    }
    
    public static void alterar(CupomDesconto cupomDesconto) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update cupomDesconto set nome = ?, valor = ?, ativo = ? where idCupomDesconto = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cupomDesconto.getNome());
            comando.setDouble(2, cupomDesconto.getValor());
            comando.setInt(3, cupomDesconto.getAtivo());
            comando.setLong(4, cupomDesconto.getIdCupomDesconto());
            
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }
    
    public static void excluir(CupomDesconto cupomDesconto) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from cupomDesconto where idCupomDesconto = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cupomDesconto.getIdCupomDesconto());
            comando.execute();

        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }


    }
    
    public static CupomDesconto obterCupomDesconto(long idCupomDesconto) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        CupomDesconto cupomDesconto = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM cupomDesconto WHERE idCupomDesconto = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idCupomDesconto);
            ResultSet rs = comando.executeQuery();
            rs.first();
            cupomDesconto = new CupomDesconto(rs.getLong("idCupomDesconto"),
                    rs.getString("nome"),
                    rs.getDouble("valor"),
                    rs.getInt("ativo")
                    );
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return cupomDesconto;
    }

    public static List<CupomDesconto> obterTodosCuponsDesconto() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        CupomDesconto cupomDesconto = null;
        List<CupomDesconto> cuponsDesconto = new ArrayList<CupomDesconto>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM cupomDesconto";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                cupomDesconto = new CupomDesconto(rs.getLong("idCupomDesconto"),
                    rs.getString("nome"),
                    rs.getDouble("valor"),
                    rs.getInt("ativo")
                    );
                cuponsDesconto.add(cupomDesconto);

            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return cuponsDesconto;
    }
}
