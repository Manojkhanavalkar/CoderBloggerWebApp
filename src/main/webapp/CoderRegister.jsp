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
          <form method="POST" action="index.jsp">
              <div class="txt_field">
                  <input type="text" name="name" required>
                  <span></span>
                  <label>Coder Name</label>
              </div>
              <div class="txt_field">
                  <input type="email" name="email" required>
                  <span></span>
                  <label>Email</label>
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
              <input name="submit" type="Submit" value="Sign Up">
              <div class="signup_link">
                  Have an Account ? <a href="CoderLogin.jsp">Login Here</a>
              </div>
          </form>
      </div>
  </div>
</body>
</html>