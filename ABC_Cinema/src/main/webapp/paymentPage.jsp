<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
        .payment-sub-btn{
            font-size: 20px;
            padding:18px 50px;
            border-radius:25px;
            background-color:#3D0000;
            color: white;
            border: 2px solid white;

        }
        .payment-sub-btn:hover{
            transition: 1s;
            background-color:red;

        }
        @media (max-width: 550px){
            .payment-content {
                margin: 3rem 1.5rem;
            }
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
                    <div class="form-row">
                        <input type="text" id="name" name="name" placeholder="Name: " class="form-input">
                        <input type="text"id="email" name="email" placeholder="Email: " class="form-input">
                    </div>
                    <div class="form-row">
                        <input type="text" id="phone"name="phone" placeholder="Tel No: " class="form-input">
                        <input type="text" id="NIC" name="NIC" placeholder="NIC NO: " class="form-input">
                    </div>
                    <div class="form-row">
                        <div class="button-container">
                            <input id="submit" type="submit" class="payment-sub-btn" value="SUBMIT" onclick="return validateForm(),TestsFunction()" >
                        </div>
                    </div>
            </div>
        </div>
        <hr class="section-divider"><br>
        <div id="paypalSection" style="display:none">
            <h1 class="payment-header">Payment Details</h1>
            <div class="poster-container">
                <div class="poster-row">
                    <div class="poster-col-2">
                        <div class="posterContainer">
                            <div class="posterImg">
                                <img src="<c:out value='${movieCardImageURL}'/> " alt="poster" style="width:360px; height: 474px">
                            </div>
                            <div class="posterInfo">
                                <p><b><c:out value="${movieName}"/></b><br><span>Date:<c:out value="${date}"/></span><br><br><span>Time:<c:out value="${time}"/></span><br><span>$ <c:out value="${totalPrice}"/></span></p>
                                <hr/>
                            </div>
                        </div>
                    </div>
                </div>


                <div id="payment-section" class="payment-section">
                    <div class="payment-content">
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
    <script src="https://www.paypal.com/sdk/js?client-id=AUunmkeJhxwrVs97CClrFbt6NtUIv8UjZwolUOi1xVNV07ZbNNFShG8Y1T_cOQEXU_kCzadutOqfI5GW"></script>
<%--<c:set var="totalPricePerDay" value="'${totalPrice / 360}'" />--%>
<script>
    <%--var totalvalue = '<c:out value="${totalPricePerDay}"/360>';--%>
    // var offerPriceValue = offerFooterPriceValue[i].innerHTML;
    paypal.Buttons({
        createOrder: function(data, actions) {
            return actions.order.create({
                purchase_units: [{
                    amount: {
                        value: '<c:out value="${totalPrice}"/>'
                    }
                }]
            });
        },
        onApprove: function(data, actions) {
            // This function captures the funds from the transaction.
            return actions.order.capture().then(function(details) {
                let transactionId = data.orderID;
                console.log(transactionId);
                onTransactionComplete(transactionId);
                location.href='payment-successful.jsp';

            });
        },
        oncancel:function (data){
            window.location.href = "index.jsp";
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
    selectedSeats=<c:out value="${selectedSeat}"/>;
    dataFromDB=<c:out value="${dataFromDB}"/>;

    function sendDatatoservlet(){
    $.ajax({
        type: "POST",
        url: "paymentServlet",
        data: {selectedSeat:selectedSeats,dataFromDB:dataFromDB}, // Send the variable to the servlet

        async: false
    })};
</script>

<script>
    function onTransactionComplete(transID) {
        let name = document.getElementById("name").value;
        let email = document.getElementById("email").value;
        let telNo = document.getElementById("phone").value;
        let NICNo = document.getElementById("NIC").value;

        let selectedSeats = '<c:out value="${selectedSeats}"/>';
        let dataFromDB = '<c:out value="${dataFromDB}"/>';
        let movieName = '<c:out value="${movieName}"/>';
        let movieDate = '<c:out value="${date}"/>';
        let time = '<c:out value="${time}"/>';
        transID = transID;

        $.ajax({
            type: "POST",
            url: "./paymentServlet",
            data: {selectedSeats:selectedSeats, dataFromDB:dataFromDB,
                movieName:movieName, date:movieDate, time:time, transID:transID,
                name:name, email:email, phone:telNo, NIC:NICNo},
            success: function() {

                console.log("Data sent to Servlet!");
            },
            error: function() {
                console.log("Error sending data to Servlet!");
            }
        });
    }
</script>



<script>
    function validateForm() {
        // Get the input elements
        let name = document.getElementById("name");
        let email = document.getElementById("email");
        let phone = document.getElementById("phone");
        let NIC = document.getElementById("NIC");

        // Regular expressions for validation
        let emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        let phoneRegex = /^\d{10}$/;
        let NICRegex = /^([0-9]{9}[x|X|v|V]|[0-9]{12})$/;

        // Validate the inputs
        if (!emailRegex.test(email.value)) {
            alert("Invalid email address");
            return false;
        }
        if (!phoneRegex.test(phone.value)) {
            alert("Invalid phone number");
            return false;
        }
        if (!NICRegex.test(NIC.value)) {
            alert("Invalid NIC number");
            return false;
        }
        // If all inputs are valid
        window.scrollTo({
            top: document.getElementById("payment-section").offsetTop,
            behavior: 'smooth'
        });
        return true;
    }
    function TestsFunction() {
        var T = document.getElementById("paypalSection");
        if(validateForm()===true){
            T.style.display = "block";// <-- Set it to block
        }
        window.scrollTo(0,700,'slow');
    }
</script>
<%--<script>--%>
<%--    function TestsFunction() {--%>
<%--        var T = document.getElementById("paypalSection");--%>
<%--        T.style.display = "block";  // <-- Set it to block--%>
<%--    }--%>
<%--</script>--%>
</body>
</html>