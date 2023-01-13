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

public class DateFetch {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String date;
    private String movieID;
    private String movieName;


    public DateFetch(HttpServletRequest request, HttpServletResponse response, String MovieName) {
        this.request = request;
        this.response = response;
        movieName = MovieName;
    }

    public void dateFetch () throws ServletException, IOException, ClassNotFoundException, SQLException
    {

        System.out.println("Name: "+movieName);

        Connection connection = DBConnection.getConnection();
        Statement seatStatement = null;
        seatStatement = connection.createStatement();
        ResultSet rs = null;
        ResultSet Date= null;



        Date = seatStatement.executeQuery("SELECT date FROM movieDate where movieName='"+movieName+"'");


        List<String> dates = new ArrayList<>();


        while (Date.next()) {
            dates.add(Date.getString("date")) ;

        }

        Date.close();
        seatStatement.close();

        for (int i = 0; i < dates.size(); i++) {
            System.out.println(dates.get(i));
        }


        response.setContentType("application/json");
        response.getWriter().write(new Gson().toJson(dates));
}
}
