package com.abccinema.service;

import com.abccinema.DBConnection;
import com.google.gson.Gson;
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


public class SeatingTimeServices {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String date;
    private String movieID;


    public SeatingTimeServices(HttpServletRequest request, HttpServletResponse response, String Date,String MovieID) {
        this.request = request;
        this.response = response;
        date = Date;
        movieID = MovieID;
    }

    public void timeFetch () throws ServletException, IOException, ClassNotFoundException, SQLException
    {

        System.out.println("Date is: "+date);

        Connection connection = DBConnection.getConnection();
        Statement seatStatement = null;
        seatStatement = connection.createStatement();
        ResultSet rs = null;
        ResultSet Time= null;



        seatStatement.executeQuery("SELECT time FROM showTime where date='"+date+"' AND movieID='"+movieID+"'");


        List<String> times = new ArrayList<>();


        while (Time.next()) {
            times.add(Time.getString("time")) ;

        }

        Time.close();
        seatStatement.close();

        for (int i = 0; i < times.size(); i++) {
            System.out.println(times.get(i));
        }


        response.setContentType("application/json");
        response.getWriter().write(new Gson().toJson(times));

    }
}
