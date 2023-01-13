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

public class TImeUpdate {


    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieID;
    private String TimeID;
    private String Time;


    public TImeUpdate(HttpServletRequest request, HttpServletResponse response, String timeID, String time) {
        this.request = request;
        this.response = response;
        TimeID =timeID;
        Time = time;


    }



    public void tImeUpdate() throws SQLException, ServletException, IOException {


        System.out.println(TimeID);
        System.out.println(Time);


        Connection connection = DBConnection.getConnection();
        Statement statement = connection.createStatement();

        String updateMovieDate = "UPDATE showTime SET time = '" + Time + "' WHERE id = '" + TimeID +"'";
        statement.executeUpdate(updateMovieDate);

        String message = "Updated Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/Time-Form.jsp");
        dispatcher.forward(request,response);


    }

}
