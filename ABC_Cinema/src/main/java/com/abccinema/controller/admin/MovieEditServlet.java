package com.abccinema.controller.admin;



import com.abccinema.service.MovieUpdate;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import javax.servlet.ServletException;



import javax.servlet.http.Part;


@WebServlet(name = "/MovieEditServlet", value = "/MovieEditServlet")

public class MovieEditServlet extends HttpServlet {



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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {





        System.out.println("HI");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
       System.out.println("HI");

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


        MovieUpdate movieUpdate = new MovieUpdate(request,response,MoiveID,MovieName, BgImageURL,CardImageURL,MovieDescription,  Cast, trailerURL, Director, Genre,  RunningTime,  Date,  Rating, Language);
        try {
            movieUpdate.movieUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}







