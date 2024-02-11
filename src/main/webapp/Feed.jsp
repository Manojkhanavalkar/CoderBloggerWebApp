<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Feed Page</title>
<!-- Google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">

<link rel="stylesheet" href="CSS/feedpage.css" />
  </head>
  <body>
    <header class="header">
     <nav class="title">
        <h1 class="title-text">Coder Blogger</h1>
      </nav>
        <i class= "fa fa bars menu-toggle"></i>
        <ul class="nav">
      
          <li><a href="index.jsp">Home</a></li> 
          <li><a href="#">Contact Us</a></li>
           <li>
          	<a href="Profile.jsp">Profile
          	<i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          	</a>
          	<ul>
          	<li><a href="/CoderBlogger/Profile" class= "myblog" >${coder_name}</a></li>
          	<li><a href="Logout" class="logout" >Logout</a></li>
          	</ul>
          	</li>
        </ul>
    </header>
    </body>
    </html>