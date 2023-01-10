package seatingPkg;

import java.sql.*;
import java.time.LocalDate;
import java.time.LocalTime;

public class getSeatDB {

    public static String getValueFromDB(LocalDate myDate,LocalTime myTime) {
    String value = "";

    try (Connection conn = DriverManager.getConnection(
            "jdbc:sqlserver://fanso.database.windows.net:1433;database=ABCCinema", "dfanso@fanso", "123@NSBM")) {

        String sql = "SELECT seats FROM seats WHERE date ='"+myDate+"'and time ='"+myTime+"'";
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);

        if (rs.next()) {
            value = rs.getString("bookedSeats");
        }
    } catch (SQLException ex) {
        ex.printStackTrace();
    }
    return value;
}
}