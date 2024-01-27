<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Coder Blogger</title>
    <link rel="stylesheet" type="text/css" href="CSS/mystyle.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a81368914c.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
    <img class="wave" src="img/coder_blogger.png">
    <div class="container">
      <div class="img">
        <img src="">
      </div>
      <div class="login-content">
        <form action="LoginForm" method="post">
          <img src="img/avatar.svg">
          <h2 class="title">Welcome</h2>
          <div class="input-div one">
            <div class="i">
              <i class="fas fa-user"></i>
            </div>
            <div class="div">
              <h5>Email id</h5>
              <input type="email" class="input">
              <h5>Username</h5>
              <input type="email" class="input" name="email">
            </div>
          </div>
          <div class="input-div pass">
            <div class="i"> 
              <i class="fas fa-lock"></i>
            </div>
            <div class="div">
              <h5>Password</h5>
              <input type="password" class="input" name="password">
            </div>
          </div>
          <a href="#">Forgot Password?</a>
          <input type="submit" class="btn" value="Login">
          <div class="login_link">
                  Don't Have an Account ? <a href="CoderRegister.jsp">Signup Here</a>
              </div>
        </form>
      </div>
    </div>
    <script type="text/javascript" src="JS/main.js"></script>
  </body>
</html>



