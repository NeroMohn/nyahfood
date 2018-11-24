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
            String sql = "Insert into pedido (total, metodoPagamento, date, CoodCliente, codCupomDesconto)"
                    + "values(?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            
            comando.setDouble(1, pedido.getTotal());
            comando.setString(2, pedido.getMetodoPagamento());
            comando.setString(3, pedido.getDate());
            if (pedido.getCodCliente()== null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, pedido.getCodCliente());
            }
            if (pedido.getCodCupomDesconto()== null) {
                comando.setNull(5, Types.NULL);
            } else {
                comando.setLong(5, pedido.getCodCupomDesconto());
            }
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
            String sql = "update pedido set total = ?, metodoPagamento = ?,date = ?,codCliente = ?, "
                    + "codCupomDesconto = ? where idPedido = ?";
            comando = conexao.prepareStatement(sql);
            
            comando.setDouble(1, pedido.getTotal());
            comando.setString(2, pedido.getMetodoPagamento());
            comando.setString(3, pedido.getDate());
            if (pedido.getCodCliente()== null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, pedido.getCodCliente());
            }
            if (pedido.getCodCupomDesconto()== null) {
                comando.setNull(5, Types.NULL);
            } else {
                comando.setLong(5, pedido.getCodCupomDesconto());
            }
            comando.setLong(6, pedido.getIdPedido());
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
            comando = conexao.prepareStatement(sql);
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
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idPedido);
            ResultSet rs = comando.executeQuery();
            rs.first();
            pedido = new Pedido(rs.getLong("idPedido"),
                    rs.getDouble("total"),
                    rs.getString("metodoPagamento"),
                    rs.getString("date"),
                    null,null);
            pedido.setCodCliente(rs.getLong("codCliente"));
            pedido.setCodCupomDesconto(rs.getLong("codCUpomDesconto"));
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
        Pedido pedido = null;
        List<Pedido> pedidos = new ArrayList<Pedido>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM pedido";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
                pedido = new Pedido(rs.getLong("idPedido"),
                    rs.getDouble("total"),
                    rs.getString("metodoPagamento"),
                    rs.getString("date"),
                    null,null);
                pedido.setCodCliente(rs.getLong("codCliente"));
                pedido.setCodCupomDesconto(rs.getLong("codCUpomDesconto"));
                pedidos.add(pedido);

            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return pedidos;
    }


}
