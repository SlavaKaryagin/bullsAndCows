package servlets;

import conn.DBConnection;
import dao.GameDAO;
import game.GameLogic;
import models.Game;
import utils.SessionUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Сервлет для обработки запросов с игровой страницы. Запросы как по самой игре, так и технические
 */
@WebServlet("/game")
public class GameServlet extends HttpServlet {
    /**
     * Метод обработки GET запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Connection conn;
        String userId = SessionUtils.getSessionUser(req);

        String state = req.getParameter("state");

        if (state != null) {
            try {
                conn = DBConnection.getConnection();
                if (GameDAO.isActiveGame(conn, userId)) {
                    GameDAO.deleteActiveGame(conn, userId);
                }
                if (state.equals("new")) {
                    resp.sendRedirect(req.getContextPath() + "/views/Game.jsp");
                }
                return;
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

        String result = "";
        Game game;
        String generatedNumber;
        String userNumber = req.getParameter("step");
        String stepResp;

        if (userNumber != null) {
            if (userId == null) {
                stepResp = "ERROR";

                resp.setContentType("text/plain");

                OutputStream outStream = resp.getOutputStream();
                outStream.write(stepResp.getBytes("UTF-8"));
                outStream.flush();
                outStream.close();
                return;
            }
            try {
                conn = DBConnection.getConnection();
                if (GameDAO.isActiveGame(conn, userId)) {
                    game = GameDAO.getActiveGame(conn, userId);
                    generatedNumber = game.getNumber();
                } else {
                    conn = DBConnection.getConnection();
                    generatedNumber = GameLogic.generateNumber();
                    GameDAO.createGame(conn, userId, generatedNumber);
                    game = GameDAO.getActiveGame(conn, userId);
                }

                if (userNumber.equals(generatedNumber)) {
                    GameDAO.setAttempts(conn, game.getId());
                    GameDAO.setStatus(conn, game.getId());
                } else {
                    GameDAO.setAttempts(conn, game.getId());
                }

                result += GameLogic.defineResultPair(generatedNumber, userNumber);

                stepResp = userNumber + " - " + result;

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
                stepResp = "ERROR";
            }

            resp.setContentType("text/plain");

            OutputStream outStream = resp.getOutputStream();
            outStream.write(stepResp.getBytes("UTF-8"));
            outStream.flush();
            outStream.close();

        }

    }

    /**
     * Метод обработки POST запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}

