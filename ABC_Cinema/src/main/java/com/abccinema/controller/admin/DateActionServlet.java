package com.abccinema.controller.admin;

import com.abccinema.service.DateDelete;
import com.abccinema.service.DateEdit;
import com.abccinema.service.MovieDelete;
import com.abccinema.service.MovieEdit;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "DateActionServlet", value = "/DateActionServlet")
public class DateActionServlet extends HttpServlet {

    private String action;
    private String ID;
    @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        action = request.getParameter("action");
        ID = request.getParameter("id");


        switch (action) {
            case "edit":
                System.out.println(action);
                System.out.println(ID);
                DateEdit dateEdit = new DateEdit(request, response, ID);
                try {
                    dateEdit.dateEdit();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }

                break;
            case "delete":
                System.out.println(action);
                System.out.println(ID);
                DateDelete dateDelete = new DateDelete(request,response,ID);
                try {
                    dateDelete.dateDelete();
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
