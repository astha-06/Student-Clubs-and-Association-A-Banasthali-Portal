<%-- 
    Document   : HomepageMentorMessage
    Created on : Apr 16, 2021, 7:03:00 PM
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
    <title>A Banasthali Portal - Mentor's Message</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="slick/slick.css"/>    
    <link rel="stylesheet" type="text/css" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="css/templatemo-style.css" />
  </head>
  <body id="servicesPage">
    <div class="parallax-window" data-parallax="scroll" data-image-src="img/Mentors's Message Bg.gif">
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
                    <li class="nav-item">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="HomepageWorking.jsp">Working</a>
                    </li>
                    <li class="nav-item green-highlight active">
                      <div class="tm-nav-link-highlight"></div>
                      <a class="nav-link" href="#">Mentor's Message <span class="sr-only">(current)</span></a>
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

        <!-- Mentor's Message header -->
        <section class="row" id="tmServices">
          <div class="col-12">
            <div class="parallax-window tm-services-parallax-header tm-testimonials-parallax-header"
                 data-parallax="scroll"
                 data-z-index="101"
                 data-image-src="img/Mentors's Message Bg(2).jpeg">

                 <div class="tm-bg-black-transparent text-center tm-services-header tm-testimonials-header">
                    <h2 class="text-uppercase tm-services-page-title tm-testimonials-page-title">Mentor's Message</h2>
                    <p class="tm-services-description mb-0 small">
                        A piece of experience from the experienced
                    </p>
                </div>
            </div>
          </div>   
        </section>

        <section class="row tm-testimonials-section">
            <div class="col-12 tm-carousel">              
                <div class="tm-bg-black-transparent tm-testimonial-box text-center">                    
                  <div class="tm-person-img-container">
                    <img src="img/Albert_Einstein.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>
                  <h3 class="tm-about-name tm-uppercase font-weight-bold">Albert Einstein</h3>
                  <p class="small font-weight-lighter ">American Physicist</p>
                  <p class="tm-about-description">
                    Anyone who has never made a mistake has never tried anything new
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/Sir_CV_Raman.jpeg" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Sir C.V. Raman</h3>
                  <p class="small font-weight-lighter ">Indian Physicist</p>
                  <p class="tm-about-description">
                      I would like to tell the young men and women before me not to lose hope and courage. Success can only come to you by courageous devotion to the task lying in front of you
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/Richard-Feynman.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Richard Feynman</h3>
                  <p class="small font-weight-lighter ">American Physicist</p>
                  <p class="tm-about-description">
                   The first principle is that you must not fool yourself and you are the easiest person to fool
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/Martin-luther-king-jr.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Martin Luther king Jr.</h3>
                  <p class="small font-weight-lighter ">African American Baptist minister and activist</p>
                  <p class="tm-about-description">
                    The ultimate measure of a man is not where he stands in moments of comfort and convenience, but where he stands at times of challenge and controversy
                  </p>
                </div>    
                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/Aristotle.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>              
                  <h3 class="tm-about-name tm-uppercase">Aristotle</h3>
                  <p class="small font-weight-lighter ">Greek Philosopher</p>
                  <p class="tm-about-description">
                       One swallow does not make a summer, neither does one fine day; similarly one day or brief time of happiness does not make a person entirely happy
                  </p>
                </div>

                <div class="tm-bg-black-transparent tm-testimonial-box text-center">
                  <div class="tm-person-img-container">
                    <img src="img/Sir_Issac_Newton.jpg" alt="Image" class="img-fluid mx-auto"/>
                  </div>
                  <h3 class="tm-about-name tm-uppercase">Sir Issac Newton</h3>
                     <p class="small font-weight-lighter ">English Mathematician</p>
                  <p class="tm-about-description">
                            This most beautiful system of the sun, planets and comets, could only proceed from the counsel and dominion of an intelligent and powerful Being
                  </p>
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
    <script src="slick/slick.min.js"></script>
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

            $('.tm-carousel').slick({
                dots: true,
                  infinite: false,
                  arrows: false,
                  speed: 300,
                  slidesToShow: 3,
                  slidesToScroll: 2,
                  responsive: [
                    {
                      breakpoint: 1024,
                      settings: {
                          arrows: false,
                        slidesToShow: 2,
                        slidesToScroll: 1,
                        infinite: true,
                        dots: true
                      }
                    },
                    {
                      breakpoint: 600,
                      settings: {
                          arrows: false,
                        slidesToShow: 1,
                        slidesToScroll: 1
                      }
                    },
                    {
                      breakpoint: 480,
                      settings: {
                          arrows: false,
                        slidesToShow: 1,
                        slidesToScroll: 1
                      }
                    }
                    // You can unslick at a given breakpoint now by adding:
                    // settings: "unslick"
                    // instead of a settings object
                  ]
            });  
        });
        
    </script>
  </body>
</html>
