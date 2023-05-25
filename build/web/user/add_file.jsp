
<%@page import="DBQuery.DBConnect"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
  <%@page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%=Logic.path.name%></title>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
  </head>
  <body class="bg-success">
     
      <%@include file="../design/Unav.jsp" %>
       
     
        <div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">Set File </h3>
        </div>
        <div class="panel-body">

<!--            <form action="UploadServlet" method="post" enctype="multipart/form-data" name="form1" id="form1">-->
            <form role="form"  action="upload.jsp" method="post" enctype="multipart/form-data" name="regi_frm">
                <!--<input type="file" id="file" name="file1" accept="image/*"  multiple="multiple" size ="50000" required/><br>-->                

                         <label class="label label-default">Select File</label>
                        <select class="form-control input-sm" name="iid">
                            <option value="Select File">Select File</option>
                    <%
                        Connection con;
                        Statement st;
                        ResultSet rs;
                        try
                        {
                            
                            con = DBConnect.getConnection();
                            st = con.createStatement();
                            rs = st.executeQuery("select n_title,nid from news_details");
                          
                            int size=0;
                            while(rs.next())
                            {
                                out.print("<option value='"+rs.getString(2)+"'>"+rs.getString(1)+"</option>");
                                size++;
                            }
                            if(size==0)
                            {
                                 out.print("<script>alert('Image Not Found.!')</script>");
                            }
                          
                    
                        }
                        catch(Exception c)
                        {
                            out.print(c);              
                        }
                    
                    %>
                    </select>
                  
            </br>
            <h7> Upload File<h7>
                    <input type="file" name="file1" accept="image/*" multiple="multiple" size="5000"/><br>

                <div class="row">
		<div class="col-xs-12 col-sm-12 col-md-16">
                    <div class="form-group">
                </div>
                </div>
                </div>
           
                    
                   
                   
			 
            <input type="submit" value=" Upload FIle" class="btn btn-info btn-block" name="addtime" >
          <%
                                    
                                 if(request.getParameter("token")!=null)
                                 {
                                          
                                          %>
                                         
                                             
                                             </br>
                                                
                                                   <p align="center" role="button" class="label label-success ">Image Successfully Added..!</p>
                                                   </br>   
                                           
                                          <%
                                 }
                                 if(request.getParameter("to")!=null)
                                 {
                                          out.print("<script>alert('Image NOT Updated..!')</script>");
                                 }
            %>
         </form>
         
			    	</div>
	    		</div>
                    
                    
                    
                    
    		</div>
    	</div>
       
                    
       
                   
    
      
     
            <%@include  file="../design/footer.jsp" %> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

