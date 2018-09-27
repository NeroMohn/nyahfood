package dao;

import model.Compra;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CompraDAO {

    public static void gravar(Compra compra) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into compra (idCompra, pedido, total, status)"
                    + "values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, compra.getIdCompra());
            comando.setDouble(2, compra.getTotal());
            comando.setString(3, compra.getStatus());

            if (compra.getPedido() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, compra.getPedido().getIdPedido());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }


    }


    private static void alterar(Compra compra) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update compra set idCompra = ?, pedido = ?, total = ?, status = ? where idCompra = ?";

            comando.setLong(1, compra.getIdCompra());
            comando.setDouble(2, compra.getTotal());
            comando.setString(3, compra.getStatus());

            if (compra.getPedido() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, compra.getPedido().getIdPedido());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Compra compra) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;

        try {
            conexao = BD.getConexao();
            String sql = "delete from cardapio where idCompra = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, compra.getIdCompra());
            comando.execute();


        } catch (SQLException e) {
            throw e;
        } finally {
            BD.fecharConexao(conexao, comando);
        }


    }


    public static Compra obterCompra(long idCompra) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Compra compra = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM compra WHERE idCompra = ?";
            comando.setLong(1, idCompra);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            compra = new Compra(rs.getLong("idCompra"),
                    rs.getDouble("total"),
                    rs.getString("status"),
                    null);
            compra.setCodPedido(rs.getLong("codPedido"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return compra;
    }

    public static List<Compra> obterTodasCompras() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        List<Compra> compras = new ArrayList<Compra>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM compras";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                Compra compra = new Compra(rs.getLong("idCompra"),
                        rs.getDouble("total"),
                        rs.getString("status"),
                        null);
                compra.setCodPedido(rs.getLong("codPedido"));
                compras.add(compra);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return compras;
    }
}
