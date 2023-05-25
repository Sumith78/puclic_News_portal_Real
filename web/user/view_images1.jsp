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
     
      <%
          Connection con;
          Statement st;
          ResultSet rs=null;
           String icat="",user="";
          if(request.getParameter("icat")!=null)
          {
              
        
               icat=request.getParameter("icat");
              user=session.getAttribute("user1").toString();
              try
              {
                           
                            con = DBConnect.getConnection();
                            st = con.createStatement();
                            String q="select * from image where user='"+user+"' and icat='"+icat+"'";
                            System.out.println(q);
                            rs=st.executeQuery(q);
                            
                    
              }
              catch(Exception c)
              {
                  out.print(c);              
              }
          }
          
      %>
      <%@include file="../design/Unav.jsp" %>
    
      
<div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">View Images</h3>
	</div>
	
        <div class="panel-body">
<!--            <form  action="view_images2.jsp" method="post">-->
             <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                    <label class="label label-default">Image Details of Category <%=icat%> </label>
                   
                    
                    
                    
                    
                    
                    </div>
                </div>
              </div>
                            
                
                
                
             
			  
            <%
               while(rs.next())
               {
            %>
              <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                   
                   
                    <table border="2">
                        <form action="send_images.jsp" method="post">
                            <input type="hidden" name="iname" value="<%=rs.getString("iname")%>"/>
                        <tr><td>Name</td> <td><%=rs.getString("iname")%></td></tr>
                        <tr><td>Description</td> <td><%=rs.getString("iinfo")%></td></tr>
                        <tr><td>View</td> <td><%=rs.getString("iview")%></td></tr>
                        <tr><td>Image</td> <td><img src="images/<%=rs.getString("iposter")%>"/></td></tr>
                        <tr><td></td> <td><input type="submit" name="submit" value="Send Image"/></td></tr>
                        </form>
                    </table>
                    
                    
                    
                    
                    </div>
                </div>
              </div>
                            
               <%}             
              %>
              
<!--                <input type="submit" value="Proceed" class="btn btn-info btn-block" >-->
<!--         </form>-->
			    	</div>
	    		</div>
    		</div>
    	</div>

       
                 
    
      
     
             <%@include  file="../design/footer.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

