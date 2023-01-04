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
            <hr class="section-divider"><br>
            <h1 class="payment-header">Payment Details</h1>
               <!--<div class="secondSection">
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
                </div>--> 

                <div class="poster-container">
                    <div class="poster-row">
                        <div class="poster-col-2">
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
                
            
                <div class="payment-section">     
                    <div class="payment-content">
                        <div class="paywithContent">
                            <h3>Pay With: </h3>
                            <a href="#"><img src="img/PayPal.png" alt="paypal"></a>
                            <a href="#"><img src="img/VISA.png" alt="visa"></a>
                            <a href="#"><img src="img/mastercard.png" alt="master"></a>
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
                                    <div class="last-row">
                                        <input type="checkbox" class="chkBoxInput">
                                        <p>I agree to the terms and conditions of ABCCINEMA</p>
                                    </div>
                                    
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