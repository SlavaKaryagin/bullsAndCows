<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Игра Быки и коровы</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../styles.css" type="text/css">
</head>
<body>

<div id="content">
    <img src="../images/bull.svg" alt="" width="144" height="114">
    <h3>Регистрация Быки и коровы</h3>
    <form id="login" method="post" action="/reg">
        <h5>Username:</h5>
        <%
            if (request.getParameter("username") != null) {
                out.println("<input type=\"text\" name=\"username\" placeholder=\"Username\" value=\"" + request.getParameter("username") + "\" required>");
            } else {
                out.println("<input type=\"text\" name=\"username\" placeholder=\"Username\" required>");
            }
        %>
        <h5>Email:</h5>
        <%
            if (request.getParameter("email") != null) {
                out.println("<input type=\"email\" name=\"email\" placeholder=\"Email\" value=\"" + request.getParameter("email") + "\" required>");
            } else {
                out.println("<input type=\"email\" name=\"email\" placeholder=\"Email\" required>");
            }
        %>
        <h5>Пароль:</h5>

        <input type="password" name="pass" placeholder="Пароль" required>

        <h5>Пол:</h5>
        <%
            if (request.getParameter("gender") != null) {
                if (request.getParameter("gender").equals("М")) {
                    out.println(" <div>\n" +
                            "            <input type=\"radio\" name=\"gender\" value=\"М\" checked required> Мужcкой\n" +
                            "            <input type=\"radio\" name=\"gender\" value=\"Ж\"> Женский\n" +
                            "        </div>");
                } else if (request.getParameter("gender").equals("Ж")) {
                    out.println(" <div>\n" +
                            "            <input type=\"radio\" name=\"gender\" value=\"М\" required> Мужcкой\n" +
                            "            <input type=\"radio\" name=\"gender\" value=\"Ж\" checked> Женский\n" +
                            "        </div>");
                }

            } else {
                out.println(" <div>\n" +
                        "            <input type=\"radio\" name=\"gender\" value=\"М\" required> Мужcкой\n" +
                        "            <input type=\"radio\" name=\"gender\" value=\"Ж\"> Женский\n" +
                        "        </div>");
            }
        %>
        <h5>Страна:</h5>
        <%
            if (request.getParameter("country") != null) {
                out.println("<input type=\"text\" name=\"country\" placeholder=\"Страна\" value=\"" + request.getParameter("country") + "\" required>");
            } else {
                out.println("<input type=\"text\" name=\"country\" placeholder=\"Страна\" required>");
            }
        %>
        <%
            if (request.getAttribute("error") != null) {
                out.println("<p id=\"error\" style=\"color:#ff0000\">" + request.getAttribute("error") + "</p>");
            }
        %>

        <button type="submit">Отправить</button>
    </form>
</div>

</body>
</html>
