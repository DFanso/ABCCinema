package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

public class MovieUpdate {

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


    public MovieUpdate(HttpServletRequest request, HttpServletResponse response, String movieID,String movieName,  String bgImageURL,String cardImageURL,String movieDescription,String cast,String trailerURL,String director,String genre, String runningTime, String date, String rating, String language) {
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



    public void movieUpdate() throws SQLException, ServletException, IOException {

        System.out.println("HI"+MovieID);

        System.out.println(MovieName);
        System.out.println("Movie Description: " + MovieDescription);
        System.out.println("Background Image URL: " + BgImageURL);
        System.out.println("Card Image URL: " + CardImageURL);
        System.out.println("Trailer URL: " + TrailerURL);
        System.out.println("Director: " + Director);
        System.out.println("Genre: " + Genre);
        System.out.println("Cast: " + Cast);
        System.out.println("Running Time: " + RunningTime);
        System.out.println("Date: " + Date);
        System.out.println("Rating: " + Rating);
        System.out.println("Language: " + Language);




        Connection connection = DBConnection.getConnection();
        Statement statement = connection.createStatement();

        String updateMovieDate = "UPDATE movieDate SET movieName = '" + MovieName + "' WHERE movieID = '" + MovieID + "'";
        String updateMovies = "UPDATE Movies SET movieName = '" + MovieName + "', bgImageURL = '" + BgImageURL + "', cardImageURL = '" + CardImageURL + "', description = '" + MovieDescription + "', cast = '" + Cast + "', trailerURL = '" + TrailerURL + "', director = '" + Director + "', genre = '" + Genre + "', runningTime = '" + RunningTime + "', date = '" + Date + "', rating = '" + Rating + "', language = '" + Language + "' WHERE movieId = '" + MovieID + "'";

        statement.executeUpdate(updateMovieDate);
        statement.executeUpdate(updateMovies);


        String message = "Updated Successfully";
        request.setAttribute("message",message);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard-UI/movie-form.jsp");
        dispatcher.forward(request,response);
    }
}