<%-- 
    Document   : ViewQueryAayam
    Created on : 28 Apr, 2021, 1:18:54 PM
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
        <title>View Queries(Aayam)</title>
    </head>


    <body>
        <style>
            body{
                background-size: 100%;
                background-image:  url(https://images.unsplash.com/photo-1566996533071-2c578080c06e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=658&q=80);    
            }
            .circular--square {
                border-radius: 50%;
            }
            *[role="form"] {
                max-width: 1000px;
                padding: 15px;
                margin: 0 auto;
                border-radius: 0.3em;
                background-color: #f2f2f2;
            }
            *[role="form"] h2 { 
                font-family: "Times New Roman", Times, serif;
                padding-bottom: 30px;
                font-size: 50px;
                font-weight: 600;
                color: #000000;
                margin-top: 1%;
                text-align: center;
                text-transform: capitalize;
                letter-spacing: 4px;
            }
            .container{
                padding-top:100px;
                padding-bottom: 50px;
            }
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: rgba(0,0,0,0.9);  /*rgb(242, 213, 131)*/
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
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: rgba(0, 0, 0,0.8);  /*rgb(242, 213, 131)*/
                color: white;
                text-align: center;
            }
        </style>
        <ul>
            <nav >
                <a class="navbar-brand" href="#">
                    <img src="images/logo.jpg" class="circular--square" width="70" height="70" alt=""/>
                </a>      
                <li style="width: 110px" ><a href="aayamfeedbackqueries.jsp"><font size="4" color="white">Back</font></a></li>
                <li style="width: 110px" ><a href="AayamMainPage.jsp"><font size="4" color="white">Aayam</font></a></li>
                <li style="width: 900px;"><a href="HomepageHome.jsp"><font size="6" color="white">Student Associations and Clubs</font></a></li>
            </nav> 
        </ul>

        <div class="container">
            <form  method="post" action="ViewQueryAayam.jsp"  class="form-horizontal" role="form">
                <div class="regimg">
                    <center>
                        <img src="img/Aayam Logo.jpg" class="circular--square" width="150" height="150" alt="">
                    </center>
                </div>
                <h2><font size="6" color="#7d5a69">Aayam</font></h2>
                <h2>View Your Queries </h2>
                <div class="form-group">
                    <label for="workby" class="col-sm-5 control-label">Choose your Email to view your query</label>
                    <div class="col-sm-6">
                        <select style="width:auto" name="email" class="form-control" autofocus>
                            <%
                                 Connection conn=null;
                                try
                                {   
                                    String query="select email from query where club='aayam' ";
                                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                                    conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                                    Statement st=conn.createStatement();
                                    ResultSet rs=st.executeQuery(query);
                                    
                                    while(rs.next())
                                        {
                                                String e = rs.getString("email"); 
                            %>
                            <option value="<%=e %>"><%=e %></option>
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
                        <br>
                        <div class="col-sm-6">
                            <input type="submit" name="btn_show" value="Show query's response" class="btn btn-primary btn-block" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <table class="table table-bordered table-striped" align="center" width="30%">
                            <tr>
                                <th>Your Query</th>
                                <th>Query answered</th>
                            </tr>
                            <%
                               try
                                {                      
                                    String e1=request.getParameter("email");
                                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                                    Connection conn1=null;
                                    conn1=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                                    String query= "Select que,ans from query where email='" + e1 + "' ";
                                    Statement st=conn1.createStatement();
                                    ResultSet rs=st.executeQuery(query);
                                    boolean status=rs.next();
                        
                                    if (request.getParameter("btn_show")!= null)
                                    {
                                            if(status)
                                        {
                            %>

                            <tr>
                                <td><%=rs.getString("que")%></td>
                                <td><%=rs.getString("ans")%></td>
                            </tr> 

                            <%
                                    
                           }     
                    }
    
      }
                catch(Exception e)
                {
                    System.out.print(e);
                    e.printStackTrace();
                        
                } 
                            %>

                        </table> 
                    </div>
                </div>
            </form>
        </div>
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