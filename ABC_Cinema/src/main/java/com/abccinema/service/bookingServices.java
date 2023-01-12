package com.abccinema.service;
import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Arrays;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class bookingServices {

        private HttpServletRequest request;
        private HttpServletResponse response;

        private String MovieID;
        private String Date;
        private String Time;
        private String myVariable;
        private String value;
        private String tempVar;

    private String MovieName;
    private String   MovieDescription;
    private String   bgImageURL ;
    private String cardImageURL ;
    private String trailerURL;
    private String Director;
    private String Genre;
    private String Cast;
    private String RunningTime;
    private String RDate;
    private String Rating;
    private  String Language;

        private boolean paymentStatus;
        public String[] selectedSeats = new String[]{};
        public String[] tempArray = new String[]{};
        public  String[] secTempArray = new String[]{};


        public bookingServices(HttpServletRequest request, HttpServletResponse response, String date, String time, String movieID) {
            this.request = request;
            this.response = response;
            MovieID = movieID;
            Date = date;
            Time = time;



        }

        public void seatsFetch() throws ServletException, IOException, ClassNotFoundException, SQLException {

            Connection conn = DBConnection.getConnection();

            Statement movie = null;
            movie = conn.createStatement();


            ResultSet MovieData = null;

            MovieData = movie.executeQuery("SELECT * FROM Movies where MovieId='"+MovieID+"'");



            while (MovieData.next()) {

                MovieName = MovieData.getString("MovieName");
                MovieDescription = MovieData.getString("Description");
                bgImageURL = MovieData.getString("BgImageURL");
                cardImageURL = MovieData.getString("CardImageURL");
                trailerURL = MovieData.getString("TrailerURL");
                Director = MovieData.getString("Director");
                Genre = MovieData.getString("Genre");
                Cast = MovieData.getString("Cast");
                RunningTime = MovieData.getString("RunningTime");
                RDate = MovieData.getString("Date");
                Rating = MovieData.getString("Rating");
                Language = MovieData.getString("Language");

            }
            MovieData.close();
            movie.close();

            System.out.printf(Date);

            if (myVariable == null) {
                value = "";
                String sql = "SELECT seats FROM showTime WHERE date ='" + Date + "'and time ='" + Time + "' and movieID ='" + MovieID + "'";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);

                if (rs.next()) {
                    value = rs.getString("seats");
                }
                tempArray = value.split(",");
                Arrays.sort(tempArray);

                tempVar = String.join(",", tempArray);
                System.out.println("aaa"+tempVar);



                request.setAttribute("bookedSeats",tempVar);
                request.setAttribute("date",Date);
                request.setAttribute("time",Time);
                request.setAttribute("bgImageURL",bgImageURL);
                request.setAttribute("MovieName",MovieName);

                String seatingPage = "seatingpage.jsp";
                RequestDispatcher dispatcher = request.getRequestDispatcher(seatingPage);
                dispatcher.forward(request,response);


            } else if (paymentStatus = true) {
                System.out.println("accc"+tempVar);
                secTempArray = myVariable.split(",");

                // Copy the elements of array1 to result

                // Copy the elements of array2 to result
                System.arraycopy(secTempArray, 0, selectedSeats, tempArray.length, secTempArray.length);
                Arrays.sort(selectedSeats);
                myVariable = String.join(",", selectedSeats);


                String sql = "UPDATE showTime SET steats = myVariable, WHERE date ='" + Date + "'and time ='" + Time + "' and movieID ='" + MovieID + "'";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
            }
            System.out.println("abb"+tempVar);






        }


    }



