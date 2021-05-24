import java.io.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadEvent")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
             maxFileSize=1024*1024*10,      // 10MB
             maxRequestSize=1024*1024*50)
public class FileUploadEvent extends HttpServlet {
private static final String SAVE_DIR="events";
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
     response.setContentType("text/html;charset=UTF-8");
    PrintWriter outt = response.getWriter();
        //String savePath = "C:\Users\admin\Documents\NetBeansProjects\WebApplication1" + File.separator + SAVE_DIR; //specify your path here
       
     
         Part filePart = request.getPart("myimg");
            
          
         String savePath="";
          String path="C:\\Users\\HP\\Documents\\NetBeansProjects\\WebApplication1\\web" + File.separator+ SAVE_DIR;
       
          File file=new File(path);
          file.mkdir();
          String fileName = extractFileName(filePart);
          
          OutputStream out = null;
          
            InputStream filecontent = null;
            
           
            try {
        out = new FileOutputStream(new File(path + File.separator
                + fileName));
        
        filecontent = filePart.getInputStream();
     
 
        int read = 0;
        final byte[] bytes = new byte[1024];
 
        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
           
            savePath=path+File.separator+fileName;
            
        }
                
        /*
         String savePath = "C:" + File.separator+ SAVE_DIR; //specify your path here
           File fileSaveDir=new File(savePath);
            if(!fileSaveDir.exists()){
                fileSaveDir.mkdir();
            }
          
            Part part=request.getPart("img");
           
      
            
            String fileName=extractFileName(part);
             out.print(fileName);
             
          
        part.write(savePath + File.separator + fileName);
      try{
     
            */
        
        String DirPlusFileName=null;
        DirPlusFileName=SAVE_DIR+File.separator+fileName;
           
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/project","project","project");
        String query="INSERT INTO events(event_name,event_date,club,image) values (?,?,?,?)";

            PreparedStatement pst;
            pst=conn.prepareStatement(query);

           // String filePath= savePath + File.separator + fileName ;
           pst.setString(1,request.getParameter("ename"));
           pst.setString(2,request.getParameter("datepicker"));
           pst.setString(3,request.getParameter("cname"));
            pst.setString(4,DirPlusFileName);
           int x= pst.executeUpdate();
           if(x>0)
           {
               outt.print("<script language='JavaScript'>alert('Inserted Successfully!!');</script>");
            }
            }
            
            catch(Exception ex){
                             outt.println(ex);
            }
    }

    // file name of the upload file is included in content-disposition header like this:
//form-data; name="dataFile"; filename="PHOTO.JPG"
private String extractFileName(Part part) {
  final String partHeader = part.getHeader("content-disposition");
    
    for (String content : part.getHeader("content-disposition").split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
        }
    }
    return null;
}
   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}