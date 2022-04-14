$(document).ready(function () {
    $('#formGame').submit(function () {
        $.ajax({
            url: '/game',
            data: {
                step: $('#inputStep').val()
            },
            success: function (response) {
                $('#results_steps').append($('<li>', {
                    text: response
                }));
            }
        });
    });
});