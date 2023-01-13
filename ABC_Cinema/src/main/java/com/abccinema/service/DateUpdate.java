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

public class DateUpdate {
    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieID;
    private String DateID;
    private String Date;

    public DateUpdate(HttpServletRequest request, HttpServletResponse response, String movieID, String dateID, String date) {
        this.request = request;
        this.response = response;
        MovieID = movieID;
        DateID =dateID;
        Date = date;


    }



    public void dateUpdate() throws SQLException, ServletException, IOException {

        System.out.println(MovieID);
        System.out.println(DateID);
        System.out.println(Date);


        Connection connection = DBConnection.getConnection();
        Statement statement = connection.createStatement();

        String updateMovieDate = "UPDATE movieDate SET date = '" + Date + "' WHERE movieID = '" + MovieID + "' AND id='"+DateID+"'";
        statement.executeUpdate(updateMovieDate);

        String message = "Updated Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/DateNTime-Form.jsp");
        dispatcher.forward(request,response);


    }

}
