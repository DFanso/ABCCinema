<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/4/2023
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Page</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
    %>
</head>
<style>
    @media only screen and (max-width:550px){
        .movieCover-icon{
            position: absolute;
            top:23%;
            left:5%;
        }
        .border-icon{
            border:1px solid red;
            padding:4px 9px;
            border-radius: 22px;
            font-size:20px;
            color:red;
            text-align: center;
            margin-right: 10px;
        }
        .movieIcon-text{
            font-size: 14px;
        }
        .movie-col2{
            flex-direction: column;
        }
        .movie-pos-text{
            padding-top: 30px;
        }
        .movie-smallPoster-img{
            width: 200px;
        }
    }

</style>
<body>
<!----------------------Navigation bar---------------------->
<nav class="navbar">
    <div class="navbar-container nav-container">
        <input type="checkbox" name="" id="">
        <div class="hamburger-lines">
            <span class="line line1"></span>
            <span class="line line2"></span>
            <span class="line line3"></span>
        </div>
        <ul class="menu-items">
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <li><a class="nav-line">|</a></li>
            <div class="socioNavItem">
                <li><a href="#" class="fa social-icon fa-twitter"></a></li>
                <li><a href="#" class="fa social-icon fa-instagram"></a></li>
                <li><a href="#" class="fa social-icon fa-youtube"></a></li>
                <li><a href="#" class="fa social-icon fa-facebook"></a></li>
            </div>
        </ul>
        <h1 class="logo"><a href="index.jsp">ABC<font color="red">CINEMA</font></a></h1>
    </div>
</nav>

<!-------------------Movie Cover Image-------------------->
<div class="movie-con">
    <div class="movie-row">
        <div class="movie-col1">
            <img src="<c:out value="${bgImageURL}" />" class="movie-cover-img">
            <div class="movieCover-icon inline-movieIcon">
                <i class="fa border-icon">&#xf144;
                    <p class="castIcon-text movieIcon-text" onclick="location.href='<c:out value="${trailerURL}"/>'">
                        Watch Trailer</p></i>
                <i class="fa border-icon">&#xf145;
                    <p class="castIcon-text movieIcon-text" id="ticket" name="ticket" onclick="location.href='./SeatingServlet'">Buy Tickets</p>
                </i>
            </div>
        </div>
    </div>
</div>
<!-----------------Poster sect--------------------------->
<section id="aboutPoster">
    <div class="movie-con-poster movie-pos-padding">
        <div class="movie-row movie-pos-sec">
            <div class="movie-col2">


                <div class="movie-image-wrapper">
                    <img src="<c:out value="${cardImageURL}" />" alt="posterImg" style="width: 369px ;@media (max-width: 550px) {
                    width: 120px;
                    }"
                         class="movie-smallPoster-img">


                </div>


                <div class="movie-pos-text"><p class="small-moviePos-content"><b>Director</b>: <c:out
                        value="${Director}"/></p>
                    <p class="small-moviePos-content"><b>Main Cast</b>: <c:out value="${Cast}"/></p>
                    <p class="small-moviePos-content"><b>Genre</b>: <c:out value="${Genre}"/></p>
                    <p class="small-moviePos-content"><b>Running Time</b>: <c:out value="${RunningTime}"/></p>
                    <p class="small-moviePos-content"><b>Date</b>: <c:out value="${Date}"/></p>
                    <p class="small-moviePos-content"><b>Rating</b>: <c:out value="${Rating}"/></p>
                    <p class="small-moviePos-content"><b>Language</b>: <c:out value="${Language}"/></p>
                </div>
            </div>
        </div>

        <!-------------------Poster description------------------------------------>
        <div class="movie-con">
            <div class="movie-row movie-des-padding">
                <div class="movie-col1">
                    <h1 class="movie-des-topic">Description</h1>
                    <div class="movie-des-text-div"><p class="movie-des-text"><c:out value="${MovieDescription}"/></p>
                    </div>
                </div>
            </div>
        </div>
</section>

<section id="footer">
    <div class="fcontainer">
        <div class="frow row-color">
            <div class="fcol-3">
                <ul class="footer-ul first-sec-res">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Contact us</a></li>
                    <li><a href="#">FAQ's</a></li>
                    <li><a href="#">Feedback</a></li>
                </ul>
            </div>
            <div class="fcol-3">
                <ul class="footer-ul second-sec-res">
                    <li><a href="#">Now Showing</a></li>
                    <li><a href="#">Upcoming movies</a></li>
                    <li><a href="#">Privacy policy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                </ul>
            </div>
            <div class="fcol-3">
                <p class="ftext">Follow us for exclusive offers and content!</p>
                <a href="#" class="fa soc-icon fb fa-facebook" style="font-size: 24px"></a>
                <a href="#" class="fa soc-icon ig fa-instagram" style="font-size: 24px"></a>
                <a href="#" class="fa soc-icon tw fa-twitter" style="font-size: 24px"></a>
                <a href="#" class="fa soc-icon yt fa-youtube" style="font-size: 24px"></a>

            </div>
        </div>
        <hr class="footerhr">
    </div>

    <div class="fcontainer ">
        <div class="frow-last row-end-color">
            <div class="fcol-3">
                <p class="ftext grey-text">Copyright © 2022 ABCCinema</p>
            </div>
            <div class="fcol-3">
                <h1 class="logo-f logo-res-padding"><font color="white">ABC</font><font color="#A30000">Cinema</font>
                </h1>
            </div>
            <div class="fcol-3">
                <p class="ftext grey-text">All rights reserved. </p>
            </div>
        </div>

    </div>
</section>

<script>
    function myFunction() {
        var x = document.getElementById("menuitems");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }

    const mediaQuery = window.matchMedia('(max-width: 800px)')

    if (mediaQuery.matches) {
        (function () {
            var x = document.getElementById("menuitems");
            x.style.display = "none";
        })();

    }


</script>

<script>
    document.getElementById("ticket").addEventListener("click", function () {
// Send an HTTP GET request to the servlet
        const xhr = new XMLHttpRequest();
        const value = <c:out value="${movieID}"/> ;
        xhr.open("POST", "./SeatingServlet?value="+value+"", true);
        xhr.send();
//console.log("Button was clicked");
    });
</script>
</body>
</html>
