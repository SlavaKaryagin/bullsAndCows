package filters;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "loginFilter", urlPatterns = {"/views"})
public class LoginFilter implements Filter {
    @Override public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("It is second filter");
        filterChain.doFilter(servletRequest, servletResponse);
    }
}
