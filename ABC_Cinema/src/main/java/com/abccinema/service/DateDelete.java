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

public class DateDelete {

    private HttpServletRequest request;
    private HttpServletResponse response;


    private String DateID;


    public DateDelete(HttpServletRequest request, HttpServletResponse response, String dateID) {
        this.request = request;
        this.response = response;
        DateID =dateID;



    }



    public void dateDelete() throws SQLException, ServletException, IOException {


        Connection connection = DBConnection.getConnection();
        Statement statement = connection.createStatement();

        String updateMovieDate = "DELETE FROM movieDate WHERE id='"+DateID+"'";
        statement.executeUpdate(updateMovieDate);

        String message = "Delete Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/DateNTime-Form.jsp");
        dispatcher.forward(request,response);

    }



    }
