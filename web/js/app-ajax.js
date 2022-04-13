// вызов функции по завершению загрузки страницы
$(document).ready(function () {
    // вызов функции после нажатия на buttonStep
    $('#buttonStep').click(function () {
        $.ajax({
            url: '/game',     // URL - сервлет
            data: {                 // передаваемые сервлету данные
                step: $('#inputStep').val()
            },
            success: function (response) {
                // обработка ответа от сервера
                $('#results_steps').append($('<li>', {
                    text: response
                }));
            }
        });
    });
});