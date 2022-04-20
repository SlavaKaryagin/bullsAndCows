package models;

/**
 * Класс сущности User. В БД представлен таблицей USER_ACCOUNT
 */
public class User {
    private String email;
    private String userName;
    private String gender;
    private String country;
    private String password;

    /**
     * Конструктор со всеми возможными параметрами
     *
     * @param email
     * @param userName
     * @param gender
     * @param country
     * @param password
     */
    public User(String email, String userName, String gender, String country, String password) {
        this.email = email;
        this.userName = userName;
        this.gender = gender;
        this.country = country;
        this.password = password;
    }

    /**
     * Метод получения электронной почты
     *
     * @return
     */
    public String getEmail() {
        return email;
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
     * Метод получения гендера
     *
     * @return
     */
    public String getGender() {
        return gender;
    }

    /**
     * Метод получения страны
     *
     * @return
     */
    public String getCountry() {
        return country;
    }

    /**
     * Метод получения пароля
     *
     * @return
     */
    public String getPassword() {
        return password;
    }

    /**
     * Метод изменения электронной почты
     *
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
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
     * Метод изменения гендера
     *
     * @param gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * Метод изменения страны
     *
     * @param country
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * Метод изменения пароля
     *
     * @param password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    @Override public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", userName='" + userName + '\'' +
                ", gender='" + gender + '\'' +
                ", country='" + country + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
