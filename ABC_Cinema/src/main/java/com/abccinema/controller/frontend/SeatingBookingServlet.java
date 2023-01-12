package com.abccinema.controller.frontend;

import com.abccinema.service.bookingServices;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "SeatingBookingServlet", value = "/SeatingBookingServlet")
public class SeatingBookingServlet extends HttpServlet {

    private String MovieID;
    private String date;
    private String time;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        bookingServices bookingServices = new bookingServices(request,response,date,time,MovieID);
        try {
            bookingServices.seatsFetch();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MovieID = request.getParameter("movieID");
        date = request.getParameter("dropDownValueDate");
        time = request.getParameter("dropDownTimeValue");

        System.out.println(MovieID);
        System.out.println(date);
        System.out.println(time);

        bookingServices bookingServices = new bookingServices(request,response,date,time,MovieID);
        try {
            bookingServices.seatsFetch();
            doGet(request,response);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
