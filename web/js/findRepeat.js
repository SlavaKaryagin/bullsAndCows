input_stepEl = document.querySelector("#inputStep");
number_input = input_stepEl.value;
flag = false;
split_number = number_input.split("");
for (let i = 0; i < split_number.length; i++) {
    for (let j = i + 1; j < split_number.length; j++) {
        if (split_number[i] == split_number[j]) {
            input_stepEl.setCustomValidity("Числа не должны повторятся!");
            flag = true;
            break;
        }
    }
    if (flag) break;
}    
