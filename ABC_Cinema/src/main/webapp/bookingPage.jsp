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
        <div class="photoWallpaper">
            <img src="img/bookingPage/shuri.png" alt="shuri poster">
            <img src="img/bookingPage/poster1.png" alt="green poster">
            <img src="img/bookingPage/poster2.png" alt="blue poster">
            <img src="img/bookingPage/poster3.png" alt="Panther poster">
        </div>
    </div>
    <!-- Date Selection Section -->
    <div class="showTimeContainer">
        <div class="showTimeText">
            <h2>Show<br>Times</h2>
        </div>
        <div class="dates">
            <h2>Today</h2>
            <h2>Tomorrow</h2>
            <h2>28th</h2>
            <h2>29th</h2>
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
                        <h3>times</h3>
                        <h3>times</h3>
                    </div>
                    <hr>
                    <div class="time-item">
                        <h3>times</h3>
                        <h3>times</h3>
                        <h3>times</h3>
                        <h3>times</h3>
                    </div>
                </div>
            </div>
            <!-- 2nd Hall -->
            <div class="timeContainer1">
                <div class="hallName" style="background: #36DC96;">
                    <h2>Luxe<br>Cinema</h2>
                </div>
                <div class="hallTimes">
                    <div class="time-item">
                        <h3>times</h3>
                        <h3>times</h3>
                    </div>
                    <hr>
                    <div class="time-item">
                        <h3>times</h3>
                        <h3>times</h3>
                        <h3>times</h3>
                        <h3>times</h3>
                    </div>
                </div>
            </div>
            <!-- 3rd hall -->
            <div class="timeContainer1">
                <div class="hallName" style="background: #FF2E2E;">
                    <h2>Kids<br>Cinema</h2>
                </div>
                <div class="hallTimes">
                    <div class="time-item">
                        <h3>times</h3>
                        <h3>times</h3>
                    </div>
                    <hr>
                    <div class="time-item">
                        <h3>times</h3>
                        <h3>times</h3>
                        <h3>times</h3>
                        <h3>times</h3>
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
    <footer>
        <div class="footer-upper-section">
            <div class="footer-links">
                <a href="#">Home</a>
                <a href="#">About Us</a>
                <a href="#">Contact Us</a>
                <a href="#">FAQ's</a>
                <a href="#">Feedback</a>
            </div>
            <div class="movie-policie-footer">
                <a href="#">Now Showing</a>
                <a href="#">Upcoming Movie</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms & Conditions</a>
            </div>
            <div class="social-download-footer">
                <p>Let's get social!</p>
                <div class="footer-social">
                    <img src="img/social/insta-icon.png" alt="insta">
                    <img src="img/social/twitter-icon.png" alt="twitter">
                    <img src="img/social/youtube.png" alt="youtube">
                    <img src="img/social/tiktok.png" alt="tiktok">
                </div>
                <h3>ABC<font color="red">CINEMA</font> App for Mobile</h3>
                <div class="footer-stickers">
                    <img src="img/social/Appstore.png" alt="Appstore">
                    <img src="img/social/GooglePlay.png" alt="googleplay">
                </div>
            </div>
        </div>
        <div class="footer-lower-section">
            <div class="black-footer">
                <h5 class="copyright-footer">Copyright &#169; 2022 ABCCINEMA</h5>
                <h1>ABC<font color="red">CINEMA</font></h1>
                <h5 class="allrights-footer">All rights reserved.</h5>
            </div>
            
        </div>
    </footer>
    <script src="navtoggle.js"></script>
</body>
</html>