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

	My DashBoard
	<br>
	<br>
	<a href="ShowCategories">My Categories</a>
	<br>
	<br>
	<a href="Earnings">Earnings</a>
	<br>
	<br>
	<a href="CategoryForm.jsp">Add Category</a>
	<br>
	<br>
	<a href="DeleteCategory.jsp">Delete Category</a>
	<br>
	<br>
	
	<form action="Logout" method="get">
	<input type="submit" value="Logout">
	</form>
	
	
	
	

</body>
</html>