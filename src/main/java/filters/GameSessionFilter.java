package filters;

import utils.SessionUtils;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Класс для проверки сессии пользователя при переходе на игровую страницу
 */
@WebFilter(filterName = "gameSessionFilter", urlPatterns = {"/Game.jsp/*"})
public class GameSessionFilter implements Filter {

    @Override
    public void destroy() { /* unused */ }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException { /* unused */ }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;

        if (!SessionUtils.sessionIsLive(request)) {
            response.sendRedirect(request.getContextPath() + "/Authorization.jsp");
            return;
        } else {
            filterChain.doFilter(request, response);
        }
    }
}


