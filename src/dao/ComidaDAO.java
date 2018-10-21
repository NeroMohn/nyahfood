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
            String sql = "insert into comida (idComida, nome, ingrediente,tempoPreparo,foto,preco,desconto,codLoja)" +
                    "values (?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, comida.getIdComida());
            comando.setString(2, comida.getNome());
            comando.setString(3, comida.getIngrediente());
            comando.setString(4, comida.getTempoPreparo());
            comando.setString(5, comida.getFoto());
            comando.setDouble(6, comida.getPreco());
            comando.setDouble(7, comida.getDesconto());
            if (comida.getCodLoja() == null) {
                comando.setNull(8, Types.NULL);
            } else {
                comando.setLong(8, comida.getCodLoja());
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
            String sql = "update comida set nome = ?, ingrediente = ?, tempoPreparo = ?, foto = ?, preco = ?, desconto = ?," +
                    "codLoja = ? where idComida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, comida.getNome());
            comando.setString(2, comida.getIngrediente());
            comando.setString(3, comida.getTempoPreparo());
            comando.setString(4, comida.getFoto());
            comando.setDouble(5, comida.getPreco());
            comando.setDouble(6, comida.getDesconto());
            if (comida.getCodLoja()== null) {
                comando.setNull(7, Types.NULL);
            } else {
                comando.setLong(7, comida.getCodLoja());
            }
            comando.setLong(8, comida.getIdComida());
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
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            comida = new Comida(rs.getLong("idComida"),
                    rs.getString("nome"),
                    rs.getString("ingrediente"),
                    rs.getString("tempoPreparo"),
                    rs.getString("foto"),
                    rs.getDouble("preco"),
                    rs.getDouble("desconto"),
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
                        rs.getString("tempoPreparo"),
                        rs.getString("foto"),
                        rs.getDouble("preco"),
                        rs.getDouble("desconto"),
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
