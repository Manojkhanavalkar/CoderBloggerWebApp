<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>registration</title>
 <link rel="stylesheet" href="CSS/login.css" />
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
	<style>
		.header {
  			position: fixed;
 			top: 0;
 			left: 0;
  			width: 100%;
		}
		
		.navbar {
  			display: flex;
  			align-items: center;
  			justify-content: space-between;
  			max-width: 1200px;
  			margin: 0 auto;
  			padding: 20px 15px;
		}

		.navbar .logo a {
  			font-size: 1.8rem;
  			text-decoration: none;
  			color: #fff;
		}
		
	</style>
<body>
<header class="header">
      <nav class="navbar">
        <h2 class="logo"><a href="#">Coder Blogger</a></h2>
       </nav>
       </header>
    
      <div class="center">
       <div class="btn_box">
    <a href="index.jsp" class="icon_btn"> &times </a>
    </div>
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
                  <input type="password" name="password" id="password" required>
                  <span></span>
                  <label>Password</label>
              </div>
              <div class="txt_field">
                  <input type="password" name="cpassword" id="password" required>
                  <span class="password-toggle-icon"><i class="fas fa-eye"></i></span>
                  <label>Confirm Password</label>
              </div>
              <input name="submit" type="Submit"><!-- here the value as sign up is changed by me it is running so do not touch it --> 
              <div class="signup_link">
                  Have an Account ? <a href="CoderLogin.jsp">Login Here</a>
              </div>
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