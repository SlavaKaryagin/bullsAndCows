package utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Utils {
    public static boolean sessionIsLive(HttpServletRequest request) {
        HttpSession session = request.getSession();
        return session.getAttribute("IS_AUTH") != null;
    }

}
