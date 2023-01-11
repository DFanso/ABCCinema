package com.abccinema.controller.frontend;

import com.abccinema.BaseServlet;
import com.abccinema.service.FeedbackServices;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "FeedbackFromServlet", value = "/FeedbackFromServlet")
public class FeedbackFromServlet extends HttpServlet {

    private String firstName;
    private String lastName;
    private String email;
    private String description;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FeedbackServices feedbackServices = new  FeedbackServices(request,response,firstName,lastName,email,description);
        try {
            feedbackServices.sendEmail();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        firstName = request.getParameter("fname");
        lastName = request.getParameter("lname");
        email = request.getParameter("email");
        description = request.getParameter("description");

        System.out.println(firstName+"\n"+lastName+"\n"+email+"\n"+description);

        FeedbackServices feedbackServices = new  FeedbackServices(request,response,firstName,lastName,email,description);
        try {
            feedbackServices.sendEmail();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }





    }
}
