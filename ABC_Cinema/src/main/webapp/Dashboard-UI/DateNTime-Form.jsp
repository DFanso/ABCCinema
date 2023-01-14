<%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/11/2023
  Time: 11:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>

<head>
    <title>Update Date</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
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
            <li><a href="dashboard.jsp" class="nav-link">Movies</a></li>
            <li><a class="nav-link" href="DateNTIme.jsp">Date and Time</a></li>
            <li><a class="nav-link" href="Feedback.jsp">Feedback</a></li>
            <li><a class="nav-link" href="transaction.jsp">Transaction</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card" style="background-color: rgba(255, 255, 255, 0.26);">
        <div class="card-body" style="color:white;">
<%--            <form action="update" method="post">--%>
                <form action="DateEditServlet" method="post" id="myForm">

                    <caption>
                        <h2>Update Date</h2>

                        <c:if test="${message != null}">
                            <div align="center">
                                <h4 class="message" style="color: white">${message}</h4>
                            </div>
                        </c:if>

                    </caption>
                    <input type="hidden" name="DateId" value="<c:out value='${DateID}'/>" />
                    <input type="hidden" name="MovieId" value="<c:out value='${movieID}'/>" />
                    <fieldset class="form-group">
                        <label>Movie Date</label> <input type="text"  class="form-control" name="MovieDate" placeholder="28th December" value="<c:out value='${Date}'/>">
                    </fieldset>
                    <button type="cancel" class="btn btn-success" style="background: #00acee;">Cancel</button>
                    <button type="submit" class="btn btn-success" id="myButton">Update</button>
                </form>
<%--            </form>--%>
        </div>
    </div>
</div>
</body>

</html>
