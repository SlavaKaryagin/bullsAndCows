package servlets;

import utils.SessionUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Сервлет для выхода с игровой страницы
 */
@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {

    /**
     * Метод обработки GET запроса
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SessionUtils.deleteSession(req);
        resp.sendRedirect(req.getContextPath() + "/views/Authorization.jsp");
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
