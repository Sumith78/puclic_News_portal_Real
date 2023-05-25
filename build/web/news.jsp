<%@page import="DBQuery.DBConnect"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Title is linked & stored in 
    Package(Login)in Class(Path)in variable(name)-->
    <title><%=Logic.path.name%></title>    
    <link href="css/bootstrap.min.css" rel="stylesheet">
  </head>
    <style>
body {
  background-image: url('images/news.jpg');
}
</style>
  <body>
     
      <!-- At load of page fields are empty
      After field are filled, it will display 
      Registration Successful or Failed-->
      
      <%
          String message="";
          if(session.getAttribute("msg")!=null)
          {
          
          message=session.getAttribute("msg").toString();
          }
          
          
          %>
      <%@include file="design/nav.jsp" %>
   <div>
      
   </div>

<br>
<br>

<div>
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Select Category<small> Latest</small><%=message%></h3>
                    
                </div>
                <div class="panel-body">
                    <!--what does form action = ./sign up do here?-->
                        <form  action="view_news.jsp" method="post">
            
                
                
                
             
			  
            
                
                
              <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                    <label class="label label-default">News Category</label>
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
</div>
     

            
            
            
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
