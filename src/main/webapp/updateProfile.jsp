<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
</head>
<body>
	<form action="updateProfile" method="post" enctype="multipart/form-data">
		Upload Profile photo:<input type="file" name="ProfileImage" value=""> <br>
		<input type="text" placeholder="about me !! write about yourself" name="about_me"> <br> 
		<input type="submit" value="submit">
	</form>
</body>
</html>