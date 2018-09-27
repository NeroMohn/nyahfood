package dao;

import model.TipoCulinaria;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TipoCulinariaDAO {
    public static void gravar(TipoCulinaria tipoCulinaria) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into tipoCulinaria (idTipoCulinaria, culinaria, loja, tipoCozinha)"
                    + "values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoCulinaria.getIdTipoCulinaria());
            comando.setString(2, tipoCulinaria.getCulinaria());
            if(tipoCulinaria.getLoja() == null){comando.setNull(3, Types.NULL);}
            else{comando.setLong(3, tipoCulinaria.getLoja().getIdLoja());}
            if(tipoCulinaria.getTipocozinha() == null){comando.setNull(4, Types.NULL);}
            else{comando.setLong(4, tipoCulinaria.getTipocozinha().getIdTipoCozinha());}

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}
    }

    private static void alterar(TipoCulinaria tipoCulinaria) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update tipoCulinaria set culinaria = ?, loja = ?, tipoCozinha = ? where idTipoCulinaria = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, tipoCulinaria.getCulinaria());
            if(tipoCulinaria.getLoja() == null){comando.setNull(2, Types.NULL);}
            else{comando.setLong(2, tipoCulinaria.getLoja().getIdLoja());}
            if(tipoCulinaria.getTipocozinha() == null){comando.setNull(3, Types.NULL);}
            else{comando.setLong(3, tipoCulinaria.getTipocozinha().getIdTipoCozinha());}
            comando.setLong(4, tipoCulinaria.getIdTipoCulinaria());

            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }


    public static void excluir(TipoCulinaria tipoCulinaria) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from cardapio where idTipoCulinaria = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, tipoCulinaria.getIdTipoCulinaria());
            comando.execute();


        }catch (SQLException e){throw  e;} finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static TipoCulinaria obterTipoCulinaria(long idTipoCulinaria) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        TipoCulinaria tipoCulinaria = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM cardapio WHERE idTipoCulinaria = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idTipoCulinaria);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            tipoCulinaria = new TipoCulinaria(rs.getLong("idTipoCulinaria"),
                    rs.getString("culinaria"), null, null);
            tipoCulinaria.setCodLoja(rs.getLong("codLoja"));
            tipoCulinaria.setCodTipoCozinha(rs.getLong("codTipoCozinha"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return tipoCulinaria;
    }

    public static List<TipoCulinaria> obterTodosCardapios() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        List<TipoCulinaria> tipoCulinarias = new ArrayList<TipoCulinaria>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM tipoCulinaria";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                TipoCulinaria tipoCulinaria = new TipoCulinaria(rs.getLong("idTipoCulinaria"),
                        rs.getString("culinaria"), null, null);
                tipoCulinaria.setCodTipoCozinha(rs.getLong("codCozinha"));
                tipoCulinaria.setCodLoja(rs.getLong("codLoja"));

                tipoCulinarias.add(tipoCulinaria);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return tipoCulinarias;
    }

}
