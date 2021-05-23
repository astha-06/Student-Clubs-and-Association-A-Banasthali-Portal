<%-- 
    Document   : AayamEvents
    Created on : Apr 18, 2021, 3:13:18 PM
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
        <title>Aayam-Events</title>

        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.jpg">

        <link rel="stylesheet" href="css(3)/bootstrap.min.css">
        <link rel="stylesheet" href="css(3)/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css(3)/fontAwesome.css">
        <link rel="stylesheet" href="css(3)/light-box.css">
        <link rel="stylesheet" href="css(3)/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Kanit:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
    </head>

    <body>

        <nav>
            <div class="logo">
                <a class="navbar-brand" href="#">
                    <img src="images/logo.jpg" class="circular--square" width="70" height="70" alt=""/>
                </a>
                <a href="HomepageHome.jsp">Student Associations <em>And Clubs</em></a>
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
                    <p>Events</p>
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
                    <%
                                  Connection conn1=null;
                                 try
                                 {   
                                     String query="select * from events where club='aayam' ";
                                     Class.forName("org.apache.derby.jdbc.ClientDriver");
                                     conn1=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                                     Statement st=conn1.createStatement();
                                     ResultSet rs=st.executeQuery(query);
                                    
                                          while(rs.next())
                                         {
                                              String im = rs.getString("image"); 
                                              String enam = rs.getString("event_name");
                                              String dat = rs.getString("event_date"); 
                                             out.print("<tr>");
                                           
                                             out.print("<td><img src="+im+" width='360' height='450' hspace='10' vspace='10' alt='Tulips'/> </td>");
                                          
                                                      out.print("</tr>");
                                         }
                                    
                                 }
                                 catch(Exception e)
                                 {
                                     System.out.print(e);
                                     e.printStackTrace();
                                 } 
                    %>
                </div>

            </div>
        </div>


        <footer>
            <div class="container-fluid">
                <div class="col-md-12">
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
                                <a href="AayamMainPage.jsp">Aayam</a>
                            </li>
                            <li>
                                <a href="AayamPreviousEvents.jsp">Previous Events</a>
                            </li>
                            <li>
                                <a href="AayamWinner.jsp">Winners</a>
                            </li>
                            <li>
                                <a href="aayameventreg.jsp">Event Registration</a>
                            </li>
                        </ul>

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