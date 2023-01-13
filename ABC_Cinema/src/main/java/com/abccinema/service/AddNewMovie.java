package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddNewMovie {

    private HttpServletRequest request;
    private HttpServletResponse response;

    private String MovieID;
    private String MovieName;
    private String MovieDescription;
    private String BgImageURL ;
    private String CardImageURL ;
    private String TrailerURL;
    private String Director;
    private String Genre;
    private String Cast;
    private String RunningTime;
    private String Date;
    private String Rating;
    private  String Language;

    public AddNewMovie(HttpServletRequest request, HttpServletResponse response, String movieID, String movieName, String bgImageURL, String cardImageURL, String movieDescription, String cast, String trailerURL, String director, String genre, String runningTime, String date, String rating, String language) {
        this.request = request;
        this.response = response;
        MovieID = movieID;
        MovieName = movieName;
        MovieDescription = movieDescription;
        BgImageURL = bgImageURL;
        CardImageURL =cardImageURL;
        TrailerURL = trailerURL;
        Director = director;
        Genre = genre;
        Cast = cast;
        RunningTime = runningTime;
        Date = date;
        Rating = rating;
        Language = language;

    }



    public void addNewMovie() throws SQLException, ServletException, IOException {

        String insertQuery = "INSERT INTO Movies (MovieId, MovieName, BgImageURL, CardImageURL, Description, Cast, TrailerURL, Director, Genre, RunningTime, Date, Rating, Language) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        Connection connection = DBConnection.getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);

            preparedStatement.setString(1, MovieID);
            preparedStatement.setString(2, MovieName);
            preparedStatement.setString(3, BgImageURL);
            preparedStatement.setString(4, CardImageURL);
            preparedStatement.setString(5, MovieDescription);
            preparedStatement.setString(6, Cast);
            preparedStatement.setString(7, TrailerURL);
            preparedStatement.setString(8, Director);
            preparedStatement.setString(9, Genre);
            preparedStatement.setString(10, RunningTime);
            preparedStatement.setString(11, Date);
            preparedStatement.setString(12, Rating);
            preparedStatement.setString(13, Language);
            preparedStatement.executeUpdate();
            preparedStatement.close();

            String message = "Added Successfully";
            request.setAttribute("message",message);
            RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/new-movie-form.jsp");
            dispatcher.forward(request,response);







    }

}
