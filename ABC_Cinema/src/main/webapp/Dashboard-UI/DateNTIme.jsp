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
    <title>User Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
            <li><a href="../dashboard.jsp" class="nav-link">Movies</a></li>
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
        <h3 class="text-center">List of Date</h3>
        <hr>
        <div class="container text-left">

            <a href="../MovieFetchToNewADDServlet" class="btn btn-success">Add
                New Date</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr style="color: white">
                <th>ID</th>
                <th>Movie ID</th>
                <th>Movie Name</th>
                <th>Date</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <!--   for (Todo todo: todos) {  -->

            <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                               url="jdbc:sqlserver://fanso.database.windows.net:1433;database=ABCCinema"
                               user="dfanso@fanso"  password="123@NSBM"/>

            <sql:query dataSource="${snapshot}" var="date">
                SELECT TOP (1000) [id]
                ,[movieID]
                ,[movieName]
                ,[date]
                FROM [dbo].[movieDate]
            </sql:query>

            <c:forEach var="row" items="${date.rows}">
            <tr style="color: white">
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.movieID}"/></td>
                <td><c:out value="${row.movieName}"/></td>
                <td><c:out value="${row.date}"/></td>
                <td><a href="../DateActionServlet?action=edit&id=<c:out value="${row.id}"/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="../DateActionServlet?action=delete&id=<c:out value="${row.id}"/>">Delete</a></td>
            </tr>

            </c:forEach>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>
<br>
<div class="row">
    <div class="container">
        <h3 class="text-center">List of Time</h3>
        <hr>
        <div class="container text-left">

            <a href="../MovieFetchToTimeServlet" class="btn btn-success">Add
                New Time</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr style="color: white">
                <th>ID</th>
                <th>Movie ID</th>
                <th>Date</th>
                <th>Time</th>
                <th>Seats</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <!--   for (Todo todo: todos) {  -->

            <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                               url="jdbc:sqlserver://fanso.database.windows.net:1433;database=ABCCinema"
                               user="dfanso@fanso"  password="123@NSBM"/>

            <sql:query dataSource="${snapshot}" var="time">
                SELECT TOP (1000) [id]
                ,[movieID]
                ,[date]
                ,[date]
                ,[time]
                ,[seats]
                FROM [dbo].[showTime]
            </sql:query>


            <c:forEach var="row" items="${time.rows}">

            <tr style="color: white">
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.movieID}"/></td>
                <th><c:out value="${row.date}"/></th>
                <th><c:out value="${row.time}"/></th>
                <th><c:out value="${row.seats}"/></th>
                <td><a href="../TimeActionServlet?action=edit&id=<c:out value="${row.id}"/>">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="../TimeActionServlet?action=delete&id=<c:out value="${row.id}"/>">Delete</a></td>
            </tr>

            </c:forEach>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>
</body>

</html>