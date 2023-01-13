package com.abccinema.controller.admin;

import com.abccinema.service.TImeUpdate;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "TimeEditServlet", value = "/TimeEditServlet")
public class TimeEditServlet extends HttpServlet {

    private String TimeID;
    private String Time;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Time = request.getParameter("MovieTime");
        TimeID = request.getParameter("TimeId");
         TImeUpdate  tImeUpdate  = new TImeUpdate(request, response,TimeID, Time);
        try {
            tImeUpdate.tImeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
