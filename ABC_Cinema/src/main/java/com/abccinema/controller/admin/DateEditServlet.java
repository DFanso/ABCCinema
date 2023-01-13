package com.abccinema.controller.admin;

import com.abccinema.service.DateUpdate;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DateEditServlet", value = "/DateEditServlet")
public class DateEditServlet extends HttpServlet {


    private String movieID;
    private String DateID;
    private String date;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        movieID = request.getParameter("MovieId");
        DateID = request.getParameter("DateId");
        date = request.getParameter("MovieDate");



        DateUpdate dateUpdate = new DateUpdate(request,response,movieID,DateID,date);
        try {
            dateUpdate.dateUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
