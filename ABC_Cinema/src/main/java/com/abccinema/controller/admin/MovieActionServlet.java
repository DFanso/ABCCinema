package com.abccinema.controller.admin;

import com.abccinema.service.MovieDelete;
import com.abccinema.service.MovieEdit;
import com.abccinema.service.MovieUpdate;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.SQLException;



@WebServlet(name = "MovieActionServlet", urlPatterns = {"/MovieActionServlet"}, asyncSupported = true)
public class MovieActionServlet extends HttpServlet {
    private String action;
    private String ID;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        action =  request.getParameter("action");
        ID = request.getParameter("id");


        switch(action) {
            case "edit":
                System.out.println(action);
                System.out.println(ID);
                MovieEdit movieEdit = new MovieEdit(request,response,ID);
                try {
                    movieEdit.movieEdit();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }catch (IOException e)
                {
                    throw new RuntimeException(e);
                }

                break;
            case "delete":
                MovieDelete movieDelete = new MovieDelete(request,response,ID);
                try {
                    movieDelete.movieDelete();
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }catch (IOException e)
                {
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
