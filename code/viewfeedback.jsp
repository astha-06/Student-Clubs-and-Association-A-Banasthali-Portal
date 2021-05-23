<%-- 
    Document   : viewfeedback
    Created on : Mar 31, 2019, 6:04:20 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%
     try
       {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
               Connection conn=null;
               Statement st=null;
                ResultSet rs=null;
               conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Banasthali Club Management System","project","project");
                st=conn.createStatement();
  
            String id=request.getParameter("ID");
             String experience=request.getParameter("experience");
           String name=request.getParameter("name");
           String comment=request.getParameter("comments");
           String email=request.getParameter("email");
              
                    rs=st.executeQuery("Select * from FEEDBACK ");
                     while(rs.next())
                     {
                         %>
                    
                         
                  
                          <form  action= "viewfeedback.jsp" method= "POST">
                    <table border="0" cellspacing="6" cellpadding="4">	
                     
                        
				
                      <tr>

                        <td>STUDENT NAME</td>
                        <td>EXPERIENCE</td>
                        <td>FEEDBACK</td>
                        </tr>					
					 <tr>
                         
                  
                                          
                     <td><%=rs.getString(3) %></td>
                      <td><%=rs.getString(2) %></td>
                   <td><%=rs.getString(4) %></td>
                    
                   </tr>
                 </table>
</form>
                    
                         
                  <%   
                    
               }
              
            }
                catch(Exception e)
            {
                System.out.print(e);
                e.printStackTrace();
                //e.getMessage();
            }
    
    
%>