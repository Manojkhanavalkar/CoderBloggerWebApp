<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>login</title>
    <link rel="stylesheet" href="CSS/login.css" />
     <link rel="stylesheet" href="CSS/homestyle.css" />
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
        </ul>
        <div class="buttons">
          <a href="CoderLogin.jsp" class="signin">Log In</a>
          <a href="CoderRegister.jsp" class="signup">Sign Up</a>
        </div>
      </nav>
    </header>
   
    <div class="center">
    <div class="btn_box">
    <a href="index.jsp" class="icon_btn"> &times </a>
    </div>
      <h1>LOGIN</h1>
      <form method="post" action="LoginForm">
        <div class="txt_field">
          <input type="email" required name="email" />
          <span></span>
          <label>Email</label>
        </div>
        <div class="txt_field">
          <input type="password" name="" id="password" required />
           
          <span class="password-toggle-icon"><i class="fas fa-eye"></i></span>
          <label>Password</label>
        </div>
        <a class="pass" href="forgot_password.jsp">Forgot Password?</a><br><br>
        <input type="submit" value="Login" />
        <div class="signup_link">Not a member?. <a href="CoderRegister.jsp">Signup</a></div>
      </form>
    </div>
    <script>
  const passwordField = document.getElementById("password");
  const togglePassword = document.querySelector(".password-toggle-icon i");

  togglePassword.addEventListener("click", function () {
    if (passwordField.type === "password") {
      passwordField.type = "text";
      togglePassword.classList.remove("fa-eye");
      togglePassword.classList.add("fa-eye-slash");
    } else {
      passwordField.type = "password";
      togglePassword.classList.remove("fa-eye-slash");
      togglePassword.classList.add("fa-eye");
    }
  });
  </script>
  </body>
  
</html>
    