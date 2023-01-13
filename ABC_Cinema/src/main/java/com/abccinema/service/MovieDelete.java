package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class MovieDelete {
    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieID;


    public MovieDelete(HttpServletRequest request, HttpServletResponse response, String movieID)
    {
        this.request = request;
        this.response = response;
        MovieID = movieID;


    }

    public void movieDelete()throws SQLException, ServletException, IOException
    {
        System.out.println("HI"+MovieID);


        Connection connection = DBConnection.getConnection();
        Statement statement = connection.createStatement();

        statement.executeUpdate("DELETE FROM movieDate WHERE movieID = '"+MovieID+"'");
        statement.executeUpdate("DELETE FROM showTime WHERE movieID = '"+MovieID+"'");
        statement.executeUpdate("DELETE FROM Movies WHERE MovieId = '"+MovieID+"'");


        String message = "Delete Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/movie-form.jsp");
        dispatcher.forward(request,response);

    }
}
