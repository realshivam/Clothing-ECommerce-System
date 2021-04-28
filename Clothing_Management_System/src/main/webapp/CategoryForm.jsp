<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

		<form action="AddCategory" method="post">
		<input placeholder="Category Name" type="text" name="CategoryName"><br>
		
		<input type="submit" value="Create">
		</form>

</body>
</html>