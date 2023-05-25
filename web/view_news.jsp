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
          
          String catg=request.getParameter("icat").toString();
          
         
          Connection con;
          Statement st;
          ResultSet rs=null;
        //   String icat="",user="";
//          if(request.getParameter("icat")!=null)
//          {
              
        
            //   icat=request.getParameter("icat");
            //  user=session.getAttribute("user1").toString();
              try
              {
                           
                            con = DBConnect.getConnection();
                            st = con.createStatement();
                            String q="select * from news_details where  category='"+catg+"'";
                            System.out.println(q);
                            
                            rs=st.executeQuery(q);
                            
                    
              }
              catch(Exception c)
              {
                  out.print(c);              
              }
         // }
          
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
                    <h3 class="panel-title">Category<small> </small><%=catg%></h3>
                    <%
                        while(rs.next())
                        {
                            int nid=rs.getInt("nid");
                            String path="images/"+nid+".png";
                        %>
                    <p align="justify">
                        <%=rs.getString("n_title")%></br>
                        <%=rs.getString("des")%></br>
                        

                    </p>
                    <img src="<%=path%>" width="400">
                    
                   
                    <%}%>
                </div>
                <div class="panel-body">
                    <!--what does form action = ./sign up do here?-->
                      
                </div>
            </div>
        </div>
    </div>
</div>
     

            
            
            
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
