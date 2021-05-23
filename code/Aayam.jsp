<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  
    
    
    try
    {
        
         if (request.getParameter("btn_abt")!= null)
                { 
                    response.sendRedirect("aayamabout.jsp");
                    
                }
         if (request.getParameter("btn_event")!= null)
                { 
                    response.sendRedirect("viewaayamevent.jsp");
                    
                }
         if (request.getParameter("btn_work")!= null)
                { 
                    response.sendRedirect("viewaayamworkshop.jsp");
                    
                }
                
    }
         
    catch(Exception e)
            {
                System.out.print(e);
                e.printStackTrace();
                //e.getMessage();
            }
    
    
%> 
	<html>
<head>
	<title>Aayam</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/3e6efceb06.js" crossorigin="anonymous"></script>
	
</head>
<body >
<style>
body {
    background-size: 100%;
    background-image: linear-gradient(to bottom, rgba(255,255,255,0.1) 0%,rgba(255,255,255,0.9) 100%), url(https://images.unsplash.com/photo-1569310409109-85c0eb67a669?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGFydGlzdGljJTIwYmFja2dyb3VuZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60);
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
.center-block {
  display: block;
  margin-right: auto;
  margin-left: auto;
}
.navbar-brand{
    padding-left: 20px;
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
    

</style>
   
<ul>
 <nav >  
     <a class="navbar-brand" href="#">
    <img src="images/logo.jpg" width="100" height="70" alt=""/>
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
    
      
<div class="jumbotron bg-cover" style="background-image: linear-gradient(to bottom, rgba(255,255,255,0.1) 0%,rgba(255,255,255,0.9) 100%), url(https://images.unsplash.com/photo-1569310409109-85c0eb67a669?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGFydGlzdGljJTIwYmFja2dyb3VuZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60); background-size:100%">
    <h1 class="display-3 text-center"><b>AAYAM</b></h1>
</div>
      <form action="Aayam.jsp" method="POST">
<div class="container">
    <div class="row">
	<div class="col-lg-3">
            <div class="card" style="background-image:url(https://images.unsplash.com/photo-1522781063645-d5e4fb3e19aa?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHRleHR1cmUlMjBiYWNrZ3JvdW5kfGVufDB8fDB8eWVsbG93fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60)">
                <div class="card-body">
                    <h5 class="card-title" style="text-align: center;" >NOTICE</h5>

                        <marquee width="80%" direction="up" height="100px">
                            <b>*The position for new members is open.*</b>
                        </marquee>
                        <marquee width="80%" direction="up" height="100px">
                            <b>*Kurjan the singing event will be held on 24th May.*</b>
                        </marquee>
                        <marquee width="80%" direction="up" height="100px">
                            <b>*The date for Poster event is postponed to 30th May.*</b>
                        </marquee>
                </div>
                </div>
	</div>
        
        
        <div class="col-lg-3">
            <div class="card">
            <img src="https://www.impactplus.com/hubfs/blog-image-uploads/best-about-us-pages.jpg" width="500" height="300" class="card-img-top">
            <h5 class="card-title" style="text-align:center ">ABOUT US</h5>
            <div class="card-body" text-align="center">
                    <input class="center-block" type="submit" value="Know More" name="btn_abt" />
                
            </div>
	</div>
	</div>
	<div class="col-lg-3">
            <div class="card">
            <img src="https://images.unsplash.com/photo-1558008258-3256797b43f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHdvcmtzaG9wc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60" width="500" height="300" class="card-img-top">
            <h5 class="card-title" style="text-align:center ">EVENTS</h5>
            <div class="card-body">
            <input class="center-block" type="submit" value="Know More" name="btn_event" />
            </div>
            </div>
        </div>
	<div class="col-lg-3">
		<div class="card">
                <img src="https://myshahealthworld.com/wp-content/uploads/2019/10/support.png" width="500" height="300" class="card-img-top">
                <h5 class="card-title" style="text-align:center ">WORKSHOPS</h5>
                <div class="card-body">
                <input class="center-block" type="submit" value="Know More" name="btn_work" />
                </div>
                </div>
        </div>
       
    
</form>
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