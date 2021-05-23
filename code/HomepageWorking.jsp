<%-- 
    Document   : HomepageWorking
    Created on : Apr 16, 2021, 7:01:09 PM
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
    <title>A Banasthali Portal - Working</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
  </head>
  <body id="servicesPage">
    <div class="parallax-window" data-parallax="scroll" data-image-src="img/Working Bg.gif">
      <div class="container-fluid">
        <div class="row tm-brand-row">
            <img src="images/logo.jpg" width="80" height="80" alt="" class="rounded-circle"/>
          <div class="col-lg-4 col-11">
              <div class="tm-brand-container">
              <div class="tm-brand-texts">
                <h1 class="tm-brand-name font-weight-bold text-white">A Banasthali Portal</h1>
                <p class="small text-white">Connecting Students and Clubs</p>
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
                      <a class="nav-link" href="HomepageHome.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="HomepageClubs.jsp">Clubs</a>
                    </li>
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Working <span class="sr-only">(current)</span></a>
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

        <!-- Portal header -->
        <section class="row" id="tmServices">
          <div class="col-12">
            <div class="parallax-window tm-services-parallax-header"
                 data-parallax="scroll"
                 data-z-index="101"
                 data-image-src="img/Working Bg(2).jpeg">

                 <div class="tm-bg-black-transparent text-center tm-services-header">
                    <h2 class="text-uppercase tm-services-page-title">Portal Features</h2>
                </div>
            </div>
          </div>  

          <div class="col-12">
            <div class="tm-bg-black-transparent tm-services-detail-box">
                <p>
                    Student Clubs and Associations was a project taken up by a group of students of CSE Batch of 2022 in 2021 in order to
                    make the functioning of the clubs of Banasthali Vidyapith smooth and technologically advanced. This portal includes the information about various clubs, conducting various events and workshops.
                    Below mentioned are its major features which aims at providing the students of Banasthali Vidyapith with what each club has to offer.
                </p>
            </div>
          </div> 

          <div class="col-12 tm-tabs-container">
              <div class="tm-tab-links">
                    <ul class="tabs clearfix" data-tabgroup="first-tab-group">
                        <li><a href="#tab1" class="active">
                            <div class="icon-wrap"><i class="fas fa-2x fa-bullhorn"></i></div>
                            Events
                        </a></li>
                        <li><a href="#tab2" class="">
                            <div class="icon-wrap"><i class="fas fa-2x fa-bell"></i></div>
                            Workshops
                        </a></li>
                        <li><a href="#tab3" class="">
                            <div class="icon-wrap"><i class="fas fa-2x fa-comment"></i></div>
                            Feedback
                        </a></li>
                        <li><a href="#tab4" class="">
                            <div class="icon-wrap"><i class="fas fa-2x fa-question"></i></div>
                            Queries
                        </a></li>
                    </ul>
                </div>  
                <div class="tm-tab-contents">
                    <div id="first-tab-group" class="tabgroup">
                        <div id="tab1">                            
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Events</h3>
                                <p class="tm-service-tab-p">Get information about the previous as well as upcoming events
                                </p>
                                <p class="mb-0">
                                    Every Club has  registration portal for the events conducted by them. Students can get themselves registered for any number of events
                                </p>
                            </div>
                        </div>
                        <div id="tab2">
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Workshops</h3>
                                <p class="tm-service-tab-p">Know about the upcoming inhouse as well as outhouse workshops and register for them
                                </p>
                                <p class="mb-0">
                                   Every Club has  registration portal for the workshops conducted by them. Students can get themselves registered for any number of workshops
                                </p>
                            </div>
                        </div>
                        <div id="tab3">
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Feedback</h3>
                                <p class="tm-service-tab-p">Provide with your experience about a particular club's event or workshop for future improvements and motivation.
                                </p>
                            </div>
                        </div>
                        <div id="tab4">
                            <div class="text-content">
                                <h3 class="tm-service-tab-title">Queries</h3>
                                <p class="tm-service-tab-p">Post questions on every club's sub-portal in the queries section to have a clear understanding of your area of interest
                                </p>
                            </div>
                        </div>
                    </div>
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
    <script>
        $(function(){
            $('.tabgroup > div').hide();
            $('.tabgroup > div:first-of-type').show();  
            $('.tabs a').click(function(e){
              e.preventDefault();
              var $this = $(this),
                  tabgroup = '#'+$this.parents('.tabs').data('tabgroup'),
                  others = $this.closest('li').siblings().children('a'),
                  target = $this.attr('href');
              others.removeClass('active');
              $this.addClass('active');
              $(tabgroup).children('div').hide();
              $(target).show();

              // Scroll to tab content (for mobile)
              if($(window).width() < 992) {
                  $('html, body').animate({
                      scrollTop: $("#first-tab-group").offset().top
                  }, 200);    
              }              
            })  
        });
        
    </script>
  </body>
</html>
