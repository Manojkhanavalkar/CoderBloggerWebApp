<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registration</title>
</head>
<body>
<h2>Registration</h2>
	<form action="RegisterForm" method="post">
		Name: <input type="text" name="name"> <br> <br>
		Coder_Name: <input type="text" name="coderName"><br><br>
		Email:<input type="text" name="email"><br> <br>
		Password:<input type="password" name="password"><br><br>
		Conform Password:<input type="password" name="password"><br><br>
		Gender:<input type="radio" name="gender1" value="male">Male <input type="radio" name="gender1" value="female">Female<br><br>
		<input type="submit" value="Register">
	</form>
</body>
</html>