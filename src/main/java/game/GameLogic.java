package game;

import java.util.Random;

/**
 * Класс игровой логики
 */
public class GameLogic {

    /**
     * Метод генерации числа (который возвращается пользователю)
     *
     * @return
     */
    public static String generateNumber() {

        String number = "";
        String buffer;
        Random random = new Random();

        for (int i = 0; i < 4; i++) {
            buffer = String.valueOf(random.nextInt(10));
            while (number.contains(buffer)) {
                buffer = String.valueOf(random.nextInt(10));
            }
            number += buffer;
        }
        return number;
    }

    /**
     * Метод определения результата (сколько быков и коров)
     *
     * @param generatedNumber
     * @param userNumber
     * @return
     */
    public static String defineResultPair(String generatedNumber, String userNumber) {
        Integer bulls = 0;
        Integer matches = 0;

        String[] generatedNumberArr = generatedNumber.split("");
        String[] userNumberArr = userNumber.split("");

        for (int i = 0; i < userNumberArr.length; i++) {
            if (userNumberArr[i].equals(generatedNumberArr[i])) {
                bulls++;
            }
        }

        for (int i = 0; i < userNumberArr.length; i++) {
            if (generatedNumber.contains(userNumberArr[i])) {
                matches++;
            }
        }

        return bulls + "Б" + (matches - bulls) + "К";
    }
}
