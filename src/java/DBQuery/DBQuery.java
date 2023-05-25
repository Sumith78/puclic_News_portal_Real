package DBQuery;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
public class DBQuery {

	Connection con;
	Statement st;
	ResultSet rs;
	/*where are we using create table command(how to specify table structure)*/
	/*Get required details from signup page*/
	public int add_user(String name,String usernm,String passwd,String email,String mobile) throws ClassNotFoundException, SQLException
	{
		int i=0;
		
		/*Send Command to DBConnect and connect to database*/
		
                con=DBConnect.getConnection();
		st=con.createStatement();
		
		/*to insert user data, in rows of attribute of add_users*/
                /*insert command :query= "insert into 'table'('field1',field2',field3,) VALUES('"+variable used in add_user+"')";*/
		String q="INSERT INTO `users`( `nm`, `usernm`, `password`, `email`, `mobile`,`act`) VALUES ('"+name+"','"+usernm+"','"+passwd+"','"+email+"','"+mobile+"',1)";
		/*Varchar type syntax '"+variable+"'*/
                System.out.println(q);

		/*make changes to navicat sql server*/
		i=st.executeUpdate(q);
		
		return i;
	}
        
        
        public String check_location(double x,double y) throws ClassNotFoundException, SQLException
	{
		String room="";
		
	        double x1, y1, x2, y2, x3, y3, x4, y4;
              
		String q1="select * from room_details";
		con=DBConnect.getConnection();
		st=con.createStatement();
		
		rs=st.executeQuery(q1);
		
		while(rs.next())
		{
                    
                    x1=Double.parseDouble(rs.getString("x1"));
                    y1=Double.parseDouble(rs.getString("y1"));
                    x2=Double.parseDouble(rs.getString("x2"));
                    y2=Double.parseDouble(rs.getString("y2"));
                    x3=Double.parseDouble(rs.getString("x3"));
                    y3=Double.parseDouble(rs.getString("y3"));
                    x4=Double.parseDouble(rs.getString("x4"));
                    y4=Double.parseDouble(rs.getString("y4"));
	        
                      double maxx =x1;
                     double arr[]={x1,x2,x3,x4};
            

                     for(int i = 0; i < 4; i++)

                    {

                    if(maxx < arr[i])

                    {

                    maxx = arr[i];

                    }

                   }
                     
                     
                     
                     double minx =x1;
                     double arrm[]={x1,x2,x3,x4};
            

                     for(int i = 0; i < 4; i++)

                    {

                    if(minx > arrm[i])

                    {

                    minx = arrm[i];

                    }

                   }
                    
                     
                     double maxy =y1;
                     double arry[]={y1,y2,y3,y4};
            

                     for(int i = 0; i < 4; i++)

                    {

                    if(maxy < arry[i])

                    {

                    maxy = arry[i];

                    }

                   }
                     
                     
                      double miny =y1;
                     double arrym[]={y1,y2,y3,y4};
            

                     for(int i = 0; i < 4; i++)

                    {

                    if(miny > arrym[i])

                    {

                    miny = arrym[i];

                    }

                   }
                     
                   //  System.out.println("maxx="+maxx);
                   //  System.out.println("minx="+minx);
                   //  System.out.println("maxy="+maxy);
                   //  System.out.println("miny="+miny);
                     if((x<=maxx && x>=minx) && (y<=maxy && y>=miny))
                     {
                     room=rs.getString("room");
                     break;
                     }
                     
                     
                     
		}
                return room;
                
		
        }
        
        
        
	public int add_room(String room,double x1,double y1,double x2,double y2,double x3,double y3,double x4,double y4) throws ClassNotFoundException, SQLException
	{
		int i=0;
		
		
		String q1="select * from room_details where room='"+room+"'";
		con=DBConnect.getConnection();
		st=con.createStatement();
		
		rs=st.executeQuery(q1);
		
		if(rs.next())
		{
			i=1;
		}
		
		if(i==0)
		{
		
		String q="insert into  room_details values (  '"+room+"', '"+x1+"','"+y1+"','"+x2+"','"+y2+"','"+x3+"','"+y3+"','"+x4+"','"+y4+"')";
		System.out.println(q);

		
		i=st.executeUpdate(q);
		}
		else{
			
		String q2="truncate room_details room='"+room+"'";	
		i=st.executeUpdate(q2);
		
		String q="insert into  room_details values(  '"+room+"', '"+x1+"','"+y1+"','"+x2+"','"+y2+"','"+x3+"','"+y3+"','"+x4+"','"+y4+"')";
		System.out.println(q);

		
		i=st.executeUpdate(q);
		}
		return i;
	}
	
	public String get_wifi_details() throws ClassNotFoundException, SQLException{
        double x_dim=0.0,y_dim=0.0,wifi1_x=0.0,wifi1_y=0.0,wifi2_x=0.0,wifi2_y=0.0,wifi3_x=0.0,wifi3_y=0.0;
        String s="";
        String q1="select * from plan";
        con=DBConnect.getConnection();
	st=con.createStatement();
	rs=st.executeQuery(q1);
		
        if(rs.next())
        {
        
        x_dim=rs.getDouble("x_dim");
        y_dim=rs.getDouble("y_dim");
        wifi1_x=rs.getDouble("wifi1_x");
        wifi1_y=rs.getDouble("wifi1_y");
        wifi2_x=rs.getDouble("wifi2_x");
        wifi2_y=rs.getDouble("wifi2_y");
        wifi3_x=rs.getDouble("wifi3_x");
        wifi3_y=rs.getDouble("wifi3_y");
        
        }
        
        s=x_dim+"-"+y_dim+"-"+wifi1_x+"-"+wifi1_y+"-"+wifi2_x+"-"+wifi2_y+"-"+wifi3_x+"-"+wifi3_y;
        
        return s;
        }
	
}
