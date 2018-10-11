package dao;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public abstract class BD {

    public static Connection getConexao()
            throws ClassNotFoundException, SQLException {
        Connection conexao = null;
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