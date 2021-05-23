<%-- 
    Document   : eve_ver
    Created on : 20 Apr, 2021, 4:35:57 PM
    Author     : Hp
--%>
<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.*" %>
<%@page import="javax.servlet.*" %>
<%@page import="javax.servlet.http.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    try
       {  
           Connection conn=null;
           PreparedStatement pstmt = null;
           FileInputStream fis=null;
           String evename=request.getParameter("ename");
           String date=request.getParameter("evedate");
           String myloc=request.getParameter("myimg");
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           conn=DriverManager.getConnection("jdbc:derby://localhost:1527/Project","project","project");
           File image= new File(myloc);
                    if (request.getParameter("btn_up")!= null)
                     {
                        
                            pstmt = conn.prepareStatement("insert into events(event_name, event_date,image) " + "values(?,?,?)");
                            pstmt.setString(1, evename);
                            pstmt.setString(2, date);
                            fis=new FileInputStream(image);
                            pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length()));
                            int count = pstmt.executeUpdate();
                            if(count>0)
                            {
                            out.println("insert successfully");
                            }
                            else
                            {
                            out.println("not successfully inserted");
                            }
                        }
  
                    }
                     
   
            catch(Exception e)
            {
                System.out.print(e);
                e.printStackTrace();
       
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Upload</title>
    </head>
    <body>
        <form  method="post" action="admin_imageup.jsp"  class="form-horizontal" role="form">
    
                <h2>Image upload</h2>
                <div class="form-group">
                    <label for="workby" class="col-sm-3 control-label">Event Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="ename" name="ename"  class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="workby" class="col-sm-3 control-label">Event Date</label>
                    <div class="col-sm-9">
                        <input type="text" id="evedate" name="evedate"  class="form-control" autofocus>
                    </div>
                </div>
                <div class="form-group">
                    <label for="workby" class="col-sm-3 control-label">Upload Image</label>
                    <div class="col-sm-9">
                        <input type="file" name="myimg" class="form-control" autofocus>
                        
                    </div>
                </div>
        <p align="center">
                <input  type="Submit" value="Upload" name="btn_up" />
                
                <!-------------->
                
               
        </form>
    </body>
</html>