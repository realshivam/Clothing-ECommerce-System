package com.trishul.IndividualItem;

import java.sql.*;



public class Dao {

	String databasename;
	String query;
	Statement st;
	Connection c;
	public Dao ( String db , String q)
	{
		this.databasename=db;
		this.query=q;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			this.c=DriverManager.getConnection("jdbc:mysql://localhost:3306/"+databasename,"root","Hello_123");
			this.st = c.createStatement();
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	
	public ResultSet FetchResult() throws SQLException
	{
		ResultSet rs = st.executeQuery(query);
		
		return rs;
	}
	
	public void modifydb() throws SQLException
	{
		st.execute(query);
	}
	
	
	
}
