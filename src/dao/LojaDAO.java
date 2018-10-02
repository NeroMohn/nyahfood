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
            String sql = "Insert into loja (idLoja, nome, cnpj, email, senha, linkImagem, telefone, logradouro,"+
                    " numero, bairro, complemento, cep, cidade, estado, descricao, nomeGerente, pagamento, tipoCozinha, tipoCulinaria)"
                    + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, loja.getIdLoja());
            comando.setString(2,loja.getNome());
            comando.setString(3,loja.getCNPJ());
            comando.setString(4,loja.getEmail());
            comando.setString(5,loja.getSenha());
            comando.setString(6,loja.getFoto());
            comando.setString(7,loja.getTelefone());
            comando.setString(8,loja.getLogradouro());
            comando.setString(9,loja.getNumero());
            comando.setString(10,loja.getBairro());
            comando.setString(11,loja.getComplemento());
            comando.setString(12,loja.getCEP());
            comando.setString(13,loja.getCidade());
            comando.setString(14,loja.getEstado());
            comando.setString(15,loja.getDescricao());
            comando.setString(16,loja.getNomeGerente());
            comando.setArray(17, (Array) loja.getPagamento());


            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}



    }


    public static void alterar(Loja loja) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update loja set nome = ?, cnpj = ?, email = ?, senha = ?, linkImagem = ?, telefone = ?," +
                    " logradouro = ?, numero = ?, bairro = ?, complemento = ?, cep = ?, cidade = ?, estado = ?, descricao = ?,"+
                    " nomeGerente = ?, pagamento = ?, idLoja = ? where idLoja = ?";

            comando = conexao.prepareStatement(sql);
            comando.setString(1,loja.getNome());
            comando.setString(2,loja.getCNPJ());
            comando.setString(3,loja.getEmail());
            comando.setString(4,loja.getSenha());
            comando.setString(5,loja.getFoto());
            comando.setString(6,loja.getTelefone());
            comando.setString(7,loja.getLogradouro());
            comando.setString(8,loja.getNumero());
            comando.setString(9,loja.getBairro());
            comando.setString(10,loja.getComplemento());
            comando.setString(11,loja.getCEP());
            comando.setString(12,loja.getCidade());
            comando.setString(13,loja.getEstado());
            comando.setString(14,loja.getDescricao());
            comando.setString(15,loja.getNomeGerente());
            comando.setArray(16, (Array) loja.getPagamento());
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
            String sql = "delete from cardapio where idLoja = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, loja.getIdLoja());
            comando.execute();


        }catch (SQLException e){throw  e;} finally {
            BD.fecharConexao(conexao, comando);
        }


    }

    public static Loja obterLoja() throws ClassNotFoundException {
        Connection conexao = null;
        PreparedStatement comando = null;
        Loja loja = null;
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM loja WHERE idLoja = ?";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, loja.getIdLoja());
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            loja = new Loja(rs.getLong("idLoja"),
                    rs.getString("nome"),
                    rs.getString("telefone"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("foto"),
                    rs.getString("cep"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"),
                    rs.getString("numero"),
                    rs.getString("cnpj"),
                    rs.getString("descricao"),
                    rs.getString("nomeGerente")
                    //(ArrayList<String>) rs.getArray("pagamento")
            );

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
        List<Loja> lojas = new ArrayList<Loja>();
        try {
            conexao = BD.getConexao();
            comando = conexao.createStatement();
            String sql = "SELECT * FROM loja";
            ResultSet rs = comando.executeQuery(sql);

            while (rs.next()) {
                Loja loja = new Loja(rs.getLong("idLoja"),
                        rs.getString("nome"),
                        rs.getString("telefone"),
                        rs.getString("email"),
                        rs.getString("senha"),
                        rs.getString("foto"),
                        rs.getString("cep"),
                        rs.getString("logradouro"),
                        rs.getString("bairro"),
                        rs.getString("complemento"),
                        rs.getString("cidade"),
                        rs.getString("estado"),
                        rs.getString("numero"),
                        rs.getString("cnpj"),
                        rs.getString("descricao"),
                        rs.getString("nomeGerente"),
                        (ArrayList<String>) rs.getArray("pagamento"),
                        );

                lojas.add(loja);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            BD.fecharConexao(conexao, comando);
        }
        return lojas;
    }

}
