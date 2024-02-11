<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Profile Page</title>
<!-- Google font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Song+Myung&display=swap" rel="stylesheet">

<link rel="stylesheet" href="CSS/feedpage.css" />
<link rel="stylesheet" href="CSS/profile.css" />
<link rel="stylesheet" href="CSS/homestyle.css" />

 <title>${coder_name}</title><!-- this is the profile name fetched from back end -->
  </head>
  <body>
    <header class="header">
       <div class="title">
       <h1 class="title-text"><span>User Name </span></h1>
       </div>
        <i class= "fa fa bars menu-toggle"></i>
        <ul class="nav">
      
          <li><a href="index.jsp">Home</a></li> 
          <li><a href="createblog.jsp">New Blog</a></li>
           <li>
          	<a href="#">Account
          	<i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          	</a>
          	<ul>
          	<li><a href="updateProfile.jsp" class= "edit profile">Edit Profile</a></li>
          	<li><a href="#" class="change password" >Change Password</a></li>
          	<li><a href="Logout" class="logout" >Logout</a></li>
          	</ul> 
          	</li>
        </ul> 
          <section class="hero-section">
      <div class="hero">
	NAME: ${Profile_info.name} <br>
	<div class="img">

          <img src="img/profile/${Profile_info.image}" height="200px" width="200px" alt="hero image"> <br>
      

        <img src="img/profile/${Profile_info.image}" height="200px" width="200px" alt="hero image">
         <br>
      </div>

	ABOUT ME:${Profile_info.about_me}
	<a href="createblog.jsp"> <button>create blog</button> </a>
	</div>
	<!-- <a href="myblogs.jsp"> <button>Create Blog</button> </a> -->
	</section>
    </header>
    </body>
    </html>
<!--   branch 'master' of https://github.com/Manojkhanavalkar/CoderBloggerWebApp -->