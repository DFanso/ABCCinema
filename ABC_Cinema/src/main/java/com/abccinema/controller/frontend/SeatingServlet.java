//package com.abccinema.controller.frontend;
//
//import com.abccinema.service.SeatingServices;
//import jakarta.servlet.*;
//import jakarta.servlet.http.*;
//import jakarta.servlet.annotation.*;
//import java.io.IOException;
//import java.sql.SQLException;
//
//
//@WebServlet(name = "SeatingServlet", value = "/SeatingServlet")
//public class SeatingServlet extends HttpServlet {
//
//
//    private String MovieID;
//
//
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        response.setContentType("text/html");
//        MovieID = request.getParameter("value");
//
//        System.out.println(MovieID);
//
//
//
//
//    }
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//
//
//        response.setContentType("text/html");
//
//
//        System.out.println(MovieID);
//
//        SeatingServices seatingServices = new SeatingServices(request,response,MovieID);
//        try {
//            seatingServices.SeatDataFetech();
//        } catch (ClassNotFoundException e) {
//            throw new RuntimeException(e);
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }
//
//    }
//}

package com.abccinema.controller.frontend;

import com.abccinema.service.SeatingServices;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "SeatingServlet", value = "/SeatingServlet")
public class SeatingServlet extends HttpServlet {


    private String MovieID;



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        MovieID = request.getParameter("value");

        System.out.println(MovieID);




    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        response.setContentType("text/html");


        System.out.println(MovieID);

        SeatingServices seatingServices = new SeatingServices(request,response,MovieID);
        try {
            seatingServices.SeatDataFetech();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
