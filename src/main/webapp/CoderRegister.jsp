<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>registration</title>
<link href="CSS/mystyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="container">
      <div class="center">
          <h1>Register</h1>
          <form method="POST" action="RegisterForm"><!-- here i have added the action of java class so don't change that  --> 
              <div class="txt_field">
                  <input type="text" name="name" required><!-- here i have done some changes in the name of input tag don't touch it --> 
                  <span></span>
                  <label>Full Name</label>
              </div>
              <div class="txt_field">
                  <input type="text" name="coderName" required> <!-- here i have done some changes in the name of input tag don't touch it --> 
                  <span></span>
                  <label>Coder Name</label>
              </div>
              <div class="txt_field">
                  <input type="email" name="email" required><!-- here i have done some changes in the name of input tag don't touch it --> 
                  <span></span>
                  <label>Email</label>
              </div>
              <div class="gender">
              	   <input type="radio" name="gender1" value="male" style="color:Tomato;"> Male<!-- here i have done some changes in the name of input tag don't touch it --> 
                   <input type="radio" name="gender1" value="female"> Female<!-- here i have done some changes in the name of input tag don't touch it --> 
                   <input type="radio" name="gender1" value="other"> Other <!-- here i have done some changes in the name of input tag don't touch it --> 
                    <span></span>
                 
               </div>  
              
              <div class="txt_field">
                  <input type="password" name="password" required>
                  <span></span>
                  <label>Password</label>
              </div>
              <div class="txt_field">
                  <input type="password" name="cpassword" required>
                  <span></span>
                  <label>Confirm Password</label>
              </div>
              <input name="submit" type="Submit"><!-- here the value as sign up is changed by me it is running so do not touch it --> 
              <div class="signup_link">
                  Have an Account ? <a href="CoderLogin.jsp">Login Here</a>
              </div>
          </form>
      </div>
  </div>
</body>
</html>