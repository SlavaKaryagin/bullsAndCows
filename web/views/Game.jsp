<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Игра Быки и коровы</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>

    <link rel="stylesheet" href="../styles.css" type="text/css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="../js/app-ajax.js" type="text/javascript"></script>
</head>
<body>

<div id="topContentGame">
    <div id="rulesGame">
        <b><u>Правила игры</u></b>
        <div id="innerRulesGame">
            <div id="imagesRules">
                <img src="../images/bull-main.png" alt="" width="150" height="113">
                <img src="../images/cow.png" alt="" width="128" height="118">
            </div>
            <div id="textRules">
                <p>Компьютер задумывает четыре различные цифры из 0,1,2,...9.</p>
                <p>Игрок делает ходы, чтобы узнать эти цифры и их порядок.</p>
                <p></p>
                <p>Каждый ход состоит из четырёх цифр. </p>
                <p></p>
                <p>В ответ компьютер показывает число отгаданных цифр,</p>
                <p>стоящих на своих местах (число быков) и число отгаданных цифр,</p>
                <p>стоящих не на своих местах (число коров). </p>
                <p></p>
                <p><b>Пример</b></p>
                <p>Компьютер задумал 0834.</p>
                <p></p>
                <p>Игрок сделал ход 8134. </p>
                <p></p>
                <p>Компьютер ответил: 2 быка (цифры 3 и 4) и 1 корова (цифра 8).</p>
                </h4>
            </div>
        </div>
    </div>
    <div id=topUsers>
        <b><u>Рейтинг пользователей</u></b>
        <table class="table">
            <thead>
            <tr>
                <th>UserName</th>
                <th>Кол-во игр</th>
                <th>Кол-во попыток</th>
                <th>Страна</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Sanya</td>
                <td>35</td>
                <td>7</td>
                <td>England</td>
            </tr>
            <tr>
                <td>Max</td>
                <td>2</td>
                <td>3</td>
                <td>Swedish</td>
            </tr>
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    </div>
</div>


<div id="bottomContentGame">
    <b>Компьютер уже что-то задумал. Играем!</b>
    <p>Найди число, задуманное компьютером!</p>
    <%--    <form id="login" method="post" action="/game">--%>
    <div>
        <input id="inputStep" type="text" name="step" minlength="4" maxlength="4" required>
        <button id="buttonStep" type="submit">Сделать ход</button>
    </div>
    <button type="submit">Новая игра</button>
    <%--    </form>--%>
    <ol id="results_steps">
    </ol>

</div>

</div>
</body>
</html>
