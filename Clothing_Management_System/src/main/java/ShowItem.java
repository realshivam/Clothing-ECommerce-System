
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

@WebServlet("/ShowItem")


public class ShowItem extends HttpServlet {
	
	

	
	
	public void doPost(HttpServletRequest req , HttpServletResponse res) throws IOException {
		
		HttpSession h = req.getSession();
		String databasename;
	 //fetching databasename from session
		if(h.getAttribute("user").toString().equals("Customer"))
		{
			databasename=h.getAttribute("db").toString();
		}
		else {
			databasename=h.getAttribute("databasename").toString();
		}
		
		//fetching category from the form present in ShowCategories
		
		String category = req.getParameter("category").toString();
		
		
		

		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//Connecting to the agents data base and taking out all values in a particular category table
			 String db = "select * from "+category;
			 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasename,"root","Hello_123") ;
			 Statement s = c.createStatement();
			 ResultSet rs = s.executeQuery(db);
			 

			 //printing everything in a tabular form
			 
			 res.setContentType("text/html");
			 
			 res.getWriter().println("<style>");
			 res.getWriter().println("table, th, td {");
			 res.getWriter().println("border: 1px solid black;");
			 res.getWriter().println("border-collapse: collapse;}");
			 	
			 res.getWriter().println("</style>");
			 
			 res.getWriter().println("<table style='width:50%'>");
			 res.getWriter().println(" <tr>");
			 res.getWriter().println("<th style=' text-align: left'>Brand</th>");
			 res.getWriter().println("<th style=' text-align: left'>Color</th>");
			 res.getWriter().println("<th style=' text-align: left'>in Stock</th>");
			 res.getWriter().println("<th style=' text-align: left'>Price</th>");
			 res.getWriter().println(" </tr>");
			
			 
			 while(rs.next())
			 {
				 
				  
				 res.getWriter().println("<tr>");
				 
				 res.getWriter().print("<td>"+rs.getNString("brand")+"</td>");
				 res.getWriter().print("<td>"+rs.getNString("color")+"</td>");
				 res.getWriter().print("<td>"+rs.getNString("instock")+"</td>");
				 res.getWriter().print("<td>"+rs.getNString("price")+"</td>");
				 
				 res.getWriter().println("</tr>");
				 
				
			 }
			 
			 res.getWriter().println("</table>");
			 
			 res.getWriter().print("<br>");
			 if(h.getAttribute("user").toString().equals("Customer"))
			 {
				 h.setAttribute("Category", category);
				 res.getWriter().print("<form action='ReduceStock' method='post'>");
				 res.getWriter().print("<input type='text' name='itemname' placeholder='item name'>");
				 res.getWriter().print("<input type='submit' value='Purchase'>");
				 
				
			 }
			 
			 
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		
		
	}

}
