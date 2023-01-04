<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/4/2023
  Time: 2:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200&family=Open+Sans&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@100&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link href="https://fonts.googleapis.com/css2?family=PT+Sans&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<!----------------------Navigation bar---------------------->
<section id="header">
  <div class="nav flex-row">
    <i class="fa fa-bars menu-icon" style="font-size:24px" onclick="myFunction()"></i>
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
  <!----------------------below navbar---------------------->
  <div class="Moviecontainer ">
    <div class="row">
      <div class="col-1">
        <img class="below-header-img" src="img/983596.jpg">
      </div>
    </div>
  </div>
</section>

<!-------------------------------testing slider-------------------------------------->


<!-------------------------below cover image------------------------------->
<section id="about-movie">
  <div class="center-container">
    <div class="center-row">
      <div class="col-3 padding-col-res">
        <h1 class="bold-text">KNIVES OUT</h1>
        <p class="bsmalltext">AVAILBLE NOW</p>
      </div>
      <div class="col-3 padding-col-res">
        <i class="fa border-icon">&#xf144;</i>
        <p class="smalltext smalltext-align">Watch Trailer</p>
        <i class="fa border-icon">&#xf145;</i>
        <p class="smalltext">Buy Tickets</p>
      </div>
      <div class="col-3">
        <img class="movie-banner banner-box-shadow" src="img/knives-out-banner.jpg">
      </div>
    </div>
  </div>




</section>



<section id="movie-description">
  <div class="center-container">
    <h2 class="con-title title-bot">MOVIE DESCRIPTION</h2>
    <div class="center-rrow">
      <div class="col-2">
        <img class="movie-des-img img-grow-movie" src="img/movie-descrip.jpg">
      </div>
      <div class="col-2 left-res-padding">
        <div class="vert-line ">
          <h3 class="smalltext smalltext-align text-left text-alignPadding">About Knives Out</h3>
          <div class="content-padding"><b><p class="smalltext smalltext-align text-left">The circumstances surrounding the death of crime novelist
            Harlan Thrombey are mysterious, but there's one thing that
            renowned Detective Benoit Blanc knows for sure -- everyone
            in the wildly dysfunctional Thrombey family is a suspect.
            Now, Blanc must sift through a web of lies and red herrings
            to uncover the truth.</p></b>
            <p class="smalltext smalltext-align text-left">
              When renowned crime novelist Harlan Thrombey (Christopher
              Plummer) is found dead at his estate just after his 85th
              birthday, the inquisitive and debonair Detective Benoit
              Blanc (Daniel Craig) is mysteriously enlisted to investigate.
              From Harlan's disfunctional family to his devoted staff,
              Blanc sifts through  a web of red herrings and self-serving
              lies to uncover the truth behind Harlan's untimely death.
            </p></div></div>
      </div>
    </div>
  </div>
  </div>

  <div class="center-container">
    <h2 class="con-title title-padding">TOP CAST</h2>
    <div class="center-row-two">
      <div class="col-2">
        <div class="text-align-img">
          <div class="vert-line"><b><p class="smalltext cast-text cast-topic-size">Cast</p><br>
            <p class="smalltext cast-text">Daniel Craig</p>
            <p class="smalltext cast-text">Ana de Armas</p>
            <p class="smalltext cast-text">Chris Evans </p>
            <p class="smalltext cast-text">Michael Shannon</p>
            <p class="smalltext cast-text">Edi Patterson</p>
            <p class="smalltext cast-text">Katherine Langford</p>
            <p class="smalltext cast-text">Jamie Lee Curtis</p>
            <p class="smalltext cast-text">Christopher Plummer</p>
            <p class="smalltext cast-text">LaKeith Stanfield</p>
          </b></div>
        </div>
      </div>
      <div class="col-2">
        <img class="movie-des-img img-grow-movie movie-englarge-res" src="img/cast.jpg">
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
        <h1 class="logo logo-res-padding"><font color="white">ABC</font><font color="#A30000">Cinema</font></h1>
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
</body>
</html>
