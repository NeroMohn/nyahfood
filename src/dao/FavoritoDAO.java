package dao;

import model.Favorito;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FavoritoDAO {
    public static void gravar(Favorito favorito) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into favorito (codCliente, codLoja)"
                    + "values(?,?)";
            comando = conexao.prepareStatement(sql);
         
            if (favorito.getCodCliente() == null) {
                comando.setNull(1, Types.NULL);
            } else {
                comando.setLong(1, favorito.getCodCliente());
            }
            if (favorito.getCodLoja() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, favorito.getCodLoja());
            }

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Favorito favorito) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update favorito set codCliente = ?, codLoja = ? where idfavorito = ?";
            comando = conexao.prepareStatement(sql);
            if (favorito.getCodCliente() == null) {
                comando.setNull(1, Types.NULL);
            } else {
                comando.setLong(1, favorito.getCodCliente());
            }
            if (favorito.getCodLoja() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, favorito.getCodLoja());
            }
            comando.setLong(3, favorito.getIdFavorito());

            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }


    public static void excluir(Favorito favorito) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from favorito where idFavorito = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, favorito.getIdFavorito());
            comando.execute();


        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static Favorito obterFavorito(long idFavorito) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Favorito favorito = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM favorito WHERE idFavorito = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idFavorito);
            ResultSet rs = comando.executeQuery();
            rs.first();
            favorito = new Favorito(rs.getLong("idFavorito"),
                    null, null);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return favorito;
    }

    public static List<Favorito> obterTodosFavoritos() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        Favorito favorito = null;
        List<Favorito> favoritos = new ArrayList<Favorito>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM favorito";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do{
                favorito = new Favorito(rs.getLong("idFavorito"),
                        null, null);
                favorito.setCodCliente(rs.getLong("codCliente"));
                favorito.setCodLoja(rs.getLong("codLoja"));

                favoritos.add(favorito);
            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return favoritos;
    }


}


