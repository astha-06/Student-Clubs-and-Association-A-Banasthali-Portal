<%-- 
    Document   : viewawreg
    Created on : Mar 31, 2019, 12:32:05 AM
    Author     : welcome
--%>

<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view Workshop reg </title>
    </head>
    <body>        
    </body>
    <form action="viewawreg.jsp" method="POST">
        <table border="2">
<tr>

<td>WORKSHOP NAME</td>
<td>STUDENT NAME</td>
<td>STUDENT ID</td>
<td>STUDENT EMAIL</td>
<td>COURSE</td>
<td>YEAR</td>
<td>CONTACT NO.</td>


</tr>
        <%
     try
       {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
               Connection conn=null;
               Statement st=null;
               ResultSet rs=null;
               conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Banasthali Club Management System","project","project");
                st=conn.createStatement();
                rs=st.executeQuery("Select * from workshopreg Where CLUB='AAYAM' ");
                while(rs.next())
                {
                    %>
                    <tr>
                         
                  
                         
                    
                     <td><%=rs.getString(1) %></td>
                      <td><%=rs.getString(2) %></td>
                   <td><%=rs.getString(3) %></td>
                    <td><%=rs.getString(4) %></td>
                    <td><%=rs.getString(5) %></td>
                     <td><%=rs.getString(6) %></td>
                     <td><%=rs.getString(7) %></td>
                     <td><%=rs.getString(8) %></td>
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
        
        
    </form>
</html>



