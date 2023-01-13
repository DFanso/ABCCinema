package com.abccinema.controller.admin;

import com.abccinema.service.DateDelete;
import com.abccinema.service.DateEdit;
import com.abccinema.service.TimeDelete;
import com.abccinema.service.TimeEdit;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "TimeActionServlet", value = "/TimeActionServlet")
public class TimeActionServlet extends HttpServlet {

    private String action;
    private String ID;
    private String MovieID;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        action = request.getParameter("action");
        ID = request.getParameter("id");
        MovieID = request.getParameter("movieID");



        switch (action) {
            case "edit":
                System.out.println(action);
                System.out.println(ID);
                TimeEdit timeEdit = new TimeEdit(request,response,ID);
                try {
                    timeEdit.TimeEdit();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }


                break;
            case "delete":
                System.out.println(action);
                System.out.println(ID);
                TimeDelete timeDelete = new TimeDelete(request,response,ID);
                try {
                    timeDelete.timeDelete();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }

                break;
            default:

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
