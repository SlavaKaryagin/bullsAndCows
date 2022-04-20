/* Использование sessionStorage при нажатии на "Новая игра". Нужно для избежания однотипных вызовов*/
$(document).ready(function () {
    $('#newGameButton').click(function () {
        sessionStorage.setItem("newGame", "true");
    });
});