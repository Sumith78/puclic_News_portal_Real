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
                alert("Enter News Name..!");
                return false;
            }
            else if(iinfo=="")
            {
                alert("Enter News Description..!");
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
            <script src="cities.js"></script>
  </head>
  <body class="bg-success">
     
      <%@include file="../design/Unav.jsp" %>
            <%--<%@include file="../design/Unav.jsp" %>--%>

    
      
<div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">Adding N<small>ews</small></h3>
	</div>
	
        <div class="panel-body">
            <form role="form" name="addimage" onsubmit="return chk()" method="post">
            
                <div class="form-group">
                    <label class="label label-default">News Title</label>
                    <input type="text" name="iname" id="iname" class="form-control input-sm" placeholder="News Title"/>
                </div>
                
                
                <div class="form-group">
                    <label class="label label-default">Description</label>
                    <textarea name="desc" id="desc" class="form-control input-sm" placeholder="Description"></textarea>
                </div>

               
			  
                <div>
                        <label class="label label-default">Category</label>
                    <select class="form-control input-sm" name="cat">
                            <option value="Politics">Politics</option>
                            <option value="Health">Health</option>
                            <option value="Science">Science</option>
                            <option value="Economics">Economics</option>
                           
                   </select>
                    
              </div>
                <div>
                 <label class="label label-default">State</label>
<select onchange="print_city('state', this.selectedIndex);" id="sts" name ="stt" class="form-control" required></select>
<label class="label label-default" >City</label>
<select id ="state" name="city" class="form-control" required></select>
<script language="javascript">print_state("sts");</script>
                
                    <div>
                        <label class="label label-default">Area/Town</label>
                    <textarea name="area" id="desc" class="form-control input-sm" placeholder="Enter Address"></textarea>
              </div>
                </div>
                    
                

                

                </div>
              </div>           
              
                <input type="submit" value="Add News" class="btn btn-info btn-block" name="iadd" >
         </form>
			    	</div>
	    		</div>
    		
      <%
          Connection con;
          Statement st;
          ResultSet rs;
          if(request.getParameter("iadd")!=null)
          {
              String user=session.getAttribute("user1").toString();
              
              String n_title=request.getParameter("iname");
              String des=request.getParameter("desc");
              String cat=request.getParameter("cat");
              String state=request.getParameter("stt");
              String city=request.getParameter("city");
              String area=request.getParameter("area");
//            // String iposter= request.getParameter("iposter");
              try
              {
                           
                            con = DBConnect.getConnection();
                            st = con.createStatement(ResultSet.CONCUR_UPDATABLE,ResultSet.CONCUR_UPDATABLE);
                            boolean an= st.execute("INSERT INTO `news_details`(`n_title`, `des`, `category`, `state`, `city`, `area`,`user`) VALUES ('"+n_title+"','"+des+"','"+cat+"','"+state+"','"+city+"','"+area+"','"+user+"')");
                            if(!an)
                            {
                              out.print("<script>alert('news details added..!')</script>");
                            }
                            else
                            {
                                out.print("<script>alert('Sorry Image Not Added..!')</script>");
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

