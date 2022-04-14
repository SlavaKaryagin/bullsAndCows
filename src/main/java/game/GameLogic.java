package game;

import java.util.Random;

public class GameLogic {
    public String generateNumber() {

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
}
