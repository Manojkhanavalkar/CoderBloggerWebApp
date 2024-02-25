<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Contact Us</title>
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
	
</head>
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

.header {
  position: fixed;
  top: 0;
  left: 0;
  width: 108%;
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
		
	        body{
            padding: 0;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
            color: rgb(48, 46, 46);
            background-color: rgba(224, 217, 217, 0.863);
        }
        .container{
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 25px;
            margin-top: 201px;
        }
        hr{
            width: 80%;
        }
        
        h1 {
        	color: white;
        	font-size: 3em;
        }
        h2{
            font-size: 20px;
            color: yellow;
        }
        .contact-items{
            display: flex;
            margin: 30px auto;
            flex-wrap: wrap;
            align-items: center;

        }
        .customer-care,.write-us,.sales-market{
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 28%;
            margin: 30px auto;
            padding: 35px 15px;
            border-radius: 15px;
            text-align: center;
            min-width: 250px;
            
        }
        .customer-care{
            height: 250px;
            box-shadow: 0 15px 15px white;
            border: 1px solid white;
            background: burlywood;
        }
        .write-us{
            height: 250px;
            box-shadow: 0 15px 15px red;
            border: 1px solid red;
        }
        .sales-market{
            height: 250px;
            box-shadow: 0 15px 15px blue;
            border: 1px solid blue;
        }
        p{
            font-size: 18px;
            color: black;
            padding: 2px 67px;
            margin-top: 2px;
        }
        button{
            padding: 8px 16px;
            font-size: 17px;
            border-radius: 25px;
            border: none;
            margin: 15px auto;
            cursor: pointer;
            color: rgb(255, 255, 255);
        }
        button:hover{
            color: gray;
        }
        #cust-care{
            background: green;
			margin-top: 32px;
            box-shadow: 0 0 5px black;
        }
        #write{
            background: rgb(187, 15, 15);

            box-shadow: 0 0 5px black;
        }
        #sales{
            background: blue;
            box-shadow: 0 0 5px black;
        }
        a{
            font-size: 16px;
        }
        .customer-care a{
            display: inline-flex;
			justify-content: center;
			align-items: center;
			width: 74px;
			height: 64px;
			background: transparent;
			border: 2px solid black;
			border-radius: 50%;
			font-size: 3rem;
			color: black;
			transition: .5s ease;
			text-decoration: none;
        }
        
        .customer-care h3 {
        	text-align: center;
        	color: red;
        	font-size: 30px;
        	margin-top: 15px;
        }
        .sales-market a{
            color: blue;
            text-shadow: 0 0 2px rgba(76, 62, 158, 0.637);
        }
	
</style>
<body>
	 <header class="header">
	 	<a href="#" class="logo">Coder Blogger</a>
	 	<i class='bx bx-menu' id="menu-icon"></i>
      
      <nav class="navbar">
       
        <ul class="links">
          <li><a href="index.jsp">Home</a></li>
          <li><a href="Feed.jsp" target="_blank">Feed</a></li>
          <li><a href="about.jsp">About Developers</a></li>
          <li><a href="contact_us.jsp">Contact Us</a></li>
        </ul>
        <div class="buttons">
          <a href="CoderLogin.jsp" class="signin">Log In</a>
          <a href="CoderRegister.jsp" class="signup">Sign Up</a>
        </div>
      </nav>
	
		
		
		<i class='bx bx-menu' id="menu-icon"></i>
	</header>
	
    <div class="container">
        <h1>Contact Us</h1>
        
        <h2>Have any questions? We'd love to hear from you</h2>
        <hr>
        <div class="contact-items">
            <div class="customer-care">
            	<a href="#"><i class='bx bxs-home'></i></a>
                <h3>Address</h3>
                <p> Dr. D.Y Patil Arts,Commerce and Science College, sant tukaram nagar, Pimpri Pune-411018 Maharashtra</p>
                
                
            </div>
            <div class="customer-care">
            	
            	<a href="#"><i class='bx bxs-phone-call'></i></a>
                <h3>Phone</h3>
                <p> <strong>Ankit:</strong> 7209771231</p>
                <p> <strong>Manoj:</strong> 9309283261</p>
               
          
            </div>
            <div class="customer-care">
            	<a href="#"><i class='bx bxs-envelope'></i></a>
                <h3> Email</h3>
                <p>awantmishra1@gmail.com</p>
                <p>pankit26mishra711@gmail.com</p>
                <p>khanavalkarmanoj@gmail.com</p>
                
            </div>
        </div>
    </div>
</body>
</html>