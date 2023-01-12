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
            <li><a class="nav-link" href="#">Feedback</a></li>
            <li><a class="nav-link" href="#">Transaction</a></li>
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

            <a href="DateNTime-Form.jsp" class="btn btn-success">Add
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
            <tr style="color: white">
                <td>ID</td>
                <td>Movie ID</td>
                <td>Movie Name</td>
                <td>Date</td>
                <td><a href="#">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">Delete</a></td>
            </tr>
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

            <a href="Time-Form.jsp" class="btn btn-success">Add
                New Time</a>
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
            <tr style="color: white">
                <td>ID</td>
                <td>Movie ID</td>
                <td>Movie Name</td>
                <td>Date</td>
                <td><a href="#">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="#">Delete</a></td>
            </tr>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>
</body>

</html>