<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<section id="header">
    <div class="nav flex-row">
        <img src="img/menu.png" class="menu-icon" width="25px" alt="menu-icon" onclick="myFunction()">
        <div class="logo-div">
            <h1 class="logo">ABC<font color="#3D0000">Cinema</font></h1>
        </div>
        <div class="header-navbar">
            <ul class="navbar-ul" id="menuitems">
                <li><i class="fa search-res search-color fa-search"></i></li>
                <li><a href="#">HOME</a></li>
                <li><a href="#">ABOUT US</a></li>
                <li><a href="#">CONTACT US</a></li>
                <div class="social-icon-div">
                    <a href="#" class="fa social-icon fa-twitter"></a>
                    <a href="#" class="fa social-icon fa-instagram"></a>
                </div>

            </ul>

        </div>
    </div>

    <div class="below-nav">
        <h2 class="below-nav-heading">SIGN UP TO WATCH UNLIMITED MOVIES</h2>
    </div>
</section>
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
        (function() {
            var x = document.getElementById("menuitems");
            x.style.display = "none";
        })();

    }

</script>
</body>
</html>