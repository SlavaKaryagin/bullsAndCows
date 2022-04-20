package utils;

import javax.servlet.http.HttpServletRequest;

/**
 * Класс для работы с сессией пользователя
 */
public class SessionUtils {

    /**
     * Метод проверки сессии пользователя на существование
     *
     * @param request
     * @return
     */
    public static boolean sessionIsLive(HttpServletRequest request) {
        return request.getSession().getAttribute("IS_AUTH") != null;
    }

    /**
     * Метод получения USER_ID из сессии
     *
     * @param request
     * @return
     */
    public static String getSessionUser(HttpServletRequest request) {
        return (String) request.getSession().getAttribute("USER_ID");
    }

    /**
     * Метод удаления сессии
     *
     * @param request
     */
    public static void deleteSession(HttpServletRequest request) {
        request.getSession().removeAttribute("USER_ID");
        request.getSession().removeAttribute("IS_AUTH");
    }
}
