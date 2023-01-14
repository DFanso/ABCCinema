package paymentPkg;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;



public class foward {

    private HttpServletRequest request;
    private HttpServletResponse response;

    public foward(HttpServletRequest request, HttpServletResponse response) {
        this.request = request;
        this.response = response;




    }



    public void foward() throws ServletException, IOException {
        System.out.println("Foward Method");


        String success = "payment-successful.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(success);
        dispatcher.forward(request, response);


    }
}
