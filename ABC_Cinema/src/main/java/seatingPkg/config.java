package seatingPkg;

import com.abccinema.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
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
    private String myVariable="abc";
    private String dataFromDB="abc";
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        myVariable = request.getParameter("selectedSeat");
        dataFromDB = request.getParameter("dataFromDB");
        System.out.println("help"+myVariable);
        System.out.println(dataFromDB);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
