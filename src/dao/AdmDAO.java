/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import model.Adm;

/**
 *
 * @author rodri
 */
public class AdmDAO {
    
    public static Adm obterAdm(String login) throws SQLException{
        Connection conexao = null;
        PreparedStatement comando = null;
        Adm adm = null;
        try{
            conexao = BD.getConexao();
            String sql = "SELECT * FROM administrador WHERE login = ? ";
            comando = conexao.prepareStatement(sql);
            comando.setString(1,login);
            comando.execute();
            ResultSet rs = comando.executeQuery();
            rs.first();
            adm = new Adm(rs.getLong("idAdministrador"), 
                    rs.getString("login"),
                    rs.getString("nome"),
                    rs.getString("senha"));           
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            BD.fecharConexao(conexao, comando);
        }
        return adm;
    }
}
