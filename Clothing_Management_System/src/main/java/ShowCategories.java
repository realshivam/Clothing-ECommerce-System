
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
			 String db = "show tables";
			 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasename,"root","Hello_123") ;
			 Statement s = c.createStatement();
			 ResultSet rs = s.executeQuery(db);
			 
			 res.setContentType("text/html");
			 

		 
			 while(rs.next())
			 {
				 
				 
				 res.getWriter().println(" <form action='ShowItem' method='post'>");
				
				 res.getWriter().println(" <input type='submit' value='"+rs.getNString("Tables_in_"+databasename)+"' name='category'>");
				 res.getWriter().println("</form>");
				
				 
				
			 }
			 
			 PrintWriter out = res.getWriter();
			 
			
			 
			 out.println("<a href='home.jsp'>Home</a>");
			 
			 
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		
		


		 }
		 
}
