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

public class DateEdit {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String DateID;

    private String MovieName;
    private  String MovieID;
    private String Date;

    public DateEdit(HttpServletRequest request, HttpServletResponse response, String dateID)
    {
        this.request = request;
        this.response = response;
        DateID = dateID;


    }

    public void dateEdit()throws SQLException, ServletException, IOException{

        System.out.println("MovieEdit "+DateID);
        Connection connection = DBConnection.getConnection();

        Statement stmt = null;
        stmt = connection.createStatement();
        ResultSet rs = null;




        rs = stmt.executeQuery("SELECT * From movieDate where id='"+DateID+"'");



        while (rs.next()) {


            MovieID =   rs.getString("movieID");
            MovieName =   rs.getString("movieName");
            Date = rs.getString("date");



        }
        rs.close();
        stmt.close();


        request.setAttribute("MovieName", MovieName);
        request.setAttribute("movieID",MovieID);
        request.setAttribute("Date", Date);
        request.setAttribute("DateID",DateID);



        String moviePage = "Dashboard-UI/DateNTime-Form.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(moviePage);
        dispatcher.forward(request, response);





    }
}


