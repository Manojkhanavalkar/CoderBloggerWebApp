<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>About Developers</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<!-- CSS file  -->

<style>
	
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Open Sans", sans-serif;
}

body {
  height: 100vh;
  width: 100%;
  background-image: linear-gradient(to bottom, #175d69 23%, #330c43 95%);
}

section {
	min-height: 100vh;
	padding: 10rem 9% 2rem;
	size: 20px;
}

social-media {
	min-height: 100vh;
	padding: 10rem 9% 2rem;
	size: 20px;
}

.header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  padding: 2rem 9%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  z-index: 100;
}

.logo {
	font-size: 1.8rem;
	color: #fff;
	font-weight: 600;
	cursor: default;
	text-decoration: none;
}

.navbar {
  display: flex;
  align-items: center;
  justify-content: space-between;
  max-width: 1200px;
  margin: 0 auto;
  padding: 20px 35px;
}

 .navbar .links {
  display: flex;
  align-items: center;
  list-style: none;
  gap: 1px;
}

.navbar .links a {
  font-weight: 500;
 
  text-decoration: none;
  color: white;
  margin-left: 5rem;
  transition: 0.2s ease;
}

.navbar .links a:hover {
  color: #47b2e4;
}

.navbar .buttons a {
  text-decoration: none;
  color: #fff;
  font-size: 1rem;
  padding: 15px 44px;
  transition: 0.2s ease;
}

.navbar .buttons a:not(:last-child) {
  margin-right: -15px;
  margin-left: 136px;
}

.navbar .buttons .signin:hover {
  color: #47b2e4;
}

.navbar .buttons .signup {
  border: 1px solid #fff;
  padding: 10px 20px;
  border-radius: 0.375rem;
  text-align: center;
  transition: 0.2s ease;
}

.navbar .buttons .signup:hover {
  background-color: #47b2e4;
  color: #fff;
}

#menu-icon {
	font-size: 3.6rem;
	color: #fff;
	display: none;
}

.home {
	display: flex;
	justify-content: center;
	align-items: center;
	max-width: 1000px;
	max-height: -webkit-fill-available;
}

.home .home-content {
	margin-top: 40px;
	margin-bottom: 30px;
}

.home-img img {
	width: 35vw;
	margin-top: -288px;
}

.home-content h3 {
	font-size: 1.2rem;
	font-weight: 700;
}

.home-content h3:nth-of-type(2) {
	margin-bottom: 1rem;
	margin-right: -10px;
}

span {
	color: #00ffff;
}
.home-content h1 {
	font-size: 2.6rem;
	font-weight: 700;
	line-height: 1.3;
}

.home-content p {
	font-size: 1.6rem;
}

.social-media a {
	display: inline-flex;
	justify-content: center;
	align-items: center;
	width: 2.4rem;
	height: 2.4rem;
	background: transparent;
	border: .2rem solid #000;
	border-radius: 50%;
	font-size: 1rem;
	color: #0d0d0d;
	margin: 3rem 1.5rem 3rem 0;
	transition: .5s ease;
}

.social-media a:hover {
	background: #00fffd;
	color: #fff;
	box-shadow: 0 0 1rem black;
	border: .2rem solid #fff;
}

.btn {
	display: inline-block;
	padding: 1rem 2.8rem;
	background: red;
	border-radius: 4rem;
	box-shadow: 0 0 1rem white;
	font-size: 1.6rem;
	color: #fff;
	letter-spacing: .1rem;
	font-weight: 600;
	transition: .5s ease;
}

.btn:hover {
	box-shadow: none;
}


/* Existing styles */

.slider-container {
    position: relative;
    max-width: 1000px;
    margin: 0 auto;
    overflow: hidden;
}

.slider {
    display: flex;
    transition: transform 0.5s ease;
}

.slider img {
    width: 100%;
    height: auto;
}

.prev, .next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background-color: rgba(0, 0, 0, 0.5);
    color: white;
    border: none;
    cursor: pointer;
    padding: 10px;
    z-index: 1000;
}

.prev {
    left: 0;
}

.next {
    right: 0;
}

.about {
	background: linear-gradient(to bottom, #175d69 23%, #330c43 95%);;
}

.about h2 {
	text-align: center;
    margin-bottom: 4rem;
    font-size: 46px;
    color: #fff;
}

.about-container {
	display: grid;
	grid-template-columns: repeat(2, 1fr);
	align-items: center;
	gap: 2.5rem;
	width: 800px;
	margin: auto;
}

.about-container .about-box {
	position: relative;
	border-radius: 2rem;
	box-shadow: 0 0 1rem white;
	overflow: hidden;
	display: flex;
}

.about-box img {
	width: 100%;
	transition: .5s ease;
}

.about-box:hover img {
	transform: scale(1.1);
}

.about-box .about-layer {
	position: absolute;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: linear-gradient(rgba(0, 0, 0, .1), #0ef);
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	text-align: center;
	padding: 0 4rem;
	transform: translateY(100%);
	transition: .5s ease;
}

.about-box:hover .about-layer {
	transform: translateY(0);
}

.about-layer h4 {
	font-size: 3rem;
	color: #fff;
	margin-top: 40px;
}

.about-layer h2 {
	font-size: 1.2rem;
	font-weight: 700;
	margin-bottom: 37px;
}

.about-layer h2 span {
	color: #00ffff;
	text-decoration: none;
}

.about-layer h3 {
	font-size: 1.2rem;
	font-weight: 700;
	background: #fff;
}

.about-layer h3:nth-of-type(2) {
	margin-bottom: 1rem;
	margin-right: -10px;
}

span {
	color: #00ffff;
	text-decoration: underline;
}

.about-layer p {
	font-size: 14px;
	margin: .3rem 0 1rem;
	text-shadow: 0 0 1rem white;
	background-color: rgb(255 255 255 / 9%);
}

.about-layer .social-media a {
	display: inline-flex;
	justify-content: center;
	align-items: center;
	width: 2.4rem;
	height: 2.4rem;
	background: transparent;
	border: 2px solid black;
	border-radius: 50%;
	font-size: 1rem;
	color: black;
	margin: 2rem 1.5rem 2rem 0;
	transition: .5s ease;
	text-decoration: none;
}

.about-layer .social-media a:hover {
	background: #00fffd;
	color: #fff;
	box-shadow: 0 0 1rem black;
	border: .2rem solid #fff;
}

.about-layer a i {
	font-size: 2rem;
	color: black;
}

</style>

</head>

<body>

	 <header class="header">
	 	<a href="#" class="logo">Coder Blogger</a>
	 	<i class='bx bx-menu' id="menu-icon"></i>
      
      <nav class="navbar">
       
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
	
		
		
		<i class='bx bx-menu' id="menu-icon"></i>
	</header>
	
	<section class="about" id="about">
		<h2 class="heading">Our  <span>DEVELOPER</span></h2>
		
		<div class="about-container">
			<div class="about-box">
				<img src="img/ankit image.jpg" alt="">
				<div class="about-layer">
					<h4>Ankit</h4>
					<h2><span>Full-stack Developer</span></h2>
					<p>As a growing full-stack developer, my goal is to continue expanding my skill set, gaining real-world experience, and contributing to innovative projects that make a meaningful impact.</p>
					<div class="social-media">
						<a href="#"><i class='bx bxl-instagram'></i></a>
						<a href="#"><i class='bx bxl-linkedin'></i></a>
						<a href="#"><i class='bx bxl-github'></i></a>
					</div>
				</div>
			</div>
			 
			 
			 <div class="about-box">
				 <img src="img/manoj.jpeg" alt="">
				 <div class="about-layer">
					<h4>Manoj</h4>
					<h2><span>Full-stack Developer</span></h2>
					<p>Hello! I'm Manoj, a passionate and motivated full-stack developer eager to embark on a journey in the dynamic world of web development.</p>
					<div class="social-media">
						<a href="#"><i class='bx bxl-instagram'></i></a>
						<a href="#"><i class='bx bxl-linkedin'></i></a>
						<a href="#"><i class='bx bxl-github'></i></a>
					</div>
				 </div>
			 </div>
		</div>
	</section>
	
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("slider");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    slides[slideIndex-1].style.display = "block";  
    setTimeout(showSlides, 10000); // Change image every 10 seconds (10000 milliseconds)
}

</script>
</body>
</html>