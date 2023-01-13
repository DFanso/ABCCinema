package com.abccinema.controller.admin;

import com.abccinema.service.AddNewMovie;
import com.abccinema.service.MovieUpdate;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AddNewMovieServlet", value = "/AddNewMovieServlet")
public class AddNewMovieServlet extends HttpServlet {

    private String MoiveID;
    private String MovieName;
    private String MovieDescription;
    private String BgImageURL ;
    private String CardImageURL ;
    private String trailerURL;
    private String Director;
    private String Genre;
    private String Cast;
    private String RunningTime;
    private String Date;
    private String Rating;
    private  String Language;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MoiveID = request.getParameter("MovieID");
        MovieName = request.getParameter("MovieName");
        MovieDescription = request.getParameter("MovieDescription");
        BgImageURL = request.getParameter("bgImageURL");
        CardImageURL = request.getParameter("cardImageURL");
        trailerURL = request.getParameter("MovieTrailerURL");
        Director = request.getParameter("MovieDirector");
        Genre = request.getParameter("MovieGenre");
        Cast = request.getParameter("MovieCast");
        RunningTime = request.getParameter("MovieRunningTime");
        Date = request.getParameter("MovieReleasedDate");
        Rating = request.getParameter("MovieRating");
        Language = request.getParameter("MovieLanguage");
        System.out.println(MoiveID);


        AddNewMovie addNewMovie = new AddNewMovie(request,response,MoiveID, MovieName, BgImageURL,CardImageURL,MovieDescription,  Cast, trailerURL, Director, Genre,  RunningTime,  Date,  Rating, Language);
        try {
            addNewMovie.addNewMovie();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
