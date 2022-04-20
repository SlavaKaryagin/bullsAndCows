package dao;

import models.RatingUser;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Класc для работы с БД (сущность - RatingUser)
 */
public class RatingUserDAO {
    private static PreparedStatement preparedStatement;
    private static ResultSet resultSet;

    /**
     * Метод получения рейтинга пользователей
     *
     * @param conn
     * @return
     * @throws SQLException
     */
    public static List<RatingUser> list(Connection conn) throws SQLException {
        String select = "SELECT USER_ACCOUNT.USER_NAME , count(*) AS GAME, (SUM(GAME.ATTEMPTS)/count(*)) AS AVG_ATTEMPTS, USER_ACCOUNT.COUNTRY FROM USER_ACCOUNT JOIN GAME ON USER_ACCOUNT.EMAIL = GAME.EMAIL group by USER_ACCOUNT.USER_NAME order by AVG_ATTEMPTS";

        preparedStatement = conn.prepareStatement(select);

        resultSet = preparedStatement.executeQuery();

        List<RatingUser> users = new ArrayList<>();

        while (resultSet.next()) {
            RatingUser user = new RatingUser(resultSet.getString("USER_NAME"), resultSet.getInt("GAME"), resultSet.getInt("AVG_ATTEMPTS"), resultSet.getString("COUNTRY"));
            users.add(user);
        }

        return users;
    }
}
