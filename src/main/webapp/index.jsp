<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Coder blogger</title>
<link rel="stylesheet" href="CSS/homestyle.css" />
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
          <li><a href="about.jsp">About Developers</a></li>
          <li><a href="contact_us.jsp">Contact Us</a></li>
        </ul>
        <div class="buttons">
          <a href="CoderLogin.jsp" class="signin">Log In</a>
          <a href="CoderRegister.jsp" class="signup">Sign Up</a>
        </div>
      </nav>
    </header>
    <section class="hero-section">
      <div class="hero">
        <h2>Coder Blogger</h2>
        <p>
          Coder Blogger is a comprehensive platform that combines the power of coding
          and blogging. It is allowing users to create, share, and interact with 
          Coding related blogs.  The user-friendly front-end provides seamless 
          registration and login processes, The back-end ensures secure user data storage.
          
        </p>
        <div class="buttons">
          <a href="CoderLogin.jsp" class="join">Join Now</a>
          <a href="#" class="learn">Learn More</a>
        </div>
      </div>
      <div class="img">
        <img src="img/coder_blogger.png" alt="hero image">
      </div>
    </section>
  </body>
</html>