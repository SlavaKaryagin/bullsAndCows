package models;


/**
 * Класс сущности Game
 */
public class Game {
    private Integer id;
    private String email;
    private String number;
    private Integer attempts;
    private String status;

    /**
     * Конструктор со всеми возможными параметрами
     * @param id
     * @param email
     * @param number
     * @param attempts
     * @param status
     */
    public Game(Integer id, String email, String number, Integer attempts, String status) {
        this.id = id;
        this.email = email;
        this.number = number;
        this.attempts = attempts;
        this.status = status;
    }

    /**
     * Метод получения электронной почты
     * @return
     */
    public String getEmail() {
        return email;
    }


    /**
     * Метод получения числа (загаданного компьютером)
     * @return
     */
    public String getNumber() {
        return number;
    }


    /**
     * Метод получения попыток в рамках игры
     * @return
     */
    public Integer getAttempts() {
        return attempts;
    }

    /**
     * Метод получения статуса игры
     * @return
     */
    public String getStatus() {
        return status;
    }

    /**
     * Метод получения ID игры
     * @return
     */
    public Integer getId() {
        return id;
    }

    /**
     * Метод изменения электронной почты
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Метод изменения числа
     * @param number
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * Метод изменения числа попыток
     * @param attempts
     */
    public void setAttempts(Integer attempts) {
        this.attempts = attempts;
    }

    /**
     * Метод изменения статуса игры
     * @param status
     */
    public void setStatus(String status) {
        this.status = status;
    }


    /**
     * Метод изменения ID игры
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    @Override public String toString() {
        return "Game{" +
                "email='" + email + '\'' +
                ", number=" + number +
                ", attempts=" + attempts +
                '}';
    }
}
