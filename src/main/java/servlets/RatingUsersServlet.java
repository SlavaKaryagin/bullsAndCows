package servlets;

import com.google.gson.Gson;
import conn.DBConnection;
import dao.RatingUserDAO;
import models.RatingUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

/**
 * Сервлет для составления рейтинга пользователей
 */
@WebServlet("/rating")
public class RatingUsersServlet extends HttpServlet {
    /**
     * Метод обработки GET запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            List<RatingUser> ratingUsers = RatingUserDAO.list(DBConnection.getConnection());
            String json = new Gson().toJson(ratingUsers);

            resp.setContentType("application/json");
            resp.setCharacterEncoding("UTF-8");
            PrintWriter out = resp.getWriter();
            out.print(json);
            out.flush();

        } catch (Exception e) {
            e.printStackTrace();
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
