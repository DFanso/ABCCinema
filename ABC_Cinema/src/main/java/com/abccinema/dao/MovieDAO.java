package com.abccinema.dao;


import com.abccinema.entity.Movies;

import javax.persistence.EntityManager;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MovieDAO extends JpaDAO<Movies> implements GenericDAO<Movies> {

    public MovieDAO(EntityManager entityManager) {
        super(entityManager);
    }

    @Override
    public Movies get(Object id) {
        return null;
    }

    @Override
    public void delete(Object id) {

    }

    @Override
    public List<Movies> listAll() {
        return null;
    }




    @Override
    public long count() {
        return 0;
    }






}
