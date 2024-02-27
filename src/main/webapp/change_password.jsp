<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change_password</title>
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
    <a href="Profile.jsp" class="icon_btn"> &times </a>
    </div>
      <h1>Change Password</h1>
      <form method="post" action="changePasswordForm">
        <div class="txt_field">
          <input type="password" required name="oldpassword" />
          <span></span>
          <label>Old Password</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="newPassword"/>
          <span></span>
          <label>New Password</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="confirmPassword"/>
          <span></span>
          <label>Confirm Password</label>
        </div>
        <a class="pass" href="forgot_password.jsp">Forgot Password?</a><br><br>
        <input type="submit" value="Submit" />
        <div class="signup_link">Use Strong Password </div>
      </form>
    </div>
</body>
<link rel="stylesheet" href="JS/main.js" />
</html>