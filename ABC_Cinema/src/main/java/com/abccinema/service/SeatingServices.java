package com.abccinema.service;

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



    public SeatingServices(HttpServletRequest request, HttpServletResponse response, String movieID) {
        this.request = request;
        this.response = response;
        MovieID = movieID;



    }

    public void SeatDataFetech () throws ServletException, IOException, ClassNotFoundException, SQLException
    {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection conn = null;
        conn = DriverManager.getConnection("jdbc:sqlserver://fanso.database.windows.net:1433;database=ABCCinema", "dfanso@fanso", "123@NSBM");
        Statement stmt = null;
        stmt = conn.createStatement();
        ResultSet rs = null;

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
        conn.close();

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

        String moviePage = "seatingpage.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(moviePage);
        dispatcher.forward(request, response);
    }



}
