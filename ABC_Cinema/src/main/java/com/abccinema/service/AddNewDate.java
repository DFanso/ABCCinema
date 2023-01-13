package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

public class AddNewDate {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieName;
    private String Date;

    private String MovieID;

    public AddNewDate(HttpServletRequest request, HttpServletResponse response, String movieName, String date) {
        this.request = request;
        this.response = response;
        MovieName = movieName;
        Date = date;
    }



    public void addNewDate() throws SQLException, ServletException, IOException {


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


        String insertQuery = "INSERT INTO movieDate (movieID, movieName, date) VALUES (?, ?, ?)";


        PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);

        preparedStatement.setString(1, MovieID);
        preparedStatement.setString(2, MovieName);
        preparedStatement.setString(3, Date);
        preparedStatement.executeUpdate();
        preparedStatement.close();

        String message = "Added Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/new-date-form.jsp");
        dispatcher.forward(request,response);











    }
}
