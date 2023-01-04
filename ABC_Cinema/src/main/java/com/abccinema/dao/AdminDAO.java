package com.abccinema.dao;

import com.abccinema.entity.AdminUsers;

import javax.persistence.EntityManager;
import java.util.List;

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
        return null;
    }

    @Override
    public long count() {
        return 0;
    }
}
