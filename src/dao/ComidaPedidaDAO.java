package dao;

import model.ComidaPedida;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ComidaPedidaDAO {
    public static void gravar(ComidaPedida comidaPedida) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into comidaPedida (idComidaPedida, precoUnitario, quantidade, precoTotal, codComida)"
                    + "values(?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, comidaPedida.getIdComidaPedida());
            comando.setDouble(2, comidaPedida.getPrecoUnitario());
            comando.setInt(3, comidaPedida.getQuantidade());
            comando.setDouble(4, comidaPedida.getPrecoTotal());
            if (comidaPedida.getCodComida() == null) {
                comando.setNull(5, Types.NULL);
            } else {
                comando.setLong(5, comidaPedida.getCodComida());
            }

            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(ComidaPedida comidaPedida) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update comidaPedida set precoUnitario = ?, quantidade = ?, precoTotal = ? where idComidaPedida = ? and codComida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setDouble(1, comidaPedida.getPrecoUnitario());
            comando.setInt(2, comidaPedida.getQuantidade());
            comando.setDouble(3, comidaPedida.getPrecoTotal());
            comando.setLong(4, comidaPedida.getIdComidaPedida());
            if (comidaPedida.getCodComida() == null) {
                comando.setNull(5, Types.NULL);
            } else {
                comando.setLong(5, comidaPedida.getCodComida());
            }

            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }


    public static void excluir(ComidaPedida comidaPedida) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from comidaPedida where idComidaPedida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, comidaPedida.getIdComidaPedida());
            comando.execute();


        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static ComidaPedida obterComidaPedida(long idComidaPedida) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        ComidaPedida comidaPedida = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM comidaPedida WHERE idComidaPedida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idComidaPedida);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            comidaPedida = new ComidaPedida(rs.getLong("idComidaPedida"),
                    rs.getDouble("precoUnitario"),
                    rs.getInt("quantidade"),
                    rs.getDouble("precoTotal"),
                    null);
            comidaPedida.setCodComida(rs.getLong("codComida"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return comidaPedida;
    }

    public static List<ComidaPedida> obterTodasComidasPedidas() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        ComidaPedida comidaPedida = null;
        List<ComidaPedida> comidaspedidas = new ArrayList<ComidaPedida>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM comida";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do{
                comidaPedida = new ComidaPedida(rs.getLong("idComidaPedida"),
                        rs.getDouble("precoUnitario"),
                        rs.getInt("quantidade"),
                        rs.getDouble("precoTotal"),
                        null);
                comidaPedida.setCodComida(rs.getLong("codComida"));
                comidaspedidas.add(comidaPedida);

            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return comidaspedidas;
    }
}
