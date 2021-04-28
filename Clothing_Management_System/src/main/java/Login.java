import javax.servlet.http.HttpServlet;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;

import java.sql.*;

@WebServlet("/Login")
public class Login extends HttpServlet {

	
	
	public void doPost(HttpServletRequest req , HttpServletResponse res) throws IOException 
	{
		String email = req.getParameter("email");
		
		String password = req.getParameter("password");
		
		String user = req.getParameter("user");
	
	
	
	
			try {
				DataBaseOperations dbo = new DataBaseOperations(email,password,user); 
				if(dbo.isValidUser())
				{
					HttpSession h = req.getSession();
					
					h.setAttribute("email", email);
					
					if(user.equals("Agent"))
					{
					h.setAttribute("databasename", dbo.DataBaseName);
					res.sendRedirect("home.jsp");
					}
					h.setAttribute("user", "Customer");
					res.sendRedirect("CustomerHome.jsp");
				
					
				}
				
				else {
					
					res.sendRedirect("login.jsp");
					
				}
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		
		
		
		
	}
	
}
