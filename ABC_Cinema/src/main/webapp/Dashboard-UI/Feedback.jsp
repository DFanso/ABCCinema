<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/12/2023
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FeedBack Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
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
<br>
<div class="row">
    <div class="container">
        <h3 class="text-center">List of Feedback</h3>
        <hr>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr style="color: white">
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <!--   for (Todo todo: todos) {  -->

            <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                               url="jdbc:sqlserver://20.2.80.190:1433;database=ABCCinema;encrypt=false"
                               user="sa"  password="123@Fanso"/>

            <sql:query dataSource="${snapshot}" var="result">
                SELECT TOP (1000) [id], [FirstName], [LastName], [Description] FROM [dbo].[feedbacks]
            </sql:query>



            <c:forEach var="row" items="${result.rows}">

            <tr style="color: white">
                <td><c:out value="${row.id}"/></td>
                <td><c:out value="${row.FirstName}"/></td>
                <td><c:out value="${row.LastName}"/></td>
                <td><c:out value="${row.Description}"/></td>
            </tr>

            </c:forEach>


            <!-- } -->
            </tbody>

        </table>
    </div>
</div>
</body>
</html>
