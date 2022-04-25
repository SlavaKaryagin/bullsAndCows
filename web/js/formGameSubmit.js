/* Вывод пары Быки-Коровы после отправки числа пользователем */
$(document).ready(function () {
    $('#formGame').submit(function () {
        $.ajax({
            url: './game',
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            data: {
                step: $('#inputStep').val()
            },
            success: function (response) {
                if (response.indexOf('4Б0К') >= 0) {
                    $("#inputStep").prop("disabled", true);
                    $("#buttonStep").prop("disabled", true);
                }
                if (response == 'ERROR') {
                    alert("Перезагрузите, пожалуйста, страницу");
                }
                $('#results_steps').append($('<li>', {
                    text: response
                }));
            }
        });
    });
});