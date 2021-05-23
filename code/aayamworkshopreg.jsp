<%-- 
    Document   : newjsp
    Created on : 11 Mar, 2021, 10:53:18 PM
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
        <title>Aayam Workshop Registration</title>
    </head>
    <body>
        <style>
            body{
                background-size: 100%;
                background-image:  url(https://images.unsplash.com/photo-1594141200666-91cd90b51c85?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80);         
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
                font-size: 30px;
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
                <li style="width: 120px"><a href="AayamWorkshops.jsp"><font size="4" color="white">Workshops</font></a></li>
                <li style="width: 110px" ><a href="AayamMainPage.jsp"><font size="4" color="white">Aayam</font></a></li>
                <li style="width: 100px"><a href="HomepageHome.jsp"><font size="4" color="white">Home</font></a></li>
                <li style="width: 800px;"><a href="HomepageHome.jsp"><font size="6" color="white">Student Associations and Clubs</font></a></li>
            </nav> 
        </ul>

        <div class="regimg">
            <center>
                <img src="img/Aayam Logo.jpg" class="circular--square" width="150" height="150" alt="">
            </center>
        </div>
        <div class="container">
            <form  method="post" action="aayamworkshopreg.jsp"  class="form-horizontal" role="form">
                <h2><font size="6" color="#7d5a69">Aayam</font></h2>
                <h2>Workshop Registration</h2>
                <div class="form-group">
                    <label for="Name" class="col-sm-3 control-label">Email*</label>
                    <div class="col-sm-9">
                        <input type="email" id="name" name="email" placeholder="Email" class="form-control" autofocus required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="workby" class="col-sm-3 control-label">Workshop By</label>
                    <div class="col-sm-9">
                        <input type="text" id="eventby" name="work_by" placeholder="Aayam" class="form-control" autofocus disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="wokrName" class="col-sm-3 control-label">Workshop Name</label>
                    <div class="col-sm-9">
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
                </div>


                <div class="col-sm-12">
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
                        
                        
                                String email=request.getParameter("email");
                                Class.forName("org.apache.derby.jdbc.ClientDriver");
                                Connection conn=null;
                                conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                                String query= "Select * from students where email='" + email + "' ";
                                Statement st=conn.createStatement();
                                ResultSet rs=st.executeQuery(query);
                                boolean status=rs.next();
                        
                                if (request.getParameter("btnreg")!= null)
                                {
                                        if(status)
                                    {
                        %>

                        <tr>
                            <td><%=rs.getString("S_NAME")%></td>
                            <td><%=rs.getString("EMAIL")%></td>
                            <td><%=rs.getString("COURSE")%></td>
                            <td><%=rs.getString("CURRENT_YEAR")%></td>
                            <td><%=rs.getString("PH_NUMBER")%></td>
                        </tr> 

                        <%
                                    
                        %>
                        <script>
                            swal("Verified", "Enter email once again at time of registration!!", "success");
                        </script>
                        <%
                   }
                   else{
                              
                        %>
                        <script>

                            swal("ERROR", "Not a verified student!", "info");
                        </script>
                        <%
                 }
         } 
            
    
}
     catch(Exception e)
     {
         System.out.print(e);
         e.printStackTrace();
         //out.println("Hello2");
         //e.getMessage();
     } 
                        %>

                    </table> 
                </div>

                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6">
                            <button type="submit" name="btnreg" class="btn btn-primary btn-block">Register</button>
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
           
                     
                     if (request.getParameter("btnreg")!= null)
                     {
                        String email=request.getParameter("email");
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                        Connection conn=null;
                        conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
                        String query= "Select * from students where email='" + email + "' ";
                        Statement st=conn.createStatement();
                        ResultSet rs=st.executeQuery(query);
                        while(rs.next())
                        {
                            String club="aayam";
                            String wn=request.getParameter("wname");
                            String s=rs.getString(1);
                            String e=rs.getString(2);
                            String c=rs.getString(3);
                            String yr=rs.getString(4);
                            String p=rs.getString(5);
                           
                                
                        
                            int y = st.executeUpdate("insert into workshop_reg values('"+club+"','"+wn+"','"+s+"','"+e+"','"+c+"',"+yr+","+p+")");
                           if(y>0)
                               {
%>
<script>
    swal("Good Job", "Registered Sucessfully", "success");
</script>
<%
}
                            
}
}
   
}
       
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
       
}
%>