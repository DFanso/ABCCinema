<%@ page import="java.nio.file.Paths" %>
<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/11/2023
  Time: 11:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>

<head>
    <title>User Management Application</title>
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
        <div><a href="#" class="navbar-brand">ABC<font color="red">CINEMA</font></a></div>

        <ul class="navbar-nav">
            <li><a href="../dashboard.jsp" class="nav-link">Movies</a></li>
            <li><a class="nav-link" href="Dashboard-UI/DateNTIme.jsp">Date and Time</a></li>
            <li><a class="nav-link" href="Dashboard-UI/Feedback.jsp">Feedback</a></li>
            <li><a class="nav-link" href="Dashboard-UI/transaction.jsp">Transaction</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card" style="background-color: rgba(255, 255, 255, 0.26);">
        <div class="card-body" style="color:white;">
                <form action="MovieEditServlet" method="POST" id="editFrom"  >

                    <caption>
                        <h2>Update <c:out value="${MovieName}"/> Movie</h2>
                        <c:if test="${message != null}">
                            <div align="center">
                                <h4 class="message" style="color: white">${message}</h4>
                            </div>
                        </c:if>

                    </caption>
                    <input type="hidden" name="MovieID" value="<c:out value="${movieID}"/>">
                    <fieldset class="form-group">
                        <label>Movie Name</label> <input type="text" class="form-control"  value="<c:out value='${MovieName}'/>" name="MovieName" >
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Background Image</label> <input class="form-control" value="<c:out value='${bgImageURL}'/>" name="bgImageURL">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Card Image</label> <input class="form-control" value="<c:out value='${cardImageURL}'/>" name="cardImageURL">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Description</label> <input class="form-control" value="<c:out value='${MovieDescription}'/>" name="MovieDescription" style="height: 150px">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Cast</label> <input type="text"  class="form-control" value="<c:out value='${Cast}'/>" name="MovieCast">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie TrailerURL</label> <input type="text"  class="form-control" value="<c:out value='${trailerURL}'/>" name="MovieTrailerURL">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Director</label> <input type="text"  class="form-control" value="<c:out value='${Director}'/>" name="MovieDirector">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Genre</label> <input type="text"  class="form-control" value="<c:out value='${Genre}'/>" name="MovieGenre">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Running Time</label> <input type="text"  class="form-control" value="<c:out value='${RunningTime}'/>" name="MovieRunningTime">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Released Date</label> <input type="text"  class="form-control" value="<c:out value='${Date}'/>" name="MovieReleasedDate">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Rating</label> <input type="text"  class="form-control" value="<c:out value='${Rating}'/>" name="MovieRating">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Movie Language</label> <input type="text"  class="form-control" value="<c:out value='${Language}'/>" name="MovieLanguage">
                    </fieldset>
                    <button type="cancel" class="btn btn-success" style="background: #00acee">Cancel</button>


                    <button type="submit" class="btn btn-success">Update</button>
                </form>







        </div>
    </div>
</div>
</body>

</html>
