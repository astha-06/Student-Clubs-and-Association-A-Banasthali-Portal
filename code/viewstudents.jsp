<%-- 
    Document   : viewstudents
    Created on : Mar 27, 2019, 12:26:03 AM
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
        <title>Details of student</title>
    </head>
    <body>   
        <h1 align='center'>Registered Students</h1>
    </body>
    <form action="viewstudents.jsp" method="POST">
        <table border="0" align='center'>
<tr>

<td>Name</td>
<td>student id</td>
<td>Email</td>
<td>Course</td>
<td>Year</td>
<td>Contact</td>

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
                rs=st.executeQuery("Select * from STUDENT");
                while(rs.next())
                {
                    %>
                    <tr>
                     <td><%=rs.getString(1) %></td>
                    <td><%=rs.getString(2) %></td>
                   <td><%=rs.getString(3) %></td>
                   <td><%=rs.getString(5) %></td>
                    <td><%=rs.getString(6) %></td>
                    <td><%=rs.getString(4) %></td>
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


