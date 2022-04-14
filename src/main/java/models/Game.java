package models;

public class Game {
    private String email;
    private Integer number;
    private Integer attempts;
    private String status;

    public Game(String email, Integer number, Integer attempts, String status) {
        this.email = email;
        this.number = number;
        this.attempts = attempts;
        this.status = status;
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

    public String getStatus() {
        return status;
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

    public void setStatus(String status) {
        this.status = status;
    }

    @Override public String toString() {
        return "Game{" +
                "email='" + email + '\'' +
                ", number=" + number +
                ", attempts=" + attempts +
                '}';
    }
}
