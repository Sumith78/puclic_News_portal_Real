package DBQuery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBConnect {
	
	
	 
public static Connection con1;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException{
		
		 Class.forName("com.mysql.jdbc.Driver");
		 con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/public_news_portal","root","root");
		    
		/*Establishing Connection to Mysql(driver folder)*/
		
	return con1;	
	}
	public static void main(String args[])
    {
        try {
            System.out.println(getConnection());
        }catch(Exception e)
               {
               
               }
    }
	
}
