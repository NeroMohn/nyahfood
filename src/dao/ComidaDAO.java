package dao;

import dao.BD;
import model.Comida;

import java.lang.reflect.Type;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ComidaDAO {

    public static void gravar(Comida comida) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = dao.BD.getConexao();
            String sql = "insert into comida (  nome,  ingrediente,  tempoEstimado,  foto,  preco, codLoja)"+
                    "values (?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
          
            comando.setString(1, comida.getNome());
            comando.setString(2, comida.getIngrediente());
            comando.setInt(3, comida.getTempoEstimado());
            comando.setString(4, comida.getFoto());
            comando.setDouble(5, comida.getPreco());
          
            if (comida.getCodLoja() == null) {
                comando.setNull(6, Types.NULL);
            } else {
                comando.setLong(6, comida.getCodLoja());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }


    }


    public static void alterar(Comida comida) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update comida set nome = ?, ingrediente = ?, tempoEstimado = ?, foto = ?, preco = ?," +
                    "codLoja = ? where idComida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, comida.getNome());
            comando.setString(2, comida.getIngrediente());
            comando.setInt(3, comida.getTempoEstimado());
            comando.setString(4, comida.getFoto());
            comando.setDouble(5, comida.getPreco());

            if (comida.getCodLoja()== null) {
                comando.setNull(6, Types.NULL);
            } else {
                comando.setLong(6, comida.getCodLoja());
            }
            comando.setLong(7, comida.getIdComida());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Comida comida) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from comida where idComida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, comida.getIdComida());
            comando.execute();
        } catch (SQLException e) {
            throw e;

        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static Comida obterComida(long idComida) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Comida comida = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM comida WHERE idComida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idComida);
            ResultSet rs = comando.executeQuery();
            rs.first();
            comida = new Comida(rs.getLong("idComida"),
                    rs.getString("nome"),
                    rs.getString("ingrediente"),
                    rs.getInt("tempoEstimado"),
                    rs.getString("foto"),
                    rs.getDouble("preco"),
                
                    null);
            comida.setCodLoja(rs.getLong("codLoja"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return comida;
    }

    public static List<Comida> obterTodasComidas() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        Comida comida = null;
        List<Comida> comidas = new ArrayList<Comida>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM comida";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                comida = new Comida(rs.getLong("idComida"),
                        rs.getString("nome"),
                        rs.getString("ingrediente"),
                        rs.getInt("tempoEstimado"),
                        rs.getString("foto"),
                        rs.getDouble("preco"),
               
                        null);
                comida.setCodLoja(rs.getLong("codLoja"));
                comidas.add(comida);
                
            }while (rs.next());
        } 
        catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return comidas;
    }
}
