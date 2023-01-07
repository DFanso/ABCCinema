package com.abccinema.controller.admin;

import com.abccinema.BaseServlet;
import com.abccinema.service.AdminServices;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "AdminForgotPasswordServlet", value = "/AdminForgotPasswordServlet")
public class AdminForgotPasswordServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AdminServices adminServices = new AdminServices(entityManager, request, response);

        adminServices.forgotPassword();

    }
}
