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

<link rel="stylesheet" href="CSS/homestle.css" />
<link rel="stylesheet" href="CSS/mystle.css" />
  </head>
  
  <style>

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Open Sans", sans-serif;
}

body {
  height: 100vh;
  width: 100%;
  background-image: linear-gradient(to bottom, #175d69 23%, #330c43 95%);
}

.header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
}

.navbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px 15px;
}

.navbar .logo a {
  font-size: 1.8rem;
  text-decoration: none;
  color: #fff;
}

.navbar .links {
  display: flex;
  align-items: center;
  list-style: none;
  gap: 35px;
}

.navbar .links a {
  font-weight: 500;
  text-decoration: none;
  color: white;
  padding: 10px 0;
  transition: 0.2s ease;
}

.navbar .links a:hover {
  color: #47b2e4;
}

.center {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate( -50%, -50%);
  width: 26vw;
  background: white;
  border-radius: 26px;
}

.btn_box {
	position: absolute;
	width: 100%;
	height: 68px;
	display: flex;
	justify-content: right;
	align-items: center;
	border-radius: 8px 8px 0 0;
	
}

.icon_btn {
	position: absolute;
	padding: 13px;
	background: #efefef;
	text-decoration: none;
	width: 34px;
	border-radius: 121px;
	margin-right: -16px;
	cursor: pointer;
	border-color: white;
	box-shadow: 0 0px 9px 0 rgba(0,0,0,0.2), 0 3px 2px 0 rgba(0,0,0,0.19);
	
	
}

.icon_btn:hover {
	background: #fb9188;
	color: white;
	transition: 0.5s;
}
.center h1 {
  text-align: center;
  color: #2691d9;
  text-shadow: 1px 1px 3px #000000;
  padding: 20px 0;
  border-bottom: 1px solid silver;
}

.center form{
  padding: 20px 40px;
  box-sizing: border-box;
}

form .txt_field{
  position: relative;
  border-bottom: 2px solid #f5f5f5;
  margin: 30px 0;
}

.txt_field input{
  width: 100%;
  padding: 0 5px;
  height: 40px;
  font-size: 16px;
  border: none;
  background: none;
  outline: none;
}

input[type="text"] {
  width:100%;
  height: 130px;
  margin-top: 10px;
  margin-bottom: 20px;
}

input[type="file"] {
  width:75%;
  height: 22px;
  margin-top: 10px;
  margin-bottom: 20px;
}

.txt_field label{
  position: absolute;
  top: 50%;
  left: 5px;
  color: #000000;
  transform: translateY(-50%);
  font-size: 16px;
  pointer-events: none;
}

.txt_field span::before{
  content: '';
  position: absolute;
  top: 40px;
  left: 0;
  width: 0px;
  height: 2px;
  background: #2691d9;
  transition: .5s;
}

.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
  top: -5px;
  color: #ffffff;;
}

.txt_field input:focus ~ span::before,
.txt_field input:Valid ~ span::before{
  width: 100%;
}


input[type="Submit"]{
  width: 100%;
  height: 50px;
  border: 1px solid;
  border-radius: 25px;
  font-size: 18px;
  font-weight: 700;
  cursor: pointer;
  border-color: #fff;
  box-shadow: 0 0px 9px 0 rgba(0,0,0,0.2), 0 3px 2px 0 rgba(0,0,0,0.19);

}

input[type="Submit"]:hover {
  background: #2691d9;
  color: #e9f4fb;
  transition: .5s;
}

</style>
  
  
<body>

<header class="header">
      <nav class="navbar">
        <h2 class="logo"><a href="#">Coder Blogger</a></h2>
        <ul class="links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="about.jsp">About Developers</a></li>
          <li><a href="contact_us.jsp">Contact Us</a></li>
        </ul>
        </nav>
        </header>
        
<div class="container">
      <div class="center">
      <div class="btn_box">
    <a href="Profile.jsp" class="icon_btn"> &times </a>
    </div>
          <h1>Update Profile</h1><br>
          <form action="updateProfile" method="post" enctype="multipart/form-data">
          <label for="postContent">About me:</label><br>
        <textarea id="postContent" name="about_me" rows="6" cols="40" required></textarea><br>
     
		   Upload Profile photo:<input type="file" name="ProfileImage" value=""> <br><br>
		 
		<input type="submit" value="submit">
	</form>
	</div>
	</div>
	</body>
	</html>