<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Aayam Workshops</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/3e6efceb06.js" crossorigin="anonymous"></script>
</head> 
<body >
    <style>
body {
    background-size: cover;
    background-image: url("https://images.unsplash.com/photo-1477281765962-ef34e8bb0967?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fHdvcmtzaG9wc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60");  
    /*background-position: center;  Center the image */
    background-repeat: no-repeat; /* Do not repeat the image */
    
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: right;
   display: inline-block;
   padding-top:20px;
   
}

li a {
  display: inline-block;
  color: white;
  text-align: right;
  padding: 14px 16px;
  text-decoration: crimson;
}

li a:hover {
    background-color: #ff6666;
}

.active {
  background-color: red;
  
}

.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;  /*rgb(242, 213, 131)*/
  color: white;
  text-align: center;
}
.carousel-inner{
    margin: auto;
}
.navbar-brand{
    padding-left: 20px;
}

</style>

<ul>
 <nav>  
     <a class="navbar-brand" href="#">
    <img src="images/logo.jpg" width="90" height="70" alt=""/>
    </a>
     <li style="width: 85px"><a href=" http://localhost:42699/BanasthaliPortal/menu2.jsp">Logout</a></li>
 
      <%--  <li style="width: 85px"><a href="http://localhost:8084/Banasthali_Club_Management/Queries.jsp" target="content">Queries</a></li> --%>
      
        <li style="width: 105px"><a href="http://localhost:42699/BanasthaliPortal/Faq.jsp">Feedback</a></li>
        <li style="width: 110px"><a href="http://localhost:42699/BanasthaliPortal/Contact Us.jsp">Contact us</a></li>
         <li style="width: 85px"><a href="http://localhost:42699/BanasthaliPortal/AboutUs.jsp">About</a></li>
         <li style="width: 110px" ><a href="http://localhost:42699/BanasthaliPortal/HomePage.jsp">Clubs</a></li>
         <li style="width:640px;"><font size="4" color="white">Student Associations and Clubs </font></li>
         <li style="padding-top: 20px; padding-right: 5px;"><font color="white" size="4">Banasthali Vidyapith </font></li>
  </nav>

</ul>
 <div class="jumbotron bg-cover" style="padding-top: 5px;padding-bottom:10px; background-image:  url(https://images.unsplash.com/photo-1477281765962-ef34e8bb0967?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjh8fHdvcmtzaG9wc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60); background-size:100%">
     <h1 class="display-3 text-center" ><b>Workshops</b></h1>
</div>

        <form action="viewaayamworkshop.jsp" method="POST">
            <div class="container"><br />  
                
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                      <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                      <div class="carousel-item active">
                        <img class="d-block w-100" src="images/axan_academy.jpg" alt="First slide" width="200" height="500">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="images/Aayam-8.JPG" alt="Second slide" width="200" height="500">
                      </div>
                      <div class="carousel-item">
                        <img class="d-block w-100" src="images/sumadhur.jpg" alt="Third slide" width="200" height="500">

                      </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                </div>
                
            </div>
 
        </form>
      
      <div class="container">
          <div style="padding-top: 10px; ">
              <p align=center>
                 <marquee  bgcolor="white" width="80%" align="center" height="40px">
                    <a href=" http://localhost:42699/BanasthaliPortal/aayamworkshopreg.jsp">Click Here!</a>
                    <b>to register in upcoming workshops</b>
                 </marquee> 
              </p>
              
      </div>
      </div>
          
          
      

      
      
 <div class="footer">
  <center>
          <span class="credit">Created By <a href="http://www.banasthali.org/banasthali/wcms/en/home/">Banasthali Vidyapith</a> | </span>
          <span class="far fa-copyright"></span><span> 2021 All rights reserved.</span>
        </center>
</div>
       


    
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</body>
</html>


    
    
        
         


