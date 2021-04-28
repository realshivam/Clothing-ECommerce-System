<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<form action="signin" method="post">
		<input placeholder="Full Name" type="text" name="fullname"><br>
			<input placeholder="userid" type="text" name="userid"><br>
		<select name="user">
    	<option value="Agent">Agent</option>
    	<option value="Customer">Customer</option>
  		</select>
		
		<input placeholder="email" type="email" name="email"><br>
		<input placeholder="Create a password" type="password" name="password"><br>
		
		
		
		<input type="submit" value="Sign in">
		</form>

</body>
</html>