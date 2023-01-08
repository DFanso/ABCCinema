<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Page</title>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
    <style>
        .button-container a input{
            position: relative;
            background: #444;
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 1.5rem;
            letter-spacing: 0.1rem;
            padding: 0.75rem 1.5rem;
            transition: 0.5s;
            border: none;
        }

        .button-container a input:hover {
            letter-spacing: 0.25rem;
            background: var(--color);
            color: white;
            box-shadow: 0 0 50px 10px var(--color);
        }

        .button-container a input::before {
            content: "";
            position: absolute;
            inset: 2px;
            background: #27282c;
        }

        .button-container a span {
            position: relative;
            z-index: 1;
        }

        .button-container a input i {
            position: absolute;
            inset: 0;
            display: block;
        }

        .button-container a input i::before {
            content: "";
            position: absolute;
            top: -3.5px;
            left: 80%;
            width: 10px;
            height: 5px;
            border: 2px solid var(--color);
            background: #27282c;
            transform: translateX(-50%);
            transition: 0.5s;
        }

        .button-container a  input:hover i::before {
            left: 20%;
            width: 20px;
        }

        .button-container a input i::after {
            content: "";
            position: absolute;
            bottom: -3.5px;
            left: 20%;
            width: 10px;
            height: 5px;
            border: 2px solid var(--color);
            background: #27282c;
            transform: translateX(-50%);
            transition: 0.5s;
        }

        .button-container a input:hover i::after {
            left: 80%;
            width: 20px;
        }

    </style>
</head>
<body class="bg-wallpaper-payment-page">
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
    <section class="bg-wallpaper-payment-page-f">
        <div class="paymentContactDetailsContainer">
            <div class="form-content">
                <h1>Contact Details</h1>
                <form action="#" method="post" id="myForm">
                    <div class="form-row">
                        <input type="text" name="ClientName" placeholder="Name: " class="form-input">
                        <input type="text" name="ClientName" placeholder="Email: " class="form-input">
                    </div>
                    <div class="form-row">
                        <input type="text" name="ClientName" placeholder="Tel No: " class="form-input">
                    </div>
                    <div class="form-row">
                        <div class="button-container">
                            <a href="#" style="--color: red"><span><input type="submit" value="SUBMIT"></span><i></i></a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <hr class="section-divider"><br>
        <div id="paypalSection" style="display: none;">
            <h1 class="payment-header">Payment Details</h1>
            <div class="poster-container">
                <div class="poster-row">
                    <div class="poster-col-2">
                        <div class="posterContainer">
                            <div class="posterImg">
                                <img src="img/bookingPage/poster2.png" alt="poster">
                            </div>
                            <div class="posterInfo">
                                <p><b>BLACK PANTHER: WAKANDA<br>FOREVER</b><br><span>Tickets:</span><br><span>Rs. Price</span></p>
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
                        <!-- <div class="paywithContent">
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
                        </div> -->
                        <div id="paypal-button-container" style="width: 70%;"></div>
                    </div>
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
                    <h1 class="logo-f logo-res-padding"><font color="white">ABC</font><font color="#A30000">Cinema</font></h1>
                </div>
                <div class="fcol-3">
                    <p class="ftext grey-text">All rights reserved. </p>
                </div>
            </div>
            
        </div>
    </section>
    <script src="navtoggle.js"></script>
    <script src="https://www.paypal.com/sdk/js?client-id=AWyPjOnNTcB2BXCzP1nKC8g6RtWJFXM_28F8z_1TxMqdRI8ram4qDIkxsD0oSMFwIWfZQ1iVYZHz5aEX"></script>
        <script>
            paypal.Buttons({
            createOrder: function(data, actions) {
                return actions.order.create({
                purchase_units: [{
                    amount: {
                    value: '1000.00'
                    }
                }]
                });
            },
            onApprove: function(data, actions) {
                // This function captures the funds from the transaction.
                return actions.order.capture().then(function(details) {
                alert('Transaction completed by ' + details.payer.name.given_name);
                });
            }
            }).render('#paypal-button-container');
        </script>
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
<script>
    document.getElementById("myForm").onsubmit = function() {
        document.getElementById("paypalSection").style.display = "block";
        return false;
    }
</script>
</body>
</html>