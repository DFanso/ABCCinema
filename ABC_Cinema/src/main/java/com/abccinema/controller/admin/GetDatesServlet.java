package com.abccinema.controller.admin;

import com.abccinema.service.DateFetch;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "GetDatesServlet", value = "/GetDatesServlet")
public class GetDatesServlet extends HttpServlet {

    private String movieName;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        movieName = request.getParameter("movie");
//        System.out.println(movieName);

        DateFetch dateFetch = new DateFetch(request,response,movieName);
        try {
            dateFetch.dateFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        movieName = request.getParameter("movie");
        System.out.println(movieName);

        DateFetch dateFetch = new DateFetch(request,response,movieName);
        try {
            dateFetch.dateFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
