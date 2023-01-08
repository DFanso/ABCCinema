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
    <title>Movie Page</title>
  <link rel="stylesheet" href="style.css">
  <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<!----------------------Navigation bar---------------------->
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

<!-------------------Movie Cover Image-------------------->
<div class="movie-con">
  <div class="movie-row">
    <div class="movie-col1">
      <img src="img/wakandaCover.png" class="movie-cover-img">
      <div class="movieCover-icon inline-movieIcon">
        <i class="fa border-icon">&#xf144;
          <p class="castIcon-text movieIcon-text"  onclick="location.href='#'">Watch Trailer</p></i>
        <i class="fa border-icon">&#xf145;
          <p class="castIcon-text movieIcon-text" onclick="location.href='seatingpage.jsp'">Buy Tickets</p></i>
      </div>
    </div>
  </div>
</div>
<!-----------------Poster sect--------------------------->
<section id="aboutPoster">
  <div class="movie-con-poster movie-pos-padding">
    <div class="movie-row movie-pos-sec">
      <div class="movie-col2">
        <div class="movie-image-wrapper"><img src="img/bookingPage/poster2.png" alt="posterImg" class="movie-smallPoster-img"></div>
        <div class="movie-pos-text"><p class="small-moviePos-content"><b>Director</b>: Ryan Coogler</p>
          <p class="small-moviePos-content"><b>Main Cast</b>: Lupita Nyong'o, Martin Freeman, Letitia Wright, Danai Gurira, Winston Duke</p>
          <p class="small-moviePos-content"><b>Genre</b>: Action, Adventure, Drama</p>
          <p class="small-moviePos-content"><b>Running Time</b>: 161 MIN Release Date: 10</p>
          <p class="small-moviePos-content"><b>Date</b>: 10 Nov 2022</p>
          <p class="small-moviePos-content"><b>Rating</b>: M - Mature themes and violence </p>
          <p class="small-moviePos-content"><b>Language</b>: English</p>
        </div>
      </div>
    </div>

    <!-------------------Poster description------------------------------------>
    <div class="movie-con">
      <div class="movie-row movie-des-padding">
        <div class="movie-col1">
          <h1 class="movie-des-topic">Description</h1>
          <div class="movie-des-text-div"><p class="movie-des-text">In Marvel Studios’ “Black Panther: Wakanda Forever,” Queen Ramonda (Angela Bassett),
            Shuri (Letitia Wright), M’Baku (Winston Duke), Okoye (Danai Gurira), and the Dora Milaje
            (including Florence Kasumba), fight to protect their nation from intervening world powers
            in the wake of King T’Challa’s death. As the Wakandans strive to embrace their next chapter,
            the heroes must band together with the help of War Dog Nakia (Lupita Nyong’o) and Everett Ross
            (Martin Freeman) and forge a new path for the kingdom of Wakanda. Introducing Tenoch Huerta
            as Namor, king of a hidden undersea nation, the film also stars Dominique Thorne, Michaela
            Coel, Mabel Cadena, and Alex Livanalli.
          </p></div>
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
</body>
</html>
