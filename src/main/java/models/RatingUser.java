package models;

/**
 * Класс сущности RatingUser. Нет для сущности таблицы в БД
 */
public class RatingUser {
    private String userName;
    private Integer amountGames;
    private Integer avgAttempts;
    private String country;

    /**
     * Конструктор со всеми возможными параметрами
     *
     * @param userName
     * @param amountGames
     * @param avgAttempts
     * @param country
     */
    public RatingUser(String userName, Integer amountGames, Integer avgAttempts, String country) {
        this.userName = userName;
        this.amountGames = amountGames;
        this.avgAttempts = avgAttempts;
        this.country = country;
    }

    /**
     * Метод получения userName
     *
     * @return
     */
    public String getUserName() {
        return userName;
    }

    /**
     * Метод получения кол-ва сыгранных игр (со статусом OFF)
     *
     * @return
     */
    public Integer getAmountGames() {
        return amountGames;
    }


    /**
     * Метод для получения среднего кол-ва попыток на игру
     *
     * @return
     */
    public Integer getAvgAttempts() {
        return avgAttempts;
    }


    /**
     * Метод получения страны пользователя
     *
     * @return
     */
    public String getCountry() {
        return country;
    }

    /**
     * Метод изменения userName
     *
     * @param userName
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * Метод изменения кол-ва игр
     *
     * @param amountGames
     */
    public void setAmountGames(Integer amountGames) {
        this.amountGames = amountGames;
    }

    /**
     * Метод изменения среднего кол-ва попыток на игру
     *
     * @param avgAttempts
     */
    public void setAvgAttempts(Integer avgAttempts) {
        this.avgAttempts = avgAttempts;
    }

    /**
     * Метод изменения страны
     *
     * @param country
     */
    public void setCountry(String country) {
        this.country = country;
    }
}
