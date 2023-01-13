package paymentPkg;

import com.abccinema.DBConnection;
import com.abccinema.service.MovieServices;
import com.abccinema.service.bookingData;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;


@WebServlet(name = "paymentServlet", value = "/paymentServlet")
public class paymentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String[] tempArray;
        String[] secTempArray ;
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String NIC = request.getParameter("NIC");
        String selectedSeats = request.getParameter("selectedSeats");
        String dataFromDB = request.getParameter("dataFromDB");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String movieName = request.getParameter("movieName");
        String transID = request.getParameter("transID");

        System.out.println("seat: "+selectedSeats);
        System.out.println("seat2: "+movieName);
        System.out.println("sea3: "+NIC);

        if (selectedSeats != null) {
            String insertQuery = "INSERT INTO transactionHistory (customerName,customerEmail,customerPhone,customerNIC,payPalTransactionID,movieName,date,time,selectedSeats) VALUES (?,?,?,?,?,?,?,?,?)";

            Connection connection = DBConnection.getConnection();
            PreparedStatement preparedStatement = null;

            try {
                preparedStatement = connection.prepareStatement(insertQuery);
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, email);
                preparedStatement.setString(3, phone);
                preparedStatement.setString(4, NIC);
                preparedStatement.setString(5, transID);
                preparedStatement.setString(6, movieName);
                preparedStatement.setString(7, date);
                preparedStatement.setString(8, time);
                preparedStatement.setString(9, selectedSeats);
                preparedStatement.executeUpdate();
                preparedStatement.close();
                String message = "Added Successfully";
                System.out.println(message);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }



            try {
                String query = "SELECT MovieID FROM Movies WHERE movieName='"+movieName+"'";
                PreparedStatement statement = connection.prepareStatement(query);
                ResultSet results = statement.executeQuery();
                while (results.next()) {
                    int movieID = results.getInt("movieID");
                    System.out.println("Movie ID: " + movieID + "");
                }
            } catch (SQLException e) {
                System.out.println("An error occurred while retrieving movie information: " + e.getMessage());
            }

            tempArray=selectedSeats.split(",");
            secTempArray=dataFromDB.split(",");

            int length = tempArray.length + secTempArray.length;
            String[] result = new String[length];

            System.arraycopy(tempArray, 0, result, 0, tempArray.length);
            System.arraycopy(secTempArray, 0, result, tempArray.length, secTempArray.length);
            Arrays.sort(result);

            String DatatoDB=String.join(",",result);
            System.out.println(DatatoDB);

            try  {
                String updateSql = "UPDATE showTime SET seats = '"+DatatoDB+"' WHERE movieID = movieID AND date = '"+date+"' AND time = '"+time+"'";
                PreparedStatement stmt = connection.prepareStatement(updateSql);
                System.out.println("success");

                stmt.executeUpdate();
            } catch (SQLException e) {
                System.out.println("Error updating seats: " + e.getMessage());
            }

        }


    }

}
