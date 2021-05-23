<%-- 
    Document   : aayamworkregistered
    Created on : 13 May, 2021, 3:05:58 PM
    Author     : Hp
--%>

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/3e6efceb06.js" crossorigin="anonymous"></script>

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Aayam Workshop Registrations</title>
    </head>
    <body>
        <style>
            body{
                background-size: 100%;
                background-image:  url(https://images.unsplash.com/photo-1585314062340-f1a5a7c9328d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80);         
            }
            .circular--square {
                border-radius: 50%;
            }
            *[role="form"] {
                max-width: 600px;
                padding: 15px;
                margin: 0 auto;
                border-radius: 0.3em;
                background-color: #f2f2f2;
            }
            *[role="form"] h2 { 
                font-family: "Times New Roman", Times, serif;
                font-size: 40px;
                font-weight: 600;
                color: #000000;
                margin-top: 1%;
                text-align: center;
                text-transform: capitalize;
                letter-spacing: 4px;
            }
            .container{
                padding-top:0px;
                padding-bottom: 50px;
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
                background-color: transparent;
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
            .regimg{
                padding-top: 15px;
                padding-bottom: 1px;
            }
            .navbar-brand{
                padding-top: 7px;
                padding-left: 30px;
            }
            .form-control{
                padding-left: 50px;
            }
            select {
                width: 50px;
                margin: 5px;
            }
        </style>

        <!------ Include the above in your HEAD tag ---------->

        <ul>
            <nav >
                <a class="navbar-brand" href="#">
                    <img src="images/logo.jpg" class="circular--square" width="70" height="70" alt=""/>
                </a>   
                <li style="width: 120px"><a href="LoginPage.jsp"><font size="4" color="white">Logout</font></a></li>
                <li style="width: 110px" ><a href="AdminPanelAayam.jsp"><font size="4" color="white">Home</font></a></li>
                <li style="width: 900px;"><a href="HomepageHome.jsp"><font size="6" color="white">Student Associations and Clubs</font></a></li>
            </nav> 
        </ul>

        <div class="regimg">
            <center>
                <img src="img/Aayam Logo.jpg" class="circular--square" width="150" height="150" alt="">
            </center>
        </div>
        <div class="container">
            <form  method="post" action="aayamworkparticipation.jsp"  class="form-horizontal" role="form">
                <h2><font size="6" color="#7d5a69">Aayam Admin Panel</font></h2>
                <h2>Workshop Registrations</h2>


                <div class="form-group">
                    <div class="col-sm-12">
                        <label for="wokrName" class="col-sm-3 control-label"> Choose Workshop Name</label>




                        <div class="col-sm-6">
                            <select name="wname" class="form-control" autofocus required>

                                <%
                                     Connection conn1=null;
                                    try
                                    {   
                                        String query="select work_name from workshops where club='aayam' ";
                                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                                        conn1=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                                        Statement st=conn1.createStatement();
                                        ResultSet rs=st.executeQuery(query);
                                    
                                        while(rs.next())
                                            {
                                                    String wname = rs.getString("work_name"); 
                                %>
                                <option value="<%=wname %>"><%=wname %></option>
                                <%
                            }
                                        
                    }
                    catch(Exception e)
                    {
                        System.out.print(e);
                        e.printStackTrace();
                    } 
                                %>
                            </select>
                        </div> 
                        <div class="col-sm-3">
                            <button  type="submit" name="btnview" class="btn btn-primary btn-block">View</button>
                        </div>
                    </div>


                </div>


                <div class="form-group">
                    <table class="table table-bordered table-striped" align="center">
                        <tr>
                            <th>Student Name</th>
                            <th>Email id</th>
                            <th>Course</th>
                            <th>Current Year</th>
                            <th>Contact number</th>
                        </tr>

                        <%
          try
            {
                String w=request.getParameter("wname");
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection conn=null;
                    Statement st=null;
                    ResultSet rs=null;
                    conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                     st=conn.createStatement();
                     rs=st.executeQuery("Select s_name,email,course,current_year,ph_number from workshop_reg Where workshop_name='" + w+ "'  ");
                     if (request.getParameter("btnview")!= null)
                             {
                                 while(rs.next())
                     {
                        %>
                        <tr bgcolor="#ffffff">


                            <td><%=rs.getString(1) %></td>
                            <td><%=rs.getString(2) %></td>
                            <td><%=rs.getString(3) %></td>
                            <td><%=rs.getString(4) %></td>
                            <td><%=rs.getString(5) %></td>


                        </tr>

                        <%
                    }
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
                    </table> 

                </div>




            </form> <!-- /form -->
        </div> <!-- ./container -->

        <div class="footer">
            <center>
                <p class="col-12 text-white text-center tm-copyright-text">
                    Copyright &copy 2021 <a href="#" class="tm-copyright-link">Student Clubs And Associations - A Banasthali Portal
                        Designed by Group CS08</a>
                </p>
            </center>
        </div>

    </body>
</html>