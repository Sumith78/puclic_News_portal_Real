<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"   %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>

<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.io.File"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>uploading page</title>
</head>
<body>

<%!

    private String uname;
    private String password;
    private String email;

    private String video;
    FileItem fitem3;

    PreparedStatement pst;
    String query;

%>

<%
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");        

    //response.setContentType("multipart/form-data");
    DiskFileUpload dfupload = new DiskFileUpload();
    List listItems = dfupload.parseRequest(request);

    System.out.println("xcxxxxxxxxxxxxxxxxx"+listItems.size());



    email = (String)session.getAttribute("user");
        System.out.println("email :"+email);

        password = (String)session.getAttribute("password");
        System.out.println("password :"+password);

        String select=request.getParameter("select");
        System.out.println("select :"+select);  


    fitem3 = (FileItem)listItems.get(0);
        String abname = fitem3.getName();
        System.out.println(abname);
    int index = abname.lastIndexOf(File.separator);
        video = abname.substring(index+1);

        query = "insert into video(emailid,password,video,subject) values(?,?,?,?)";


    pst = con.prepareStatement(query);

    pst.setString(1,email);
    pst.setString(2,password);
    pst.setString(3,video);
    pst.setString(4,select);



            int i = pst.executeUpdate();


    if(i>0){
        String savepath = getServletContext().getRealPath("/");
        StringBuilder sb = new StringBuilder(savepath);
        for(int c=0; i<sb.length(); i++){
            if(sb.charAt(c)==File.separatorChar)
                sb.insert(c++,'\\');
        }
        File outfile = new File(sb+"videos\\"+video);

            System.out.println("pathhhhhhhhhhhhhh: "+outfile);

            fitem3.write(outfile);

        response.sendRedirect("home2.html");
    }

    else{
        //request.getRequestDispatcher("home2.html").forward(request,response);
    }
    pst.close();

}
catch(Exception e)
{
    out.println("Error:"+e);
}   
%>
</body>
</html>