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
    <style>
        .time-background-gradient{
            width: 100%;
            display: flex;
            align-content: center;
            justify-content: center;
        }
        .posterInfo button{
            width: 100px;
            height: 40px;
            background: transparent;
            border: 3px solid white;
            border-radius: 10px;
            color: white;
            float: right;
            margin-right: 50px;
            transition: 1s;
        }
        .posterInfo button:hover{
            background-color: red;
            transition: 1s;
        }
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
            </ul>
            <h1 class="logo">ABC<font color="red">CINEMA</font></h1>
        </div>
    </nav>
    <div class="seating-container" style="
            width: 100%;
            height: 600px;
            background: black url('<c:out value="${bgImageURL}" />') no-repeat fixed center;
            background-size: cover;"></div>
    <!-- Date Selection Section -->
    <div class="showTimeContainer">
        <div class="showTimeText" style="width: 30%;">
            <h2><c:out value="${MovieName}"/></h2>
        </div>
        <div class="dates">
            <select name="MovieDate" id="date" onchange="getTimes(this.value)">
                <option><h2>Select a Date</h2></option>
                <c:forEach items="${ShowDates}" var="value">
                    <h2><option value="${value}">${value}</option></h2>
                </c:forEach>
            </select>
            <select name="MovieTime" id="time">
                <option><h2>Select a Time</h2></option>
            </select>
        </div>
    </div>
    <!-- TIme Selection Section -->
    <div class="time-background-gradient">
        <!-- Poster -->
        <div class="timePoster">
            <div class="poster-container">
                <div class="poster-row">
                    <div class="poster-col-2">
                        <div class="posterContainer">
                            <div class="posterImg">
                                <img src="<c:out value="${cardImageURL}"/>" alt="poster" style="width:360px; height: 474px">
                            </div>
                            <div class="posterInfo">
                                <p><b><c:out value="${MovieName}"/></b><br><span>Price: $.4.00 </span></p>
                                <button id="SeatButton" name="SeatButton" onclick="seatButton()">Select Seats</button>
                            </div>
                        </div>
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
        function getTimes(date) {
            var xhr = new XMLHttpRequest();
            var MovieID = <c:out value="${movieID}"/>;
            xhr.open("POST", "./TimeChangeServlet?date="+date+"&MovieID="+MovieID);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var times = JSON.parse(xhr.responseText);
                    updateTimes(times);
                }
            };
            xhr.send();

        }

    </script>


    <script>
        function updateTimes(times) {
            var select = document.getElementById("time");
            select.innerHTML = "";
            for (var i = 0; i < times.length; i++) {
                var option = document.createElement("option");
                option.value = times[i];
                option.text = times[i];
                select.appendChild(option);
            }
        }
    </script>


    <script>
        function seatButton(){
            let dropdown = document.getElementById("date");
            dropdownValuedate = dropdown.options[dropdown.selectedIndex].value;

            dropdown = document.getElementById("time");
            dropdowntimevalue = dropdown.options[dropdown.selectedIndex].value;
            const xhr = new XMLHttpRequest();
            const MovieId = <c:out value="${movieID}"/> ;
            xhr.open("POST", "./SeatingBookingServlet?movieID="+MovieId+"&dropDownValueDate="+dropdownValuedate+"&dropDownTimeValue="+dropdowntimevalue+"", true);
            xhr.send();

            if(dropdownValuedate!="Select a Date"){
                location.href='./SeatingBookingServlet'
            }else{
                alert("Select a Date");
            }
        }
    </script>
</body>
</html>