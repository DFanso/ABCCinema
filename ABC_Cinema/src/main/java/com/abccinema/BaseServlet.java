package com.abccinema;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.io.IOException;

@WebServlet(name = "BaseServlet", value = "/BaseServlet")
public class BaseServlet extends HttpServlet {

    private static final long serialVersion = 1L;
    protected EntityManagerFactory entityManagerFactory;
    protected EntityManager entityManager;

    public void init() throws ServletException{

        entityManagerFactory = Persistence.createEntityManagerFactory("ABC_Cinema");
        entityManager = entityManagerFactory.createEntityManager();



    }

    public void destory()
    {
        entityManager.close();
        entityManagerFactory.close();
    }
}
