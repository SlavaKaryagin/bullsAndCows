<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Игра Быки и коровы</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../styles/styles.css" type="text/css">
</head>
<body>

<div id="content">
    <img src="../images/bull.svg" alt="" width="144" height="114">
    <h3>Вход Быки и коровы</h3>
    <form id="login" method="post" action="/auth">

        <%
            if (request.getParameter("email") != null) {
                out.println("<input type=\"email\" name=\"email\" placeholder=\"Введите email\" value = \"" + request.getParameter("email") + "\" required>");
            } else {
                out.println("<input type=\"email\" name=\"email\" placeholder=\"Введите email\" required>");
            }
        %>

        <input type="password" name="pass" placeholder="Введите пароль" required>

        <%
            if (request.getAttribute("error") != null) {
                out.println("<p id=\"error\" style=\"color:#ff0000\">" + request.getAttribute("error") + "</p>");
            }
        %>
        <button type="submit">Войти</button>
        <a href="/views/Registration.jsp"><small>Регистрация</small></a>
    </form>
</div>

</body>
</html>