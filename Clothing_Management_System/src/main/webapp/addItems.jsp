<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h2>Add Items</h2>
		
		<form action="AddItem" method="post">
		<input placeholder="Brand Name" type="text" name="BrandName"><br>
		<input placeholder="Color" type="text" name="Color"><br>
		<input placeholder="Total in Stock" type="text" name="instock"><br>
		<input placeholder="Price" type="text" name="Price"><br>
		<input type="submit" value="Add">
		</form>
		
		<a href="home.jsp">Done Adding</a>

</body>
</html>