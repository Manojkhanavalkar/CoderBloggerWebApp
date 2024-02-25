<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
      <link rel="stylesheet" href="CSS/feedpage.css" />
     <link rel="stylesheet" href="CSS/profile.css" />
  </head>
  <body>
   <header class="header">
     <nav class="title">
        <h1 class="title-text">Coder Blogger</h1>
      </nav>
        <i class= "fa fa bars menu-toggle"></i>
        <ul class="nav">
      
          <li><a href="Feed.jsp">Feed</a></li> 
          <li><a href="about.jsp">About Developers</a></li>
          <li><a href="contact_us.jsp">Contact Us</a></li>
           <li><a href="createblog.jsp">New Blog</a></li>
           <li>
          	<a href="#">Account
          	<i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          	</a>
          	<ul>
          	<li><a href="updateProfile.jsp" class= "edit profile">Edit Profile</a></li>
          	<li><a href="change_password.jsp" class="change password" >Change Password</a></li>
          	<li><a href="Logout" class="logout" >Logout</a></li>
          	</ul>
          	</li>
        </ul>
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
       <img src="img/profile/<%=usr.getImage() %>" onerror="this.src='/img/avatar.svg'" alt="Profile image here" class="profile-photo" height="150" width="150">
       <img src="img/coder_blogger.png" height="150" width="150">
      </div>
       
	<h2> <%=usr.getName() %></h2>
      
      <p>ABOUT ME <br><%=usr.getAbout_me() %></p>
	<a href="createblog.jsp"> <button>create blog</button> </a>
	<%} %>
  </div>

  </body>
  </html>