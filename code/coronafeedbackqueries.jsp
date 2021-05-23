<%-- 
    Document   : coronafeedbackqueries
    Created on : Apr 20, 2021, 5:33:55 PM
    Author     : ASUS
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
        <title>Corona Feedback/Queries</title>
    </head>
    <body>
        <style>
            body{
                background-size: 100%;
                background-image: url(https://images.unsplash.com/photo-1489653655999-447debf7e470?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80);       
            }
            .circular--square {
                border-radius: 50%;
            }
            *[role="form"] {
                max-width: 530px;
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
                background-color: rgba(0, 0, 0,0.8);  /*rgb(242, 213, 131)*/
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
                background-color: rgba(0, 0, 0,0.6);
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
                <li style="width: 120px" ><a href="ViewQueryCorona.jsp"><font size="3" color="white" text-center>View Queries</font></a></li>
                <li style="width: 110px" ><a href="CoronaMainPage.jsp"><font size="3" color="white">Corona</font></a></li>
                <li style="width: 100px" ><a href="HomepageHome.jsp"><font size="3" color="white" text-center>Home</font></a></li>
                <li style="width: 800px;"><a href="HomepageHome.jsp"><font size="6" color="white">Student Associations and Clubs</font></a></li>
            </nav>
        </ul>

        <div class="regimg">
            <center>
                <img src="img/Corona Logo.jpg" class="circular--square" width="150" height="150" alt="">
            </center>
        </div>
        <div class="container">
            <form  method="post" action="coronafeedbackqueries.jsp"  class="form-horizontal" role="form">
                <h2><font size="6" color="#7d5a69">Corona</font></h2>
                <h2>Feedback</h2>
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Email*</label>
                    <div class="col-sm-9">
                        <input type="email" id="name" name="email" placeholder="Email" class="form-control" autofocus required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="workby" class="col-sm-3 control-label">Feedback for</label>
                    <div class="col-sm-9">
                        <input type="text" id="feedbackfor" name="club" placeholder="Corona" class="form-control" autofocus disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="wokrName" class="col-sm-3 control-label">Feedback</label>
                    <div class="col-sm-9">
                        <textarea class="form-control" name="comments" id="comments" placeholder="Your Comments" maxlength="8000" rows="6" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6">
                            <input type="submit" name="btnreg" value="Submit" class="btn btn-primary btn-block"  />
                        </div>
                        <div class="col-sm-6">
                            <button type="submit" class="btn btn-primary btn-block">Cancel</button>
                        </div>
                    </div>
                </div>
            </form> <!-- /form -->
        </div> <!-- ./container -->
        <div class="regimg">
            <center>
                <img src="img/Corona Logo.jpg" class="circular--square" width="150" height="150" alt="">
            </center>
        </div>
        <div class="container">
            <form  method="post" action="coronafeedbackqueries.jsp"  class="form-horizontal" role="form">
                <h2><font size="6" color="#7d5a69">Corona</font></h2>
                <h2>Queries</h2>
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Email*</label>
                    <div class="col-sm-9">
                        <input type="email" id="name" name="email1" placeholder="Email" class="form-control" autofocus required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="workby" class="col-sm-3 control-label">Query for</label>
                    <div class="col-sm-9">
                        <input type="text" id="feedbackfor" name="club1" placeholder="Corona" class="form-control" autofocus disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="wokrName" class="col-sm-3 control-label">Queries</label>
                    <div class="col-sm-9">
                        <!--<input rows="6" type="text" id="message" name="feedback" class="form-control" autofocus>-->
                        <textarea class="form-control" name="comments1" id="comments" placeholder="Your Query" maxlength="8000" rows="6" required></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <span class="help-block">*Required fields</span>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6">
                            <input type="submit" name="btnreg1" value="Submit" class="btn btn-primary btn-block"  />
                        </div>
                        <div class="col-sm-6">
                            <button type="submit" class="btn btn-primary btn-block">Cancel</button>
                        </div>
                    </div>
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
<%
    try
       {
           String e=request.getParameter("email");
           String c="corona";
           String f=request.getParameter("comments");
                    if (request.getParameter("btnreg")!= null)
                     {
                        
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection conn=null;
                        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                        Statement st=conn.createStatement();
                        int y = st.executeUpdate("insert into feedback values('"+e+"','"+c+"','"+f+"')");
                               
                           if(y>0)
                               {
%>
<script>
    swal("Thank You", "Your Feedback has been registered successfully!", "success");
</script>
<%
}
else
{
%>
<script>
    swal("Error", "Feedback is not inserted!", "info");
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

<%
    try
       {
           String e1=request.getParameter("email1");
           String c1="corona";
           String f1=request.getParameter("comments1");
                    if (request.getParameter("btnreg1")!= null)
                     {
                        
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection conn1=null;
                        conn1=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                        Statement st=conn1.createStatement();
                        int y1 = st.executeUpdate("insert into query values('"+e1+"','"+c1+"','"+f1+"','"+f1+"')");
                               
                           if(y1>0)
                               {
%>
<script>
    swal("Thank You", "Your Query has been registered successfully. Check for the reply 24 hours later.", "success");
</script>
<%
}
else
{
%>
<script>
    swal("Error", "Query is not inserted!", "info");
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