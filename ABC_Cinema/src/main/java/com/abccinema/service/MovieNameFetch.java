package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MovieNameFetch {
    private HttpServletRequest request;
    private HttpServletResponse response;

    public MovieNameFetch(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;

    }




    public void nameFetch() throws ServletException, IOException, ClassNotFoundException, SQLException{
        Connection connection = DBConnection.getConnection();
        Statement stmt = null;
        stmt = connection.createStatement();
        ResultSet rs = null;

        rs = stmt.executeQuery("SELECT MovieName FROM Movies ");

        List<String> movies = new ArrayList<>();


        while (rs.next()) {
            movies.add(rs.getString("MovieName")) ;

        }
        stmt.close();

        request.setAttribute("MovieName",movies);

        String moviePage = "Dashboard-UI/new-date-form.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(moviePage);
        dispatcher.forward(request, response);

    }

}
