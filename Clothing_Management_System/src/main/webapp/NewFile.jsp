<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	
		if(session.getAttribute("email")==null)
		{
			response.sendRedirect("login.jsp");		
		}
		
		
	
	%>	

	 <%
	 
	 ArrayList<Integer>arr=new ArrayList<Integer>();
	 
	 %>

</body>
</html>