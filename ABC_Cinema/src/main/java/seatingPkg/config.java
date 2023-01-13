package seatingPkg;

import com.abccinema.DBConnection;
import com.abccinema.service.SeatingServices;
import com.abccinema.service.bookingData;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.net.http.HttpClient;
import java.net.http.HttpResponse;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Arrays;

@WebServlet(name = "config", value = "/config")
public class config extends HttpServlet {
    public static String[] selectedSeats = new String[]{};
    public static String[] tempArray = new String[]{};
    public static String[] secTempArray = new String[]{};
    private String SelectedSeats = "abc";
    private String dataFromDB = "abc";
    private String movieName;
    private String date;
    private String time;
    private String movieBgImageURL;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SelectedSeats = request.getParameter("selectedSeat");
        dataFromDB = request.getParameter("dataFromDB");
        movieName= request.getParameter("movieName");
        date = request.getParameter("date");
        time = request.getParameter("time");
        System.out.println("help" + SelectedSeats);
        System.out.println(dataFromDB);
        System.out.println("date"+date);
        System.out.println("movieName"+movieName);




//        bookingData bookingdata = new bookingData(request,response, date, time, movieName,SelectedSeats,dataFromDB);
//        try {
//            bookingdata.bookingData();
//        } catch (SQLException | IOException e) {
//            throw new RuntimeException(e);
//        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        bookingData bookingdata = new bookingData(req,resp, date, time, movieName,SelectedSeats,dataFromDB,movieBgImageURL);
        try {
            bookingdata.bookingData();
        } catch (
                SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
