<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form action="Login" method="post">
		<input placeholder="email" type="email" name="email"><br>
		<input placeholder="password" type="password" name="password"><br>
	
		<select name="user">
    	<option value="Agent">Agent</option>
    	<option value="Customer">Customer</option>
  		</select>
		
		<input type="submit" value="Login">
		</form>
		
		<p>Don't have an account ? <p> <a href="signin.jsp">Sign in</a>
		
		

</body>
</html>