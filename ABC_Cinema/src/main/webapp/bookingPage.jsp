<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div style="background: black; width: 100%;">
        <header>
            <h1>ABC<font color="red">CINEMA</font></h1>
            <!-- Nav -->
            <div class="topnav" id="myTopnav">
                <a href="#home" class="active">Home</a>
                <a href="#about">About Us</a>
                <a href="#contact">Contact Us</a>
                <a href="instagram.com"><img src="img/Insta.png" alt="insta"></a>
                <a href="twitter.com"><img src="img/Twitter.png" alt="twitter"></a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                  <i class="fa fa-bars"></i>
                </a>
            </div>
        </header>
       
    </div>

    <div class="seating-container">
        <div class="seating-row">
            <div class="seating-col-4">
                <img class="seating-img" src="img/bookingPage/shuri.png">
            </div>
            <div class="seating-col-4">
                <img class="seating-img" src="img/bookingPage/poster1.png">
            </div>
            <div class="seating-col-4">
                <img class="seating-img" src="img/bookingPage/poster2.png">
            </div>
            <div class="seating-col-4">
                <img class="seating-img" src="img/bookingPage/poster3.png">
            </div>
        </div>
      </div>
    <!-- Date Selection Section -->
    <div class="showTimeContainer">
        <div class="showTimeText">
            <h2>Show<br>Times</h2>
        </div>
        <div class="dates">
            <button><h2>Today</h2></button>
            <button><h2>Tomorrow</h2></button>
            <button><h2>28th</h2></button>
            <button><h2>29th</h2></button>
        </div>
            
    </div>
    <!-- TIme Selection Section -->
    <div class="time-background-gradient">
        <div class="timeSelectionContainer">
            <!-- 1st Hall -->
            <div class="timeContainer1">
                <div class="hallName">
                    <h2>2D<br>Cinema</h2>
                </div>
                <div class="hallTimes">
                    <div class="time-item">
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                    </div>
                    <hr>
                    <div class="time-item">
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                    </div>
                </div>
            </div>
            <!-- 2nd Hall -->
            <div class="timeContainer1">
                <div class="hallName" style="background-color: #36DC96;">
                    <h2>LUXE<br>Cinema</h2>
                </div>
                <div class="hallTimes">
                    <div class="time-item">
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                    </div>
                    <hr>
                    <div class="time-item">
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                        <a href="seatingpage.jsp"><h3>times</h3></a>
                    </div>
                </div>
            </div>
            <!-- 3rd hall -->
            <div class="timeContainer1">
                <div class="hallName" style="background-color: #FF2E2E;">
                    <h2>KIDS<br>Cinema</h2>
                </div>
                <div class="hallTimes">
                    <div class="time-item">
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                    </div>
                    <hr>
                    <div class="time-item">
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                        <a href="#"><h3>times</h3></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Poster -->
        <div class="timePoster">
            <div class="posterContainer">
                <div class="posterImg">
                    <img src="img/bookingPage/poster2.png" alt="poster">
                </div>
                <div class="posterInfo">
                    <p><b>BLACK PANTHER: WAKANDA<br>FOREVER</b><br><span>NOW SCREENING</span></p>
                    <hr/>
                    <div class="poster-trailer-icon">
                        <img src="img/bookingPage/TV Show.png" alt="trailer" style="padding-left:15px;">
                        <p>Play<br>Trailer</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    <script src="navtoggle.js"></script>
</body>
</html>