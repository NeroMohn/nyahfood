package dao;

import model.TipoCozinha;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TipoCozinhaDAO {

    public static void gravar(TipoCozinha tipoCozinha) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into tipoCozinha (idTipoCozinha, tipo)"
                    + "values(?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoCozinha.getIdTipoCozinha());
            comando.setString(2,tipoCozinha.getTipo());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}



    }


    public static void alterar(TipoCozinha tipoCozinha) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update tipoCozinha set tipo = ?, set idTipoCozinha = ?  where idTipoCozinha = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, tipoCozinha.getTipo());
            comando.setLong(14, tipoCozinha.getIdTipoCozinha());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        }catch (SQLException e){
            throw e;
        }
    }


    public static void excluir(TipoCozinha tipoCozinha) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from tipoCozinha where idTipoCozinha = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoCozinha.getIdTipoCozinha());
            comando.execute();


        }catch (SQLException e){throw  e;} finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static TipoCozinha obterTipoCozinha(long idTipoCozinha) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        TipoCozinha tipoCozinha = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM tipoCozinha WHERE idTipoCozinha = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idTipoCozinha);
            ResultSet rs = comando.executeQuery();
            rs.first();
            tipoCozinha = new TipoCozinha(rs.getLong("idTipoCozinha"),
                    rs.getString("tipo"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return tipoCozinha;
    }

    public static List<TipoCozinha> obterTodosTiposCozinha() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        TipoCozinha tipoCozinha = null;
        List<TipoCozinha> tipoCozinhas = new ArrayList<TipoCozinha>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM tipoCozinha";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                tipoCozinha = new TipoCozinha(rs.getLong("idTipoCozinha"),
                        rs.getString("cozinha"));
                tipoCozinhas.add(tipoCozinha);
                
            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return tipoCozinhas;
    }

}
