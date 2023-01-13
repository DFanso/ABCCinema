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


public class MovieEdit {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private String MoiveID;

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

    public MovieEdit(HttpServletRequest request, HttpServletResponse response, String movieID) {
        this.request = request;
        this.response = response;
        MoiveID = movieID;

    }

    public void movieEdit() throws SQLException, ServletException, IOException {
        System.out.println("MovieEdit "+MoiveID);
        Connection connection = DBConnection.getConnection();

        Statement stmt = null;
        stmt = connection.createStatement();
        ResultSet rs = null;

        String id = MoiveID;


        rs = stmt.executeQuery("SELECT * FROM Movies where MovieId='"+MoiveID+"'");



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
        request.setAttribute("movieID",MoiveID);

        String moviePage = "Dashboard-UI/movie-form.jsp";
        RequestDispatcher dispatcher = request.getRequestDispatcher(moviePage);
        dispatcher.forward(request, response);


    }
}
