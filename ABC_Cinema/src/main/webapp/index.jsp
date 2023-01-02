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
        <div class="Now-Showing-Section">
            <h1>Now Showing</h1>
            <div class="movie-container">
                <!-- item 1 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
                <!-- item 2 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
                <!-- item 3 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- next row -->
            <div class="movie-container">
                <!-- item 1 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
                <!-- item 2 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
                <!-- item 3 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="movie-container">
                <!-- item 1 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
                <!-- item 2 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
                <!-- item 3 -->
                <div class="movie-item">
                    <div class="movie-item-content">
                        <h3>Name Of The Movie</h3>
                        <p>rating</p>
                        <div class="movie-buttons">
                            <button>Book Tickets</button>
                            <button>Movie Trailer</button>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
    </section>
    <section>
        <div class="up-coming-movie-section">
            <h1>Upcoming Movies</h1>
            <div class="up-movie-summary">
                <img src="img/avatar.png" alt="avatar" width="45%">
                <div class="up-typo">
                    <h3>AVATARR: The Way Of Water</h3>
                    <p>Jake Sully lives with his newfound family formed on the planet of Pandora.
                        Once a familiar threat returns to finish what was previously started, 
                        Jake must work with Neytiri and the army of the Na'vi race to protect their
                        planet.
                    </p>
                    <div class="up-buttons">
                        <button>Book Tickets</button>
                        <button>Movie Trailer</button>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="UpComingMovieRow">
            <img src="img/BlackAdamPoster.png" alt="ttpp">
            <img src="img/ticketToParadisePoster.png" alt="ttpp">
            <img src="img/drishyam.png" alt="ttpp">
            <img src="img/ends.png" alt="ttpp">
        </div>
    </section>
    <footer>
        <div class="footer-upper-section">
            <div class="footer-links">
                <a href="#">Home</a>
                <a href="#">About Us</a>
                <a href="#">Contact Us</a>
                <a href="#">FAQ's</a>
                <a href="#">Feedback</a>
            </div>
            <div class="movie-policie-footer">
                <a href="#">Now Showing</a>
                <a href="#">Upcoming Movie</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms & Conditions</a>
            </div>
            <div class="social-download-footer">
                <p>Let's get social!</p>
                <div class="footer-social">
                    <img src="img/social/insta-icon.png" alt="insta">
                    <img src="img/social/twitter-icon.png" alt="twitter">
                    <img src="img/social/youtube.png" alt="youtube">
                    <img src="img/social/tiktok.png" alt="tiktok">
                </div>
                <h3>ABC<font color="red">CINEMA</font> App for Mobile</h3>
                <div class="footer-stickers">
                    <img src="img/social/Appstore.png" alt="Appstore">
                    <img src="img/social/GooglePlay.png" alt="googleplay">
                </div>
            </div>
        </div>
        <div class="footer-lower-section">
            <div class="black-footer">
                <h5 class="copyright-footer">Copyright &#169; 2022 ABCCINEMA</h5>
                <h1>ABC<font color="red">CINEMA</font></h1>
                <h5 class="allrights-footer">All rights reserved.</h5>
            </div>
            
        </div>
    </footer>
    <script src="navtoggle.js"></script>
</body>
</html>