<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error!!</title>
</head>

<style>

* {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Open Sans", sans-serif;
}

body {
   height: 100vh;
  width: 100%;
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
  color: #175d69;
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
  color: black;
  padding: 10px 0;
  transition: 0.2s ease;
}

.navbar .links a:hover {
  color: #47b2e4;
}

</style>
<body>
	<header class="header">
      <nav class="navbar">
        <h2 class="logo"><a href="#">Coder Blogger</a></h2>
        
        <ul class="links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="#">About Developers</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
      </nav>
    </header>
	
	<h1 style="text-align: center; color: red; font-family: Arial, sans-serif; line-height: 8.5;">Some error occurred!!</h1>
	<div class="img" style="text-align: center;">
        <img src="https://i.pinimg.com/originals/ef/8b/bd/ef8bbd4554dedcc2fd1fd15ab0ebd7a1.gif" alt="Error image" style="width:500px; height:410px;">
      </div>
</body>
</html>