import javax.servlet.http.HttpServlet;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;

import java.sql.*;

@WebServlet("/Buy")
public class Buy extends HttpServlet {

	
	
	public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException {
		
		res.getWriter().print("Agents : ");
		
		 try {
			 
			 
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 
			 //Query for fetching all names and userid ( also database name of the agent ) from Agent table
			 
			 String db = "select name,userid from Agent";
			 
			//Creating connection to ClothingManagementSystem database that contains Agent and User tables
			 //for Log in
			 
			 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ClothingManagementSystem","root","Hello_123") ;
			 Statement s = c.createStatement();
			 ResultSet rs = s.executeQuery(db);
			 
			 res.setContentType("text/html");
			 
			 while(rs.next())
			 {
				 
				 String databasename = rs.getNString("userid");
				 
				
				
				 //sending get request to ShowCategories servlet
				 
				 res.getWriter().println(" <form action='ShowCategories' method='get'>");
				 
				 //Printing userid/databasename of agents in the button and setting it to value so we may fetch it
				 //further using getParameter()
				 res.getWriter().println(" <input type='submit' value='"+rs.getNString("userid")+"' name='agentuserid'>");
				 res.getWriter().println("</form>");
				
				 
				
			 }
			 
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		
	}
	
	

}
