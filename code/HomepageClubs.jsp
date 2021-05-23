<%-- 
    Document   : HomepageClubs
    Created on : Apr 16, 2021, 6:52:41 PM
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
    <title>A Banasthali Portal - Clubs</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
  </head>
  <body id="aboutPage">
    <div class="parallax-window" data-parallax="scroll" data-image-src="img/Clubs Bg.gif">
      <div class="container-fluid">
          <div class="row tm-brand-row">
              <img src="images/logo.jpg" width="80" height="80" alt="" class="rounded-circle"/>
          <div class="col-lg-4 col-11">
             <div class="tm-brand-container">
              <div class="tm-brand-texts">
                <h1 class="tm-brand-name font-weight-bold text-dark">A Banasthali Portal</h1>
                <p class="small text-dark">Connecting Students and Clubs</p>
              </div>
            </div>
          </div>
          <div class="col-lg-7 col-1">
            <div class="tm-nav">
              <nav class="navbar navbar-expand-lg navbar-dark text-white font-weight-bold tm-navbar">
                <button
                  class="navbar-toggler"
                  type="button"
                  data-toggle="collapse"
                  data-target="#navbarNav"
                  aria-controls="navbarNav"
                  aria-expanded="false"
                  aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link text-dark" href="HomepageHome.jsp"
                        >Home</a
                      >
                    </li>
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Clubs <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link text-dark" href="HomepageWorking.jsp">Working</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link text-dark" href="HomepageMentorMessage.jsp">Mentor's Mesage</a>
                    </li>
                   
                     <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link text-dark" href="LoginPage.jsp">Login</a>
                    </li>
                  </ul>
                </div>
              </nav>
            </div>
          </div>
        </div>

        <!-- About -->
        <section class="row" id="tmAbout">
          <header class="col-12 tm-about-header">
            <h2 class="text-uppercase text-center text-dark tm-about-page-title">Clubs</h2>
            <hr class="tm-about-title-hr">
          </header>
          <div class="col-lg-4">
            <div class="tm-bg-black-transparent tm-about-box text-center">
                <div class="tm-person-img-container">
                    <img src="img/Aayam Logo.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>
              <h3 class="tm-about-name font-weight-bold">Aayam</h3>
              <p class="tm-about-description">
                Aayam is the one and only literary and creative club and magazine of Banasthali Vidyapith by the students of AIM & ACT. It is a club that believes in the power of expression which helps an individual to voice their opinions, ideas and to articulate them in various art forms such as poetry, writing, art and craft.
              </p>
                <a class="nav-link" href="AayamMainPage.jsp" >View Club Details</a><!--</button>-->
            </div>
          </div>

          <div class="col-lg-4">
            <div class="tm-bg-black-transparent tm-about-box text-center">
                <div class="tm-person-img-container">
                    <img src="img/Corona Logo.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>
              <h3 class="tm-about-name font-weight-bold">Corona</h3>
              <p class="tm-about-description">
                  Corona is the Technical Club of Banasthali Vidyapith by the students of AIM & ACT. The club brings forth the technical aspects which helps every tech pursuer to give shape to their perspective and broaden their mindsets in the field of automated advancements through their various tech events and workshops.
              </p>
              <a class="nav-link" href="CoronaMainPage.jsp" >View Club Details</a><!--</button>-->
            </div>
          </div>


          <div class="col-lg-4">
            <div class="tm-bg-black-transparent tm-about-box text-center">
                <div class="tm-person-img-container">
                    <img src="img/Samarthya Logo.jpeg" alt="Image" class="img-fluid mx-auto"/>
                  </div>
              <h3 class="tm-about-name font-weight-bold">Samarthya</h3>
              <p class="tm-about-description">
                 The only Electronics Club of Banasthali Vidyapith which comprises of Electrical students as it's club members
              </p>
                  <a class="nav-link" href="SamarthyaMainPage.jsp" >View Club Details</a><!--</button>-->
            </div>
          </div>
        </section>

        <!-- Page footer -->
        <footer class="row">
          <p class="col-12 text-white text-center tm-copyright-text">
            Copyright &copy 2021 <a href="#" class="tm-copyright-link">Student Clubs And Associations - A Banasthali Portal
            Designed by Group CS08</a>
          </p>
        </footer>
      </div>
      <!-- .container-fluid -->
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

