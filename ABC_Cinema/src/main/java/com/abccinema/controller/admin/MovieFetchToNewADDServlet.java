package com.abccinema.controller.admin;

import com.abccinema.DBConnection;
import com.abccinema.service.MovieNameFetch;
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

@WebServlet(name = "MovieFetchToNewADDServlet", value = "/MovieFetchToNewADDServlet")
public class MovieFetchToNewADDServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        MovieNameFetch movieNameFetch = new MovieNameFetch(request,response);
        try {
            movieNameFetch.nameFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
