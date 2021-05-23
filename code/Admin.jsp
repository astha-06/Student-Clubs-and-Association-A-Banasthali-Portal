<%-- 
    Document   : admin
    Created on : Mar 21, 2019, 8:06:54 PM
    Author     : welcome

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
                <style>
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
</style>
   
<ul>
 <nav>  
     <li style="width: 85px"><a href=" http://localhost:8084/Banasthali_Club_Management/menu2.jsp" target='content'>Logout</a></li>
 
      <%--  <li style="width: 85px"><a href="http://localhost:8084/Banasthali_Club_Management/Queries.jsp" target="content">Queries</a></li> --%>
      
       
         <li style="width: 110px" ><div><a href="http://localhost:8084/Banasthali_Club_Management/admin.jsp">Admin</a></li>
         <li style="width: 640px"><font size="4" color="white">Banasthali Student Club Management &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></li>
</nav>


</ul>

        <form action="admin.jsp" method="POST">
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="aayammember.jsp"> <img src="picture/view_aayam.png" width="294" height="390" alt="view_aayam"/></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="coronamember.jsp"><img src="picture/view corona.png" width="294" height="390" alt="view corona"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <a href="innovmember.jsp"> <img src="picture/view_innov.png" width="294" height="390" alt="view_innov"/></a></p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="viewworkshopreg.jsp" > <img src="picture/view_workshop_reg.png" width="294" height="390" alt="view_workshop_reg"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
             <a href="viewstudents.jsp" ><img src="picture/view_students.png" width="294" height="390" alt="view_students"/></a>

          
    </form>
    </body>
</html>



<%-- 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body background="picture/sign-up-background.jpg">
                <style type="text/css">
            
            @import url('https://fonts.googleapis.com/css?family=Roboto+Condensed');

.preserve-3d {
    transform-style: preserve-3d;
    -webkit-transform-style: preserve-3d;
}

body {
    padding: 0;
    margin: 0;
    border: 0;
    overflow-x: none;
    background-color: #ffffff;
    font-family: Roboto Condensed, sans-serif;
    font-size: 12px;
    font-smooth: always;
    -webkit-font-smoothing: antialiased;
}

/*.back {
    width: 33%;
    height: 200px;
    float: left;
    background-color: #ffffff;
    border: 10px;
    border-color: #ffffff;
    border-style: solid;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    counter-increment: bc;
    padding: 0px 5px 5px 5px;
}*/

.back:before {
   /* content: counter(bc) "_";*/
    position: absolute;
    padding: 10px;
}

@media screen and (max-width: 1260px) {
    .back {
        width: 50%;
    }
}

@media screen and (max-width: 840px) {
    .back {
        width: 100%;
    }
}

.button_base {
    margin: 0;
    border: 0;
    font-size: 18px;
    position: relative;
    top: 50%;
    left: 50%;
    margin-top: -25px;
    margin-left: -100px;
    width: 150px;
    height: 50px;
    text-align: center;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-user-select: none;
    cursor: default;
}

.button_base:hover {
    cursor: pointer;
}





/* ### ### ### 05 */
.b05_3d_roll {
   /* perspective: 500px;*/
    -webkit-perspective: 500px;
   /* -moz-perspective: 500px;*/
}

.b05_3d_roll div {
    position: absolute;
    text-align: center;
    width: 100%;
    height: 50px;
    padding: 10px;
    /*border: #000000 solid 1px;*/
    pointer-events: none;
    /*box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;*/
}

.b05_3d_roll div:nth-child(1) {
    color: #000000;
    background-color: #000000;
    transform: rotateX(90deg);
    -webkit-transform: rotateX(90deg);
    -moz-transform: rotateX(90deg);
    transition: all 0.2s ease;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    transform-origin: 50% 50% -25px;
    -webkit-transform-origin: 50% 50% -25px;
    -moz-transform-origin: 50% 50% -25px;
}

.b05_3d_roll div:nth-child(2) {
    /*color: #000000;*/
    color: #000000;
    background-color: #000000;
    transform: rotateX(0deg);
    -webkit-transform: rotateX(0deg);
    -moz-transform: rotateX(0deg);
    transition: all 0.2s ease;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    transform-origin: 50% 50% -25px;
    -webkit-transform-origin: 50% 50% -25px;
    -moz-transform-origin: 50% 50% -25px;
}

.b05_3d_roll:hover div:nth-child(1) {
    color: #000000;
    transition: all 0.2s ease;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    transform: rotateX(0deg);
    -webkit-transform: rotateX(0deg);
    -moz-transform: rotateX(0deg);
}

.b05_3d_roll:hover div:nth-child(2) {
    background-color: #000000;
    /* background-image: "picture/1.png " no-repeat;*/
    transition: all 0.2s ease;
    -webkit-transition: all 0.2s ease;
    -moz-transition: all 0.2s ease;
    transform: rotateX(-90deg);
    -webkit-transform: rotateX(-90deg);
    -moz-transform: rotateX(-90deg);
}
            
            .container {
  position: relative;
  width: auto;
}

/* Make the image responsive */

/* Style the button and place it in the middle of the container/image */
.container .btn {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: #000000;
  color: white;
  font-size: 16px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
}

.container .btn:hover {
  background-color: black;
}

        </style>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
     <div class="container">
    <div class="back">
    <div class="button_base b05_3d_roll">
        <div><input  type="submit" value="View Innovaction" name="innovview"  class="btn"/></div>
        <div><input  type="submit" value="View Innovaction" name="innovview" class="btn" /><</div>
    </div>
</div></div>
           <p>&nbsp;</p>
           
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="container">
 <div class="back">
    <div class="button_base b05_3d_roll">
        <div><input  type="submit" value="view Aayam" name="aayamview"  class="btn"/></div>
        <div><input  type="submit" value="view Aayam" name="aayamview" class="btn" /><</div>
    </div>
</div></div>
    <p>&nbsp;</p>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="container">
 <div class="back">
    <div class="button_base b05_3d_roll">
        <div><input  type="submit" value="View Corona" name="coronaview"  class="btn"/></div>
        <div><input  type="submit" value="View Corona" name="coronaview" class="btn" /><</div>
    </div>
</div>
</div>
    <p>&nbsp;</p>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <div class="container">
 <div class="back">
    <div class="button_base b05_3d_roll">
        <div><input  type="submit" value="View workshops Registrations" name="workshop"  class="btn"/></div>
        <div><input  type="submit" value="View workshops Registrations" name="workshop" class="btn" /><</div>
    </div>
</div>
</div>





<%
     try
    {
         if (request.getParameter("btn_view")!= null)
                { 
                    response.sendRedirect("viewstudents.jsp");
                    
                }
         
         else if (request.getParameter("Aayamview")!= null)
                { 
                    response.sendRedirect("aayam.jsp");
                    
                }
         else if (request.getParameter("coronaview")!= null)
                { 
                    response.sendRedirect("corona.jsp");
                    
                }
         else if (request.getParameter("innovview")!= null)
                { 
                    response.sendRedirect("Innovocation.jsp");
                    
                }
         else if (request.getParameter("workshop")!= null)
                { 
                    response.sendRedirect("viewworkshopreg.jsp");
                    
                }
                
    }
         
    catch(Exception e)
            {
                System.out.print(e);
                e.printStackTrace();
                //e.getMessage();
            }
    
%>
  </body>
  </html>
  
  --%>
