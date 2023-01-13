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

public class TimeEdit {


    private HttpServletRequest request;
    private HttpServletResponse response;


    private String TimeID;
    private String Time;




    public TimeEdit(HttpServletRequest request, HttpServletResponse response, String timeID)
    {
        this.request = request;
        this.response = response;
        TimeID = timeID;

    }

    public void TimeEdit()throws SQLException, ServletException, IOException {

        System.out.println("MovieEdit "+TimeID);
        Connection connection = DBConnection.getConnection();

        Statement stmt = null;
        stmt = connection.createStatement();
        ResultSet rs = null;




        rs = stmt.executeQuery("SELECT * From showTime where id='"+TimeID+"'");



        while (rs.next()) {


            Time =   rs.getString("time");


        }
        rs.close();
        stmt.close();


        request.setAttribute("time", Time);
        request.setAttribute("timeID",TimeID);

        String moviePage = "Dashboard-UI/Time-Form.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(moviePage);
        dispatcher.forward(request, response);


}
}
