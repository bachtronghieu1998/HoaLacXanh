/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author This PC
 */
public class User {
    private int userID;
    private String name;
    private String image;
    private String email;
    private String address;
    private String phone;
    private String psw;
    public User()
    {}
    public User(int userID, String name, String image, String email, String address, String phone) {
        this.userID = userID;
        this.name = name;
        this.image = image;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }

    public User(String name, String psw) {
        this.name = name;
        this.psw = psw;
    }

    public String getPsw() {
        return psw;
    }

    public void setPsw(String psw) {
        this.psw = psw;
    }
 
    
    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    
}
