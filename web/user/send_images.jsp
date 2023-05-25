<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.net.Socket"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Logic.path"%>
<%@page import="java.io.File"%>
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
           ArrayList al=new ArrayList();
           ArrayList alinfo=new ArrayList();
           ArrayList aliview=new ArrayList();
         int count=0;
            user=session.getAttribute("user1").toString();
          String iname=request.getParameter("iname").toString();
         con=DBConnect.getConnection();
          String q="select * from image where iname='"+iname+"'";
          st=con.createStatement();
          rs=st.executeQuery(q);
          while(rs.next())
          {
          int iid=rs.getInt("iid");
          String iinfo=rs.getString("iinfo");
          String iview=rs.getString("iview");
          String img=rs.getString("iposter");
          //System.out.println(">>"+img);
         // al.add(img);
            System.out.println(path.p+"user/images/"+img);
             File f=new File(path.p+"user/images/"+img);
            
             
             
             
             
             
             
             
             
             Socket s;
  s = new Socket("localhost", 5000);
      DataOutputStream dos = new DataOutputStream(s.getOutputStream());
      dos.writeInt(count);
      dos.writeUTF(user);
      dos.writeUTF(iid+"");
      dos.writeUTF(iname);
      dos.writeUTF(iinfo);
      dos.writeUTF(iview);
      dos.writeUTF(img);
      dos.writeLong(f.length());
		FileInputStream fis = new FileInputStream(f);
		byte[] buffer = new byte[4096];
		
		while (fis.read(buffer) > 0) {
			dos.write(buffer);
		}
		
		fis.close();
		dos.close();	
             
             
           count++;  
         
         
          }
          
//          for(int i=0;i<al.size();i++)
//          {
//              System.out.println(path.p+"user/images/"+al.get(i).toString());
//             File f=new File(path.p+"user/images/"+al.get(i).toString());
//             
//             Socket s;
//  s = new Socket("localhost", 5000);
//      DataOutputStream dos = new DataOutputStream(s.getOutputStream());
//     dos.writeUTF(user);
//      dos.writeUTF(al.get(i).toString());
//      dos.writeUTF(iname);
//      
//      dos.writeLong(f.length());
//		FileInputStream fis = new FileInputStream(f);
//		byte[] buffer = new byte[4096];
//		
//		while (fis.read(buffer) > 0) {
//			dos.write(buffer);
//		}
//		
//		fis.close();
//		dos.close();	
//             
//             
//             
//          
//          }
       

            
          
      %>
      <%@include file="../design/Unav.jsp" %>
    
      
<div class="row">
<div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
    <div class="panel panel-default">
        
        <div class="panel-heading">
            <h3 class="panel-title">Images of <%=iname%> Sent to 3D Hologram Box</h3>
	</div>
	
        <div class="panel-body">
<!--            <form  action="view_images2.jsp" method="post">-->
             <div class="row">
		<div class="col-xs-6 col-sm-6 col-md-12">
                    <div class="form-group">
                   
                    
                    
                    
                    
                    </div>
                </div>
              </div>
                            
                
                
                
         
              
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

