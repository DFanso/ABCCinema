<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/4/2023
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" >
    <title>Contact Us</title>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
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

<div class="center-container">
    <div class="center-rrow support-body-padding center-row-conactQ">
        <div class="col-2 ">
            <div class="support-text-div">
                <h1 class="contact-h-support" style="color: white;">Do you have any questions?</h1>
                <h1 class="contact-h-support" style="color: white;">Contact us</h1>
                <p class="con-text-p" style="color: white;">We truly care about you. Please let us know how we can improve our service. IF you wish to contact us for any matter you can reach us
                    through our forum and we will get in touch
                    with you at the earliest</p></div>
        </div>
        <div class="col-2 left-res-padding">
            <div class="vvert-map-line"> <img class="movie-con-img" src="img/laptop-working.jpg"></div>
        </div>
    </div>
</div>
</div>

<section id="about-body">
    <div class="center-container">
        <div class="center-rrow-con contact-row-color map-res-contact">
            <div class="col-2 text-align-contact res-conIcon-padding">
                <div class="vert-map-line">
                    <div class="text-align-contact"><div class="contact-icon"><i class="fa con-icon fa-phone"></i><p class="smalltext cast-text inline-text">+94 773677897</p></div>
                        <div class="contact-icon"><i class="fa con-icon fa-envelope"></i><p class="smalltext cast-text inline-text">info@abccinemas.lk</p></div>
                        <div class="contact-icon"><i class="fa con-icon fa-map-marker"></i><p class="smalltext cast-text inline-text">No. 16, Cinema Rd, Colombo 06, </p></div></div>
                </div>
            </div>
            <div class="col-2 left-res-padding">
                <iframe class="map-frame" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.575840354201!2d80.03937885069335!3d6.821329095045815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2523b05555555%3A0x546c34cd99f6f488!2sNSBM%20Green%20University!5e0!3m2!1sen!2ssg!4v1672477039013!5m2!1sen!2ssg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
    </div>





    <div id="cccontactFormID" class="contact-form-container">
        <div class="row color-contact-form">
            <div class="col-1">
                <h1 class="form-title" style="color: white">Send Us a Feedback</h1>
                <div class="form-content-contact">
                    <div class="form-container">
                        <form action="./FeedbackFromServlet" method="POST" name="form" id="form">
                            <input type="text"name="fname" class="textboxPadding" placeholder="First Name" width="200px"><input type="text" class="textboxPadding" name="lname" placeholder="Last Name"><br>
                            <input type="email"name="email" id="email" class="textboxPadding extraPadding" placeholder="Email"> <br>
                            <textarea name="description" class="textboxpadding textbox-des" placeholder="Description"></textarea>

                            <c:if test="${message != null}">
                                <div align="center">
                                    <h4 class="message" style="color: white">${message}</h4>
                                </div>
                            </c:if>

                            <div class="button-container btn-div" style="padding-bottom: 0; margin-bottom: 0">
                                <a href="#" style="--color: red"><span><input type="submit" value="SUBMIT"></span><i></i></a>
                            </div>
                        </form>
                    </div></div>
            </div>
        </div>
    </div>
</section>
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
                    <li><a href="index.jsp#hhhomePageSlider" >Now Showing</a></li>
                    <li><a href="#">Privacy policy</a></li>
                    <li><a href="#">Terms & Conditions</a></li>
                </ul>
            </div>
            <div class="fcol-3">
                <p class="ftext">Follow us for exclusive offers and content!</p>
                <a href="#" class="fa soc-icon fb fa-facebook" style="font-size: 24px"></a>
                <a href="#" class="fa soc-icon ig fa-instagram" style="font-size: 24px"></a>
                <a href="#" class="fa soc-icon tw fa-twitter" style="font-size: 24px"></a>
                <a href="#" class="fa soc-icon yt fa-youtube" style="font-size: 24px"></a>

            </div>
        </div>
        <hr class="footerhr">
    </div>

    <div class="fcontainer ">
        <div class="frow-last row-end-color">
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
    const form = document.querySelector("form");
    form.addEventListener("submit", function(event) {
        event.preventDefault();

        const firstName = form.querySelector("input[name='fname']");
        const lastName = form.querySelector("input[name='lname']");
        const email = form.querySelector("input[name='email']");
        const description = form.querySelector("textarea");

        if (!firstName.value) {
            alert("Please enter a first name.");
            return;
        }

        if (!lastName.value) {
            alert("Please enter a last name.");
            return;
        }

        if (!email.value) {
            alert("Please enter an email.");
            return;
        }
        else if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.value)) {
            alert("Please enter a valid email.");
            return;
        }

        if (!description.value) {
            alert("Please enter a description.");
            return;
        }

        // If the form is valid, then submit it
        form.submit();
    });
</script>
</body>
</html>
