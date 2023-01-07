package com.abccinema.dao;

import com.abccinema.entity.AdminUsers;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AdminDAO extends JpaDAO<AdminUsers> implements GenericDAO<AdminUsers> {

    public AdminDAO(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public AdminUsers update(AdminUsers adminUsers) {
        return super.update(adminUsers);
    }

    @Override
    public AdminUsers get(Object UserID) {
        return super.find(AdminUsers.class,UserID);
    }



    @Override
    public void delete(Object UserID) {
        super.delete(AdminUsers.class,UserID);

    }

    @Override
    public List<AdminUsers> listAll() {
        return super.findWithNamedQuery("AdminUsers.findAll");
    }

    @Override
    public long count() {
        return super.countWithNamedQuery("AdminUsers.CountAll");
    }
    public boolean checkLogin(String userName, String password)
    {
        Map<String,Object> parameters = new HashMap<>();
        parameters.put("userName",userName);
        parameters.put("password",password);

        List<AdminUsers> adminUsersList = super.findWithNamedQuery("AdminUsers.checkLogin",parameters);
        if(adminUsersList.size() == 1)
        {
            return true;

        }
        return false;
    }
    public boolean checkUserName(String userName)
    {
        Map<String,Object> parameters = new HashMap<>();
        parameters.put("userName",userName);


        List<AdminUsers> adminUsersList = super.findWithNamedQuery("AdminUsers.checkUserName",parameters);
        if(adminUsersList.size() == 1)
        {
            return true;


        }
        return false;
    }
    public int userID(String userName)
    {
        Map<String,Object> parameters = new HashMap<>();
        parameters.put("userName",userName);

         return super.getIDByUserName("AdminUsers.getIdFromUserName", parameters);
    }

}
