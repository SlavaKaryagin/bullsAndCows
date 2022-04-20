package dao;

import models.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 * Класc для работы с БД (сущность - User)
 */
public class UserDAO {

    private static PreparedStatement preparedStatement;

    /**
     * Метод для создания пользователя
     *
     * @param conn
     * @param user
     * @throws SQLException
     */
    public static void insertUser(Connection conn, User user) throws SQLException {
        String insert = "INSERT INTO USER_ACCOUNT (email, user_name, gender, country, password) VALUES (?,?,?,?,?)";

        preparedStatement = conn.prepareStatement(insert);
        preparedStatement.setString(1, user.getEmail());
        preparedStatement.setString(2, user.getUserName());
        preparedStatement.setString(3, user.getGender());
        preparedStatement.setString(4, user.getCountry());
        preparedStatement.setString(5, user.getPassword());
        preparedStatement.executeUpdate();
    }

    /**
     * Метод поиска пользователя
     *
     * @param conn
     * @param email
     * @return
     * @throws SQLException
     */
    public static ResultSet findUser(Connection conn, String email) throws SQLException {
        String select = "SELECT * FROM USER_ACCOUNT WHERE EMAIL = ?";

        preparedStatement = conn.prepareStatement(select);
        preparedStatement.setString(1, email);
        ResultSet user = preparedStatement.executeQuery();
        return user;

    }

    /**
     * Метод проверки на существование пользователя
     *
     * @param conn
     * @param email
     * @return
     * @throws SQLException
     */
    public static boolean userIsExist(Connection conn, String email) throws SQLException {
        String select = "SELECT * FROM USER_ACCOUNT WHERE EMAIL = ?";

        preparedStatement = conn.prepareStatement(select);
        preparedStatement.setString(1, email);

        if (preparedStatement.executeQuery().isBeforeFirst()) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Метод проверки пользователя по введеным им данным
     *
     * @param conn
     * @param email
     * @param pass
     * @return
     * @throws SQLException
     */
    public static boolean userAccountIsCorrect(Connection conn, String email, String pass) throws SQLException {
        String select = "SELECT * FROM USER_ACCOUNT WHERE EMAIL = ? AND PASSWORD = ?";

        preparedStatement = conn.prepareStatement(select);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, pass);
        preparedStatement.executeQuery();

        if (preparedStatement.executeQuery().isBeforeFirst()) {
            return true;
        } else {
            return false;
        }
    }
}
