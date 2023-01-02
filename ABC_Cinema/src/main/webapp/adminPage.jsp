<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
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
        <section class="bg-wallpaper-payment-page" style="display: flex; align-items: center; justify-content: center;">
            <div class="adminLoginContainer">
                <div class="adminLoginContent">
                    <h1>Admin Login</h1>
                    <div class="form-content-admin">
                        <form action="#" method="post">
                            <div class="form-row">
                                <input type="text" name="adminUsername" placeholder="Username: " class="form-input">
                            </div>
                            <div class="form-row">
                                <input type="password" name="adminPassword" placeholder="Password: " class="form-input">
                            </div>
                            <div class="form-row">
                                <center><input type="submit" value="Login" class="go-btn"></center>
                            </div>
                        </form>
                    </div>
                    <a href="#">Forgot Password?</a>
                </div>
            </div>
        </section>
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