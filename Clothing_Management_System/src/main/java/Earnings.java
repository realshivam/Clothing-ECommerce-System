
import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;

import java.sql.*;

@WebServlet("/Earnings")
public class Earnings extends HttpServlet {

		
		
		public void doGet(HttpServletRequest req , HttpServletResponse res) throws IOException 
		{
			HttpSession h = req.getSession();
			
			 try {
				 
				 
				 String userid = h.getAttribute("databasename").toString();
				 Class.forName("com.mysql.cj.jdbc.Driver");
				 String db = "select earnings from Agent where userid = '"+userid+"'";
				 Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ClothingManagementSystem","root","Hello_123") ;
				 Statement s = c.createStatement();
				 ResultSet rs = s.executeQuery(db);
				 
				 rs.next();
				 
				 res.getWriter().print(rs.getNString("earnings"));
				 
			} catch (ClassNotFoundException e) {
			
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		
		}

}
