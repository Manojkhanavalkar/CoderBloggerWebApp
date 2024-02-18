<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forgot_password</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
 <link rel="stylesheet" href="CSS/password.css" />
      
</head>
<body>
<header class="header">
      <nav class="navbar">
        <h2 class="logo"><a href="#">Coder Blogger</a></h2>
       </nav>
       </header>
    
    <div class="center">
    <div class="btn_box">
    <a href="profile.jsp" class="icon_btn"> &times </a>
    </div>
      <h1>Forgot Password</h1>
      <form method="post" action="forgot_passwordForm">
        <div class="txt_field">
          <input type="email" required name="email" />
          <span></span>
          <label>Email</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="password"/>
          <span></span>
          <label>New Password</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="password"/>
          <span></span>
          <label>Confirm Password</label>
        </div>
        <div class="pass">Forgot Password?</div>
        <input type="submit" value="Confirm" />
        <div class="signup_link"> Next time se yaad rkhna warna,.. <a href="#"></a></div>
      </form>
    </div>
</body>
</html>