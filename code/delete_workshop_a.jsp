<%-- 
    Document   : eve_ver
    Created on : 20 Apr, 2021, 4:35:57 PM
    Author     : Hp
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
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
        <title>Delete Workshops(Aayam)</title>
    </head>
    <body>
        <style>
            body{
                background-size: 100%;
                background-image:  url(https://images.unsplash.com/photo-1545100760-db63cbae42b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1936&q=80);    
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
                display: inline-block;
                color: white;
                text-align: right;
                padding: 5px 0px;
                text-decoration: crimson;
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
            <form  method="post" action="delete_workshop_c.jsp"  class="form-horizontal" role="form">
                <h2><font size="6" color="#7d5a69">Aayam Admin Panel</font></h2>
                <h2>Delete Workshop</h2>
                <div class="form-group">
                    <label for="workby" class="col-sm-5 control-label"> Choose Event you want to delete</label>
                    <div class="col-sm-7">
                        <select name="ename" class="form-control" autofocus>
                            <%
                                 Connection conn=null;
                                try
                                {   
                                    String query="select work_name from workshops where club='aayam' ";
                                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                                    conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                                    Statement st=conn.createStatement();
                                    ResultSet rs=st.executeQuery(query);
                                    
                                    while(rs.next())
                                        {
                                                String e = rs.getString("work_name"); 
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
                    </div>




                    <p align="center">
                        <input  type="Submit" value="Delete" name="btn_del" />

                        <!-------------->


                        </form>
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
                    <%
                        try
                           {  
                               Connection conn2=null;
                               PreparedStatement pstmt = null;
           
                               String en=request.getParameter("ename");
           
                               Class.forName("org.apache.derby.jdbc.ClientDriver");
                               conn2=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
           
                                        if (request.getParameter("btn_del")!= null)
                                         {
                        
                                                pstmt = conn2.prepareStatement("delete from workshops where work_name=('"+en+"')");
                                                int count = pstmt.executeUpdate();
                                                if(count>0)
                                                {
                    %>

                    <script>
                        swal("Done", "Deleted Successfully!!", "success");
                    </script>
                    <%
                }
                else
                {
                    %>
                    <script>
                        swal("Error", "Data is not deleted", "info");
                    </script>
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