package com.abccinema.controller.admin;

import com.abccinema.service.AddNewDate;
import com.abccinema.service.AddNewTime;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "NewTimeADDServlet", value = "/NewTimeADDServlet")
public class NewTimeADDServlet extends HttpServlet {

    private String MovieName;
    private String Date;
    private String Time;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AddNewTime addNewDate = new AddNewTime(request,response,MovieName,Date,Time);
        try {
            addNewDate.addNewTime();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MovieName = request.getParameter("dropdownValueMovie");
        Date = request.getParameter("dropdownValueDateTime");
        Time = request.getParameter("Time");

        System.out.println("New Time Add Servlet: "+MovieName);
        System.out.println("New Time Add Servlet: "+Date);
        System.out.println("New Time Add Servlet: "+Time);

        AddNewTime addNewDate = new AddNewTime(request,response,MovieName,Date,Time);
        try {
            addNewDate.addNewTime();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
