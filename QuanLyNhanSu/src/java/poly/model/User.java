/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.model;

import java.io.Serializable;

/**
 *
 * @author home
 */
public class User implements Serializable{
    String id;
    String password;
    String fullname;

    public User() {
    }

    public User(String id, String password, String fullname) {
        this.id = id;
        this.password = password;
        this.fullname = fullname;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

   
    
}
