package www.vion.user;

public class User {
    String username;
    String password;
    public User(){

    }
    User(String username,String password){

    }
    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
}
