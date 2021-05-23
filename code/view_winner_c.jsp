<%-- 
    Document   : viewiwreg
    Created on : Mar 31, 2019, 12:39:24 AM
    Author     : welcome
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 String n = (String)session.getAttribute("s1");
 if(n!="1") {
    response.sendRedirect("LoginPage.jsp");
 }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Winners(Corona)</title>
    </head>
    <body>        
    </body>
    <ul>
        <nav >
            <a class="navbar-brand" href="#">
                <img src="images/logo.jpg" class="circular--square" width="80" height="80" alt=""/>
            </a>       
            <li style="width: 120px"><a href="LoginPage.jsp"><font size="4" color="white">Logout</font></a></li>
            <li style="width: 110px" ><a href="AdminPanelCorona.jsp"><font size="4" color="white">Home</font></a></li>
            <li style="width: 900px;"><a href="HomepageHome.jsp"><font size="6" color="white">Student Associations and Clubs</font></a></li>
        </nav> 
    </ul>
    <div class="regimg">
        <center>
            <img src="img/Corona Logo.jpg" class="circular--square" width="150" height="150" alt="">
        </center>
    </div>
    <h2><font size="6" color="#7d5a69">Corona Admin Panel</font></h2>
    <h2>View Winners</h2>
    <form action="view_winner_c.jsp" method="POST">
        <table border="4" align="center" style="width:50%">

            <tr>

                <td bgcolor="#ccccff">Event by</td>
                <td bgcolor="#ccccff">Event name</td>
                <td bgcolor="#ccccff">Student name</td>
                <td bgcolor="#ccccff">Course</td>
                <td bgcolor="#ccccff">Current Year</td>
                <td bgcolor="#ccccff">Position</td>



            </tr>
            <%
         try
           {
               Class.forName("org.apache.derby.jdbc.ClientDriver");
                   Connection conn=null;
                   Statement st=null;
                   ResultSet rs=null;
                   conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                    st=conn.createStatement();
                    rs=st.executeQuery("Select * from winner Where event_by='corona' ");
                    while(rs.next())
                    {
            %>
            <tr bgcolor="#ffffff">


                <td><%=rs.getString(1) %></td>
                <td><%=rs.getString(2) %></td>
                <td><%=rs.getString(3) %></td>
                <td><%=rs.getString(4) %></td>
                <td><%=rs.getString(5) %></td>
                <td><%=rs.getString(6) %></td>

            </tr>

            <%
        }
            %>
        </table>
        <%
}
catch(Exception e)
{
 e.getMessage();
}
             
 
        %>
        <div class="footer">
            <center>
                <p class="col-12 text-white text-center tm-copyright-text">
                    Copyright &copy 2021 <a href="#" class="tm-copyright-link">Student Clubs And Associations - A Banasthali Portal
                        Designed by Group CS08</a>
                </p>
            </center>
        </div>
        <style>
           body{
                background-image: url(https://images.unsplash.com/photo-1620063633187-7f0a7c517545?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80);
                background-size:100%;
            }
            .container{
                padding-top:50px;
                padding-bottom: 50px;
            }
            .circular--square {
                border-radius: 50%;
            }
            li {
                font-family: "Georgia", "Courier New", monospace;
                float: right;
                display: inline-block;
                padding-top:20px;
                padding-bottom: 10px;
                text-indent: -0.9em;
            }
            li a {
                display: inline-block;
                color: white;
                text-align: right;
                padding: 5px 0px;
                text-decoration: crimson;
            }
            li a:hover {
                background-color:transparent;
            }
            .active {
                background-color: red;
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: rgba(0,0,0,0.6);
            }
            .navbar-brand{
                padding-top: 7px;
                padding-left: 20px;
            }
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: rgba(0,0,0,0.9);  
                color: white;
                text-align: center;
            }
            .regimg{
                padding-top: 15px;
                padding-bottom: 1px;
            }
            h2 { 
                font-family: "Times New Roman", Times, serif;
                padding-bottom: 10px;
                font-size: 30px;
                font-weight: 600;
                color: #000000;
                margin-top: 0%;
                text-align: center;
                text-transform: capitalize;
                letter-spacing: 4px;
            }
        </style>


    </form>
</html>
