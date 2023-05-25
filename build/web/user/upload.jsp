<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.awt.image.BufferedImage"%>
<%@page import="Logic.path"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Image"%>
<%@page import="Logic.ImageResizer"%>
<%@page import="Logic.ImageResizer"%>
<%@page import="DBQuery.DBConnect"%>

<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.oreilly.servlet.MultipartRequest" %>  


    <%               
        
                        Connection con;
                        Statement st;
                        ResultSet rs;
        try
        {
            
            //String  mp=request.getParameter("mposter");
            MultipartRequest m = new MultipartRequest(request,path.p+"images");
            File f1=m.getFile("file1");
            m.getFileNames();
            String fnm=f1.getName();
                        
            String iid= m.getParameter("iid");
            
             try {
                        ImageResizer ir=new ImageResizer();
                        Image img = null;
                        img = ImageIO.read(new File(path.p+"images/"+fnm));
                        BufferedImage tempPNG = null;
                        tempPNG = ir.resizeImage(img, 200, 200);
                        File newFilePNG = null;
                        newFilePNG = new File(path.p+"user/images/"+iid+".png");
                        ImageIO.write(tempPNG, "png", newFilePNG);
                        newFilePNG = new File(path.p+"images/"+iid+".png");
                        ImageIO.write(tempPNG, "png", newFilePNG);
                        System.out.println(path.p+"images/"+iid+".png");
                       
                    } catch (IOException ex) {
                       ex.printStackTrace();
                    }
            
            

              String fname=iid+".png";
            
                                       
                                        con = DBConnect.getConnection();
                                        st = con.createStatement();
                                       // int xx= st.executeUpdate("UPDATE `image` SET `iposter`= '"+fname+"' where `iid`="+iid+"");
                                        
//                                        System.out.println(">>>>>>>>>>>>>"+xx);
//                                        if(xx==0)
//                                        {
//                                          out.print("<script>alert('Error.!')</script>");
//                                        }
//                                        else
//                                        {
                                          response.sendRedirect("add_file.jsp?token=done&iid="+iid);
                                     //  }
        
        
        File f=new File(path.p+"images/"+fnm);
        f.delete();
        
        }
        catch(Exception x)
        {
          response.sendRedirect("add_file.jsp?to=ImagePosterNotUploaded");
        }
    %>  
   
