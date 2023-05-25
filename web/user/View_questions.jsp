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
            <h3 class="panel-title">Answer the Questions</h3>
	</div>
         <table style="alignment-adjust: central">
	 <%
                                Connection con = DBConnect.getConnection();
                                Statement st = con.createStatement();
                                ResultSet rs = null;
                                int num1 = 1;
                                int num2 = 2;
                                int num3 = 3;
                                int num4 = 4;
                                int num5 = 5;
                                int num6 = 6;
                                int num7 = 7;
                                int num8 = 8;
                                int num9 = 9;
                                int num10 = 10;
                                int num11 = 11;
                                int num12 = 12;
                                int num13 = 13;
                                int num14 = 14;
                                int num15 = 15;
                                String q = "";
                                String qs1 = "", qs2 = "", qs3 = "", qs4 = "", qs5 = "", qs6 = "", qs7 = "", qs8 = "", qs9 = "", qs10 = "", qs11 = "", qs12 = "", qs13 = "", qs14 = "", qs15 = "";
                                String op11 = "", op12 = "", op13 = "", op14 = "", op21 = "", op22 = "", op23 = "", op24 = "", op31 = "", op32 = "", op33 = "", op34 = "", op41 = "", op42 = "", op43 = "", op44 = "", op51 = "", op52 = "", op53 = "", op54 = "", op61 = "", op62 = "", op63 = "", op64 = "", op71 = "", op72 = "", op73 = "", op74 = "", op81 = "", op82 = "", op83 = "", op84 = "", op91 = "", op92 = "", op93 = "", op94 = "", op101 = "", op102 = "", op103 = "", op104 = "", op111 = "", op112 = "", op113 = "", op114 = "", op121 = "", op122 = "", op123 = "", op124 = "", op131 = "", op132 = "", op133 = "", op134 = "", op141 = "", op142 = "", op143 = "", op144 = "", op151 = "", op152 = "", op153 = "", op154 = "";

                                q = "select * from questions where num = '" + num1 + "'";
                                rs = st.executeQuery(q);
                                int c = 0;
                                while (rs.next()) {
                                    qs1 = rs.getString("qus");
                                    op11 = rs.getString("op1");
                                    op12 = rs.getString("op2");
                                    op13 = rs.getString("op3");
                                    op14 = rs.getString("op4");
                            %>     
                            <tr>
                                <td> 
                                    Q no 1<input type="hidden" name="num1" value="<%=num1%>"/>                            
                                </td>                   
                                <td>
                                    <input type="text" name="qs1" id="qs" size="50" value="<%=qs1%>" readonly="" size="50"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    (1)


                                </td>
                                <td><input type="text" name="" id="a1o1" readonly="" value="<%=op11%>" size="15"/>
                                    <input type="checkbox" name="op11" id="op1"value="<%=op11%>"/></td>
                            </tr>
                            <tr><td>
                                    (2)
                                </td>
                                <td><input type="text" name="" id="a1o2" readonly=""value="<%=op12%>" size="15"/>
                                    <input type="checkbox" name="op2" id="op2"value="<%=op12%>"/></td>

                            </tr>
                            <tr><td>
                                    (3)
                                </td>
                                <td><input type="text" name="" id="a1o3" readonly=""value="<%=op13%>" size="15"/>
                                    <input type="checkbox" name="op13" id="op3"value="<%=op13%>"/></td>

                            </tr>
                            <tr><td>
                                    (4)
                                </td>
                                <td><input type="text" name="" id="a1o4" readonly=""value="<%=op14%>" size="15"/>
                                    <input type="checkbox" name="op14" id="op4"value="<%=op14%>"/></td>
                            </tr> 
                            <%        }               // int num=0;
                                q = "select * from questions where num = '" + num2 + "'";
                                rs = st.executeQuery(q);
                                while (rs.next()) {
                                    qs2 = rs.getString("qus");
                                    op21 = rs.getString("op1");
                                    op22 = rs.getString("op2");
                                    op23 = rs.getString("op3");
                                    op24 = rs.getString("op4");
                            %>                  
                            <tr>
                                <td> 
                                    Q no 2<input type="hidden" name="num2" value="<%=num2%>"/>                            
                                </td>                   
                                <td>
                                    <input type="text" name="qs2" id="qs" size="50" value="<%=qs2%>" readonly="" size="50"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    (1)
                                </td>
                                <td><input type="text" name="" id="a1o1" readonly="" value="<%=op21%>" size="15"/>
                                    <input type="checkbox" name="op1" id="op1"value="<%=op21%>"/></td>
                            </tr>
                            <tr><td>
                                    (2)
                                </td>
                                <td><input type="text" name="" id="a1o2" readonly=""value="<%=op22%>" size="15"/>
                                    <input type="checkbox" name="op22" id="op2"value="<%=op22%>"/></td>
                                <
                            </tr>
                            <tr><td>
                                    (3)
                                </td>
                                <td><input type="text" name="" id="a1o3" readonly=""value="<%=op23%>" size="15"/>
                                    <input type="checkbox" name="op23" id="op3"value="<%=op23%>"/></td>

                            </tr>
                            <tr><td>
                                    (4)
                                </td>
                                <td><input type="text" name="" id="a1o4" readonly=""value="<%=op24%>" size="15"/>
                                    <input type="checkbox" name="op24" id="op4"value="<%=op24%>"/></td>
                            </tr>   
                            <%        }               // int num=0;
                                q = "select * from questions where num = '" + num3 + "'";
                                rs = st.executeQuery(q);
                                while (rs.next()) {
                                    qs3 = rs.getString("qus");
                                    op31 = rs.getString("op1");
                                    op32 = rs.getString("op2");
                                    op33 = rs.getString("op3");
                                    op34 = rs.getString("op4");
                            %>                  
                            <tr>
                                <td> 
                                    Q no 3<input type="hidden" name="num3" value="<%=num3%>"/>                            
                                </td>                   
                                <td>
                                    <input type="text" name="qs3" id="qs" size="50" value="<%=qs3%>" readonly="" size="50"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    (1)
                                </td>
                                <td><input type="text" name="" id="a1o1" readonly="" value="<%=op31%>" size="15"/>
                                    <input type="checkbox" name="op31" id="op1"value="<%=op31%>"/></td>
                            </tr>
                            <tr><td>
                                    (2)
                                </td>
                                <td><input type="text" name="" id="a1o2" readonly=""value="<%=op32%>" size="15"/>
                                    <input type="checkbox" name="op32" id="op2"value="<%=op32%>"/></td>
                                <
                            </tr>
                            <tr><td>
                                    (3)
                                </td>
                                <td><input type="text" name="a1o3" id="a1o3" readonly=""value="<%=op33%>" size="15"/>
                                    <input type="checkbox" name="op33" id="op3"value="<%=op33%>"/></td>

                            </tr>
                            <tr><td>
                                    (4)
                                </td>
                                <td><input type="text" name="a1o4" id="a1o4" readonly=""value="<%=op34%>" size="15"/>
                                    <input type="checkbox" name="op34" id="op4"value="<%=op34%>"/></td>
                            </tr>
                            <%        }               // int num=0;
                                q = "select * from questions where num = '" + num4 + "'";
                                rs = st.executeQuery(q);
                                while (rs.next()) {
                                    qs4 = rs.getString("qus");
                                    op41 = rs.getString("op1");
                                    op42 = rs.getString("op2");
                                    op43 = rs.getString("op3");
                                    op44 = rs.getString("op4");
                            %>                  
                            <tr>
                                <td> 
                                    Q no 4<input type="hidden" name="num4" value="<%=num4%>"/>                            
                                </td>                   
                                <td>
                                    <input type="text" name="qs4" id="qs" size="50" value="<%=qs4%>" readonly="" size="50"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    (1)
                                </td>
                                <td><input type="text" name="a1o1" id="a1o1" readonly="" value="<%=op41%>" size="15"/>
                                    <input type="checkbox" name="op41" id="op1"value="<%=op41%>"/></td>
                            </tr>
                            <tr><td>
                                    (2)
                                </td>
                                <td><input type="text" name="a1o2" id="a1o2" readonly=""value="<%=op42%>" size="15"/>
                                    <input type="checkbox" name="op42" id="op2"value="<%=op42%>"/></td>
                                <
                            </tr>
                            <tr><td>
                                    (3)
                                </td>
                                <td><input type="text" name="a1o3" id="a1o3" readonly=""value="<%=op43%>" size="15"/>
                                    <input type="checkbox" name="op43" id="op3"value="<%=op43%>"/></td>

                            </tr>
                            <tr><td>
                                    (4)
                                </td>
                                <td><input type="text" name="a1o4" id="a1o4" readonly=""value="<%=op44%>" size="15"/>
                                    <input type="checkbox" name="op44" id="op4"value="<%=op44%>"/></td>
                            </tr>
                            <%        }               // int num=0;
                                q = "select * from questions where num = '" + num5 + "'";
                                rs = st.executeQuery(q);
                                while (rs.next()) {
                                    qs5 = rs.getString("qus");
                                    op51 = rs.getString("op1");
                                    op52 = rs.getString("op2");
                                    op53 = rs.getString("op3");
                                    op54 = rs.getString("op4");
                            %>                  
                            <tr>
                                <td> 
                                    Q no 5<input type="hidden" name="num5" value="<%=num5%>"/>                            
                                </td>                   
                                <td>
                                    <input type="text" name="qs5" id="qs" size="50" value="<%=qs5%>" readonly="" size="50"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    (1)
                                </td>
                                <td><input type="text" name="a1o1" id="a1o1" readonly="" value="<%=op51%>" size="15"/>
                                    <input type="checkbox" name="op51" id="op1"value="<%=op51%>"/></td>
                            </tr>
                            <tr><td>
                                    (2)
                                </td>
                                <td><input type="text" name="a1o2" id="a1o2" readonly=""value="<%=op52%>" size="15"/>
                                    <input type="checkbox" name="op52" id="op2"value="<%=op52%>"/></td>
                                <
                            </tr>
                            <tr><td>
                                    (3)
                                </td>
                                <td><input type="text" name="a1o3" id="a1o3" readonly=""value="<%=op53%>" size="15"/>
                                    <input type="checkbox" name="op53" id="op3"value="<%=op53%>"/></td>

                            </tr>
                            <tr><td>
                                    (4)
                                </td>
                                <td><input type="text" name="a1o4" id="a1o4" readonly=""value="<%=op54%>" size="15"/>
                                    <input type="checkbox" name="op54" id="op4"value="<%=op54%>"/></td>
                            </tr>

                            <%
                                }
                            %>                                               
                            <tr>
                                <td> </td> <td>
                                    <input type="submit" name="Submit" value="Next"/>
                                </td>
                            </tr>
         </table>
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
              catch(Exception c1)
              {
                  out.print(c1);              
              }
          }
          
      %>
       
                 
    
      
     
             <%@include  file="../design/footer.jsp" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
  </body>
</html>

