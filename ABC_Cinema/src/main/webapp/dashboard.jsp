<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/11/2023
  Time: 11:22 PM
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
    <div><a href="index.jsp" class="navbar-brand">ABC<font color="red">CINEMA</font></a></div>

    <ul class="navbar-nav">
      <li><a href="#" class="nav-link">Movies</a></li>
      <li><a class="nav-link" href="Dashboard-UI/DateNTIme.jsp">Date and Time</a></li>
      <li><a class="nav-link" href="Dashboard-UI/Feedback.jsp">Feedback</a></li>
      <li><a class="nav-link" href="#">Transaction</a></li>
    </ul>
  </nav>
</header>
<br>

<div class="row">
  <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

  <div class="container">
    <h3 class="text-center">List of Movies</h3>
    <hr>
    <div class="container text-left">

      <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
        New Movie</a>
    </div>
    <br>
    <table class="table table-bordered">
      <thead>
      <tr style="color: white">
        <th>ID</th>
        <th>Movie Name</th>
        <th>Background Image</th>
        <th>Card Image</th>
        <th>Description</th>
        <th>Cast</th>
        <th>Trailer URL</th>
        <th>Director</th>
        <th>Genre</th>
        <th>Running Time</th>
        <th>Date</th>
        <th>Rating</th>
        <th>Language</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <!--   for (Todo todo: todos) {  -->

      <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                         url="jdbc:sqlserver://fanso.database.windows.net:1433;database=ABCCinema"
                         user="dfanso@fanso"  password="123@NSBM"/>

      <sql:query dataSource="${snapshot}" var="result">
        SELECT TOP (1000) [MovieId], [MovieName], [BgImageURL], [CardImageURL], [Description], [Cast], [TrailerURL], [Director], [Genre], [RunningTime], [Date], [Rating], [Language] FROM [dbo].[Movies]
      </sql:query>


      <c:forEach var="row" items="${result.rows}">
        <tr style="color: white">
          <td><c:out value="${row.MovieId}"/></td>
          <td><c:out value="${row.MovieName}" /></td>
          <td><c:out value="${row.BgImageURL}" /></td>
          <td><c:out value="${row.CardImageURL}" /></td>
          <td><c:out value="${row.Description}" /></td>
          <td><c:out value="${row.Cast}" /></td>
          <td><c:out value="${row.TrailerURL}" /></td>
          <td><c:out value="${row.Director}" /></td>
          <td><c:out value="${row.Genre}" /></td>
          <td><c:out value="${row.RunningTime}" /></td>
          <td><c:out value="${row.Date}" /></td>
          <td><c:out value="${row.Rating}" /></td>
          <td><c:out value="${row.Language}" /></td>
          <td><a href="MovieAdminServlet/edit?id=<c:out value='${row.MovieId}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="MovieAdminServlet/delete?id=<c:out value='${row.MovieId}' />">Delete</a></td>
        </tr>
      </c:forEach>
      <!-- } -->
      </tbody>

    </table>
  </div>
</div>
</body>

</html>