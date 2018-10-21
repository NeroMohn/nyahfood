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
            String sql = "Insert into compra (idCompra, total, status, codPedido)"
                    + "values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, compra.getIdCompra());
            comando.setDouble(2, compra.getTotal());
            comando.setString(3, compra.getStatus());

            if (compra.getCodPedido() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, compra.getCodPedido());
            }
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }


    }


    public static void alterar(Compra compra) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update compra set total = ?, status = ?, codPedido = ? where idCompra = ?";
            comando = conexao.prepareStatement(sql);
            comando.setDouble(1, compra.getTotal());
            comando.setString(2, compra.getStatus());

            if (compra.getCodPedido() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setLong(3, compra.getCodPedido());
            }
            comando.setLong(4, compra.getIdCompra());
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
            String sql = "delete from compra where idCompra = ?";
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
            comando = conexao.prepareStatement(sql);
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
        Compra compra = null;
        List<Compra> compras = new ArrayList<Compra>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM compras";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                compra = new Compra(rs.getLong("idCompra"),
                        rs.getDouble("total"),
                        rs.getString("status"),
                        null);
                compra.setCodPedido(rs.getLong("codPedido"));
                compras.add(compra);

            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return compras;
    }
}
