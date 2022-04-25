/* Удаление активной игры (через сервлет, параметр refresh) при обновлении страницы, т.к пользователь может не завершить игру.
При нажатии на кнопку "Новая игра" идет запрос в сервлет с параметром new и там так же
удаляется активная игра (которую пользователь не закончил). При обновлении страницы после нажатия кнопки вызов к сервлету с
параметром refresh не происходит (из-за дублирования логики).
*
*
* + Формируется рейтинг пользователей
*
*
*/

$(document).ready(function () {

    if (sessionStorage.getItem('newGame') == 'true') {
        sessionStorage.removeItem('newGame');
    } else {
        $.ajax({url: "./game?state=refresh", async: false},
        );
    }


    $.ajax({
        cache: false,
        type: "GET",
        url: "./rating",
        async: false,
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            let tr = [];
            for (let i = 0; i < data.length; i++) {
                tr.push('<tr>');
                tr.push("<td>" + data[i].userName + "</td>");
                tr.push("<td>" + data[i].amountGames + "</td>");
                tr.push("<td>" + data[i].avgAttempts + "</td>");
                tr.push("<td>" + data[i].country + "</td>");
                tr.push('</tr>');
            }
            $('#topUsersBody').append($(tr.join('')));
        }
    });

});