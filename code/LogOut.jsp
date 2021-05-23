<%-- 
    Document   : LogOut
    Created on : 30 Apr, 2021, 7:55:21 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
       try
       {    
           String n = (String)session.getAttribute("s1");
            if(n =="1") {
              session.removeAttribute("s1");
              response.sendRedirect("LoginPage.jsp");
            }
            
           else
            {
                response.sendRedirect("LoginPage.jsp");
            }            
        }
                  
              
     
     catch(Exception e)
    {
        e.getMessage();
    }
     
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
