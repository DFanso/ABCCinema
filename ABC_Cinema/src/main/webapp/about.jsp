<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.abccinema.DBConnection" %><%--
    Document   : about
    Created on : Jan 6, 2023, 4:45:32 PM
    Author     : cheth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css2?family=Lato&family=Roboto+Condensed&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&family=Open+Sans&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="swiper-bundle.min.css">
<%--        <script src="/js/script.js"></script>--%>
        <script src="swiper-bundle.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <title>About</title>
    </head>
    <body>
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
<!----------------------About Cover with Heading---------------------->
<div class="headerBackground">
    <h1>About Us</h1>
</div>
<!------------------Get The Best Experience Section---------------------->
<div class="upperBackground">
    <div class="getTheBestExperience-about">
        <h1>Get The Best Experience</h1>
        <div class="expImg">
          <img src="img/dolbyIcon.png" alt="dolbyAtmosIcon" width="160px" height="64px">
          <img src="img/seatIcon.png" alt="seatIcon"  width="78px" height="64px">
          <img src="img/4kIcon.png" alt="4kIcon"  width="78px" height="64px">
          <img src="img/cinemaIcon.png" alt="cinemaIcon"  width="78px" height="64px">
        </div>
    </div>
</div> 
<div id="aa">
<!------------------About Content - Our Journey Section---------------------->    
    <div class="aboutContent">
      <div class="col1">
        <img src="img/popcornImg.png" alt="popcorn image">
      </div>
      <div class="col2">
        <h2>Our Journey</h2>
        <p>
          ABCCinema is a reputed and a premium Cinema Company in Sri Lanka. Since 2015, we 
          have been able to familiarise what high quality show business is to the world. 
          ABCCinema offers extravagant collection of cinema types, providing the best quality 
          for our users to experience the future. With the high demand we've been having over 
          the years, we are desiring to expand our network further, to let more and more people 
          witness the man-made treasures. Stay in touch with us to explore more.

        </p>
      </div>
    </div>
<!----------------------Testimonials Slider---------------------->

    <sql:setDataSource var="snapshot" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"
                       url="jdbc:sqlserver://20.2.80.190:1433;database=ABCCinema;encrypt=false"
                       user="sa"  password="123@Fanso"/>
    <sql:query dataSource="${snapshot}" var="result">
        SELECT FirstName, LastName, imgURL, Description FROM feedbacks
    </sql:query>

    <section class="container-about">
        <div class="testimonial mySwiper">
            <div class="testi-content swiper-wrapper">
                <c:forEach var="row" items="${result.rows}">
                    <div class="slide swiper-slide">
                        <img src="${row.imgURL}" alt="testimonial image" class="image">
                        <p>${row.Description}</p>
                        <i class='bx bxs-quote-alt-left quote-icon'></i>
                        <div class="details">
                            <span class="name">${row.FirstName} ${row.LastName}</span>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="swiper-button-next nav-btn"></div>
            <div class="swiper-button-prev nav-btn"></div>
            <div class="swiper-pagination"></div>
        </div>
    </section>

</div>
<!--------------------------------------footer----------------------------->
 <section id="footer">
    <div class="fcontainer">
        <div class="frow row-color">
            <div class="fcol-3">
                <ul class="footer-ul first-sec-res">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About us</a></li>
                    <li><a href="contact.jsp">Contact us</a></li>
                    <li><a href="#">FAQ's</a></li>
                    <li><a href="contact.jsp#cccontactFormID">Feedback</a></li>
                </ul>
            </div>
            <div class="fcol-3">
                <ul class="footer-ul second-sec-res">
                    <li><a href="index.jsp#hhhomePageSlider">Now Showing</a></li>
                    <li><a href="#">Privacy policy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                </ul>
            </div>
            <div class="fcol-3">
                <p class="ftext">Follow us for exclusive offers and content!</p>
                <a href="#" class="fa soc-icon fb fa-facebook"></a>
                <a href="#" class="fa soc-icon ig fa-instagram"></a>
                <a href="#" class="fa soc-icon tw fa-twitter"></a>
                <a href="#" class="fa soc-icon yt fa-youtube"></a>
                <p class="ftext">ABCCinema app for mobile</p>
            </div>
        </div>
        <hr class="footerhr">
    </div>

    <div class="fcontainer ">
        <div class="frow row-end-color">
            <div class="fcol-3">
                <p class="ftext grey-text">Copyright © 2022 ABCCinema</p>
            </div>
            <div class="fcol-3">
                <h1 class="logo logo-res-padding"><font color="white">ABC</font><font color="#A30000">Cinema</font></h1>
            </div>
            <div class="fcol-3">
                <p class="ftext grey-text">All rights reserved. </p>
            </div>
        </div>
        
    </div>
</section>
<script src="swiper-bundle-min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper", {
        slidesPerView: 1,
        grabCursor:true,
        autoplay: true,
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
});
</script>
    </body>
</html>
