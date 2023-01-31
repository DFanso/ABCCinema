<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/11/2023
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Transaction page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css"
            rel="stylesheet"
    />
    <style>
        body{
            background: radial-gradient(circle, rgba(61,0,0,1) 18%, rgba(0,0,0,1) 68%, rgba(0,0,0,1) 100%);
            color: white;
            font-family: 'Roboto-Condensed',sans-serif;
        }
    </style>
</head>

<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: rgba(255, 255, 255, 0.26);">
        <div><a href="../index.jsp" class="navbar-brand">ABC<font color="red">CINEMA</font></a></div>

        <ul class="navbar-nav">
            <li><a href="dashboard.jsp" class="nav-link">Movies</a></li>
            <li><a class="nav-link" href="DateNTIme.jsp">Date and Time</a></li>
            <li><a class="nav-link" href="Feedback.jsp">Feedback</a></li>
            <li><a class="nav-link" href="transaction.jsp">Transaction</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">
    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

    <div class="container">
        <h3 class="text-center">List of Transaction</h3>
        <hr>
        <br>
        <div class="table-bordered text-nowrap">
            <table class="table">
                <thead>
                <tr style="color: white">
                    <th>ID</th>
                    <th>Customer Name</th>
                    <th>Customer Email</th>
                    <th>Customer Phone No</th>
                    <th>Customer NIC</th>
                    <th>PayPal Transaction ID</th>
                    <th>Movie Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Selected Seats</th>
                </tr>
                </thead>
                <tbody>
                <!--   for (Todo todo: todos) {  -->

                <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                                   url="jdbc:sqlserver://20.2.80.190:1433;database=ABCCinema;encrypt=false"
                                   user="sa"  password="123@Fanso"/>

                <sql:query dataSource="${snapshot}" var="result">
                    SELECT TOP (1000) [transactionID]
                    ,[customerName]
                    ,[customerEmail]
                    ,[customerPhone]
                    ,[customerNIC]
                    ,[payPalTransactionID]
                    ,[movieName]
                    ,[date]
                    ,[time]
                    ,[selectedSeats]
                    FROM [dbo].[transactionHistory]
                </sql:query>

                <c:forEach var="row" items="${result.rows}">
                    <tr style="color: white">
                        <td scope="row"><c:out value="${row.transactionID}"/></td>
                        <td><c:out value="${row.customerName}"/></td>
                        <td><c:out value="${row.customerEmail}"/></td>
                        <td><c:out value="${row.customerPhone}"/></td>
                        <td><c:out value="${row.customerNIC}"/></td>
                        <td><c:out value="${row.payPalTransactionID}"/></td>
                        <td><c:out value="${row.movieName}"/></td>
                        <td><c:out value="${row.date}"/></td>
                        <td><c:out value="${row.time}"/></td>
                        <td><c:out value="${row.selectedSeats}"/></td>
                    </tr>
                </c:forEach>
                <!-- } -->
                </tbody>

            </table>
        </div>
    </div>
</div>
<!-- MDB -->
<script
        type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
></script>
</body>

</html>