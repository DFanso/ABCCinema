package com.abccinema.entity;
import jdk.jfr.Name;

import javax.persistence.*;



@Entity
@NamedQueries({
        @NamedQuery(name = "AdminUsers.findAll", query = "SELECT u FROM AdminUsers u"),
        @NamedQuery(name ="AdminUsers.CountAll", query = "select count (*) from AdminUsers u"),
        @NamedQuery(name="AdminUsers.checkLogin",query = "select u from AdminUsers u where UserName =:userName and Password =:password"),
        @NamedQuery(name="AdminUsers.checkUserName",query = "select u from AdminUsers u where UserName =:userName"),
        @NamedQuery(name="AdminUsers.getIdFromUserName",query = "select userID from AdminUsers u where UserName =:userName")

})
public class AdminUsers {
    private Integer UserID;
    private String UserName;
    private String Password;
    private Integer isActive;

    @Column
    @Id
    @GeneratedValue(strategy =  GenerationType.IDENTITY)
    public Integer getUserID() {
        return UserID;
    }

    public void setUserID(Integer userID) {
        UserID = userID;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) {
        UserName = userName;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public Integer getIsActive() {
        return isActive;
    }

    public void setIsActive(Integer isActive) {
        this.isActive = isActive;
    }
}




