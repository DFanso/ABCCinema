<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <div class="showTimeText" style="width: 30%;">
        <h2><c:out value="${MovieName}"/></h2>
    </div>
    <div class="dates">
        <select name="MovieDate" id="date">
            <option><h2>28th November</h2></option>
            <option><h2>29th November</h2></option>
            <option><h2>30th November</h2></option>
            <option><h2>31st November</h2></option>
        </select>
        <select name="MovieTime" id="time">
            <option><h2>8.00 A.M</h2></option>
            <option><h2>10.30 A.M</h2></option>
            <option><h2>1.00 P.M</h2></option>
            <option><h2>9.00 P.M</h2></option>
        </select>
    </div>
</div>
    <!-- Seating Section -->
    <div class="seating-background-gradient">
        <div class="seatingBigContainer">
            <ul class="showcase">
                <li>
                  <div class="seat"></div>
                  <small>N/A</small>
                </li>
                <li>
                  <div class="seat selected"></div>
                  <small>Selected</small>
                </li>
                <li>
                  <div class="seat occupied"></div>
                  <small>Occupied</small>
                </li>
              </ul>
          
              <div class="seatcontainer">
                <div class="screen"></div>
          
                <div class="row">
                  <div id="1" class="seat"></div>
                  <div id="2" class="seat"></div>
                  <div id="3" class="seat"></div>
                  <div id="4" class="seat"></div>
                  <div id="5" class="seat"></div>
                  <div id="6" class="seat"></div>
                  <div id="7" class="seat"></div>
                  <div id="8"class="seat"></div>
                </div>
                <div class="row">
                  <div id="9" class="seat"></div>
                  <div id="10" class="seat"></div>
                  <div id="11" class="seat"></div>
                  <div id="12" class="seat"></div>
                  <div id="13" class="seat"></div>
                  <div id="14" class="seat"></div>
                  <div id="15" class="seat"></div>
                  <div id="16" class="seat"></div>
                </div>
                <div class="row">
                  <div id="17" class="seat"></div>
                  <div id="18" class="seat"></div>
                  <div id="19" class="seat"></div>
                  <div id="20" class="seat"></div>
                  <div id="21" class="seat"></div>
                  <div id="22" class="seat"></div>
                  <div id="23" class="seat"></div>
                  <div id="24" class="seat"></div>
                </div>
                <div class="row">
                  <div id="25" class="seat"></div>
                  <div id="26" class="seat"></div>
                  <div id="27" class="seat"></div>
                  <div id="28" class="seat"></div>
                  <div id="29" class="seat"></div>
                  <div id="30" class="seat"></div>
                  <div id="31" class="seat"></div>
                  <div id="32" class="seat"></div>
                </div>
                <div class="row">
                  <div id="33" class="seat"></div>
                  <div id="34" class="seat"></div>
                  <div id="35" class="seat"></div>
                  <div id="36" class="seat"></div>
                  <div id="37" class="seat"></div>
                  <div id="38" class="seat"></div>
                  <div id="39" class="seat"></div>
                  <div id="40" class="seat"></div>
                </div>
                <div class="row">
                  <div id="41" class="seat"></div>
                  <div id="42" class="seat"></div>
                  <div id="43" class="seat"></div>
                  <div id="44" class="seat"></div>
                  <div id="45" class="seat"></div>
                  <div id="46" class="seat"></div>
                </div>
              </div>
        </div>  
            <div class="redgradientContainer">
                <p class="text">
                You have selected <span id="count">0</span> seats for a price of $<span
                  id="total">0</span>
                </p>
                <button onclick="seatFun2(),location.href='paymentPage.jsp'">Pay</button>
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
                    <h1 class="logo-f logo-res-padding"><font color="white">ABC</font><font color="#A30000">Cinema</font></h1>
                </div>
                <div class="fcol-3">
                    <p class="ftext grey-text">All rights reserved. </p>
                </div>
            </div>
            
        </div>
    </section>
    <script src="navtoggle.js"></script>
    <script src="script.js"></script>
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
    function seatFun2() {
        var divClass;
        var myVariable;
        const selectedSeat=[];
        for (let i = 1; i <= 16; i++) {
            divClass = document.getElementById(i).className;
            $(document).ready(function () {
                divClass = $(myVariable).attr("class");

            });
            console.log(divClass);
            if (divClass === "seat selected") {
                selectedSeat.push(i)

                console.log(i);
            }
        }
        $.ajax({
            type: "POST",
            url: "./config",
            data: {selectedSeat:selectedSeat.join(",")}, // Send the variable to the servlet

            success: function (response) {
                // Update the div element with the response from the servlet
                $("#response").html(response)
            }
        })
    };

</script>
<script>
    let selectedSeats = [];
    let seat="seat occupied"
    function seatfun () {
        $.ajax({
            type: "POST",
            url: "./config",
            data: {action: "changeClass"},
            success: function (response) {
                selectedSeats = response.split(",");
                console.log(selectedSeats)
                for (const x of selectedSeats) {
                    $("#"+x).attr("class",seat);
                }

            }
        });
    }
    $(document).ready(function () {
        seatfun();
        setInterval(seatfun, 10); // Interval set to 10 seconds
    });
</script>
</body>
</html>