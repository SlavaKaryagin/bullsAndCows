package models;

public class Game {
    private String email;
    private Integer number;
    private Integer attempts;

    public Game(String email, Integer number, Integer attempts) {
        this.email = email;
        this.number = number;
        this.attempts = attempts;
    }

    public String getEmail() {
        return email;
    }

    public Integer getNumber() {
        return number;
    }

    public Integer getAttempts() {
        return attempts;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public void setAttempts(Integer attempts) {
        this.attempts = attempts;
    }

    @Override public String toString() {
        return "Game{" +
                "email='" + email + '\'' +
                ", number=" + number +
                ", attempts=" + attempts +
                '}';
    }
}
