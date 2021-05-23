<%-- 
    Document   : AayamMainPage
    Created on : Apr 17, 2021, 4:59:46 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Aayam Main Page</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.jpg">

        <link rel="stylesheet" href="css(3)/bootstrap.min.css">
        <link rel="stylesheet" href="css(3)/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css(3)/fontAwesome.css">
        <link rel="stylesheet" href="css(3)/light-box.css">
        <link rel="stylesheet" href="css(3)/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js(3)/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>
    <body>
        <nav>
            <div class="logo">
                <a class="navbar-brand" href="#">
                    <img src="images/logo.jpg" class="circular--square" width="70" height="70" alt=""/>
                </a>
                <a href="HomepageHome.jsp">Student Associations<em> And Clubs</em></a>
            </div>
            <div class="menu-icon">
                <span></span>
            </div>
        </nav>

        <div id="video-container">
            <div class="video-overlay"></div>
            <div class="video-content">
                <div class="inner">
                    <div class="regimg">
                        <center>
                            <img src="img/Aayam Logo.jpg" class="circular--square" width="200" height="200" alt="">
                        </center>
                    </div>
                   <h1>Aayam</h1>                   
                    <div class="scroll-icon">
                        <a class="scrollTo" data-scrollTo="portfolio" href="#"><img src="img/scroll-icon.png" alt=""></a>
                    </div>    
                </div>
            </div>
            <video autoplay loop muted>
                <source src="videos/AayamMainPageVideo.mp4" type="video/mp4" />
            </video>
        </div>


        <div class="grid-portfolio" id="portfolio">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <div class="portfolio-item">
                            <div class="thumb">
                                <a href="AayamAboutUs.jsp"><img src="img/AayamLP1.jpeg"><div class="hover-effect">
                                        <div class="hover-content">
                                            <h1>About Us</h1>
                                        </div>
                                    </div></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="portfolio-item">
                            <div class="thumb">
                                <a href="AayamEvents.jsp"><img src="img/AayamLP2.jpg"><div class="hover-effect">
                                        <div class="hover-content">
                                            <h1>Events</h1>
                                        </div>
                                    </div></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <div class="portfolio-item">
                            <div class="thumb">
                                <a href="AayamWorkshops.jsp"><img src="img/AayamLP3.jpg"><div class="hover-effect">
                                        <div class="hover-content">
                                            <h1>Workshops</h1>
                                        </div>
                                    </div></a>
                            </div>
                        </div>
                    </div>


                    <!--Footer-->
                    <footer>
                        <div class="col-md-12 col-sm-12">
                            <div class="copyright-text">
                                <p class="col-12 text-white text-center tm-copyright-text">
                                    Copyright &copy 2021 <a href="#" class="tm-copyright-link">Student Clubs And Associations - A Banasthali Portal
                                        Designed by Group CS08</a>
                                </p>
                            </div>
                        </div>
                    </footer>


                    <section class="overlay-menu">
                        <div class="container">
                            <div class="row">
                                <div class="main-menu">
                                    <ul>
                                        <li>
                                            <a href="HomepageClubs.jsp">Clubs</a>
                                        </li>
                                        <li>
                                            <a href="aayamfeedbackqueries.jsp">Feedback/Queries</a>
                                        </li>
                                </div>
                            </div>
                        </div>
                    </section>

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
                    <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

                    <script src="js(3)/vendor/bootstrap.min.js"></script>

                    <script src="js(3)/plugins.js"></script>
                    <script src="js(3)/main.js"></script>

                    </body>
                    </html>
