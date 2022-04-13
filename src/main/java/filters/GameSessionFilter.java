package filters;

import utils.Utils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebFilter(filterName = "gameSessionFilter", urlPatterns = {"/views/Game.jsp/*"})
public class GameSessionFilter implements Filter {
    @Override public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
//        System.out.println("GameSessionFilter  is start");
//
//        HttpServletRequest request = (HttpServletRequest) req;
//        HttpServletResponse response = (HttpServletResponse) resp;
//        HttpSession session = request.getSession();
//
//        if (!Utils.sessionIsLive(request)) {
//            System.out.println("IS_AUTH IS NULL");
//            System.out.println(request.getContextPath());
//            response.sendRedirect(request.getContextPath() + "/views/Authorization.jsp");
//            return;
//        } else {
//            filterChain.doFilter(request, response);
        filterChain.doFilter(req, resp);
//        }
    }
}

