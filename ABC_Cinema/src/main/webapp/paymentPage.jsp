<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
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
        <section class="bg-wallpaper-payment-page">
            <div class="paymentContactDetailsContainer">
                <div class="form-content">
                    <h1>Contact Details</h1>
                    <form action="#" method="post">
                        <div class="form-row">
                            <input type="text" name="ClientName" placeholder="Name: " class="form-input">
                            <input type="text" name="ClientName" placeholder="Email: " class="form-input">
                        </div>
                        <div class="form-row">
                            <input type="text" name="ClientName" placeholder="Tel No: " class="form-input">
                        </div>
                        <div class="form-row">
                            <center><input type="submit" value="Go" class="go-btn"></center>
                            
                        </div>
                    </form>
                </div>
            </div>
            <hr/ class="section-divider"><br>
            <h1 class="payment-header">Payment Details</h1>
            <div class="secondSection">
                
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
                <div class="payment-section">     
                    <div class="payment-content">
                        <div class="paywithContent">
                            <h3>Pay With: </h3>
                            <img src="img/PayPal.png" alt="paypal">
                            <img src="img/VISA.png" alt="visa">
                            <img src="img/mastercard.png" alt="master">
                        </div>
                        <div class="form-content-Payment">
                            <form action="#" method="post">
                                <div class="form-row">
                                    <input type="text" name="ClientCardNo" placeholder="Card No: " class="form-input-new">
                                </div>
                                <div class="form-row">
                                    <input type="text" name="CardHolderName" placeholder="Card Holder: " class="form-input-new">
                                    <input type="text" name="ExpiryDate" placeholder="Expiry Date: " class="form-input-new">
                                </div>
                                <div class="form-row">
                                    <center><input type="text" placeholder="CVC" class="form-input-new"></center>
                                </div>
                                <div class="form-row">
                                    <input type="checkbox">
                                    <p>I agree to the terms and conditions of ABCCINEMA</p>
                                </div>
                                <div class="form-row">
                                    <center><input type="submit" value="Confrim" class="go-btn"></center>
                                </div>
                            </form>
                        </div>
                    </div>          
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