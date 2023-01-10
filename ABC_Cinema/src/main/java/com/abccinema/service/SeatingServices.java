package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import com.abccinema.dao.MovieDAO;
import com.abccinema.entity.Movies;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.persistence.EntityManager;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;




public class SeatingServices {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieID;

    private String MovieName;
    private String   MovieDescription;
    private String   bgImageURL ;
    private String cardImageURL ;
    private String trailerURL;
    private String Director;
    private String Genre;
    private String Cast;
    private String RunningTime;
    private String Date;
    private String Rating;
    private  String Language;

    private String ShowingDates;




    public SeatingServices(HttpServletRequest request, HttpServletResponse response, String movieID) {
        this.request = request;
        this.response = response;
        MovieID = movieID;



    }

    public void SeatDataFetech () throws ServletException, IOException, ClassNotFoundException, SQLException
    {
        Connection connection = DBConnection.getConnection();

        Statement stmt = null;
        Statement seatStatement = null;
        stmt = connection.createStatement();
        seatStatement = connection.createStatement();
        ResultSet rs = null;
        ResultSet seat= null;

        String id = MovieID;
        System.out.println("ID: "+MovieID);


        rs = stmt.executeQuery("SELECT * FROM Movies where MovieId='"+MovieID+"'");



        while (rs.next()) {

            MovieName = rs.getString("MovieName");
            MovieDescription = rs.getString("Description");
            bgImageURL = rs.getString("BgImageURL");
            cardImageURL = rs.getString("CardImageURL");
            trailerURL = rs.getString("TrailerURL");
            Director = rs.getString("Director");
            Genre = rs.getString("Genre");
            Cast = rs.getString("Cast");
            RunningTime = rs.getString("RunningTime");
            Date = rs.getString("Date");
            Rating = rs.getString("Rating");
            Language = rs.getString("Language");

        }
        rs.close();
        stmt.close();

        seat = seatStatement.executeQuery("SELECT date FROM movieDate where movieID='"+MovieID+"'");


        List<String> ShowDates = new ArrayList<>();


        while (seat.next()) {
            ShowDates.add(seat.getString("date")) ;

        }

        seat.close();
        seatStatement.close();

        request.setAttribute("ShowDates", ShowDates);
        request.setAttribute("MovieName", MovieName);
        request.setAttribute("MovieDescription", MovieDescription);
        request.setAttribute("bgImageURL", bgImageURL);
        request.setAttribute("cardImageURL", cardImageURL);
        request.setAttribute("trailerURL",trailerURL);
        request.setAttribute("Director",Director);
        request.setAttribute("Genre",Genre);
        request.setAttribute("Cast",Cast);
        request.setAttribute("RunningTime",RunningTime);
        request.setAttribute("Date",Date);
        request.setAttribute("Rating",Rating);
        request.setAttribute("Language",Language);
        request.setAttribute("movieID",id);


        request.setAttribute("ShowingDates",ShowingDates);

        String moviePage = "seatingpage.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(moviePage);
        dispatcher.forward(request, response);
    }











}
