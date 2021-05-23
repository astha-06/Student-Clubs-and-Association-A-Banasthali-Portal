<%-- 
    Document   : HomepageHome
    Created on : Apr 16, 2021, 6:51:23 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Student Clubs And Associations - A Banasthali Portal</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />

  </head>
  <body>
    <div class="parallax-window" data-parallax="scroll" data-image-src="img/Home Bg.gif">

      <div class="container-fluid">
        <div class="row tm-brand-row">  
            <img src="images/logo.jpg" width="80" height="80" alt="" class="rounded-circle">
          <div class="col-lg-4 col-11">             
            <div class="tm-brand-container">
                
              <div class="tm-brand-text">
                  
                 <h1   class="tm-brand-name font-weight-bold text-white">A Banasthali Portal</h1>
                 <p class="small text-white">Connecting Students and Clubs</p>
              </div>
            </div>
          </div>
          <div class="col-lg-7 col-1">
              
            <div class="tm-nav">
                  <nav class="navbar navbar-expand-lg navbar-dark text-white font-weight-bold tm-navbar">
                <button class="navbar-toggler" type="button"
                  data-toggle="collapse" data-target="#navbarNav"
                  aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="HomepageClubs.jsp">Clubs</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="HomepageWorking.jsp">Working</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="HomepageMentorMessage.jsp">Mentor's Message</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="LoginPage.jsp">Login</a>
                    </li>                    
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>

        <section class="row" id="tmHome">
          <div class="col-12 tm-home-container">
            <div class="text-white tm-home-left">
              <p class="text-uppercase tm-slogan">Welcome to</p>
              <hr class="tm-home-hr" />

              <h2 class="tm-home-title font-weight-bold text-white">STUDENT CLUBS AND ASSOCIATIONS</h2>
              <p class="tm-home-text font-weight-bold">
                  <ul>
                      <li>Browse Banasthali Vidyapith's Official Student
                Clubs and their activities</li>
                  </ul>
                  <ul>
                      <li>Look up the upcoming events and workshops</li>
                  </ul>
                   <ul>
                       <li>Find out when and where to participate</li>
                   </ul>
                   <ul>
                       <li>Know how to join your favorite team</li>
                   </ul>
              </p>
            </div>
            <div class="tm-home-right">
              <img src="img/Home Side Pic.jpg" alt="Activities" />
            </div>
          </div>
        </section>

        

        <!-- Page footer -->
        <footer>
            <div class="container">
                <div class="row">
            <div class="col-6 tm-tabs-container">
              <div class="tm-tab-links">
                    <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                        <a href="map.jsp">
  
                            <div class="icon-wrap"><i class="fas fa-3x fa-map-marker"></i></div>
                            Our Location
                        </a>
                    </ul>
                </div> 
               </div>
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
      </div>
      <!-- .container-fluid -->
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
