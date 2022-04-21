package conn;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.beans.PropertyVetoException;
import java.sql.Connection;
import java.sql.SQLException;


/**
 * Класс для получения соединения к БД
 */
public class DBConnection {

    public static ComboPooledDataSource getDataSource() throws PropertyVetoException {
        ComboPooledDataSource cpds = new ComboPooledDataSource();
        cpds.setJdbcUrl("jdbc:h2:mem:store;"
                + "INIT=RUNSCRIPT FROM 'classpath:db/schema.sql'");
        cpds.setDriverClass("org.h2.Driver");
        cpds.setUser("admin");
        cpds.setPassword("");
        cpds.setInitialPoolSize(5);
        cpds.setMinPoolSize(5);
        cpds.setAcquireIncrement(5);
        cpds.setMaxPoolSize(20);
        cpds.setMaxStatements(100);

        return cpds;
    }

    public static Connection getConnection() throws SQLException {
        ComboPooledDataSource dataSource = null;
        Connection connection = null;
        try {
            dataSource = DBConnection.getDataSource();
            connection = dataSource.getConnection();
        } catch (PropertyVetoException e) {
            connection.rollback();
            e.printStackTrace();
        }

        return connection;
    }
}
