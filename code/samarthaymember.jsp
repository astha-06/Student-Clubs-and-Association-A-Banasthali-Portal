<%-- 
    Document   : innovmember
    Created on : Mar 26, 2019, 10:45:31 PM
    Author     : welcome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try
    {
         if (request.getParameter("btn_update")!= null)
                { 
                    response.sendRedirect("updateinnovworkshop.jsp");
                    
                }
         else if (request.getParameter("view")!= null)
             { 
                    response.sendRedirect("viewiwreg.jsp");
                    
                }
         else if (request.getParameter("btn_reg")!= null)
             { 
                    response.sendRedirect("delete.jsp");
                    
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Innovocation</title>
    </head>
    <body background="picture/sign-up-background.jpg">
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
      
    
         <li style="width: 110px" ><div><a href="http://localhost:8084/Banasthali_Club_Management/innovmember.jsp">Innovacation</a></li>
         <li style="width: 640px"><font size="4" color="white">Banasthali Student Club Management &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></li>
</nav>


</ul>
         <form action="innovmember.jsp" method="POST">
        <h1 align="center" ><font size="10" color="white">Innovacation</font></h1>
       =
            
         </form>

        <p>&nbsp; </p>
        <p>&nbsp;</p>

        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="viewinnovevent.jsp"><img src="picture/2.png" width="240" height="290" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="viewinnovworkshop.jsp"><img src="picture/3.png" width="240" height="291" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a  href="innovabout.jsp"><img src="picture/1.png" height="290" width="240" /></a></p>
<p align="center">
                <input  type="submit" value="ADD EVENT/WORKSHOP" name="btn_update" />
               
            </p> 
            <p align="center">
                       <input   type="submit" value="DELETE EVENT/WORKSHOP" name="btn_reg" />
                        </p>
            
            <p align="center">
                <input  type="submit" value="View workshop Registrartion" name="view" />
                
               
            </p> 
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>

    </body>
</html>
