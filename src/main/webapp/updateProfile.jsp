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
		Upload Profile photo:<input type="file" class="ProfileImage"> <br>
		<input type="text" placeholder="about me !! write about yourself" class="about_me"> <br>
		<input type="submit">
	</form>
</body>
</html>