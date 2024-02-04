<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${coder_name}</title><!-- this is the profile name fetched from back end -->
</head>
<body>
	 <h1>Profile</h1>
	<div>
	NAME: ${Profile_info.name} <br>
	<img alt="profile_image" src="./img/profile/${Profile_info.image}" height="200px" width="200px"> <br>
	ABOUT ME:${Profile_info.about_me}
	</div>
	<a href="updateProfile.jsp">UPDATE profile</a>  
	
	
</body>
</html>