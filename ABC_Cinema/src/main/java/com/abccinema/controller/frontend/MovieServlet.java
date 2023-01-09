package com.abccinema.controller.frontend;

import com.abccinema.service.AdminServices;
import com.abccinema.service.MovieServices;
import jakarta.servlet.annotation.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import java.sql.*;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


import java.sql.*;

@WebServlet(name = "MovieServlet", value = "/MovieServlet")
public class MovieServlet extends HttpServlet {


    private  String MovieID;





    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        MovieID = request.getParameter("value");

        System.out.println(MovieID);


    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        System.out.println(MovieID);

        response.setContentType("text/html");

        MovieServices movieServices = new MovieServices( request, response,MovieID);
        try {
            movieServices.movieFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }







}
