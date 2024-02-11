<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Update Profile</title>
<!-- Google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">

<link rel="stylesheet" href="CSS/homestyle.css" />
<link rel="stylesheet" href="CSS/mystyle.css" />
  </head>
<body>

<header class="header">
      <nav class="navbar">
        <h2 class="logo"><a href="#">Coder Blogger</a></h2>
        <input type="checkbox" id="menu-toggle" />
        <label for="menu-toggle" id="hamburger-btn">
        </label>
        <ul class="links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="#">About Developers</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
        </nav>
        
<div class="container">
      <div class="center">
          <h1>Update Profile</h1><br>
          <form action="updateProfile" method="post" enctype="multipart/form-data">
          <input type="text" placeholder="about me !!" name="about_me"> <br><br>
		   Upload Profile photo:<input type="file" name="ProfileImage" value=""> <br><br>
		 
		<input type="submit" value="submit">
	</form>
	</div>
	</div>
	</header>
	</body>
	</html>