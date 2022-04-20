package dao;

import models.Game;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Класc для работы с БД (сущность - Game)
 */
public class GameDAO {

    private static PreparedStatement preparedStatement;
    private static ResultSet resultSet;

    /**
     * Метод создания новой игры
     *
     * @param conn
     * @param userId
     * @param generatedNumber
     * @throws SQLException
     */
    public static void createGame(Connection conn, String userId, String generatedNumber) throws SQLException {
        String insert = "INSERT INTO GAME (EMAIL, NUMBER, ATTEMPTS, STATUS) VALUES (?, ?, ?, ?)";

        preparedStatement = conn.prepareStatement(insert);
        preparedStatement.setString(1, userId);
        preparedStatement.setString(2, generatedNumber);
        preparedStatement.setInt(3, 0);
        preparedStatement.setString(4, "ON");

        preparedStatement.execute();
    }


    /**
     * Метод для проверки активной игры
     *
     * @param conn
     * @param userId
     * @return
     * @throws SQLException
     */
    public static boolean isActiveGame(Connection conn, String userId) throws SQLException {
        String select = "SELECT * FROM GAME WHERE EMAIL = ? AND STATUS = 'ON'";

        preparedStatement = conn.prepareStatement(select);
        preparedStatement.setString(1, userId);

        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return true;
        }

        return false;
    }

    /**
     * Метод получения активной (текущей) игры. Она может быть только одна
     *
     * @param conn
     * @param userId
     * @return
     * @throws SQLException
     */
    public static Game getActiveGame(Connection conn, String userId) throws SQLException {
        String select = "SELECT * FROM GAME WHERE EMAIL = ? AND STATUS = ?";

        preparedStatement = conn.prepareStatement(select);
        preparedStatement.setString(1, userId);
        preparedStatement.setString(2, "ON");

        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return new Game(resultSet.getInt("ID"), resultSet.getString("EMAIL"), resultSet.getString("NUMBER"), resultSet.getInt("ATTEMPTS"), resultSet.getString("STATUS"));
        }

        return null;
    }

    /**
     * Метод удаления активной игры. Вызывается, когда пользователь обновил страницу или нажал на кнопку "Новая игра"
     *
     * @param conn
     * @param userId
     * @throws SQLException
     */
    public static void deleteActiveGame(Connection conn, String userId) throws SQLException {
        String delete = "DELETE FROM GAME WHERE EMAIL= ? and STATUS='ON'";

        preparedStatement = conn.prepareStatement(delete);
        preparedStatement.setString(1, userId);

        preparedStatement.execute();
    }


    /**
     * Метод изменения кол-ва попыток в игре. Вызывается, когда пользователь сделал ход
     *
     * @param conn
     * @param gameId
     * @throws SQLException
     */
    public static void setAttempts(Connection conn, Integer gameId) throws SQLException {
        String update = "UPDATE GAME SET ATTEMPTS = (SELECT ATTEMPTS FROM GAME WHERE ID = ?) + 1 WHERE ID = ?";

        preparedStatement = conn.prepareStatement(update);
        preparedStatement.setInt(1, gameId);
        preparedStatement.setInt(2, gameId);

        preparedStatement.execute();
    }


    /**
     * Метод изменения статуса игры. Вызывается, когда пользователь отгадал число
     *
     * @param conn
     * @param gameId
     * @throws SQLException
     */
    public static void setStatus(Connection conn, Integer gameId) throws SQLException {
        String update = "UPDATE GAME SET STATUS = 'OFF' WHERE ID = ?";

        preparedStatement = conn.prepareStatement(update);
        preparedStatement.setInt(1, gameId);

        preparedStatement.execute();
    }
}
