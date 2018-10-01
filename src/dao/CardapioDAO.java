package dao;

import model.Cardapio;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CardapioDAO {
    public static void gravar(Cardapio cardapio) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into cardapio (idCardapio, nome, comida)"
                    + "values(?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cardapio.getIdCardapio());
            comando.setString(2,cardapio.getNome());
            if(cardapio.getComida() == null){comando.setNull(3, Types.NULL);}
            else{comando.setLong(3, cardapio.getComida().getIdComida());}

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}
    }
    public static void alterar(Cardapio cardapio) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update cardapio set nome = ?, comida = ? where idCardapio = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cardapio.getNome());
            comando.setLong(2, cardapio.getIdCardapio());
            if(cardapio.getComida() == null){comando.setNull(3, Types.NULL);}
            else{comando.setLong(3, cardapio.getComida().getIdComida());}
            comando.execute();
            BD.fecharConexao(conexao, comando);

        }catch (SQLException e){
            throw e;
        }
    }

    public static void excluir(Cardapio cardapio) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from cardapio where idCardapio = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cardapio.getIdCardapio());
            comando.execute();


        }catch (SQLException e){throw  e;}
        finally {
            BD.fecharConexao(conexao, comando);
        }



    }

    public static Cardapio obterCardapio(long idCardapio) throws  ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Cardapio cardapio = null;
    try{
        conexao = BD.getConexao();
        String sql = "SELECT * FROM cardapio WHERE idCardapio = ?";
        comando = conexao.prepareStatement(sql);
        comando.setLong(1, idCardapio);
        ResultSet rs = comando.executeQuery(sql);
        rs.first();
        cardapio = new Cardapio(rs.getLong("idCardapio"),
        rs.getString("nome"), null);
        cardapio.setCodComida(rs.getLong("codComida"));
    }catch (SQLException e){e.printStackTrace();}
    finally {
        BD.fecharConexao(conexao, comando);
    }
    return cardapio;
    }

    public static List<Cardapio> obterTodosCardapios() throws  ClassNotFoundException{
        Connection conexao = null;
        Statement comando = null;
        List<Cardapio> cardapios = new ArrayList<Cardapio>();
        try{
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM cardapio";
            ResultSet rs = comando.executeQuery(sql);

            while(rs.next()) {
                Cardapio cardapio = new Cardapio(rs.getLong("idCardapio"),
                        rs.getString("nome"), null);
                cardapio.getCodComida(rs.getLong("codComida"));

                cardapios.add(cardapio);
            }
        }catch (SQLException e){e.printStackTrace();}
        finally {
            BD.fecharConexao(conexao, comando);
        }
        return cardapios;
    }


}
