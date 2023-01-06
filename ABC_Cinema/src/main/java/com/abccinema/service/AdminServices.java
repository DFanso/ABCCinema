package com.abccinema.service;

import com.abccinema.dao.AdminDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.persistence.EntityManager;
import java.io.IOException;

public class AdminServices {

    private EntityManager entityManager;
    private AdminDAO adminDAO;
    private HttpServletRequest request;
    private HttpServletResponse response;


    public AdminServices(EntityManager entityManager,HttpServletRequest request, HttpServletResponse response)
    {
        this.request = request;
        this.response = response;
        adminDAO = new AdminDAO(entityManager);

    }

    public void login() throws ServletException, IOException
    {
        String userName = request.getParameter("adminUsername");
        String password = request.getParameter("adminPassword");
        boolean loginResult = adminDAO.checkLogin(userName,password);
        if (loginResult)
        {
            System.out.println("User is authenticated");
            request.getSession().setAttribute("adminUsername",userName);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/AdminDashboardServlet");
            dispatcher.forward(request,response);
        }
        else {

            System.out.println("login failed");
            String message = "invalid login!";
            request.setAttribute("message",message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminPage.jsp");
            dispatcher.forward(request,response);



        }
    }



}
