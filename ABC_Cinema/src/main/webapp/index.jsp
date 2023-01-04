<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page Demo</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="wallpaperImg">
        <header>
            <h1>ABC<font color="red">CINEMA</font></h1>
            <!-- Nav -->
            <div class="topnav" id="myTopnav">
                <a href="#home" class="active">Home</a>
                <a href="bookingPage.jsp">About Us</a>
                <a href="#contact">Contact Us</a>
                <a href="instagram.com"><img src="img/Insta.png" alt="insta"></a>
                <a href="twitter.com"><img src="img/Twitter.png" alt="twitter"></a>
                <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                  <i class="fa fa-bars"></i>
                </a>
            </div>
        </header>
    </div>
    <section class="background-gradient">
    
        <div class="getTheBestExperience">
            <center><h1>Get The Best Experience</h1></center>
            <div class="experieceimg">
                <img src="img/dolby.png" alt="dolbyAtmos" width="160px" height="64px">
                <img src="img/4k.png" alt="4K" width="78px" height="64px">
                <img src="img/chair.png" alt="comfyChair" width="78px" height="64px">
                <img src="img/Movie.png" alt="movie" width="78px" height="64px">
            </div>
        </div>
        <!-- Now Showing Movies -->
        <h1 class="nowshowingHeading">Now Showing</h1>
        <div class="container"> 
            <div class="slider">
                <div class="box1 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1 class="slider-Content-h">Strange World</h1>
                        <p class="slider-Content-p">
                            Lorem ipsum dolor sit amet, consectetur adipiscing 
                            elit. Integer lacinia dui lectus. Donec scelerisque ipsum
                            diam, ac mattis orci pellentesque eget. 
                        </p class="slider-Content">
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                
                <div class="box2 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1 class="slider-Content-h">Avatar: The Way Of Water</h1>
                        <p class="slider-Content-p">
                            Lorem ipsum dolor sit amet, consectetur adipiscing 
                            elit. Integer lacinia dui lectus. Donec scelerisque ipsum
                            diam, ac mattis orci pellentesque eget. 
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                <div class="box3 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1 class="slider-Content-h">John Wick: Chapter 4</h1>
                        <p class="slider-Content-p">
                            Lorem ipsum dolor sit amet, consectetur adipiscing 
                            elit. Integer lacinia dui lectus. Donec scelerisque ipsum
                            diam, ac mattis orci pellentesque eget. 
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                <div class="box4 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1 class="slider-Content-h">Black Adam</h1>
                        <p class="slider-Content-p">
                            Lorem ipsum dolor sit amet, consectetur adipiscing 
                            elit. Integer lacinia dui lectus. Donec scelerisque ipsum
                            diam, ac mattis orci pellentesque eget. 
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
                <div class="box5 box">
                    <div class="bg"></div>
                    <div class="details">
                        <h1 class="slider-Content">Puss in Boots: The Last Wish</h1>
                        <p class="slider-Content">
                            Lorem ipsum dolor sit amet, consectetur adipiscing 
                            elit. Integer lacinia dui lectus. Donec scelerisque ipsum
                            diam, ac mattis orci pellentesque eget. 
                        </p>
                        <button>Check Now</button>
                    </div>

                    <div class="illustration"><div class="inner"></div></div>
                </div>
                                
            </div>

            <svg xmlns="http://www.w3.org/2000/svg" class="prev" width="56.898" height="91" viewBox="0 0 56.898 91"><path d="M45.5,0,91,56.9,48.452,24.068,0,56.9Z" transform="translate(0 91) rotate(-90)" fill="#fff"/></svg>
            <svg xmlns="http://www.w3.org/2000/svg" class="next" width="56.898" height="91" viewBox="0 0 56.898 91"><path d="M45.5,0,91,56.9,48.452,24.068,0,56.9Z" transform="translate(56.898) rotate(90)" fill="#fff"/></svg>
            <div class="trail">
                    <div class="box1 active">1</div>
                    <div class="box2">2</div>
                    <div class="box3">3</div>
                    <div class="box4">4</div>
                    <div class="box5">5</div>
            </div>
            <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js"></script>
            <script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/CSSRulePlugin3.min.js"></script>
        </div>   
        
    </section>
    <!-- upcoming movies -->
    
        <div class="up-coming-movie-section">
            <center><h1 class="upcomingHeading">Upcoming Movies</h1></center>
    <!-- <section>
        
        <div class="seating-container">
            <div class="movie-row seating-row">
                <div class="movie seating-col-4">
                    <img src="img/blackAdam.png" alt="1">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/drishyam.png" alt="2">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/ticketToParadisePoster.png" alt="3">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/ends.png" alt="4">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/avatarWOW.jpg" alt="5">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/pussInBoots.jpg" alt="6">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/blackAdam.png" alt="1">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/drishyam.png" alt="2">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/ticketToParadisePoster.png" alt="3">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/ends.png" alt="4">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/avatarWOW.jpg" alt="5">
                </div>
                <div class="movie seating-col-4">
                    <img src="img/pussInBoots.jpg" alt="6">
                </div>
            </div>
          </div>

    </section> -->


    <section class="product" style="background: transparent;"> 
        <h2 class="product-category">best selling</h2>
        <button class="pre-btn"><img src="img/icon-next.png" alt=""></button>
        <button class="nxt-btn"><img src="img/icon-next.png" alt=""></button>
        <div class="product-container">
            <div class="product-card">
                <div class="product-image">
                    <img src="img/avatarWOW.jpg" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Avatar: The Way Of Water</h2>
                    <button>Check Now</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="img/blackAdam.png" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Black Adam</h2>
                    <button>Check Now</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="img/drishyam.png" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Drishyam Movie</h2>
                    <button>Check Now</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="img/ends.png" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Ends Movie</h2>
                    <button>Check Now</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="img/ticketToParadisePoster.png" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Ticket To Paradise</h2>
                    <button>Check Now</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="img/pussInBoots.jpg" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">Puss in Boots: The Last Wish</h2>
                    <button>Check Now</button>
                </div>
            </div>
            <div class="product-card">
                <div class="product-image">
                    <img src="img/strangeWorld.jpg" class="product-thumb" alt="">
                </div>
                <div class="product-info">
                    <h2 class="product-brand">The Strange World</h2>
                    <button>Check Now</button>
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
    <script src="slider.js"></script>
    <script src="swiperSlider.js"></script>
    <script>
        // movieROw

        var movieRow = document.querySelector('.movie-row');
        var movies = movieRow.children;
        var movieWidth = movies[0].offsetWidth;
        var currentSlide = 0;

        setInterval(nextSlide, 2000);

        function nextSlide() {
        currentSlide++;
        if (currentSlide >= movies.length) {
            currentSlide = 0;
            movieRow.scrollLeft = 0;
        } else {
            movieRow.scrollLeft += movieWidth;
        }
    }

    </script>
</body>
</html>