
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

@WebServlet("/ShowCategories")

public class ShowCategories extends HttpServlet {
	
	

	
	
	public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException {
	
		
		HttpSession h = req.getSession();
		
		//we need session to check whether user is agent or customer
		//if customer we fetch database name from the form present in
		//Buy servlet and setup database name in session
		//else we fetch data base name from the session itself that was created on the time of login
		
		String databasename;
		if(h.getAttribute("user").toString().equals("Customer"))
		{
			
			databasename=req.getParameter("agentuserid");
			 h.setAttribute("db", databasename);
		}
		else {
			databasename=h.getAttribute("databasename").toString();
		}
		
		
		 try {
			 
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 //geting all tables for a particular agent 
			 String db = "show tables";
			 
			 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasename,"root","Hello_123") ;
			 Statement s = c.createStatement();
			 ResultSet rs = s.executeQuery(db);
			 
			 res.setContentType("text/html");
			 

		 
			 while(rs.next())
			 {
				 
				
				 res.getWriter().println(" <form action='ShowItem' method='post'>");
				 //printing categories and id user clicks on a particular category then category name is sent to ShowItem
				 res.getWriter().println(" <input type='submit' value='"+rs.getNString("Tables_in_"+databasename)+"' name='category'>");
				 res.getWriter().println("</form>");
				
				 
				
			 }
			 
			 PrintWriter out = res.getWriter();
			 
			
			 if(h.getAttribute("user").toString().equals("Customer"))
			 {
				 out.println("<a href='CustomerHome.jsp'>Home</a>"); 
			 }
			 else {
				 out.println("<a href='home.jsp'>Home</a>");
			 }
			 
			 
			 
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		
		


		 }
		 
}
