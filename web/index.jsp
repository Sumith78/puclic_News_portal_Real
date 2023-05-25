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
       <div class="row">
           <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
               <div class="panel panel-default">
                   <div class="panel-heading">
                       <h3 class="panel-title">Login<small> Free</small></h3>
                   </div>
		
           <div class="panel-footer">        
               <form role="form" method="post">
                   
                   <div class="row">
                       <div class="col-xs-6 col-sm-6 col-md-12">
                           <div class="form-group">
                               <!--what does 1st 3 lines for-->
                               <input type="text" name="Luser" class="form-control input-sm" placeholder="Username">
                               

                            </div>
                       </div>
                   </div>
		
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-12">
                            <div class="form-group">
                                <input type="password" name="Lpass"  class="form-control input-sm" placeholder="Password">
                            </div>
                        </div>
                    </div>
                     
                    <div class="row">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="form-group">
                                    <a href="forget.jsp">Forget Password.</a>
                            </div>
                        </div><br>
                    </div>
                   <input type="submit" value="Login" class="btn btn-info btn-block" name="login">
                   <%
                                        Connection con;
                                Statement st;
                                ResultSet rs;
    if(request.getParameter("login")!=null)
    {
                if((request.getParameter("Luser").equals("admin"))&&((request.getParameter("Lpass").equals("admin"))))
                {
                    response.sendRedirect("admin/admin.jsp");
                    session.setAttribute("user1", "admin");
                }
                                String user=request.getParameter("Luser");
                                String pass=request.getParameter("Lpass");
                                
                                try
                                {
                                    
                                    con = DBConnect.getConnection();
                                    st = con.createStatement();
                                    rs=st.executeQuery("select * from users where usernm='"+user+"' and password='"+pass+"'");
                                    if(rs.next())
                                    {
                                        if(rs.getBoolean("act")==true)
                                        {
                                            session.setAttribute("user1", user);
                                                if(session.getAttribute("user1")!=null)
                                                {
                                                    response.sendRedirect("user/user_home.jsp");
                                                }
                                        }
                                        else
                                        {
                                                out.print("<label class='label label-info'>You are blocked..!</label>");        
                                        }
                                    }
                                    else
                                    {
                                        out.print("<label class='label label-info'>Username And Password Not Found..!</label>");
                                    }
                                }
                                catch(Exception x)
                                {
                                    out.println(x);
                                }

                
                
    }
                   %>
               </form>
           </div>
               </div>
           </div>
       </div>
   </div>
   

    
<br>


<div>
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Create Account<small> **Free</small><%=message%></h3>
                    
                </div>
                <div class="panel-body">
                    <!--what does form action = ./sign up do here?-->
                    <form action="./signup" method="post">
                        <div class="form-group">
                            <input type="text" name="Ruser" class="form-control input-sm" placeholder="Username" pattern="[a-zA-Z]+" title="Please enter a valid name with no digits." required/>
                            
                        </div>
                        
                                <div class="form-group">
                                    <input type="text" name="Rname" class="form-control input-sm floatlabel" placeholder="Name">
                                </div>
                        
                        <div class="form-group">
                            <input type="email" name="Remail" class="form-control input-sm" placeholder="Email Address">
                        </div>
                        
                            
                                <div class="form-group">
                                    <input type="password" name="Rpass" class="form-control input-sm" placeholder="Password">
                                </div>
                            
                        
                        
              
               
                            
                            
              
        <div class ="form-group">
            <input type="number" name="Rmobile" class="form-control input-sm" placeholder="Mobile Number">
	</div>
                        <input type="submit" value="Register" class="btn btn-info btn-block" name="register" >
             
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
