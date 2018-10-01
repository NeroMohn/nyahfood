package dao;

import model.Pedido;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PedidoDAO {
    public static void gravar(Pedido pedido) throws SQLException, ClassNotFoundException {

        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "Insert into pedido (idPedido, comida, quantidade,subtotal,metodoPagamento, cupomDesconto,date)"
                    + "values(?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, pedido.getIdPedido());
            if (pedido.getComida() == null) {
                comando.setNull(2, Types.NULL);
            } else {
                comando.setLong(2, pedido.getComida().getIdComida());
            }
            comando.setInt(3, pedido.getQuantidade());
            comando.setDouble(4, pedido.getSubtotal());
            comando.setString(5, pedido.getMetodoPagamento());
            comando.setString(6, pedido.getCupomDesconto());
            comando.setString(7, pedido.getDate());
            comando.execute();
            BD.fecharConexao(conexao, comando);
        } catch (SQLException e) {
            throw e;
        }
    }

    public static void alterar(Pedido pedido) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update pedido set comida = ?, quantidade = ?,subtotal = ?,metodoPagamento = ?, "
                    + "cupomDesconto = ?,date = ? where idPedido = ?";
            comando = conexao.prepareStatement(sql);
            if (pedido.getComida() == null) {
                comando.setNull(1, Types.NULL);
            } else {
                comando.setLong(1, pedido.getComida().getIdComida());
            }
            comando.setInt(2, pedido.getQuantidade());
            comando.setDouble(3, pedido.getSubtotal());
            comando.setString(4, pedido.getMetodoPagamento());
            comando.setString(5, pedido.getCupomDesconto());
            comando.setString(6, pedido.getDate());
            comando.setLong(7, pedido.getIdPedido());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        } catch (SQLException e) {
            throw e;
        }
    }

    public static void excluir(Pedido pedido) throws SQLException, ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "delete from pedido where idPedido = ?";
            comando.setLong(1, pedido.getIdPedido());
            comando.execute();
        } catch (SQLException e) {
            throw e;

        } finally {
            BD.fecharConexao(conexao, comando);
        }
    }

    public static Pedido obterPedido(long idPedido) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Pedido pedido = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM pedido WHERE idPedido = ?";
            comando.setLong(1, idPedido);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            pedido = new Pedido(rs.getLong("idPedido"),
                    rs.getInt("quantidade"),
                    rs.getDouble("subtotal"),
                    rs.getString("metodoPagamento"),
                    rs.getString("cupomDesconto"),
                    rs.getString("data"),
                    null);
            pedido.setCodComida(rs.getLong("codComida"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return pedido;
    }

    public static List<Pedido> obterTodosPedidos() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        List<Pedido> pedidos = new ArrayList<Pedido>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM pedido";
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()) {
                Pedido pedido = new Pedido(rs.getLong("idPedido"),
                        rs.getInt("quantidade"),
                        rs.getDouble("subtotal"),
                        rs.getString("metodoPagamento"),
                        rs.getString("cupomDesconto"),
                        rs.getString("data"),
                        null);
                pedido.setCodComida(rs.getLong("codComida"));
                pedidos.add(pedido);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return pedidos;
    }


}
