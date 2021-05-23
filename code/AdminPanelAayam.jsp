<%-- 
    Document   : AdminPanelAayam
    Created on : Apr 28, 2021, 9:25:21 PM
    Author     : ASUS
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Aayam-Admin Panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Student Associations and Clubs" />
    <meta name="author" content="CS08" />


    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic|Roboto:400,300,700' rel='stylesheet' type='text/css'>
    <!-- Animate -->
    <link rel="stylesheet" href="css(5)/animate.css">
    <!-- Icomoon -->
    <link rel="stylesheet" href="css(5)/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css(5)/bootstrap.css">

    <link rel="stylesheet" href="css(5)/style1.css">

</head>
<body>

    <%
    String n = (String)session.getAttribute("s1");
    if(n!="1") {
       response.sendRedirect("LoginPage.jsp");
    }
    %>

    <div id="fh5co-offcanvas">      
        <div class="fh5co-bio">
            <figure>
                <img src="img/Aayam Logo.jpg" alt="" class="img-responsive">
            </figure>         
        </div>
        <div class="fh5co-menu">
            <div class="fh5co-box">
                <ul>
                    <li><a href="LogOut.jsp">Logout</a></li>                   
                </ul>
            </div>
        </div>
    </div>
    <!-- END #fh5co-offcanvas --> 

    <header id="fh5co-header">
        <div class="container-fluid">
            <div class="row">
                <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
                <div class="col-lg-12 col-md-12 text-center">
                    <h1 id="fh5co-logo">Aayam Admin Panel</h1>
                </div>
            </div>
        </div>
    </header>

    <div class="container-fluid">
        <div class="row fh5co-post-entry">

            <!--Events-->
            <article class="col-sm-2 animate-box">
                <ul>
                    <div class="row" >
                        <div class="col-lg-6 col-md-3">                
                            <h1 id="fh5co-logo">Events</h1>           
                        </div>		
                    </div>
                </ul>
                <ul><li><h3 class="fh5co-article-title"><a href="insert_event_a.jsp">Insert</a></h3></li></ul>
                <ul><li> <h3 class="fh5co-article-title"><a href="view_event_a.jsp">View</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="update_event_a.jsp">Update</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="delete_event_a.jsp">Delete</a></h3></li> </ul> 
            </article>

            <!--Workshops-->
            <article class="col-sm-2 animate-box">
                <ul>
                    <div class="row" >
                        <div class="col-lg-6 col-md-3">                
                            <h1 id="fh5co-logo">Workshops</h1>           
                        </div>		
                    </div>
                </ul>
                <ul><li><h3 class="fh5co-article-title"><a href="insert_workshop_a.jsp">Insert</a></h3></li></ul>
                <ul><li> <h3 class="fh5co-article-title"><a href="view_workshop_a.jsp">View</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="update_workshop_a.jsp">Update</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="delete_workshop_a.jsp">Delete</a></h3></li></ul> 
                <ul><li><h3 class="fh5co-article-title"><a href="aayamworkparticipation.jsp">Workshop Participants</a></h3></li></ul> 
            </article>

            <!--Members-->
            <article class="col-sm-2 animate-box">
                <ul>
                    <div class="row" >
                        <div class="col-lg-6 col-md-3">                
                            <h1 id="fh5co-logo">Members</h1>           
                        </div>		
                    </div>
                </ul>
                <ul><li><h3 class="fh5co-article-title"><a href="insert_member_a.jsp">Insert</a></h3></li></ul>
                <ul><li> <h3 class="fh5co-article-title"><a href="view_member_a.jsp">View</a></h3></li></ul> 
                <ul><li><h3 class="fh5co-article-title"><a href="update_member_a.jsp">Update</a></h3></li></ul>
                <ul><li> <h3 class="fh5co-article-title"><a href="delete_member_a.jsp">Delete</a></h3></li></ul>  
            </article>

            <!--Winners-->
            <article class="col-sm-2 animate-box">
                <ul>
                    <div class="row" >
                        <div class="col-lg-6 col-md-3">                
                            <h1 id="fh5co-logo">Winners</h1>           
                        </div>		
                    </div>
                </ul>
                <ul><li> <h3 class="fh5co-article-title"><a href="view_winner_a.jsp">View</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="insert_winner_a.jsp">Insert</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="delete_winner_a.jsp">Delete</a></h3></li></ul> 
            </article>

            <!--Feedback-->
            <article class="col-sm-2 animate-box">
                <ul>
                    <div class="row" >
                        <div class="col-lg-6 col-md-3">                
                            <h1 id="fh5co-logo">Feedback</h1>           
                        </div>		
                    </div>
                </ul>
                <ul><li><h3 class="fh5co-article-title"><a href="view_feedback_a.jsp">View</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="delete_feedback_a.jsp">Delete</a></h3></li></ul> 
            </article>

            <!--Queries-->
            <article class="col-sm-2 animate-box">
                <ul>
                    <div class="row" >
                        <div class="col-lg-6 col-md-3">                
                            <h1 id="fh5co-logo">Queries</h1>           
                        </div>		
                    </div>
                </ul>
                <ul><li><h3 class="fh5co-article-title"><a href="update_query_a.jsp">Update</a></h3></li></ul>
                <ul><li><h3 class="fh5co-article-title"><a href="delete_query_a.jsp">Delete</a></h3></li></ul> 
            </article>
        </div>
    </div>


    <footer id="fh5co-footer">
        <div class="container-fluid">
            <div class="col-md-12">
                <p class="col-12 text-white text-center tm-copyright-text">
                    Copyright &copy 2021 <a href="#" class="tm-copyright-link">Student Clubs And Associations - A Banasthali Portal
                        Designed by Group CS08</a>
                </p>
            </div>
        </div>
    </footer>



    <!-- jQuery -->
    <script src="js(5)/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="js(5)/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="js(5)/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="js(5)/jquery.waypoints.min.js"></script>
    <!-- Main JS -->
    <script src="js(5)/main.js"></script>

</body>
</html>
