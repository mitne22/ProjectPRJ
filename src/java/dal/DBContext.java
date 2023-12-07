package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {

    protected Connection connection;

    public DBContext() {
        try {
            // Edit URL , username, password to authenticate with your MS SQL Server
            String url = "jdbc:sqlserver://localhost:1433;databaseName=Project_PRJ;encrypt=true;trustServerCertificate=true";
            String username = "mitne";
            String password = "12345";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (Exception ex) {

        }

    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        DBContext a = new DBContext();
        System.out.println(a.connection);

    }

}
