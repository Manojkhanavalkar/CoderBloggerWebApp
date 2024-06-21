<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forgot_password</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
 <link rel="stylesheet" href="CSS/password.css" />
      
</head>

<style>
	
	.icon_btn {
	position: absolute;
	padding: 13px;
	background: #efefef;
	text-decoration: none;
	width: 34px;
	border-radius: 121px;
	margin-right: -5px;
	cursor: pointer;
	border-color: white;
	box-shadow: 0 0px 9px 0 rgba(0,0,0,0.2), 0 3px 2px 0 rgba(0,0,0,0.19);
	
	
}
	
	.password-toggle-icon {
  position: absolute;
  top: 50%;
  right: 10px;
  transform: translateY(-50%);
  cursor: pointer;
}

.password-toggle-icon i {
  font-size: 18px;
  line-height: 1;
  color: #333;
  transition: color 0.3s ease-in-out;
  margin-bottom: 20px;
}

.password-toggle-icon i:hover {
  color: #000;
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
    <a href="CoderLogin.jsp" class="icon_btn"> &times </a>
    </div>
      <h1>Forgot Password</h1>
      <form method="post" action="forgotPasswordForm">
        <div class="txt_field">
          <input type="email" required name="email" />
          <span></span>
          <label>Email</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="newPassword"/>
          <span></span>
          <label>New Password</label>
        </div>
        <div class="txt_field">
          <input type="password" required name="confirmPassword" id="password" />
          <span class="password-toggle-icon"><i class="fas fa-eye"></i></span>
          <label>Confirm Password</label>
        </div>
        
        <input type="submit" value="Confirm" />
        <div class="signup_link"> Next time remember!! <a href="#"></a></div>
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