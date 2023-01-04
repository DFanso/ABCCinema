<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
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
        <!-- admin Form Section -->
        <section class="bg-wallpaper-payment-page" style="display: flex; align-items: center; justify-content: center;">
            <div class="adminLoginContainer">
                <div class="adminLoginContent">
                    <h1>Reset Password</h1>
                    <div class="form-content-admin">
                        <form action="#" method="post">
                            <div class="form-row">
                                <input type="text" name="secret" placeholder="Secret: " class="form-input">
                            </div>
                            <div class="form-row">
                                <input type="password" name="newPassword" placeholder="New Password: " class="form-input">
                            </div>
                            <div class="form-row">
                                <input type="password" name="confirmPassword" placeholder="Confirm Password: " class="form-input">
                            </div>
                            <div class="form-row">
                                <center><input type="submit" value="Change" class="go-btn "></center>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- End -->
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