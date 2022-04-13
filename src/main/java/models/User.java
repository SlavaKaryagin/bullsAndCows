package models;

public class User {
    private String email;
    private String userName;
    private String gender;
    private String country;
    private String password;

    public User(String email, String userName, String gender, String country, String password) {
        this.email = email;
        this.userName = userName;
        this.gender = gender;
        this.country = country;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public String getUserName() {
        return userName;
    }

    public String getGender() {
        return gender;
    }

    public String getCountry() {
        return country;
    }

    public String getPassword() {
        return password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setCountry(String country) {
        this.country = country;
    }

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
