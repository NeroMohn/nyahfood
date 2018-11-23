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
            String sql = "Insert into comidaPedida ( quantidade, total, codComida, codPedido)"
                    + "values(?,?,?,?)";
            comando = conexao.prepareStatement(sql);
      
            comando.setInt(1, comidaPedida.getQuantidade());
            comando.setDouble(2, comidaPedida.getTotal());
            if (comidaPedida.getCodComida() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setLong(3, comidaPedida.getCodComida());
            }
            if (comidaPedida.getCodPedido() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, comidaPedida.getCodPedido());
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
            String sql = "update comidaPedida set quantidade = ?, total = ?, codComida = ?, codPedido = ? where idComidaPedida = ?";
            comando = conexao.prepareStatement(sql);
            comando.setInt(1, comidaPedida.getQuantidade());
            comando.setDouble(2, comidaPedida.getTotal());
            if (comidaPedida.getCodComida() == null) {
                comando.setNull(3, Types.NULL);
            } else {
                comando.setLong(3, comidaPedida.getCodComida());
            }
            if (comidaPedida.getCodPedido() == null) {
                comando.setNull(4, Types.NULL);
            } else {
                comando.setLong(4, comidaPedida.getCodPedido());
            }
            comando.setLong(5, comidaPedida.getIdComidaPedida());

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
            ResultSet rs = comando.executeQuery();
            rs.first();
            comidaPedida = new ComidaPedida(rs.getLong("idComidaPedida"),
                    rs.getInt("quantidade"),
                    rs.getDouble("total"),
                    null, null);
            comidaPedida.setCodComida(rs.getLong("codComida"));
            comidaPedida.setCodPedido(rs.getLong("codPedido"));
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
            String sql = "SELECT * FROM comidaPedida";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do{
                comidaPedida = new ComidaPedida(rs.getLong("idComidaPedida"),
                        rs.getInt("quantidade"),
                        rs.getDouble("total"),
                        null, null);
                comidaPedida.setCodComida(rs.getLong("codComida"));
                comidaPedida.setCodPedido(rs.getLong("codPedido"));

            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return comidaspedidas;
    }
}
