/* Дополнительня проверка input, куда вводит число пользователь */

function checkInputNumber() {
    input_stepEl = document.querySelector("#inputStep");
    input_stepEl.setCustomValidity('');
    number_input = input_stepEl.value;
    split_number = number_input.split("");

    for (let i = 0; i < split_number.length; i++) {
        result = split_number[i].match(/^(0|[1-9][0-9]*)$/);
        if (result == null) {
            input_stepEl.setCustomValidity("Поддерживаются только числовые значения!");
            return;
        }
    }

    for (let i = 0; i < split_number.length; i++) {
        for (let j = i + 1; j < split_number.length; j++) {
            if (split_number[i] == split_number[j]) {
                input_stepEl.setCustomValidity("Числа не должны повторяться!");
                return;
            }
        }
    }
}


