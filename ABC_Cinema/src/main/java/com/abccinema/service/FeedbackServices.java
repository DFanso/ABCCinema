package com.abccinema.service;

import com.abccinema.DBConnection;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class FeedbackServices {

    private HttpServletRequest request;
    private HttpServletResponse response;
    private EntityManager entityManager;

    private String FirstName;
    private String LastName;
    private String Email;
    private String Description;
    private String sucusessMessage;



    public FeedbackServices(HttpServletRequest request, HttpServletResponse response, String firstName,String lastName,String email, String description) {
        this.request = request;
        this.response = response;
        FirstName = firstName;
        LastName = lastName;
        Email = email;
        Description = description;



    }
    public void sendEmail () throws ServletException, IOException, ClassNotFoundException, SQLException {

        System.out.println("HI this is sendEmailMethod");
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp-relay.sendinblue.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");


        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("leogavin123@gmail.com", "av4dAVFXjI2OsfWx");
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Email));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse("abccinema724@gmail.com"));
            message.setSubject("New Feedback from " + FirstName + " " + LastName);
            message.setText(Description);

            Transport.send(message);

            System.out.println("Email sent successfully");
            addToDB();
            sucusessMessage = "Your Feedback Recorded";
            request.setAttribute("message", sucusessMessage);
            String contactPage = "contact.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(contactPage);
            dispatcher.forward(request, response);

        } catch (MessagingException e) {

            sucusessMessage = "Your Feedback Recorded failed to record";
            request.setAttribute("message", sucusessMessage);
            String contactPage = "contact.jsp";
            RequestDispatcher dispatcher = request.getRequestDispatcher(contactPage);
            dispatcher.forward(request, response);

            throw new RuntimeException(e);
        }


    }
    public void addToDB() throws ServletException, IOException, ClassNotFoundException, SQLException

    {
        Connection connection = DBConnection.getConnection();
        Statement createStatement = connection.createStatement();
        createStatement.executeUpdate("insert into feedbacks (FirstName,LastName,Description) VALUEs('"+FirstName+"','"+LastName+"','"+Description+"');");
        createStatement.close();

    }

}
