<%-- 
    Document   : delete
    Created on : Mar 31, 2019, 12:14:20 AM
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
        <title>delete</title>
    </head>
    <body >
        <h1 align="center"><font  color="Black">delete workshop/event</font></h1>
        <form  action="delete.jsp" method="POST">
        
                       <table align="center" border="0" cellspacing="25" cellpadding="2">
                           <tr>
                               <td><font color="BLACK">Enter id</font></td>
                        <td><input type="text" name="id" size="30"  required /></td>
                    </tr>
                       </table>
                        <p align="center">
                       <input   type="submit" value="DELETE" name="btn_reg" />
                        </p>
        </form>
        </body>
</html>

<%
    try
       {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
               Connection conn=null;
               Statement st=null;
               conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Banasthali Club Management System","project","project");
                st=conn.createStatement();
               
            
           
               if (request.getParameter("btn_reg")!= null)
                { 
              
                      String id=request.getParameter("id");
                    
          
                      int y = st.executeUpdate("delete from aayamworkshop where aw_id='"+id+"' ");
                      
                        if(y>0)
                            {            
                                out.print("Deletion succesfull");
                            }
                            else
                            {
                                out.print("enter valid id");
                            }
                    
                    
                }
                conn.close();
               
       }
            catch(Exception e)
            {
                System.out.print(e);
                e.printStackTrace();
                //e.getMessage();
            }
               
    %>