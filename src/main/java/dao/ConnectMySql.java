package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectMySql {
    public static Connection getConnection() {
        // kết nối với CSDL
        String jdbcURL = "jdbc:mysql://localhost:3306/testmodul";
        String jdbcUsername = "root";
        // Password database
        String jdbcPassword = "12345678";

        Connection connection = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL,jdbcUsername,jdbcPassword);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
