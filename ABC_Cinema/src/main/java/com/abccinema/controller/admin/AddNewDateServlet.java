package com.abccinema.controller.admin;

import com.abccinema.service.AddNewDate;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "AddNewDateServlet", value = "/AddNewDateServlet")
public class AddNewDateServlet extends HttpServlet {

    private String MovieName;
    private String Date;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AddNewDate addNewDate = new AddNewDate(request,response,MovieName,Date);
        try {
            addNewDate.addNewDate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MovieName  = request.getParameter("dropDownValueDate");
        Date = request.getParameter("Date");

        System.out.println(MovieName);
        System.out.println(Date);



    }
}
