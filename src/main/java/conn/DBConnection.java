package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    static final String JDBC_DRIVER = "org.h2.Driver";
    static final String DB_URL = "jdbc:h2:mem:store;"
        + "INIT=RUNSCRIPT FROM 'C:/Users/Slava/IdeaProjects/bullsAndCows/src/main/resources/db/schema.sql'" ;
    static final String USER = "admin";
    static final String PASS = "";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName(JDBC_DRIVER);
        return DriverManager.getConnection(DB_URL,USER,PASS);
    }
}
