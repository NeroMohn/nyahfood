package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class BD {

    public static Connection getConexao()
            throws  SQLException {
        Connection conexao = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return DriverManager.getConnection("jdbc:mysql://localhost/nyahfood_db", "root", "");

    }

    public static void fecharConexao(Connection conexao, Statement comando) {

        try {
            if (comando != null) {
                comando.close();
            }

            if (conexao != null) {
                conexao.close();
            }

        } catch (SQLException ignored) {
        }

    }
}