<%@page import="DBQuery.DBConnect"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%=Logic.path.name%></title>    
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    	<script type="text/javascript" language="javascript">
	function chk()
	{	
            var iname = document.forms["addimage"]["iname"].value;
            var iinfo = document.forms["addimage"]["iinfo"].value;
            
            if(iname=="")
            {
                alert("Enter Image Name..!");
                return false;
            }
            else if(iinfo=="")
            {
                alert("Enter Image Description..!");
                return false;
                
            }
            else if(iname==""&& iinfo=="")
            {
                alert("Enter All Details..!");
                return false;
            }
                
            return true;
        }
        </script>
  </head>
  <body class="bg-success">
     
      <%@include file="../design/Unav.jsp" %>
    
      
<div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">View Images</h3>
	</div>
	
        <div class="panel-body">
            <form  action="view_images1.jsp" method="post">
            
                
                
                
             
			  
            
                
                
              <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                    <label class="label label-default">Image Category</label>
                    <select class="form-control input-sm" name="icat">
                            <option value="Politics">Politics</option>
                            <option value="Health">Health</option>
                            <option value="Science">Science</option>
                            <option value="Economy">Economy</option>
                   </select>
                    </div>
                </div>
              </div>
                            
                            
              
                <input type="submit" value="Proceed" class="btn btn-info btn-block" >
         </form>
			    	</div>
	    		</div>
    		</div>
    	</div>

      <%
          Connection con;
          Statement st;
          ResultSet rs;
          if(request.getParameter("iadd")!=null)
          {
              
              String iname=request.getParameter("iname");
              String iinfo=request.getParameter("iinfo");
              String istatus=request.getParameter("istatus");
              String icat=request.getParameter("icat");
              String iposter= request.getParameter("iposter");
              try
              {
                           
                            con = DBConnect.getConnection();
                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                            boolean an= st.execute("INSERT INTO `image`(`iname`, `iinfo`, `iview`, `icat`, `iposter`, `other`) VALUES ('"+iname+"','"+iinfo+"','"+istatus+"','"+icat+"','"+iposter+"','nthing')");
                            if(!an)
                            {
                              out.print("<script>alert('Movie Added..!')</script>");
                            }
                            else
                            {
                                out.print("<script>alert('Sorry Movie Not Added..!')</script>");
                            }
                    
              }
              catch(Exception c)
              {
                  out.print(c);              
              }
          }
          
      %>
       
                 
    
      
     
             <%@include  file="../design/footer.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

