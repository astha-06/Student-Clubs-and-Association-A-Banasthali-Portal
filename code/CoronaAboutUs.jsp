<%-- 
    Document   : CoronaAboutUs
    Created on : Apr 20, 2021, 11:15:12 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Corona - About Us</title>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link rel="stylesheet" href="css(2)/bootstrap.min.css">
        <link rel="stylesheet" href="css(2)/font-awesome.min.css">
        <link rel="stylesheet" href="css(2)/magnific-popup.css">

        <link rel="stylesheet" href="css(2)/owl.theme.css">
        <link rel="stylesheet" href="css(2)/owl.carousel.css">

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css(2)/tooplate-style.css">

    </head>
    <body>
        <!-- PRE LOADER -->
        <div class="preloader">
            <div class="spinner">
                <span class="sk-inner-circle"></span>
            </div>
        </div>
        <!-- MENU -->
        <div class="navbar custom-navbar navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- NAVBAR HEADER -->
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                        <span class="icon icon-bar"></span>
                    </button>
                    <!-- lOGO -->
                    <a class="navbar-brand" href="#">
                        <img src="images/logo.jpg" class="circular--square" width="60" height="60" alt=""/>
                    </a>
                    <a href="HomepageHome.jsp" class="navbar-brand">Student Associations and Clubs</a>
                </div>

                <!-- MENU LINKS -->
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">

                        <li><a href="HomepageHome.jsp" class="smoothScroll">Home</a></li>
                        <li><a href="#about" class="smoothScroll">About Us</a></li>
                        <li><a href="#team" class="smoothScroll">Team</a></li> 
                        <li><a href="CoronaMainPage.jsp" class="smoothScroll">Corona</a></li>
                    </ul>
                </div>

            </div>
        </div>


        <!-- HOME -->
        <section id="home" class="parallax-section">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-12">
                        <div class="home-text font-weight-bold">
                            <h1>Corona</h1>
                        </div>
                    </div>
                </div>

                <!-- Video -->
                <video controls autoplay loop muted>
                    <source src="videos/CoronaAboutUsVideo.mp4" type="video/mp4">
                </video>
        </section>


        <!-- ABOUT -->
        <section id="about" class="parallax-section">
            <div class="container">
                <div class="row">
                    <div class="about-info text-left font-weight-bold">
                        <h1>About Us</h1>
                        <p>Corona is the Technical Club of 
                            Banasthali Vidyapith by the students of 
                            AIM & ACT. The club brings forth the 
                            technical aspects which helps every tech 
                            pursuer to give shape to their perspective 
                            and broaden their mindsets in the field of 
                            automated advancements through their various 
                            tech events and workshops</p>
                    </div>
                </div>
            </div>
        </section>


        <!-- PROJECT -->
        <section id="project" class="parallax-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <!-- PROJECT ITEM -->
                        <div class="project-item">
                            <a href="images/CoronaAboutUs1.jpg" class="image-popup">
                                <img src="images/CoronaAboutUs1.jpg" class="img-responsive" alt="">
                                <div class="project-overlay">
                                    <div class="project-info">
                                        <h1>Corona Gallery</h1>
                                        <h3>Click to pop up</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <!-- PROJECT ITEM -->
                        <div class="project-item">
                            <a href="images/CoronaAboutUs2.jpg" class="image-popup">
                                <img src="images/CoronaAboutUs2.jpg" class="img-responsive" alt="">
                                <div class="project-overlay">
                                    <div class="project-info">
                                        <h1>Corona Gallery</h1>
                                        <h3>Click to pop up</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <!-- PROJECT ITEM -->
                        <div class="project-item">
                            <a href="images/CoronaAboutUs3.jpg" class="image-popup">
                                <img src="images/CoronaAboutUs3.jpg" class="img-responsive" alt="">
                                <div class="project-overlay">
                                    <div class="project-info">
                                        <h1>Corona Gallery</h1>
                                        <h3>Click to pop up</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6">
                        <!-- PROJECT ITEM -->
                        <div class="project-item">
                            <a href="images/CoronaAboutUs4.jpg" class="image-popup">
                                <img src="images/CoronaAboutUs4.jpg" class="img-responsive" alt="">
                                <div class="project-overlay">
                                    <div class="project-info">
                                        <h1>Corona Gallery</h1>
                                        <h3>Click to pop up</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>               
                </div>
            </div>
        </section>


        <!-- TEAM -->
        <section id="team" class="parallax-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-2 col-md-8 col-sm-12">
                        <!-- SECTION TITLE -->
                        <div class="section-title">
                            <h1>Meet Our Team</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div id="owl-team" class="owl-carousel">
                        <div class="col-md-4 col-sm-4 item">
                            <div class="team-item">
                                <img src="images/CoronaTeam1.jpeg" class="img-responsive" alt="">
                                <div class="team-overlay">
                                    <ul class="social-icon">
                                        <li><a href="#" class="fa fa-twitter"></a></li>                                    
                                        <li><a href="#" class="fa fa-instagram"></a></li>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-envelope-o"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Khushi Jain</p>
                            <h4>CSE 3rd Year</h4>
                            <h3>Core Team Member</h3>
                        </div>

                        <div class="col-md-4 col-sm-4 item">
                            <div class="team-item">
                                <img src="images/CoronaTeam2.jpeg" class="img-responsive" alt="">
                                <div class="team-overlay">
                                    <ul class="social-icon">
                                        <li><a href="#" class="fa fa-twitter"></a></li>                                    
                                        <li><a href="#" class="fa fa-instagram"></a></li>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-envelope-o"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Mansi Gupta</p>
                            <h4>CSE 3rd Year</h4>
                            <h3>Core Team Member</h3>
                        </div>

                        <div class="col-md-4 col-sm-4 item">
                            <div class="team-item">
                                <img src="images/CoronaTeam3.jpeg" class="img-responsive" alt="">
                                <div class="team-overlay">
                                    <ul class="social-icon">
                                        <li><a href="#" class="fa fa-twitter"></a></li>                                    
                                        <li><a href="#" class="fa fa-instagram"></a></li>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-envelope-o"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Himanshi Kataria</p>
                            <h4>CSE 3rd Year</h4>
                            <h3>Core Team Member</h3>
                        </div>

                        <div class="col-md-4 col-sm-4 item">
                            <div class="team-item">
                                <img src="images/CoronaTeam4.jpeg" class="img-responsive" alt="">
                                <div class="team-overlay">
                                    <ul class="social-icon">
                                        <li><a href="#" class="fa fa-twitter"></a></li>                                    
                                        <li><a href="#" class="fa fa-instagram"></a></li>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-envelope-o"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Kamakshi Singh</p>
                            <h4>CSE 3rd Year</h4>
                            <h3>Core Team Member</h3>
                        </div>

                        <div class="col-md-4 col-sm-4 item">
                            <div class="team-item">
                                <img src="images/CoronaTeam5.jpeg" class="img-responsive" alt="">
                                <div class="team-overlay">
                                    <ul class="social-icon">
                                        <li><a href="#" class="fa fa-twitter"></a></li>                                    
                                        <li><a href="#" class="fa fa-instagram"></a></li>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-envelope-o"></a></li>
                                    </ul>
                                </div>
                            </div>
                            <p>Nainsy Tiwari</p>
                            <h4>CSE 3rd Year</h4>
                            <h3>Core Team Member</h3>
                        </div>
                    </div>
                </div>
        </section>

        <!-- FOOTER -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <ul class="social-icon">
                            <li><a href="#" class="fa fa-twitter"></a></li>
                            <li><a href="#" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-instagram"></a></li>
                            <li><a href="#" class="fa fa-linkedin"></a></li>
                            <li><a href="https://www.google.com/maps/place/Banasthali+University/@26.4022518,75.8737233,17z/data=!4m12!1m6!3m5!1s0x3bbfc0c282ffffff:0x4776f298b0f0587e!2sBanasthali+University!8m2!3d26.4026939!4d75.8750644!3m4!1s0x3bbfc0c282ffffff:0x4776f298b0f0587e!8m2!3d26.4026939!4d75.8750644" class="fa fa-map-marker"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-md-12 col-sm-12">
                        <div class="copyright-text">
                            <p class="col-12 text-white text-center tm-copyright-text">
                                Copyright &copy 2021 <a href="#" class="tm-copyright-link">Student Clubs And Associations - A Banasthali Portal
                                    Designed by Group CS08</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- SCRIPTS -->
        <script src="js(2)/jquery.js"></script>
        <script src="js(2)/bootstrap.min.js"></script>
        <script src="js(2)/jquery.parallax.js"></script>
        <script src="js(2)/owl.carousel.min.js"></script>
        <script src="js(2)/jquery.magnific-popup.min.js"></script>
        <script src="js(2)/magnific-popup-options.js"></script>
        <script src="js(2)/modernizr.custom.js"></script>
        <script src="js(2)/smoothscroll.js"></script>
        <script src="js(2)/custom.js"></script>

    </body>
</html>
