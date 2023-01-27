<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>

        /*.seating-container img{*/
        /*    width: 100%;*/
        /*    min-heigh: 500px;*/
        /*    background-size: contain;*/
        /*    background-position: center;*/
        /*    background-attachment: fixed;*/
        /*}*/
        @media (max-width: 550px){
            .dates select{
                font-size: 15px;
            }
            .showTimeText h2{
                font-size: 15px;
                padding: 0 5px;
            }
            .go-btn{
                width: 72px;
                height: 42px;
                font-size: 17px;
            }
            .seating-background-gradient{
                height: auto;
            }
        }
    </style>
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

    <div class="seating-container" style="
    width: 100%;
    height: 600px;
    background: black url('<c:out value="${bgImageURL}" />') no-repeat fixed center;
    background-size: cover;
">
      </div>

    <!-- Date Selection Section -->
<div class="showTimeContainer">
    <div class="showTimeText" style="width: 30%;">
        <h2><c:out value="${MovieName}"/></h2>
    </div>
    <div class="dates">
        <h1><c:out value="${date}"/></h1>

        <h1><c:out value="${time}"/></h1>
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
                You have selected <span id="count">0</span> seats for a price of $.<span
                  id="total">0</span>
                </p>
                <button id="payBtn" class="go-btn" onclick="seatFun2()">Pay</button>
            </div>
        
    </div>
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
<%--    <script src="script.js"></script>--%>

<script>
    const seatcontainer = document.querySelector('.seatcontainer');
    let selectedSeats = 0;
    let totalPrice = 0;

    seatcontainer.addEventListener('click', (e) => {
        if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')) {
            if (!e.target.classList.contains('selected')) {
                e.target.classList.add('selected');
                selectedSeats++;
                totalPrice += 4;
            } else {
                e.target.classList.remove('selected');
                selectedSeats--;
                totalPrice -= 4;
            }
            document.querySelector('#count').innerText = selectedSeats;
            document.querySelector('#total').innerText = totalPrice;
        }
    });

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



<h2></h2>
</div>
<div class="dates">
    <h1></h1>

    <h1></h1>
    <script>
        function seatFun2() {
            var divClass;
            var myVariable;
            const selectedSeat=[];

            let dataFromDB='<c:out value="${bookedSeats}"/>';
            let date='<c:out value="${date}"/>';
            let time='<c:out value="${time}"/>';
            let movieName='<c:out value="${MovieName}"/>';
            let totalPrice = document.getElementById("total").innerHTML;
            for (let i = 1; i <= 46; i++) {
                divClass = document.getElementById(i).className;
                $(document).ready(function () {
                    divClass = $(myVariable).attr("class");

                });
                if (divClass === "seat selected") {
                    selectedSeat.push(i)

                }
            }
            if(selectedSeat.join(",")!='') {
                $.ajax({
                    type: "POST",
                    url: "./config",
                    data: {
                        selectedSeat: selectedSeat.join(","),
                        dataFromDB: dataFromDB,
                        date: date,
                        time: time,
                        movieName: movieName,
                        totalPrice: totalPrice
                    }, // Send the variable to the servlet

                    async: false
                })
                location.href='./config'
            } };

    </script>

<script>
    let selectedSeatsOccupied = [];
    let seat="seat occupied"
    window.onload = function bcd(){
        <% System.out.println("SeatsfromDB: " + request.getAttribute("bookedSeats")); %>

        let abc='<c:out value="${bookedSeats}"/>';

        selectedSeatsOccupied = abc.split(",");
        console.log(<c:out value="${bookedSeats}"/>);
        for (const x of selectedSeatsOccupied) {
            $("#" + x).attr("class", seat);
        };

    }

</script>

</body>

</html>