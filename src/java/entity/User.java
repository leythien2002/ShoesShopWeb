/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author thien
 */
import java.io.Serializable;

public class User implements Serializable {

    private String email;
    private String name;
    private String userName;
    private String passWord;
    private int perMiss;
    private String code;

    public User() {
        email = "";
        name = "";
        userName = "";
        passWord="";
        perMiss=0;
        
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public User(String email, String name, String userName, String passWord, int perMiss, String code) {
        this.email = email;
        this.name = name;
        this.userName = userName;
        this.passWord = passWord;
        this.perMiss = perMiss;
        this.code = code;
    }

    public User(String email, String name, String username,String password, int per) {
        this.name = name;
        this.userName = username;
        this.email = email;
        this.passWord=password;
        this.perMiss=per;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String username) {
        this.userName = username;
    }
     public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String pass) {
        this.passWord = pass;
    }
    public int getPerMiss() {
        return perMiss;
    }

    public void setPerMiss(int per) {
        this.perMiss = per;
    }
}
