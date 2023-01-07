package com.abccinema.service;

import com.abccinema.dao.AdminDAO;
import com.abccinema.entity.AdminUsers;
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
    private AdminUsers adminUsers;

    String userName;
    String password;
    boolean loginResult;


    public AdminServices(EntityManager entityManager,HttpServletRequest request, HttpServletResponse response)
    {
        this.request = request;
        this.response = response;
        adminDAO = new AdminDAO(entityManager);


    }

    public void login() throws ServletException, IOException
    {
        userName = request.getParameter("adminUsername");
        password = request.getParameter("adminPassword");
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

    public void forgotPassword() throws ServletException,IOException
    {
        userName = request.getParameter("adminUsername");
        password = request.getParameter("adminPassword");
        loginResult = adminDAO.checkUserName(userName);



        if (loginResult)
        {

            Integer UserID = adminDAO.userID(userName);
            System.out.println("User Found");



            System.out.println("userID: " + UserID);
            AdminUsers adminUsers = new AdminUsers();
            adminUsers.setUserID(UserID);
            adminUsers.setUserName(userName);
            adminUsers.setPassword(password);
            adminUsers.setIsActive(1);

            adminUsers = adminDAO.update(adminUsers);

            String message = "Password changed!";
            request.setAttribute("message",message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("forgotPassword.jsp");
            dispatcher.forward(request,response);
        }
        else {

            System.out.println("invalid User!");
            String message = "invalid user";
            request.setAttribute("message",message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("forgotPassword.jsp");
            dispatcher.forward(request,response);



        }
    }
}
