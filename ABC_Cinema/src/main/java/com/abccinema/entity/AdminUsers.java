package com.abccinema.entity;
import javax.naming.Name;
import javax.persistence.*;


@Entity
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




