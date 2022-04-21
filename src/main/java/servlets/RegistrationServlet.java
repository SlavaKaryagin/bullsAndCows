package servlets;

import conn.DBConnection;
import models.User;
import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Сервлет для регистрации пользовтаеля
 */
@WebServlet("/reg")
public class RegistrationServlet extends HttpServlet {

    /**
     * Метод для обработки POST запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("UTF-8");
        RequestDispatcher requestDispatcher = req.getRequestDispatcher(req.getContextPath() + "views/Authorization.jsp");
        String error;

        User user = new User(req.getParameter("email"), req.getParameter("username"), req.getParameter("gender"), req.getParameter("country"), req.getParameter("pass"));
        try {
            if (UserDAO.userIsExist(DBConnection.getConnection(), req.getParameter("email"))) {
                error = "Пользователь с таким email уже зарегистрирован";
                req.setAttribute("error", error);
                requestDispatcher = req.getRequestDispatcher(req.getContextPath() + "/views/Registration.jsp");
                requestDispatcher.forward(req, resp);

            } else {
                UserDAO.insertUser(DBConnection.getConnection(), user);
                requestDispatcher.forward(req, resp);
            }

        } catch (Exception e) {
            e.printStackTrace();
            error = e.getMessage();
            req.setAttribute("error", error);
            requestDispatcher.forward(req, resp);
        }
    }

    /**
     * Метод обработки GET запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }
}
