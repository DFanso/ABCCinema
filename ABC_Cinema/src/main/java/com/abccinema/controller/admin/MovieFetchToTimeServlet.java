package com.abccinema.controller.admin;

import com.abccinema.service.MovieNameFetchToTime;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "MovieFetchToTimeServlet", value = "/MovieFetchToTimeServlet")
public class MovieFetchToTimeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MovieNameFetchToTime movieNameFetchToTime = new MovieNameFetchToTime(request,response);
        try {
            movieNameFetchToTime.movieNameFetchToTime();
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
