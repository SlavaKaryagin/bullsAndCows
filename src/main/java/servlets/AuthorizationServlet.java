package servlets;

import conn.DBConnection;
import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

/**
 * Сервлет отвечающий за авторизацию пользователя
 */
@WebServlet("/auth")
public class AuthorizationServlet extends HttpServlet {

    /**
     * Метод обработки POST запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RequestDispatcher requestDispatcher = req.getRequestDispatcher(req.getContextPath() + "views/Authorization.jsp");
        String error;

        try {
            if (UserDAO.userAccountIsCorrect(DBConnection.getConnection(), req.getParameter("email"), req.getParameter("pass"))) {
                req.getSession().setAttribute("USER_ID", req.getParameter("email"));
                req.getSession().setAttribute("IS_AUTH", "true");
                resp.sendRedirect(req.getContextPath() + "/views/Game.jsp");
            } else {
                error = "Ошибка авторизации. Неверный логин или пароль";
                req.setAttribute("error", error);
                System.out.println((String) req.getAttribute("error"));
                requestDispatcher.forward(req, resp);
            }

        } catch (SQLException | ClassNotFoundException e) {
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
