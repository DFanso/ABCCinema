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

public class bookingData {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String Date;
    private String Time;
    private String MovieName;
    private String SelectedSeats;
    private String DataFromDB;
    private String CardImageURL;
    private String TotalPrice;

    public bookingData(HttpServletRequest request, HttpServletResponse response,String date,String time,String movieName, String selectedSeats, String dataFromDB, String cardImageURL, String totalPrice)
    {


        this.request = request;
        this.response = response;
        Date = date;
        Time = time;
        MovieName = movieName;
        SelectedSeats = selectedSeats;
        DataFromDB = dataFromDB;
        CardImageURL = cardImageURL;
        TotalPrice = totalPrice;

    }

    public void bookingData()throws SQLException, ServletException, IOException
    {

        Connection connection = DBConnection.getConnection();

        Statement stmt = null;
        stmt = connection.createStatement();
        ResultSet rs = null;




        rs = stmt.executeQuery("SELECT * FROM Movies where MovieName='"+MovieName+"'");  //add the db movie name



        while (rs.next()) {


            CardImageURL = rs.getString("CardImageURL");


        }
        rs.close();
        stmt.close();


        System.out.println("Booking Data: "+Date);
        request.setAttribute("date",Date);
        request.setAttribute("time",Time);
        request.setAttribute("movieName",MovieName);
        request.setAttribute("selectedSeats",SelectedSeats);
        request.setAttribute("dataFromDB",DataFromDB);
        request.setAttribute("movieCardImageURL",CardImageURL);
        request.setAttribute("totalPrice",TotalPrice);


        String paymentPage = "paymentPage.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(paymentPage);
        dispatcher.forward(request,response);




    }

}
