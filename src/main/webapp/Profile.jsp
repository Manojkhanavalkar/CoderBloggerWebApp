<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@page import="com.coderblogger.helper.ConnectionProvider"%>
    <%@page import="in.sp.backend.Profile" %>
    <%@page import="in.sp.backend.User" %>
    
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="utf-8" />
    <title>${coder_name}</title>
      <link rel="stylesheet" href="CSS/.css" />
     <link rel="stylesheet" href="CSS/profile.css" />
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
        <a href="" class="icon" onclick="myFunction()">
          <i class="fa fa-bars"></i>
        </a>
      </nav>
    </header>
    
    <div class="container">
    <% 
      	Connection con=ConnectionProvider.getConnection();
      	String email=(String) session.getAttribute("email_id");
      	Profile profile=new Profile(con,email);
      	ArrayList<User> list=profile.getUser();
      	for(User usr:list){
      %>
       <div class="avatar-flip">
       <div class="img">
        <img src="img/profile/<%=usr.getImage() %>"class="profile-photo"><br>
         <br>
      </div>
       
	<h2>NAME: <%=usr.getName() %></h2>
      
      <p>ABOUT ME:<%=usr.getAbout_me() %></p>
	<a href="createblog.jsp"> <button>create blog</button> </a>
	<%} %>
  </div>
  </div>
  </body>
  </html>