package servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/game")
public class GameServlet extends HttpServlet {
    @Override protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String step = req.getParameter("step").trim() + " 3 коровы 1 бык";
        resp.setContentType("text/plain");

        OutputStream outStream = resp.getOutputStream();
        outStream.write(step.getBytes("UTF-8"));
        outStream.flush();
        outStream.close();
    }

    @Override protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getParameter("step")!=null){
            RequestDispatcher requestDispatcher = req.getRequestDispatcher(req.getContextPath() + "views/Game.jsp");
            req.setAttribute("resultStep", req.getParameter("step"));
            requestDispatcher.forward(req,resp);
        }
    }
}
