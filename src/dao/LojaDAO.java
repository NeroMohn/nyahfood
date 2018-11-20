package dao;

import model.Loja;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class LojaDAO {

    public static void gravar(Loja loja) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into loja ( nome, nomeGerente, email, senha,"
                    + " telefone, cnpj, descricao, pagamento, foto, cep, "
                    + "logradouro, bairro, numero, complemento, cidade, estado)"
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
                    
            comando.setString(1,loja.getNome());
            comando.setString(2,loja.getNomeGerente());
            comando.setString(3,loja.getEmail());
            comando.setString(4,loja.getSenha());
            comando.setString(5,loja.getTelefone());
            comando.setString(6,loja.getCnpj());
            comando.setString(7,loja.getDescricao());
            comando.setString(8,loja.getPagamento());
            comando.setString(9,loja.getFoto());
            comando.setString(10,loja.getCep());
            comando.setString(11,loja.getLogradouro());
            comando.setString(12,loja.getBairro());
            comando.setString(13,loja.getNumero());
            comando.setString(14,loja.getComplemento());
            comando.setString(15,loja.getCidade());
            comando.setString(16,loja.getEstado());
            

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}



    }


    public static void alterar(Loja loja) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update loja set nome = ?, nomeGerente = ?, email = ?, senha = ?, telefone = ?, cnpj = ?," +
                    " descricao = ?, pagamento = ?, foto = ?, cep = ?, logradouro = ?, bairro = ?,"+
                     "numero = ?, complemento = ?, cidade = ?, estado = ? where idLoja = ?";

            comando = conexao.prepareStatement(sql);
            comando.setString(1,loja.getNome());
            comando.setString(2,loja.getNomeGerente());
            comando.setString(3,loja.getEmail());
            comando.setString(4,loja.getSenha());
            comando.setString(5,loja.getTelefone());
            comando.setString(6,loja.getCnpj());
            comando.setString(7,loja.getDescricao());
            comando.setString(8,loja.getPagamento());
            comando.setString(9,loja.getFoto());
            comando.setString(10,loja.getCep());
            comando.setString(11,loja.getLogradouro());
            comando.setString(12,loja.getBairro());
            comando.setString(13,loja.getNumero());
            comando.setString(14,loja.getComplemento());
            comando.setString(15,loja.getCidade());
            comando.setString(16,loja.getEstado());
            comando.setLong(17, loja.getIdLoja());

            comando.execute();
            BD.fecharConexao(conexao, comando);

        }catch (SQLException e){
            throw e;
        }
    }


    public static void excluir(Loja loja) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;

        try{
            conexao = BD.getConexao();
            String sql = "delete from loja where idLoja = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, loja.getIdLoja());
            comando.execute();


        }catch (SQLException e){throw  e;} finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static Loja obterLoja(long idLoja) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Loja loja = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM loja WHERE idLoja = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, idLoja);
            ResultSet rs = comando.executeQuery();
            rs.first();
            loja = new Loja(rs.getLong("idLoja"),
                    rs.getString("nome"),
                    rs.getString("nomeGerente"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("telefone"),
                    rs.getString("cnpj"),
                    rs.getString("descricao"),
                    rs.getString("pagamento"),
                    rs.getString("foto"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("numero"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"));

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return loja;
    }

    public static List<Loja> obterTodasLojas() throws ClassNotFoundException {
        Connection conexao = null;
        Statement comando = null;
        Loja loja = null;
        List<Loja> lojas = new ArrayList<Loja>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM loja";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            do {
            loja = new Loja(rs.getLong("idLoja"),
                    rs.getString("nome"),
                    rs.getString("nomeGerente"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("telefone"),
                    rs.getString("cnpj"),
                    rs.getString("descricao"),
                    rs.getString("pagamento"),
                    rs.getString("foto"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("numero"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"));
                lojas.add(loja);
            }while (rs.next());
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return lojas;
    }
    
    public static Loja obterLoja(String email) throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Loja loja = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM loja WHERE email = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, email);
            ResultSet rs = comando.executeQuery();
            rs.first();
            loja = new Loja(rs.getLong("idLoja"),
                    rs.getString("nome"),
                    rs.getString("nomeGerente"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("telefone"),
                    rs.getString("cnpj"),
                    rs.getString("descricao"),
                    rs.getString("pagamento"),
                    rs.getString("foto"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("numero"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"));
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return loja;
    } 

}
