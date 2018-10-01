package dao;

import model.Cliente;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    public static void gravar(Cliente cliente) throws SQLException, ClassNotFoundException{

        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "Insert into cliente (idCliente, nome, CPF, email, senha, linkImagem, telefone, historico, logradouro, numero, bairro, complemento, cidade, estado)"
                         + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            comando = conexao.prepareStatement(sql);
            comando.setLong(1, cliente.getIdCliente());
            comando.setString(2,cliente.getNome());
            comando.setString(3,cliente.getCpf());
            comando.setString(4,cliente.getEmail());
            comando.setString(5,cliente.getSenha());
            comando.setString(6,cliente.getFoto());
            comando.setString(7,cliente.getTelefone());
            comando.setString(8,cliente.getLogradouro());
            comando.setString(9,cliente.getNumero());
            comando.setString(10,cliente.getBairro());
            comando.setString(11,cliente.getCEP());
            comando.setString(12,cliente.getCidade());
            comando.setString(13,cliente.getEstado());
            if(cliente.getHistorico() == null){comando.setNull(14, Types.NULL);}
            else{comando.setLong(14, cliente.getHistorico().getIdHistorico());}

            comando.execute();
            BD.fecharConexao(conexao, comando);
        }catch (SQLException e){throw e;}



    }


    public static void alterar(Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try {
            conexao = BD.getConexao();
            String sql = "update cliente set nome = ?, CPF = ?, email = ?, senha = ?, linkImagem = ?, telefone = ?," +
                    " logradouro = ?, numero = ?, bairro = ?, cep = ?, cidade = ?, estado = ?, historico = ?, idCliente = ? where idCliente = ?";
            comando = conexao.prepareStatement(sql);
            comando.setString(1, cliente.getNome());
            comando.setString(2, cliente.getCpf());
            comando.setString(3, cliente.getEmail());
            comando.setString(4, cliente.getSenha());
            comando.setString(5, cliente.getFoto());
            comando.setString(6, cliente.getTelefone());
            comando.setString(7,cliente.getLogradouro());
            comando.setString(8,cliente.getNumero());
            comando.setString(9,cliente.getBairro());
            comando.setString(10,cliente.getCEP());
            comando.setString(11,cliente.getCidade());
            comando.setString(12,cliente.getEstado());


            if (cliente.getHistorico() == null) {
                comando.setNull(13, Types.NULL);
            } else {
                comando.setLong(13, cliente.getHistorico().getIdHistorico());
            }
            comando.setLong(14, cliente.getIdCliente());
            comando.execute();
            BD.fecharConexao(conexao, comando);

        }catch (SQLException e){
            throw e;
        }
    }


    public static void excluir (Cliente cliente) throws SQLException, ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        try{
            conexao = BD.getConexao();
            String sql = "delete from comida where idComida = ?";
            comando.setLong(1, cliente.getIdCliente());
            comando.execute();
        }
        catch (SQLException e){
            throw e;

        }finally{
            BD.fecharConexao(conexao,comando);
        }
    }

    public static Cliente obterCliente(long idCliente) throws ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente cliente = null;
        try{
            conexao = BD.getConexao();
            String sql ="SELECT * FROM cliente WHERE idCliente = ?";
            comando.setLong(1,idCliente);
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            cliente = new Cliente (rs.getLong("idCliente"),
                    rs.getString("nome"),
                    rs.getString("cpf"),
                    rs.getString("telefone"),
                    rs.getString("email"),
                    rs.getString("senha"),
                    rs.getString("foto"),
                    rs.getString("CEP"),
                    rs.getString("logradouro"),
                    rs.getString("bairro"),
                    rs.getString("complemento"),
                    rs.getString("cidade"),
                    rs.getString("estado"),
                    rs.getString("numero"),
                    null);
            cliente.setCodHistorico(rs.getLong("codHistorico"));
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }
        return cliente;
    }

    public static List<Cliente> obterTodosCliente() throws ClassNotFoundException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Cliente cliente = null;
        List<Cliente> clientes = new ArrayList<Cliente>();
        try {
            conexao = BD.getConexao();
            String sql = "SELECT * FROM cliente";
            ResultSet rs = comando.executeQuery(sql);
            rs.first();
            while (rs.next()) {
                cliente = new Cliente(rs.getLong("idCliente"),
                        rs.getString("nome"),
                        rs.getString("cpf"),
                        rs.getString("telefone"),
                        rs.getString("email"),
                        rs.getString("senha"),
                        rs.getString("foto"),
                        rs.getString("CEP"),
                        rs.getString("logradouro"),
                        rs.getString("bairro"),
                        rs.getString("complemento"),
                        rs.getString("cidade"),
                        rs.getString("estado"),
                        rs.getString("numero"),
                        null);
                cliente.setCodHistorico(rs.getLong("codHistorico"));
                clientes.add(cliente);
            }
        }

        catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }
        return clientes;
    }

}

