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

public class TimeDelete {

    private HttpServletRequest request;
    private HttpServletResponse response;


    private String TimeID;


    public TimeDelete(HttpServletRequest request, HttpServletResponse response, String timeID) {
        this.request = request;
        this.response = response;
        TimeID = timeID;



    }



    public void timeDelete() throws SQLException, ServletException, IOException {


        Connection connection = DBConnection.getConnection();
        Statement statement = connection.createStatement();

        String updateMovieDate = "DELETE FROM showTime WHERE id='"+TimeID+"'";
        statement.executeUpdate(updateMovieDate);

        String message = "Delete Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/Time-Form.jsp");
        dispatcher.forward(request,response);

    }

}
