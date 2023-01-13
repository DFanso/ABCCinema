<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: cheth
  Date: 1/12/2023
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>User Management Application</title>
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
            <li><a href="../dashboard.jsp" class="nav-link">Movies</a></li>
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


                <caption>
                    <h2>Add New Time</h2>
                </caption>
                <input type="hidden" name="DateId"  />
                <input type="hidden" name="MovieId"  />

                <fieldset class="form-group">
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="time-movieName" onchange="getMovie(this.value)">
                        <option selected>Select The Movie</option>
                        <c:forEach items="${MovieName}" var="value">
                            <option  value="${value}">${value}</option>
                        </c:forEach>
                    </select>
                </fieldset>

                <fieldset class="form-group">
                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="time-dates">
                        <option selected>Select a Date</option>
                    </select>
                </fieldset>

                <fieldset class="form-group">
                    <label>Movie Time</label> <input type="text"  class="form-control" placeholder="12.30 P.M" id="MovieTime">
                </fieldset>
                <button type="cancel" class="btn btn-success" style="background: #00acee;">Cancel</button>
                <button type="submit" class="btn btn-success" id="new-Time-btn">Create</button>

        </div>
    </div>
</div>

<script>
    function getMovie(movie) {

        var xhr = new XMLHttpRequest();
        xhr.open("POST", "./GetDatesServlet?movie="+movie+"");
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var dates = JSON.parse(xhr.responseText);
                console.log(dates);
                updateDates(dates);
            }
        };
        xhr.send();

    }
</script>


<script>
    function updateDates(dates) {
        var select = document.getElementById("time-dates");
        select.innerHTML = "";
        for (var i = 0; i < dates.length; i++) {
            var option = document.createElement("option");
            option.value = dates[i];
            option.text = dates[i];
            select.appendChild(option);
        }
    }
</script>

<script>
    document.getElementById("new-Time-btn").addEventListener("click", function () {
        // Send an HTTP GET request to the servlet
        let dropdownMovie = document.getElementById("time-movieName");
        var dropdownValueMovie = dropdownMovie.options[dropdownMovie.selectedIndex].value;

        let dropdownDate = document.getElementById("time-dates");
        var dropdownValueDateTime = dropdownDate.options[dropdownDate.selectedIndex].value;



        const xhr = new XMLHttpRequest();
        const time = document.getElementById("MovieTime").value;

        xhr.open("POST", "./NewTimeADDServlet?Time="+time+"&dropdownValueDateTime="+dropdownValueDateTime+"&dropdownValueMovie="+dropdownValueMovie+"", true);
        xhr.send();
        location.href='./NewTimeADDServlet';
    });
</script>
</body>

</html>
