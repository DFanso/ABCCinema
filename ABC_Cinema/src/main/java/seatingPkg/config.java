package seatingPkg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;

@WebServlet(name = "config", value = "/config")
public class config extends HttpServlet {
    public static String[] selectedSeats = new String[]{};
    public static String[] tempArray = new String[]{};
    public static String[] secTempArray = new String[]{};
    LocalDate myDate = LocalDate.of(2023, 01, 01);
    LocalTime myTime = LocalTime.of(12, 30, 0);
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String myVariable = request.getParameter("selectedSeat");
        secTempArray = getSeatDB.getValueFromDB(myDate,myTime).split(",");
        //get seat values from the database
        // Copy the elements of array1 to result
        String[] selectedSeats = new String[tempArray.length + secTempArray.length];
        System.arraycopy(tempArray, 0, selectedSeats, 0, tempArray.length);
        // Copy the elements of array2 to result
        System.arraycopy(secTempArray, 0, selectedSeats, tempArray.length, secTempArray.length);

        this.selectedSeats = selectedSeats;
        if (myVariable == null) {

            //pull
            //check if there's a seat change
            String seats = String.join(",", this.selectedSeats);
            String action = request.getParameter("action");
            //string to send as an array
            if (action.equals("changeClass")) {
                // Change the class of the div element
                response.getWriter().write(seats);
            }
        } else {
            //push
            tempArray = myVariable.split(",");
            System.out.println(myVariable);
            // Send the value of the variable back in the response
            response.getWriter().write(myVariable);
        }
    }
}


