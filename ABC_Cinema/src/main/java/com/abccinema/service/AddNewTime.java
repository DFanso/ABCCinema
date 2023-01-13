package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

public class AddNewTime {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieName;
    private String Date;
    private String time;
    private String MovieID;
    private String Seat = "0";

    public AddNewTime(HttpServletRequest request, HttpServletResponse response, String movieName, String date,String Time) {
        this.request = request;
        this.response = response;
        MovieName = movieName;
        Date = date;
        time = Time;
    }



    public void addNewTime() throws SQLException, ServletException, IOException {


        System.out.println("MovieEdit "+MovieName);
        Connection connection = DBConnection.getConnection();

        Statement stmt = null;

        stmt = connection.createStatement();

        ResultSet rs = null;



        rs = stmt.executeQuery("SELECT MovieId FROM Movies where MovieName='"+MovieName+"'");

        while (rs.next()) {

            MovieID = rs.getString("MovieId");
        }
        rs.close();
        stmt.close();


        String insertQuery = "INSERT INTO showTime (movieID,date,time,seats) VALUES (?, ?, ?,?)";


        PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);

        preparedStatement.setString(1, MovieID);
        preparedStatement.setString(2, Date);
        preparedStatement.setString(3, time);
        preparedStatement.setString(4, Seat);
        preparedStatement.executeUpdate();
        preparedStatement.close();

        String message = "Added Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/new-time-form.jsp");
        dispatcher.forward(request,response);











    }
}
