package com.abccinema.controller.frontend;

import com.abccinema.DBConnection;
import com.abccinema.service.MovieServices;
import com.abccinema.service.SeatingServices;
import com.abccinema.service.SeatingTimeServices;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TimeChangeServlet", value = "/TimeChangeServlet")
public class TimeChangeServlet extends HttpServlet {

    private String date;
    private String movieID;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SeatingTimeServices seatingTimeServices = new  SeatingTimeServices(request,response,date,movieID);
        try {
            seatingTimeServices.timeFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        date = request.getParameter("date");
        movieID =request.getParameter("MovieID");

        System.out.println(date);
        System.out.println(movieID);
        SeatingTimeServices seatingTimeServices = new  SeatingTimeServices(request,response,date,movieID);
        try {
            seatingTimeServices.timeFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
